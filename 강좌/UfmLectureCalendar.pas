unit UfmLectureCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, dxmdaset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Buttons, Spin, ExtCtrls, Math, cxVariants,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDBLookupComboBox, cxTextEdit,
  Grids, AdvObj, BaseGrid, AdvGrid, DateUtils, ImgList;

type
  TfmLectureCalendar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnMakeTable: TBitBtn;
    dxMemData1: TdxMemData;
    dxMemData1id: TSmallintField;
    dxMemData1w1c1: TStringField;
    dxMemData1w1c2: TStringField;
    dxMemData1w1c3: TStringField;
    dxMemData1w1c4: TStringField;
    dxMemData1w1c5: TStringField;
    dxMemData1w1c6: TStringField;
    dxMemData1w1c7: TStringField;
    dxMemData1w1c8: TStringField;
    dxMemData1w1c9: TStringField;
    dxMemData1w1c10: TStringField;
    dxMemData1w2c1: TStringField;
    dxMemData1w2c2: TStringField;
    dxMemData1w2c3: TStringField;
    dxMemData1w2c4: TStringField;
    dxMemData1w2c5: TStringField;
    dxMemData1w2c6: TStringField;
    dxMemData1w2c7: TStringField;
    dxMemData1w2c8: TStringField;
    dxMemData1w2c9: TStringField;
    dxMemData1w2c10: TStringField;
    dxMemData1w3c1: TStringField;
    dxMemData1w3c2: TStringField;
    dxMemData1w3c3: TStringField;
    dxMemData1w3c4: TStringField;
    dxMemData1w3c5: TStringField;
    dxMemData1w3c6: TStringField;
    dxMemData1w3c7: TStringField;
    dxMemData1w3c8: TStringField;
    dxMemData1w3c9: TStringField;
    dxMemData1w3c10: TStringField;
    dxMemData1w4c1: TStringField;
    dxMemData1w4c2: TStringField;
    dxMemData1w4c3: TStringField;
    dxMemData1w4c4: TStringField;
    dxMemData1w4c5: TStringField;
    dxMemData1w4c6: TStringField;
    dxMemData1w4c7: TStringField;
    dxMemData1w4c8: TStringField;
    dxMemData1w4c9: TStringField;
    dxMemData1w4c10: TStringField;
    dxMemData1w5c1: TStringField;
    dxMemData1w5c2: TStringField;
    dxMemData1w5c3: TStringField;
    dxMemData1w5c4: TStringField;
    dxMemData1w5c5: TStringField;
    dxMemData1w5c6: TStringField;
    dxMemData1w5c7: TStringField;
    dxMemData1w5c8: TStringField;
    dxMemData1w5c9: TStringField;
    dxMemData1w5c10: TStringField;
    dxMemData1w6c1: TStringField;
    dxMemData1w6c2: TStringField;
    dxMemData1w6c3: TStringField;
    dxMemData1w6c4: TStringField;
    dxMemData1w6c5: TStringField;
    dxMemData1w6c6: TStringField;
    dxMemData1w6c7: TStringField;
    dxMemData1w6c8: TStringField;
    dxMemData1w6c9: TStringField;
    dxMemData1w6c10: TStringField;
    ImageList1: TImageList;
    PanelLine0: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    PanelLine1: TPanel;
    Panel2: TPanel;
    PanelD7: TPanel;
    Grid7: TAdvStringGrid;
    Panel13: TPanel;
    PanelD6: TPanel;
    Grid6: TAdvStringGrid;
    Panel15: TPanel;
    PanelD5: TPanel;
    Grid5: TAdvStringGrid;
    Panel17: TPanel;
    PanelD4: TPanel;
    Grid4: TAdvStringGrid;
    Panel19: TPanel;
    PanelD3: TPanel;
    Grid3: TAdvStringGrid;
    Panel21: TPanel;
    PanelD2: TPanel;
    Grid2: TAdvStringGrid;
    Panel23: TPanel;
    PanelD1: TPanel;
    Grid1: TAdvStringGrid;
    PanelLine5: TPanel;
    Panel26: TPanel;
    PanelD35: TPanel;
    Grid35: TAdvStringGrid;
    Panel28: TPanel;
    PanelD34: TPanel;
    Grid34: TAdvStringGrid;
    Panel30: TPanel;
    PanelD33: TPanel;
    Grid33: TAdvStringGrid;
    Panel32: TPanel;
    PanelD32: TPanel;
    Grid32: TAdvStringGrid;
    Panel34: TPanel;
    PanelD31: TPanel;
    Grid31: TAdvStringGrid;
    Panel36: TPanel;
    PanelD30: TPanel;
    Grid30: TAdvStringGrid;
    Panel38: TPanel;
    PanelD29: TPanel;
    Grid29: TAdvStringGrid;
    PanelLine4: TPanel;
    Panel41: TPanel;
    PanelD28: TPanel;
    Grid28: TAdvStringGrid;
    Panel43: TPanel;
    PanelD27: TPanel;
    Grid27: TAdvStringGrid;
    Panel45: TPanel;
    PanelD26: TPanel;
    Grid26: TAdvStringGrid;
    Panel47: TPanel;
    PanelD25: TPanel;
    Grid25: TAdvStringGrid;
    Panel49: TPanel;
    PanelD24: TPanel;
    Grid24: TAdvStringGrid;
    Panel51: TPanel;
    PanelD23: TPanel;
    Grid23: TAdvStringGrid;
    Panel53: TPanel;
    PanelD22: TPanel;
    Grid22: TAdvStringGrid;
    PanelLine3: TPanel;
    Panel56: TPanel;
    PanelD21: TPanel;
    Grid21: TAdvStringGrid;
    Panel58: TPanel;
    PanelD20: TPanel;
    Grid20: TAdvStringGrid;
    Panel60: TPanel;
    PanelD19: TPanel;
    Grid19: TAdvStringGrid;
    Panel62: TPanel;
    PanelD18: TPanel;
    Grid18: TAdvStringGrid;
    Panel64: TPanel;
    PanelD17: TPanel;
    Grid17: TAdvStringGrid;
    Panel66: TPanel;
    PanelD16: TPanel;
    Grid16: TAdvStringGrid;
    Panel68: TPanel;
    PanelD15: TPanel;
    Grid15: TAdvStringGrid;
    PanelLine2: TPanel;
    Panel71: TPanel;
    PanelD14: TPanel;
    Grid14: TAdvStringGrid;
    Panel73: TPanel;
    PanelD13: TPanel;
    Grid13: TAdvStringGrid;
    Panel75: TPanel;
    PanelD12: TPanel;
    Grid12: TAdvStringGrid;
    Panel77: TPanel;
    PanelD11: TPanel;
    Grid11: TAdvStringGrid;
    Panel79: TPanel;
    PanelD10: TPanel;
    Grid10: TAdvStringGrid;
    Panel81: TPanel;
    PanelD9: TPanel;
    Grid9: TAdvStringGrid;
    Panel83: TPanel;
    PanelD8: TPanel;
    Grid8: TAdvStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMakeTableClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LectureString : array[0..6] of TStringList;
    procedure CreateLectureString;
  end;

