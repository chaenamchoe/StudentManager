unit UfmTimeTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  Math, tmsAdvGridExcel, DateUtils, DB, MemDS, DBAccess, Uni;


type
  TClassRoom = record
  ClassID : string;
  ClassName : string;
  ClassIDX : integer;
end;

type
  TfmTimeTable = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnMakeTable: TBitBtn;
    btnSaveExcel: TBitBtn;
    q_LECTURE_VIEW: TUniQuery;
    q_LECTURE_VIEWID: TStringField;
    q_LECTURE_VIEWDONG_ID: TStringField;
    q_LECTURE_VIEWL_YEAR: TIntegerField;
    q_LECTURE_VIEWL_STEP: TIntegerField;
    q_LECTURE_VIEWL_NAME: TStringField;
    q_LECTURE_VIEWL_TIME_WEEK: TIntegerField;
    q_LECTURE_VIEWL_DAYS: TStringField;
    q_LECTURE_VIEWL_MONTH: TIntegerField;
    q_LECTURE_VIEWTEACHER_ID: TStringField;
    q_LECTURE_VIEWL_PRICE: TFloatField;
    q_LECTURE_VIEWCLASSROOM_ID: TStringField;
    q_LECTURE_VIEWIS_ACTIVE: TIntegerField;
    q_LECTURE_VIEWL_DURATION: TStringField;
    q_LECTURE_VIEWT_NAME: TStringField;
    q_LECTURE_VIEWBANK_NAME: TStringField;
    q_LECTURE_VIEWBANK_NO: TStringField;
    q_LECTURE_VIEWL_TIME: TFloatField;
    q_LECTURE_VIEWL_TIME_START: TSmallintField;
    q_LECTURE_VIEWL_TIME_END: TSmallintField;
    q_LECTURE_VIEWC_NAME: TStringField;
    q_LECTURE_VIEWROOM_IDX: TIntegerField;
    q_LECTURE_VIEWSTART_DATE: TStringField;
    q_LECTURE_VIEWEND_DATE: TStringField;
    d_LECTURE_VIEW: TDataSource;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMakeTableClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure btnSaveExcelClick(Sender: TObject);
  private
    procedure InitGrid;
    { Private declarations }
  public
    { Public declarations }
    ClassRoom : TClassRoom;
    ClassArray : array of TClassRoom;
    CurrentClassCount : integer;
    LectureID : string;
  end;

var
  fmTimeTable: TfmTimeTable;

implementation

uses Udm, GlobalVar;

{$R *.dfm}

const
  WeekDays: array[0..5] of string = ('월요일', '화요일', '수요일', '목요일', '금요일', '토요일');

procedure TfmTimeTable.FormShow(Sender: TObject);
var
  mon : integer;
begin
  speYear.Value := YearOf(Date);
  mon := MonthOf(Date);
  case mon of
    1..3 : speStep.Value := 1;
    4..6 : speStep.Value := 2;
    7..9 : speStep.Value := 3;
    10..12 : speStep.Value := 4;
  end;
  InitGrid;
end;

procedure TfmTimeTable.InitGrid;
var
  i, r, t, col_start, time : integer;
begin
  Grid.Clear;
  Grid.MergeCells(0, 0, 1, 2);
  Grid.MergeCells(1, 0, 1, 2);
  Grid.Cells[0, 0] := '시간';
  Grid.Cells[1, 1] := '분';
  Grid.Alignments[1, 1] := taCenter;
  time := 8;
  for i := 2 to 30 do begin
    if not Odd(i) then begin
      Grid.Cells[0, i] := IntToStr(time);
      Inc(time);
    end;
  end;

  for i := 2 to 31 do begin
    if not Odd(i) then begin
      //시간
      Grid.MergeCells(0,i,1,2);
      Grid.Alignments[0, i] := taCenter;
      Grid.FontColors[0, i] := clNavy;
      Grid.FontSizes[0, i] := 14;
      //분
      Grid.cells[1,i] := '00';
      Grid.cells[1,i+1] := '30';
      Grid.Alignments[1, i] := taCenter;
      Grid.Alignments[1, i+1] := taCenter;
      Grid.FontColors[1, i] := clGrayText;
      Grid.FontColors[1, i+1] := clGrayText;
    end;
  end;

  dm.q_CLASSROOM.ParamByName('dong_id').AsString := LoginUserDong;
  dm.q_CLASSROOM.Active := True;
  dm.d_CLASSROOM.DataSet.Refresh;
  CurrentClassCount := dm.q_CLASSROOM.RecordCount;
  Grid.ColCount := (CurrentClassCount * 6) + 2;
  SetLength(ClassArray, CurrentClassCount);
  dm.q_CLASSROOM.First;
  for r := 0 to CurrentClassCount - 1 do begin
    ClassArray[r].ClassID   := dm.q_CLASSROOMID.AsString;
    ClassArray[r].ClassIDX  := r + 1; //dm.q_CLASSROOMIDX.AsInteger;
    ClassArray[r].ClassName := dm.q_CLASSROOMC_NAME.AsString;
    dm.q_CLASSROOM.Next;
  end;
  col_start := 2;
  for t := 0 to 5 do begin
    Grid.MergeCells(col_start, 0, CurrentClassCount, 1);
    Grid.Alignments[col_start, 0] := taCenter;
    Grid.Cells[col_start, 0] := WeekDays[t];
    Grid.Alignments[col_start, 0] := taCenter;
    //ShowMessage(WeekDays[t] + IntToStr(col_start + t));
    for i := 0 to CurrentClassCount - 1 do begin
      Grid.Cells[col_start+i, 1] := ClassArray[i].ClassName;
    end;
    col_start := col_start + CurrentClassCount;
  end;

