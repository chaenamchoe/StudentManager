unit UfmAttendanceView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons,
  Spin, ExtCtrls, DateUtils, DBCtrls, ImgList, Grids, AdvObj,
  BaseGrid, AdvGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, tmsAdvGridExcel, MemDS, DBAccess, Uni,
  dxSkinOffice2013White, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmAttendanceView = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    Panel2: TPanel;
    btnSaveExcel: TBitBtn;
    ImageList1: TImageList;
    q_REQUEST_VIEW: TUniQuery;
    q_REQUEST_VIEWL_YEAR: TIntegerField;
    q_REQUEST_VIEWL_STEP: TIntegerField;
    q_REQUEST_VIEWL_NAME: TStringField;
    q_REQUEST_VIEWL_TIME_WEEK: TIntegerField;
    q_REQUEST_VIEWL_DAYS: TStringField;
    q_REQUEST_VIEWL_MONTH: TIntegerField;
    q_REQUEST_VIEWCLASSROOM_ID: TStringField;
    q_REQUEST_VIEWIS_ACTIVE: TIntegerField;
    q_REQUEST_VIEWLECTURE_ID: TStringField;
    q_REQUEST_VIEWSTUDENT_ID: TStringField;
    q_REQUEST_VIEWPAY_AMOUNT: TFloatField;
    q_REQUEST_VIEWTEACHER_ID: TStringField;
    q_REQUEST_VIEWS_NAME: TStringField;
    q_REQUEST_VIEWS_TEL: TStringField;
    q_REQUEST_VIEWS_KIND: TSmallintField;
    q_REQUEST_VIEWS_SEX: TStringField;
    q_REQUEST_VIEWT_NAME: TStringField;
    q_REQUEST_VIEWT_SEX: TStringField;
    q_REQUEST_VIEWT_TEL: TStringField;
    q_REQUEST_VIEWBANK_NAME: TStringField;
    q_REQUEST_VIEWBANK_NO: TStringField;
    q_REQUEST_VIEWID: TStringField;
    q_REQUEST_VIEWDONG_ID: TStringField;
    q_REQUEST_VIEWPAY_KIND: TSmallintField;
    q_REQUEST_VIEWOUT_AMOUNT: TFloatField;
    q_REQUEST_VIEWREG_KIND: TSmallintField;
    q_REQUEST_VIEWS_BIRTH: TStringField;
    q_REQUEST_VIEWPAY_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_BANK: TStringField;
    q_REQUEST_VIEWPAYBACK_BANKID: TStringField;
    q_REQUEST_VIEWOUT_KIND: TSmallintField;
    q_REQUEST_VIEWS_ADDR: TStringField;
    q_REQUEST_VIEWSTART_DATE: TStringField;
    q_REQUEST_VIEWEND_DATE: TStringField;
    q_REQUEST_VIEWP_DATE: TStringField;
    q_REQUEST_VIEWR_DATE: TStringField;
    d_REQUEST_VIEW: TDataSource;
    q_lecture_select: TUniQuery;
    q_lecture_selectID: TStringField;
    q_lecture_selectDONG_ID: TStringField;
    q_lecture_selectL_YEAR: TIntegerField;
    q_lecture_selectL_STEP: TIntegerField;
    q_lecture_selectL_NAME: TStringField;
    d_lecture_select: TDataSource;
    q_LECTURE_ATTEND_DAY: TUniQuery;
    q_LECTURE_ATTEND_DAYID: TStringField;
    q_LECTURE_ATTEND_DAYLECTURE_ID: TStringField;
    q_LECTURE_ATTEND_DAYA_DATE: TDateField;
    d_LECTURE_ATTEND_DAY: TDataSource;
    q_STUDENT_ATTENDANCE: TUniQuery;
    q_STUDENT_ATTENDANCEID: TStringField;
    q_STUDENT_ATTENDANCELECTURE_ID: TStringField;
    q_STUDENT_ATTENDANCESTUDENT_ID: TStringField;
    q_STUDENT_ATTENDANCEA_KIND: TIntegerField;
    q_STUDENT_ATTENDANCEA_DATE: TDateField;
    q_STUDENT_ATTENDANCESTUDENT_NAME: TStringField;
    d_STUDENT_ATTENDANCE: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    gridLecture: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridLectureID: TcxGridDBColumn;
    gridLectureDONG_ID: TcxGridDBColumn;
    gridLectureL_YEAR: TcxGridDBColumn;
    gridLectureL_STEP: TcxGridDBColumn;
    gridLectureL_NAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnSaveExcelClick(Sender: TObject);
    procedure GridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure speStepChange(Sender: TObject);
    procedure speYearChange(Sender: TObject);
    procedure gridLectureCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure GetDayResults;
    procedure RetrieveLectureList;
    procedure DeleteStudentAttendance(LectureID, StudentID: string;
      ADate: TDateTime);
    procedure InsertStudentAttendance(LectureID, StudentID: string;
      ADate: TDateTime; AKind: integer);
    { Private declarations }
  public
    LectureID : string;
    DayCount, StudentCount : integer;
    DateArray : array of TDateTime;
    { Public declarations }
  end;