var
  fmLectureCalendar: TfmLectureCalendar;

implementation

uses Udm, GlobalVar;

{$R *.dfm}


procedure TfmLectureCalendar.btnMakeTableClick(Sender: TObject);
var
  i, row, startday, daycnt : integer;
  sdate, cdate : TDate;
  iYear : Word;
  iMonth : Word;
  iDay : integer;
  iWeek : Integer;
  dateStr : string;
  DP : array[0..34] of TPanel;
begin
  DP[0] := PanelD1;  DP[1] := PanelD2;  DP[2] := PanelD3;  DP[3] := PanelD4;  DP[4] := PanelD5;
  DP[5] := PanelD6;  DP[6] := PanelD7;  DP[7] := PanelD8;  DP[8] := PanelD9;  DP[9] := PanelD10;
  DP[10] := PanelD11;  DP[11] := PanelD12;  DP[12] := PanelD13;  DP[13] := PanelD14;  DP[14] := PanelD15;
  DP[15] := PanelD16;  DP[16] := PanelD17;  DP[17] := PanelD18;  DP[18] := PanelD19;  DP[19] := PanelD20;
  DP[20] := PanelD21;  DP[21] := PanelD22;  DP[22] := PanelD23;  DP[23] := PanelD24;  DP[24] := PanelD25;
  DP[25] := PanelD26;  DP[26] := PanelD27;  DP[27] := PanelD28;  DP[28] := PanelD29;  DP[29] := PanelD30;
  DP[30] := PanelD31;  DP[31] := PanelD32;  DP[32] := PanelD33;  DP[33] := PanelD34;  DP[34] := PanelD35;

  iYear := speYear.Value;
  iMonth := speStep.Value;
  sdate := EncodeDate(speYear.Value, speStep.Value, 1);
  startday := DayOfTheWeek(sdate);  //주의 시작 1=일요일
  daycnt := DaysInMonth(sdate);  //달의 날짜 수

  CreateLectureString;

  cdate := EncodeDate(iYear, iMonth, 1);
  iWeek := DayOfTheWeek(cdate);
  iDay := 1;
  for i := iWeek to daycnt do begin
    DP[i-1].Caption := IntToStr(iDay);
    Inc(iDay);
  end;
  row := 1;