end;
procedure TfmTimeTable.btnMakeTableClick(Sender: TObject);
var
  i, t, cnt, col_no, row_no : integer;
  l_id, l_days, l_name, l_dur, teacher_name : string;
  time_start, time_count, room_idx : integer;
  l_hour : Double;
  strList : TStringList;
  class_str : string;
begin
  Screen.Cursor := crHourGlass;
  InitGrid;
  q_LECTURE_VIEW.EnableControls;

  q_LECTURE_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
  q_LECTURE_VIEW.ParamByName('l_year').AsInteger := speYear.Value;
  q_LECTURE_VIEW.ParamByName('l_step').AsInteger := speStep.Value;
  q_LECTURE_VIEW.Active := True;
  d_LECTURE_VIEW.DataSet.Refresh;

  cnt := q_LECTURE_VIEW.RecordCount;
  q_LECTURE_VIEW.First;
  for i := 0 to cnt - 1 do begin
    l_id          := q_LECTURE_VIEWID.AsString;               //강좌ID
    l_name        := q_LECTURE_VIEWL_NAME.AsString;         //강좌명
    teacher_name  := q_LECTURE_VIEWT_NAME.AsString;   //강사명
    l_dur         := q_LECTURE_VIEWL_DURATION.AsString;      //시간(13:00 ~ 15:00)
    l_days        := q_LECTURE_VIEWL_DAYS.AsString;         //요일(월,목)
    time_start    := q_LECTURE_VIEWL_TIME_START.AsInteger - 1;  //타임시작번호(1, 2, 3...)
    l_hour        := q_LECTURE_VIEWL_TIME.AsFloat;          //강좌시간(2, 2.5)
    room_idx      := q_LECTURE_VIEWROOM_IDX.AsInteger;    //강좌 인덱스번호

    time_count := Floor(l_hour / 0.5);
    strList := TStringList.Create;
    strList.CommaText := l_days;
    row_no := time_start + 2;
    class_str := '<b>' + l_name + '</b><br>' +
                 '<font color="clGreen">[<b>' + teacher_name + '</b>]</font><br>' +
                 '<font color="clRed">' + l_dur + '</font>';
    for t := 0 to strList.Count - 1 do begin
      if strList[t] = '월' then begin
        col_no := room_idx + 1;
        Grid.MergeCells(col_no,row_no,1,time_count);
        Grid.Colors[col_no,row_no] := TColor($F0FFFF);
        Grid.Cells[col_no,row_no] := class_str;
        //Grid.Objects[col_no, row_no] := TObject(l_id);
      end;
      if strList[t] = '화' then begin
        col_no := CurrentClassCount + room_idx + 1;
        row_no := time_start + 2;
        Grid.MergeCells(col_no,row_no,1,time_count);
        Grid.Colors[col_no,row_no] := TColor($F0FFFF);
        Grid.Cells[col_no,row_no] := class_str;
        //Grid.Objects[col_no, row_no] := TObject(l_id);
      end;
      if strList[t] = '수' then begin
        col_no := (CurrentClassCount * 2) + room_idx + 1;
        row_no := time_start + 2;
        Grid.MergeCells(col_no,row_no,1,time_count);
        Grid.Colors[col_no,row_no] := TColor($F0FFFF);
        Grid.Cells[col_no,row_no] := class_str;
        //Grid.Objects[col_no, row_no] := TObject(l_id);
      end;
      if strList[t] = '목' then begin
        col_no := (CurrentClassCount * 3) + room_idx + 1;
        row_no := time_start + 2;
        Grid.MergeCells(col_no,row_no,1,time_count);
        Grid.Colors[col_no,row_no] := TColor($F0FFFF);
        Grid.Cells[col_no,row_no] := class_str;
        //Grid.Objects[col_no, row_no] := TObject(l_id);
      end;
      if strList[t] = '금' then begin
        col_no := (CurrentClassCount * 4) + room_idx + 1;
        row_no := time_start + 2;
        Grid.MergeCells(col_no,row_no,1,time_count);
        Grid.Colors[col_no,row_no] := TColor($F0FFFF);
        Grid.Cells[col_no,row_no] := class_str;
        //Grid.Objects[col_no, row_no] := TObject(l_id);
      end;
      if strList[t] = '토' then begin
        col_no := (CurrentClassCount * 5) + room_idx + 1;
        row_no := time_start + 2;
        Grid.MergeCells(col_no,row_no,1,time_count);
        Grid.Colors[col_no,row_no] := TColor($F0FFFF);
        Grid.Cells[col_no,row_no] := class_str;
       //Grid.Objects[col_no, row_no] := TObject(l_id);
      end;
    end;
    q_LECTURE_VIEW.Next;
  end;
  q_LECTURE_VIEW.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfmTimeTable.btnSaveExcelClick(Sender: TObject);
var
  fname, sheetname : string;
  SaveDialog : TSaveDialog;
begin
  SaveDialog := TSaveDialog.Create(Self);
  try
    sheetname := IntToStr(speYear.Value) + '년' + IntToStr(speStep.Value) + '기';
    SaveDialog.Filter := '엑셀파일(*.xls)|*.xls';
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.FileName := sheetname + '_강의시간표' + '.xls';
    if SaveDialog.Execute then begin
      fname := SaveDialog.FileName;
      AdvGridExcelIO1.XLSExport(fname, sheetname);
    end;
  finally
    SaveDialog.Free;
  end;
end;

procedure TfmTimeTable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  q_LECTURE_VIEW.Close;
  Action := caFree;
end;

procedure TfmTimeTable.GridGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if (ACol = 0) and (ARow > 0) then
    VAlign := vtaCenter;
end;

initialization RegisterClasses([TfmTimeTable]);

end.