var
  fmAttendanceView: TfmAttendanceView;

implementation

uses Udm, GlobalVar;

{$R *.dfm}

procedure TfmAttendanceView.FormShow(Sender: TObject);
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
  Grid.MergeCells(0, 0, 1, 2);
  Grid.MergeCells(1, 0, 1, 2);
  Grid.MergeCells(2, 0, 1, 2);
  Grid.Cells[0, 0] := '수강자명';
  Grid.Cells[2, 0] := '출석/결석';
  Grid.ColWidths[1] := 0;
  RetrieveLectureList
end;

procedure TfmAttendanceView.btnRetrieveClick(Sender: TObject);
var
  i, d, t, col_start, row_start, month, col : integer;
  mon_first, day_cnt, rec_cnt : integer;
  student_id : string;
  xdate : TDateTime;
begin
  Screen.Cursor := crHourGlass;
  try
    LectureID := q_lecture_selectID.AsString;
    q_LECTURE_ATTEND_DAY.ParamByName('lecture_id').AsString := LectureID;
    q_LECTURE_ATTEND_DAY.Active := True;
    d_LECTURE_ATTEND_DAY.DataSet.Refresh;
    DayCount := q_LECTURE_ATTEND_DAY.RecordCount;
    if not DayCount > 0 then begin
      ShowMessage('출석일 자료가 없습니다.' + #13#10 +
                  '강좌관리 화면에서 해당 분기의 출석일생성을 먼저 하세요.');
      Exit;
    end;

    q_REQUEST_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
    q_REQUEST_VIEW.ParamByName('lecture_id').AsString := LectureID;
    q_REQUEST_VIEW.ParamByName('l_year').AsInteger := speYear.Value;
    q_REQUEST_VIEW.ParamByName('l_step').AsInteger := speStep.Value;
    q_REQUEST_VIEW.Active := True;
    d_REQUEST_VIEW.DataSet.Refresh;
    StudentCount := q_REQUEST_VIEW.RecordCount;
    if not DayCount > 0 then begin
      ShowMessage('선택한 분기의 수강자 자료가 없습니다.' + #13#10 +
                  '년도와 분기를 정확히 입력하세요.');
      Exit;
    end;

    Grid.Clear;
    Grid.MergeCells(0, 0, 1, 2);
    Grid.MergeCells(1, 0, 1, 2);
    Grid.MergeCells(2, 0, 1, 2);
    Grid.Cells[0, 0] := '수강자명';
    Grid.Cells[2, 0] := '출석/결석';

    Grid.ColCount := DayCount + 3;
    Grid.RowCount := StudentCount + 2;
    Grid.ColWidths[1] := 0;
    SetLength(DateArray, DayCount);
    col_start := 3;
    q_LECTURE_ATTEND_DAY.First;
    day_cnt := 0;
    mon_first := MonthOf(q_LECTURE_ATTEND_DAYA_DATE.AsDateTime);
    for i := 0 to DayCount - 1 do begin
      DateArray[i] := q_LECTURE_ATTEND_DAYA_DATE.AsDateTime;
      month := MonthOf(DateArray[i]);
      if month > mon_first then begin
        col := i + col_start - day_cnt;
        Grid.MergeCells(col, 0, day_cnt, 1);
        Grid.Cells[col, 0] := IntToStr(speYear.Value) + '년 ' + IntToStr(month - 1) + '월';
        Inc(mon_first);
        day_cnt := 0;
      end;
      if i = DayCount - 1 then begin
        col := i + col_start - day_cnt;
        Grid.MergeCells(col, 0, day_cnt+1, 1);
        Grid.Cells[col, 0] := IntToStr(speYear.Value) + '년 ' + IntToStr(month) + '월';
      end;
      Inc(day_cnt);
      Grid.Cells[col_start+i, 1] := IntToStr(DayOf(DateArray[i])) + '일';
      q_LECTURE_ATTEND_DAY.Next;
    end;
    row_start := 2;
    q_REQUEST_VIEW.First;
    for i := 0 to StudentCount - 1 do begin
      Grid.Cells[0, row_start+i] := q_REQUEST_VIEWS_NAME.AsString;
      Grid.Cells[1, row_start+i] := q_REQUEST_VIEWSTUDENT_ID.AsString;
      q_REQUEST_VIEW.Next;
    end;
    q_STUDENT_ATTENDANCE.ParamByName('lecture_id').AsString := LectureID;
    q_STUDENT_ATTENDANCE.Active := True;
    d_STUDENT_ATTENDANCE.DataSet.Refresh;
    rec_cnt := q_STUDENT_ATTENDANCE.RecordCount;
    q_STUDENT_ATTENDANCE.First;
    for i := 0 to rec_cnt - 1 do begin
      student_id := q_STUDENT_ATTENDANCESTUDENT_ID.AsString;
      xdate := q_STUDENT_ATTENDANCEA_DATE.AsDateTime;
      for t := 0 to DayCount - 1 do begin
        if DateArray[t] = xdate then begin
          Break;
        end;
      end;
      for d := 2 to Grid.RowCount do begin
        if Grid.Cells[1, d] = student_id then begin
          Grid.AddImageIdx(t + 3, d, 0, AdvGrid.haCenter, AdvGrid.vaCenter);
          Break;
        end;
      end;
      q_STUDENT_ATTENDANCE.Next;
    end;
    GetDayResults;
    btnSaveExcel.Enabled := True;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmAttendanceView.GetDayResults;