//원래 스트링그리드로 작업했던 소스
//  for i := 1 to daycnt do begin
//    cdate := EncodeDate(iYear, iMonth, i);
//    iWeek := DayOfTheWeek(cdate);
//    dateStr := '<font color="clBlue" size="14">' + IntToStr(i) + '</font><br>';
//    if Length(LectureString[iWeek-1].Text) > 0 then begin
//      Grid.Cells[iWeek - 1, row] := dateStr + LectureString[iWeek-1].Text;
//      Grid.AddScrollBar(iWeek-1, row, true);
//    end else begin
//      Grid.Cells[iWeek - 1, row] := dateStr;
//    end;
//
//    if iWeek = 7 then
//      Inc(row);
//  end;
end;

procedure TfmLectureCalendar.CreateLectureString;
var
  i, r, t, col_start, cnt, col_no, row_no : integer;
  class_name : array of string;
  l_id, l_days, room_id, room_name, l_name, l_dur, teacher_id, teacher_name : string;
  time_week, time_start, time_count, room_idx : integer;
  l_hour : Double;
  strList : TStringList;
  class_str : string;
begin
  for i := 0 to 6 do
    LectureString[i] := TStringList.Create;

  dm.q_LECTURE_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
  dm.q_LECTURE_VIEW.ParamByName('l_year').AsInteger := speYear.Value;
  dm.q_LECTURE_VIEW.ParamByName('l_step').AsInteger := 1;
  dm.q_LECTURE_VIEW.Active := True;
  dm.d_LECTURE_VIEW.DataSet.Refresh;

  cnt := dm.q_LECTURE_VIEW.RecordCount;
  dm.q_LECTURE_VIEW.First;
  for i := 0 to cnt - 1 do begin
    l_id := dm.q_LECTURE_VIEWID.AsString;               //강좌ID
    l_name := dm.q_LECTURE_VIEWL_NAME.AsString;         //강좌명
    teacher_name := dm.q_LECTURE_VIEWT_NAME.AsString;   //강사명
    l_dur := dm.q_LECTURE_VIEWL_DURATION.AsString;      //시간(13:00 ~ 15:00)
    l_days := dm.q_LECTURE_VIEWL_DAYS.AsString;         //요일(월,목)
    time_start := dm.q_LECTURE_VIEWL_TIME_START.AsInteger - 1;  //타임시작번호(1, 2, 3...)
    l_hour := dm.q_LECTURE_VIEWL_TIME.AsFloat;          //강좌시간(2, 2.5)
    room_idx := dm.q_LECTURE_VIEWROOM_IDX.AsInteger;    //강좌 인덱스번호

    time_count := Floor(l_hour / 0.5);
    strList := TStringList.Create;
    strList.CommaText := l_days;
    row_no := time_start + 2;
    class_str := l_name;
    for t := 0 to strList.Count - 1 do begin
      if strList[t] = '월' then begin
        LectureString[0].Add(class_str);
      end;
      if strList[t] = '화' then begin
        LectureString[1].Add(class_str);
      end;
      if strList[t] = '수' then begin
        LectureString[2].Add(class_str);
      end;
      if strList[t] = '목' then begin
        LectureString[3].Add(class_str);
      end;
      if strList[t] = '금' then begin
        LectureString[4].Add(class_str);
      end;
      if strList[t] = '토' then begin
        LectureString[5].Add(class_str);
      end;
    end;
    dm.q_LECTURE_VIEW.Next;
  end;
  dm.q_LECTURE_VIEW.EnableControls;

end;

procedure TfmLectureCalendar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLectureCalendar.FormShow(Sender: TObject);
var
  i : integer;
begin
  speYear.Value := YearOf(Date);
  speStep.Value := MonthOf(Date);
end;

initialization RegisterClasses([TfmLectureCalendar]);

end.
