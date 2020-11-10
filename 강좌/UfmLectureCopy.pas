unit UfmLectureCopy;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxTextEdit,
  cxDBLookupComboBox, cxImageComboBox, StdCtrls, Buttons, Spin, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, MemDS, DBAccess, Uni,
  dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, DateUtils;

type
  TfmLectureCopy = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    gridLecture: TcxGridDBTableView;
    gridLectureID: TcxGridDBColumn;
    gridLectureDONG_ID: TcxGridDBColumn;
    gridLectureL_YEAR: TcxGridDBColumn;
    gridLectureL_STEP: TcxGridDBColumn;
    gridLectureL_NAME: TcxGridDBColumn;
    gridLectureL_TIME_WEEK: TcxGridDBColumn;
    gridLectureL_DAYS: TcxGridDBColumn;
    gridLectureL_DURATION: TcxGridDBColumn;
    gridLectureL_MONTH: TcxGridDBColumn;
    gridLectureSTART_DATE: TcxGridDBColumn;
    gridLectureTEACHER_ID: TcxGridDBColumn;
    gridLectureL_PRICE: TcxGridDBColumn;
    gridLectureCLASSROOM_ID: TcxGridDBColumn;
    gridLectureIS_ACTIVE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridLecture2: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label1: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    Label3: TLabel;
    speYear2: TSpinEdit;
    speStep2: TSpinEdit;
    btnRetrieve2: TBitBtn;
    btnSelectAll: TBitBtn;
    btnCopy: TBitBtn;
    btnSelectAll2: TBitBtn;
    btnDelSelect: TBitBtn;
    gridLectureL_TIME: TcxGridDBColumn;
    gridLectureL_TIME_START: TcxGridDBColumn;
    gridLectureL_TIME_END: TcxGridDBColumn;
    gridLectureEND_DATE: TcxGridDBColumn;
    gridLecturePLAN_MEN: TcxGridDBColumn;
    gridLectureREGIST_MEN: TcxGridDBColumn;
    gridLectureWAIT_MEN: TcxGridDBColumn;
    gridLectureDROP_MEN: TcxGridDBColumn;
    gridLecture2L_TIME: TcxGridDBColumn;
    gridLecture2L_TIME_START: TcxGridDBColumn;
    gridLecture2L_TIME_END: TcxGridDBColumn;
    gridLecture2END_DATE: TcxGridDBColumn;
    gridLecture2PLAN_MEN: TcxGridDBColumn;
    gridLecture2REGIST_MEN: TcxGridDBColumn;
    gridLecture2WAIT_MEN: TcxGridDBColumn;
    gridLecture2DROP_MEN: TcxGridDBColumn;
    q_LECTURE_SRC: TUniQuery;
    q_LECTURE_SRCID: TStringField;
    q_LECTURE_SRCDONG_ID: TStringField;
    q_LECTURE_SRCL_YEAR: TIntegerField;
    q_LECTURE_SRCL_STEP: TIntegerField;
    q_LECTURE_SRCL_NAME: TStringField;
    q_LECTURE_SRCL_TIME_WEEK: TIntegerField;
    q_LECTURE_SRCL_DAYS: TStringField;
    q_LECTURE_SRCL_MONTH: TIntegerField;
    q_LECTURE_SRCTEACHER_ID: TStringField;
    q_LECTURE_SRCL_PRICE: TFloatField;
    q_LECTURE_SRCCLASSROOM_ID: TStringField;
    q_LECTURE_SRCIS_ACTIVE: TIntegerField;
    q_LECTURE_SRCL_DURATION: TStringField;
    q_LECTURE_SRCL_TIME: TFloatField;
    q_LECTURE_SRCL_TIME_START: TSmallintField;
    q_LECTURE_SRCL_TIME_END: TSmallintField;
    q_LECTURE_SRCPLAN_MEN: TSmallintField;
    q_LECTURE_SRCREGIST_MEN: TSmallintField;
    q_LECTURE_SRCWAIT_MEN: TSmallintField;
    q_LECTURE_SRCDROP_MEN: TSmallintField;
    q_LECTURE_SRCSTART_DATE: TStringField;
    q_LECTURE_SRCEND_DATE: TStringField;
    q_LECTURE_SRCTOTAL_DAY: TIntegerField;
    q_LECTURE_SRCTOTAL_TIME: TFloatField;
    d_LECTURE_SRC: TDataSource;
    q_LECTURE_DEST: TUniQuery;
    q_LECTURE_DESTID: TStringField;
    q_LECTURE_DESTDONG_ID: TStringField;
    q_LECTURE_DESTL_YEAR: TIntegerField;
    q_LECTURE_DESTL_STEP: TIntegerField;
    q_LECTURE_DESTL_NAME: TStringField;
    q_LECTURE_DESTL_TIME_WEEK: TIntegerField;
    q_LECTURE_DESTL_DAYS: TStringField;
    q_LECTURE_DESTL_MONTH: TIntegerField;
    q_LECTURE_DESTTEACHER_ID: TStringField;
    q_LECTURE_DESTL_PRICE: TFloatField;
    q_LECTURE_DESTCLASSROOM_ID: TStringField;
    q_LECTURE_DESTIS_ACTIVE: TIntegerField;
    q_LECTURE_DESTL_DURATION: TStringField;
    q_LECTURE_DESTL_TIME: TFloatField;
    q_LECTURE_DESTL_TIME_START: TSmallintField;
    q_LECTURE_DESTL_TIME_END: TSmallintField;
    q_LECTURE_DESTPLAN_MEN: TSmallintField;
    q_LECTURE_DESTREGIST_MEN: TSmallintField;
    q_LECTURE_DESTWAIT_MEN: TSmallintField;
    q_LECTURE_DESTDROP_MEN: TSmallintField;
    q_LECTURE_DESTSTART_DATE: TStringField;
    q_LECTURE_DESTEND_DATE: TStringField;
    q_LECTURE_DESTTOTAL_DAY: TIntegerField;
    q_LECTURE_DESTTOTAL_TIME: TFloatField;
    d_LECTURE_DEST: TDataSource;
    q_LECTURE_SRCTEACHER_PERCENT: TSmallintField;
    q_LECTURE_SRCCALC_KIND: TSmallintField;
    q_LECTURE_SRCMONTH1_DAYS: TSmallintField;
    q_LECTURE_SRCMONTH2_DAYS: TSmallintField;
    q_LECTURE_SRCMONTH3_DAYS: TSmallintField;
    q_LECTURE_SRCL_IDX: TSmallintField;
    q_LECTURE_DESTTEACHER_PERCENT: TSmallintField;
    q_LECTURE_DESTCALC_KIND: TSmallintField;
    q_LECTURE_DESTMONTH1_DAYS: TSmallintField;
    q_LECTURE_DESTMONTH2_DAYS: TSmallintField;
    q_LECTURE_DESTMONTH3_DAYS: TSmallintField;
    q_LECTURE_DESTL_IDX: TSmallintField;
    gridLectureL_IDX: TcxGridDBColumn;
    q_LECTURE_SRCL_UID: TIntegerField;
    q_LECTURE_SRCMONTH1_PRICE: TFloatField;
    q_LECTURE_SRCMONTH2_PRICE: TFloatField;
    q_LECTURE_SRCMONTH3_PRICE: TFloatField;
    q_LECTURE_DESTL_UID: TIntegerField;
    q_LECTURE_DESTMONTH1_PRICE: TFloatField;
    q_LECTURE_DESTMONTH2_PRICE: TFloatField;
    q_LECTURE_DESTMONTH3_PRICE: TFloatField;
    gridLecture2L_IDX: TcxGridDBColumn;
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnRetrieve2Click(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure speStep2Change(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnSelectAll2Click(Sender: TObject);
    procedure btnDelSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure speYear2Change(Sender: TObject);
    procedure speYearChange(Sender: TObject);
    procedure speStepChange(Sender: TObject);
  private
    procedure CopyLectureData(iYear, iKisu: integer; dataID, newID,
      dongID: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureCopy: TfmLectureCopy;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmLectureCopy.btnSelectAll2Click(Sender: TObject);
begin
  gridLecture2.DataController.SelectAll;
  cxGrid2.SetFocus;
end;

procedure TfmLectureCopy.btnSelectAllClick(Sender: TObject);
begin
  gridLecture.DataController.SelectAll;
  cxGrid1.SetFocus;
end;

procedure TfmLectureCopy.btnCopyClick(Sender: TObject);
var
  cnt, i, iYear, iKisu : Integer;
  bid, newID : string;
  intID : int64;
begin
  if (speYear.Value = speYear2.Value) and (speStep.Value = speStep2.Value) then begin
    ShowMessage('원본 리스트의 월분과 대상 리스트의 월분이 동일합니다.');
    Exit;
  end;
  if gridLecture.DataController.RecordCount < 1 then begin
    ShowMessage('원본 데이터가 없습니다.');
    Exit;
  end;
  if gridLecture2.DataController.RecordCount > 0 then begin
    ShowMessage('대상월분에 이미 데이터가 있습니다. 삭제 후 하세요.');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  iYear := speYear2.Value;
  iKisu := speStep2.Value;
  intID := StrToInt64(FormatDateTime('yyyymmddhhnnsszzz', now));
  d_LECTURE_SRC.DataSet.DisableControls;
  d_LECTURE_DEST.DataSet.DisableControls;
  cnt := gridLecture.DataController.GetSelectedCount;
  for i := 0 to cnt -1 do begin
    newID := IntToStr(intID + i);
    bid := gridLecture.Controller.SelectedRecords[i].Values[1];
    CopyLectureData(iYear, iKisu, bid, newID, LoginUserDong);
  end;
  d_LECTURE_SRC.DataSet.EnableControls;
  d_LECTURE_DEST.DataSet.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfmLectureCopy.CopyLectureData(iYear, iKisu : integer; dataID, newID, dongID : string);
begin
  if q_LECTURE_SRC.Locate('ID', dataID, []) then begin
    q_LECTURE_DEST.Append;
    q_LECTURE_DESTID.AsString := newID;
    q_LECTURE_DESTL_YEAR.AsInteger := iYear;
    q_LECTURE_DESTL_STEP.AsInteger := iKisu;
    q_LECTURE_DESTL_NAME.AsString := q_LECTURE_SRCL_NAME.AsString;
    q_LECTURE_DESTL_TIME_WEEK.AsInteger := q_LECTURE_SRCL_TIME_WEEK.AsInteger;
    q_LECTURE_DESTL_DAYS.AsString := q_LECTURE_SRCL_DAYS.AsString;
    q_LECTURE_DESTL_MONTH.AsInteger := q_LECTURE_SRCL_MONTH.AsInteger;
    q_LECTURE_DESTTEACHER_ID.AsString := q_LECTURE_SRCTEACHER_ID.AsString;
    q_LECTURE_DESTL_PRICE.AsFloat := q_LECTURE_SRCL_PRICE.AsFloat;
    q_LECTURE_DESTCLASSROOM_ID.AsString := q_LECTURE_SRCCLASSROOM_ID.AsString;
    q_LECTURE_DESTL_DURATION.AsString := q_LECTURE_SRCL_DURATION.AsString;
    q_LECTURE_DESTIS_ACTIVE.AsInteger := 0;
    q_LECTURE_DESTL_TIME.AsFloat := q_LECTURE_SRCL_TIME.AsFloat;
    q_LECTURE_DESTL_TIME_START.AsInteger := q_LECTURE_SRCL_TIME_START.AsInteger;
    q_LECTURE_DESTL_TIME_END.AsInteger := q_LECTURE_SRCL_TIME_END.AsInteger;
    q_LECTURE_DESTPLAN_MEN.AsInteger := q_LECTURE_SRCPLAN_MEN.AsInteger;
    q_LECTURE_DESTREGIST_MEN.AsInteger := 0;
    q_LECTURE_DESTWAIT_MEN.AsInteger := 0;
    q_LECTURE_DESTDROP_MEN.AsInteger := 0;
    q_LECTURE_DESTTOTAL_DAY.AsInteger := 0;
    q_LECTURE_DESTTOTAL_TIME.AsFloat := 0;
    q_LECTURE_DESTTEACHER_PERCENT.AsInteger := q_LECTURE_SRCTEACHER_PERCENT.AsInteger;
    q_LECTURE_DESTCALC_KIND.AsInteger := 0;
    q_LECTURE_DESTMONTH1_DAYS.AsInteger := 0;
    q_LECTURE_DESTMONTH2_DAYS.AsInteger := 0;
    q_LECTURE_DESTMONTH3_DAYS.AsInteger := 0;
    q_LECTURE_DESTMONTH1_PRICE.AsFloat := q_LECTURE_SRCL_PRICE.AsFloat / 3;
    q_LECTURE_DESTMONTH2_PRICE.AsFloat := q_LECTURE_SRCL_PRICE.AsFloat / 3;
    q_LECTURE_DESTMONTH3_PRICE.AsFloat := q_LECTURE_SRCL_PRICE.AsFloat / 3;
    q_LECTURE_DESTL_IDX.AsInteger := q_LECTURE_SRCL_IDX.AsInteger;
    q_LECTURE_DESTL_UID.AsInteger := q_LECTURE_SRCL_UID.AsInteger;
    q_LECTURE_DEST.Post;
    d_LECTURE_DEST.DataSet.Refresh;
  end;
end;

procedure TfmLectureCopy.btnDelSelectClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    Screen.Cursor := crHourGlass;
    gridLecture2.DataController.DeleteSelection;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmLectureCopy.btnRetrieve2Click(Sender: TObject);
begin
  q_LECTURE_DEST.ParamByName('l_year').AsInteger := speYear2.Value;
  q_LECTURE_DEST.ParamByName('l_step').AsInteger := speStep2.Value;
  q_LECTURE_DEST.Active := True;
  d_LECTURE_DEST.DataSet.Refresh;
end;

procedure TfmLectureCopy.btnRetrieveClick(Sender: TObject);
begin
  q_LECTURE_SRC.ParamByName('l_year').AsInteger := speYear.Value;
  q_LECTURE_SRC.ParamByName('l_step').AsInteger := speStep.Value;
  q_LECTURE_SRC.Active := True;
  d_LECTURE_SRC.DataSet.Refresh;
end;

procedure TfmLectureCopy.FormShow(Sender: TObject);
begin
  speYear.Value := YearOf(Date);
  speYear2.Value := YearOf(Date);
end;

procedure TfmLectureCopy.speStep2Change(Sender: TObject);
begin
  btnRetrieve2.Click;
end;

procedure TfmLectureCopy.speStepChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmLectureCopy.speYear2Change(Sender: TObject);
begin
  btnRetrieve2.Click;
end;

procedure TfmLectureCopy.speYearChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

end.