var
  rec_cnt, i, t, d : integer;
begin
  rec_cnt := 0;
  for i := 2 to Grid.RowCount do begin
    for t := 3 to Grid.ColCount do begin
      if Grid.GetImageIdx(t, i, d) then
        Inc(rec_cnt);
    end;
    Grid.Cells[2, i] := IntToStr(DayCount - rec_cnt) + '/' + IntToStr(rec_cnt);
    rec_cnt := 0;
  end;
end;
procedure TfmAttendanceView.btnSaveExcelClick(Sender: TObject);
var
  fname, sheetname : string;
  SaveDialog : TSaveDialog;
  l_name : string;
begin
  SaveDialog := TSaveDialog.Create(Self);
  try
    sheetname := IntToStr(speYear.Value) + '년' + IntToStr(speStep.Value) + '기';
    l_name := q_lecture_selectL_NAME.AsString;
    SaveDialog.Filter := '엑셀파일(*.xls)|*.xls';
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.FileName := sheetname + '_출석부_' + l_name + '.xls';
    if SaveDialog.Execute then begin
      fname := SaveDialog.FileName;
      AdvGridExcelIO1.XLSExport(fname, sheetname);
    end;
  finally
    SaveDialog.Free;
  end;
end;

procedure TfmAttendanceView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  q_LECTURE_ATTEND_DAY.Close;
  q_STUDENT_ATTENDANCE.Close;
  q_REQUEST_VIEW.Close;
  q_lecture_select.Close;
  Action := caFree;
end;

procedure TfmAttendanceView.RetrieveLectureList;
begin
  q_lecture_select.ParamByName('dong_id').AsString := LoginUserDong;
  q_lecture_select.ParamByName('l_year').AsInteger := speYear.Value;
  q_lecture_select.ParamByName('l_step').AsInteger := speStep.Value;
  q_lecture_select.Active := True;
  d_lecture_select.DataSet.Refresh;
  btnRetrieve.Enabled := True;
end;

procedure TfmAttendanceView.speStepChange(Sender: TObject);
begin
  RetrieveLectureList;
end;

procedure TfmAttendanceView.speYearChange(Sender: TObject);
begin
  RetrieveLectureList;
end;

procedure TfmAttendanceView.GridDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  idx : integer;
  sel_date : TDateTime;
  lecture_id, student_id, student_name : string;
begin
  sel_date := DateArray[ACol - 3];
  lecture_id := q_lecture_selectID.AsString;
  student_name := Grid.cells[0, ARow];
  student_id := Grid.cells[1, ARow];

  if Grid.GetImageIdx(ACol, ARow, idx) then begin
    Grid.RemoveImageIdx(ACol, ARow);
    DeleteStudentAttendance(lecture_id, student_id, sel_date);
  end else begin
    Grid.AddImageIdx(ACol, ARow, 0, AdvGrid.haCenter, AdvGrid.vaCenter);
    InsertStudentAttendance(lecture_id, student_id, sel_date, 1);
  end;
  GetDayResults;
end;

procedure TfmAttendanceView.GridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  HAlign := taCenter;
  VAlign := vtaCenter;
end;

procedure TfmAttendanceView.gridLectureCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnRetrieve.Click;
end;

procedure TfmAttendanceView.DeleteStudentAttendance(LectureID, StudentID: string; ADate: TDateTime);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('DELETE FROM STUDENT_ATTENDANCE ');
      SQL.Add('where LECTURE_ID = :LECTURE_ID and STUDENT_ID = :STUDENT_ID and A_DATE = :A_DATE ');
      ParamByName('LECTURE_ID').AsString := LectureID;
      ParamByName('STUDENT_ID').AsString := StudentID;
      ParamByName('A_DATE').AsDateTime := ADate;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmAttendanceView.InsertStudentAttendance(LectureID, StudentID: string;
  ADate: TDateTime; AKind: integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('INSERT INTO STUDENT_ATTENDANCE ');
      SQL.Add('(ID, LECTURE_ID, STUDENT_ID, A_KIND, A_DATE) ');
      SQL.Add('VALUES(:ID, :LECTURE_ID, :STUDENT_ID, :A_KIND, :A_DATE)');
      ParamByName('ID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
      ParamByName('LECTURE_ID').AsString := LectureID;
      ParamByName('STUDENT_ID').AsString := StudentID;
      ParamByName('A_DATE').AsDateTime := ADate;
      ParamByName('A_KIND').AsInteger := AKind;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

initialization RegisterClasses([TfmAttendanceView]);

end.
