unit UfmLectureReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxDBLookupComboBox, cxImageComboBox, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, UfrmYearMonth, StdCtrls, Buttons, ExtCtrls,
  Uni, cxGridExportLink, DateUtils, dxmdaset, frxClass, frxDBSet, MemDS,
  DBAccess, UfrmYearQuarter, Menus, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDropDownEdit, Math, dxSkinSevenClassic, dxSkinSharp,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCurrencyEdit;

type
  TfmLectureReport = class(TForm)
    Panel1: TPanel;
    gridLecture: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridLectureID: TcxGridDBColumn;
    gridLectureL_YEAR: TcxGridDBColumn;
    gridLectureL_STEP: TcxGridDBColumn;
    gridLectureL_NAME: TcxGridDBColumn;
    gridLectureL_TIME_WEEK: TcxGridDBColumn;
    gridLectureL_DAYS: TcxGridDBColumn;
    gridLectureL_MONTH: TcxGridDBColumn;
    gridLectureSTART_DATE: TcxGridDBColumn;
    gridLectureTEACHER_ID: TcxGridDBColumn;
    gridLectureL_PRICE: TcxGridDBColumn;
    gridLectureCLASSROOM_ID: TcxGridDBColumn;
    gridLectureIS_ACTIVE: TcxGridDBColumn;
    btnRetrieve: TBitBtn;
    gridLectureL_DURATION: TcxGridDBColumn;
    gridLectureL_TIME: TcxGridDBColumn;
    gridLectureL_TIME_START: TcxGridDBColumn;
    gridLectureL_TIME_END: TcxGridDBColumn;
    gridLectureEND_DATE: TcxGridDBColumn;
    btnExport: TBitBtn;
    gridLecturePLAN_MEN: TcxGridDBColumn;
    gridLectureREGIST_MEN: TcxGridDBColumn;
    gridLectureWAIT_MEN: TcxGridDBColumn;
    gridLectureDROP_MEN: TcxGridDBColumn;
    gridLectureTOTAL_DAY: TcxGridDBColumn;
    gridLectureTOTAL_TIME: TcxGridDBColumn;
    btnDailyReport: TBitBtn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cbMonth: TComboBox;
    Label1: TLabel;
    dxMemData1: TdxMemData;
    dxMemData1year_month: TStringField;
    dxMemData1l_name: TStringField;
    dxMemData1weekday: TStringField;
    dxMemData1l_hour: TStringField;
    dxMemData1man_cnt: TIntegerField;
    dxMemData1teacher_name: TStringField;
    dxMemData1teacher_tel: TStringField;
    dxMemData1l_place: TStringField;
    dxMemData1dong_jigwi: TStringField;
    dxMemData1dong_name: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    q_teacher: TUniQuery;
    d_teacher: TDataSource;
    q_classroom: TUniQuery;
    d_classroom: TDataSource;
    q_classroomC_NAME: TStringField;
    q_teacherT_NAME: TStringField;
    q_teacherT_TEL: TStringField;
    btnAttendFront: TBitBtn;
    dxMemData2: TdxMemData;
    dxMemData1l_period: TStringField;
    dxMemData1user_dong_name: TStringField;
    btnAttendList: TBitBtn;
    dxMemData2l_student: TStringField;
    frxDBDataset2: TfrxDBDataset;
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
    q_LECTURE_ATTEND_DAY: TUniQuery;
    q_LECTURE_ATTEND_DAYID: TStringField;
    q_LECTURE_ATTEND_DAYLECTURE_ID: TStringField;
    q_LECTURE_ATTEND_DAYA_DATE: TDateField;
    d_LECTURE_ATTEND_DAY: TDataSource;
    dxMemData2l_tel: TStringField;
    dxMemData3: TdxMemData;
    dxMemData3day_str1: TStringField;
    dxMemData3day_str2: TStringField;
    dxMemData3day_str3: TStringField;
    dxMemData3day_str4: TStringField;
    dxMemData3day_str5: TStringField;
    dxMemData3day_str6: TStringField;
    dxMemData3day_str7: TStringField;
    dxMemData3day_str8: TStringField;
    dxMemData3day_str9: TStringField;
    dxMemData3day_str10: TStringField;
    dxMemData3day_str11: TStringField;
    dxMemData3day_str12: TStringField;
    frxDBDataset3: TfrxDBDataset;
    dxMemData3day_str13: TStringField;
    dxMemData3day_str14: TStringField;
    dxMemData3day_str15: TStringField;
    dxMemData1month1: TStringField;
    dxMemData1month2: TStringField;
    dxMemData1month3: TStringField;
    dxMemData2seq_no: TIntegerField;
    frmYearQuarter1: TfrmYearQuarter;
    btnSaveColumn: TcxButton;
    btnTeacherAttend: TBitBtn;
    dxMemData4: TdxMemData;
    dxMemData4l_name: TStringField;
    dxMemData4t_name: TStringField;
    dxMemData4l_days: TIntegerField;
    dxMemData4year_month: TStringField;
    dxMemData4busu_name: TStringField;
    frxDBDataset4: TfrxDBDataset;
    Label2: TLabel;
    dxMemData1line_limit: TIntegerField;
    cbLines: TcxImageComboBox;
    q_REQUEST_VIEWL_PRICE: TFloatField;
    q_REQUEST_VIEWL_IDX: TSmallintField;
    gridLectureL_IDX: TcxGridDBColumn;
    q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField;
    q_REQUEST_VIEWREG_MONTH: TSmallintField;
    q_REQUEST_VIEWREG_MONTH2: TSmallintField;
    q_REQUEST_VIEWREG_MONTH3: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH2: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH3: TSmallintField;
    q_REQUEST_VIEWREG_PRICE1: TFloatField;
    q_REQUEST_VIEWREG_PRICE2: TFloatField;
    q_REQUEST_VIEWREG_PRICE3: TFloatField;
    q_REQUEST_VIEWOUT_PRICE1: TFloatField;
    q_REQUEST_VIEWOUT_PRICE2: TFloatField;
    q_REQUEST_VIEWOUT_PRICE3: TFloatField;
    gridLectureTEACHER_ID2: TcxGridDBColumn;
    gridLectureTEACHER_ID3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnDailyReportClick(Sender: TObject);
    procedure btnAttendFrontClick(Sender: TObject);
    procedure btnAttendListClick(Sender: TObject);
    procedure frmYearQuarter1cbYearChange(Sender: TObject);
    procedure frmYearQuarter1cbQuarterChange(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTeacherAttendClick(Sender: TObject);
  private
    procedure DeleteAttendanceData(LectureID: string);
    procedure CheckAttendanceExists(lecture_id: string);
    procedure CreateAttendanceDay(lecture_id: string; attend_day: TDateTime);
    procedure GetAttendanceDayCount(lecture_id: string; lecture_time : Double);
    procedure UpdateLectureDayTime(lecture_id: string; TOTAL_DAY: INTEGER;
      TOTAL_TIME: DOUBLE);
    procedure MakeTimeTable(order_type : Integer);
    procedure SetReportLines(kind: Integer);
    { Private declarations }
  public
    { Public declarations }
    ReportDayCount : Integer;
  end;

var
  fmLectureReport: TfmLectureReport;

implementation

uses Udm, GlobalVar, UfmLectureEdit, UfmLectureCopy, uCommonLogic,
  UfmAttendingSetting;

{$R *.dfm}

procedure TfmLectureReport.btnDailyReportClick(Sender: TObject);
var
  teacher_id, lecture_id : string;
  lmonth : Integer;
begin
  lmonth := cbMonth.ItemIndex + 1;
  case lmonth of
    1, 4, 7, 10: teacher_id := gridLectureTEACHER_ID.EditValue;
    2, 5, 8, 11: teacher_id := gridLectureTEACHER_ID2.EditValue;
    3, 6, 9, 12: teacher_id := gridLectureTEACHER_ID3.EditValue;
  end;

  lecture_id := gridLectureCLASSROOM_ID.EditValue;
  q_teacher.ParamByName('t_id').Value := teacher_id;
  q_teacher.Active := True;
  d_teacher.DataSet.Refresh;

  q_classroom.ParamByName('c_id').Value := lecture_id;
  q_classroom.Active := True;
  d_classroom.DataSet.Refresh;

  dxMemData1.Close;
  dxMemData1.Open;
  dxMemData1.Append;
  dxMemData1year_month.Value := '(' + IntToStr(gridLectureL_YEAR.EditValue) + '년 ' + cbMonth.Text + ')';
  dxMemData1l_name.Value := gridLectureL_NAME.EditValue;
  dxMemData1weekday.Value := gridLectureL_DAYS.EditValue;
  dxMemData1l_hour.Value := gridLectureL_DURATION.EditValue;
  dxMemData1man_cnt.Value := gridLectureREGIST_MEN.EditValue;
  dxMemData1teacher_name.Value := q_teacherT_NAME.Value;
  dxMemData1teacher_tel.Value := q_teacherT_TEL.Value;
  dxMemData1l_place.Value := q_classroomC_NAME.Value;
  //dxMemData1l_period.Value := gridLectureSTART_DATE.EditValue + ' ~ ' + gridLectureEND_DATE.EditValue;

  dxMemData1dong_jigwi.Value := dm.q_basic_valueLECTURE_REPORT_JIGWI.AsString;
  dxMemData1dong_name.Value  := dm.q_basic_valueLECTURE_REPORT_NAME.AsString;

  dxMemData1.Post;

  frxReport1.LoadFromFile(gsDefaultFolder + 'StudyReport.fr3');
  frxReport1.ShowReport;
end;

procedure TfmLectureReport.btnAttendFrontClick(Sender: TObject);
var
  teacher_id, lecture_id : string;
  lmonth : Integer;
begin
  lmonth := cbMonth.ItemIndex + 1;
  case lmonth of
    1, 4, 7, 10: teacher_id := gridLectureTEACHER_ID.EditValue;
    2, 5, 8, 11: teacher_id := gridLectureTEACHER_ID2.EditValue;
    3, 6, 9, 12: teacher_id := gridLectureTEACHER_ID3.EditValue;
  end;
  lecture_id := gridLectureCLASSROOM_ID.EditValue;
  q_teacher.ParamByName('t_id').Value := teacher_id;
  q_teacher.Active := True;
  d_teacher.DataSet.Refresh;

  q_classroom.ParamByName('c_id').Value := lecture_id;
  q_classroom.Active := True;
  d_classroom.DataSet.Refresh;

  dxMemData1.Close;
  dxMemData1.Open;
  dxMemData1.Append;
  dxMemData1year_month.Value := '(' + IntToStr(gridLectureL_YEAR.EditValue) + '년 ' + cbMonth.Text + ')';
  dxMemData1l_name.Value := gridLectureL_NAME.EditValue;
  dxMemData1weekday.Value := gridLectureL_DAYS.EditValue;
  dxMemData1l_hour.Value := gridLectureL_DURATION.EditValue;
  dxMemData1man_cnt.Value := gridLectureREGIST_MEN.EditValue;
  dxMemData1teacher_name.Value := q_teacherT_NAME.Value;
  dxMemData1teacher_tel.Value := q_teacherT_TEL.Value;
  dxMemData1l_place.Value := q_classroomC_NAME.Value;
  dxMemData1l_period.Value := gridLectureSTART_DATE.EditValue + ' ~ ' + gridLectureEND_DATE.EditValue;

  dxMemData1dong_jigwi.Value := dm.q_basic_valueLECTURE_REPORT_JIGWI.AsString;
  dxMemData1dong_name.Value  := dm.q_basic_valueLECTURE_REPORT_NAME.AsString;
  dxMemData1user_dong_name.Value := LoginUserDongName;

  dxMemData1.Post;

  frxReport1.LoadFromFile(gsDefaultFolder + 'AttendingFront.fr3');
  frxReport1.ShowReport;
end;

procedure TfmLectureReport.btnRetrieveClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    dm.sp_lecture.ParamByName('il_year').AsInteger := frmYearQuarter1.IYear;
    dm.sp_lecture.ParamByName('il_step').AsInteger := frmYearQuarter1.IQuater;
    dm.sp_lecture.Active := True;
    dm.d_LECTURE.DataSet.Refresh;
    Screen.Cursor := crArrow;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmLectureReport.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  try
    fname := gsDefaultFolder + '강좌보고서.ini';
    gridLecture.StoreToIniFile(fname, True, [gsoUseSummary], '');
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmLectureReport.btnTeacherAttendClick(Sender: TObject);
var
  teacher_id, lecture_id : string;
  i, cnt, lmonth : Integer;
begin
  lmonth := cbMonth.ItemIndex + 1;
  try
    dxMemData4.Close;
    dxMemData4.Open;
    gridLecture.DataController.GotoFirst;
    for i := 0 to gridLecture.DataController.RecordCount - 1 do begin
      case lmonth of
        1, 4, 7, 10: teacher_id := gridLectureTEACHER_ID.EditValue;
        2, 5, 8, 11: teacher_id := gridLectureTEACHER_ID2.EditValue;
        3, 6, 9, 12: teacher_id := gridLectureTEACHER_ID3.EditValue;
      end;
      q_teacher.ParamByName('t_id').Value := teacher_id;
      q_teacher.Active := True;
      d_teacher.DataSet.Refresh;
      dxMemData4.Append;
      dxMemData4year_month.Value := '(' + IntToStr(gridLectureL_YEAR.EditValue) + '년 ' + cbMonth.Text + ')';
      dxMemData4l_name.Value := gridLectureL_NAME.EditValue;
      dxMemData4t_name.Value := q_teacherT_NAME.Value;
      dxMemData4l_days.Value := gridLectureTOTAL_DAY.EditValue;
      dxMemData4busu_name.Value := LoginUserDongName;
      dxMemData4.Post;
      gridLecture.DataController.GotoNext;
    end;

    frxReport1.LoadFromFile(gsDefaultFolder + 'teacher_attending.fr3');
    frxReport1.ShowReport;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmLectureReport.btnAttendListClick(Sender: TObject);
var
  teacher_id, lecture_id : string;
  i , cnt, order_sel : Integer;
  report_form : string;
begin
  try
    fmAttendingSetting := TfmAttendingSetting.Create(Self);
    try
      fmAttendingSetting.ShowModal;
      if fmAttendingSetting.ModalResult = mrOk then
        if fmAttendingSetting.chkOrderRegist.Checked then
          order_sel := 0
        else
          order_sel := 1;
    finally
      fmAttendingSetting.Free;
    end;
    teacher_id := gridLectureTEACHER_ID.EditValue;
    lecture_id := gridLectureCLASSROOM_ID.EditValue;
    q_teacher.ParamByName('t_id').Value := teacher_id;
    q_teacher.Active := True;
    d_teacher.DataSet.Refresh;

    q_classroom.ParamByName('c_id').Value := lecture_id;
    q_classroom.Active := True;
    d_classroom.DataSet.Refresh;

    dxMemData1.Close;
    dxMemData1.Open;
    dxMemData1.Append;
    dxMemData1year_month.Value := '(' + IntToStr(gridLectureL_YEAR.EditValue) + '년 ' + cbMonth.Text + ')';
    dxMemData1l_name.Value := gridLectureL_NAME.EditValue;
    dxMemData1weekday.Value := gridLectureL_DAYS.EditValue;
    dxMemData1l_hour.Value := gridLectureL_DURATION.EditValue;
    dxMemData1man_cnt.Value := gridLectureREGIST_MEN.EditValue;
    dxMemData1teacher_name.Value := q_teacherT_NAME.Value;
    dxMemData1teacher_tel.Value := q_teacherT_TEL.Value;
    dxMemData1l_place.Value := q_classroomC_NAME.Value;
    dxMemData1l_period.Value := gridLectureSTART_DATE.EditValue + ' ~ ' + gridLectureEND_DATE.EditValue;

    dxMemData1dong_jigwi.Value := dm.q_basic_valueLECTURE_REPORT_JIGWI.AsString;
    dxMemData1dong_name.Value  := dm.q_basic_valueLECTURE_REPORT_NAME.AsString;
    dxMemData1user_dong_name.Value := LoginUserDongName;

    dxMemData1.Post;
    if order_sel = 0 then
      MakeTimeTable(0)
    else
      MakeTimeTable(1);

    if ReportDayCount = 1 then begin
      report_form := 'AttendingList1.fr3';
      frxReport1.LoadFromFile(gsDefaultFolder + report_form);
      SetReportLines(1);
    end else if ReportDayCount = 2 then begin
      report_form := 'AttendingList2.fr3';
      frxReport1.LoadFromFile(gsDefaultFolder + report_form);
      SetReportLines(2);
    end else if ReportDayCount = 3 then begin
      report_form := 'AttendingList3.fr3';
      frxReport1.LoadFromFile(gsDefaultFolder + report_form);
      SetReportLines(3);
    end else if ReportDayCount = 4 then begin
      report_form := 'AttendingList5.fr3';
      frxReport1.LoadFromFile(gsDefaultFolder + report_form);
      SetReportLines(4);
    end else if ReportDayCount = 5 then begin
      report_form := 'AttendingList5.fr3';
      frxReport1.LoadFromFile(gsDefaultFolder + report_form);
      SetReportLines(4);
    end;
    frxReport1.ShowReport;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmLectureReport.SetReportLines(kind : Integer);
var
  field1, field2, field3, field4, field5, field6, field7, field8, field9, field10: TfrxMemoView;
  field11, field12, field13, field14, field15, field16, field17, field18, field19, field20: TfrxMemoView;
  field21, field22, field23, field24, field25, field26 : TfrxMemoView;
begin
  if kind = 1 then begin
    field1 := frxReport1.FindObject('frxDBDataset2seq_no') as TfrxMemoView;  //frxDBDataset2l_student
    field2 := frxReport1.FindObject('frxDBDataset2l_student') as TfrxMemoView;  //frxDBDataset2l_student
    field3 := frxReport1.FindObject('frxDBDataset2l_tel') as TfrxMemoView;  //frxDBDataset2l_student
    field4 := frxReport1.FindObject('Memo6') as TfrxMemoView;  //frxDBDataset2l_student
    field5 := frxReport1.FindObject('Memo7') as TfrxMemoView;  //frxDBDataset2l_student
    field6 := frxReport1.FindObject('Memo8') as TfrxMemoView;  //frxDBDataset2l_student
    field7 := frxReport1.FindObject('Memo9') as TfrxMemoView;  //frxDBDataset2l_student
    field8 := frxReport1.FindObject('Memo10') as TfrxMemoView;  //frxDBDataset2l_student
    field9 := frxReport1.FindObject('Memo11') as TfrxMemoView;  //frxDBDataset2l_student
    field1.Height := fr1cm * cbLines.EditValue;
    field2.Height := fr1cm * cbLines.EditValue;
    field3.Height := fr1cm * cbLines.EditValue;
    field4.Height := fr1cm * cbLines.EditValue;
    field5.Height := fr1cm * cbLines.EditValue;
    field6.Height := fr1cm * cbLines.EditValue;
    field7.Height := fr1cm * cbLines.EditValue;
    field8.Height := fr1cm * cbLines.EditValue;
    field9.Height := fr1cm * cbLines.EditValue;
  end;
  if kind = 2 then begin
    field1 := frxReport1.FindObject('frxDBDataset2seq_no') as TfrxMemoView;  //frxDBDataset2l_student
    field2 := frxReport1.FindObject('frxDBDataset2l_student') as TfrxMemoView;  //frxDBDataset2l_student
    field3 := frxReport1.FindObject('frxDBDataset2l_tel') as TfrxMemoView;  //frxDBDataset2l_student
    field4 := frxReport1.FindObject('Memo6') as TfrxMemoView;  //frxDBDataset2l_student
    field5 := frxReport1.FindObject('Memo7') as TfrxMemoView;  //frxDBDataset2l_student
    field6 := frxReport1.FindObject('Memo8') as TfrxMemoView;  //frxDBDataset2l_student
    field7 := frxReport1.FindObject('Memo9') as TfrxMemoView;  //frxDBDataset2l_student
    field8 := frxReport1.FindObject('Memo10') as TfrxMemoView;  //frxDBDataset2l_student
    field9 := frxReport1.FindObject('Memo11') as TfrxMemoView;  //frxDBDataset2l_student
    field10 := frxReport1.FindObject('Memo12') as TfrxMemoView;  //frxDBDataset2l_student
    field11 := frxReport1.FindObject('Memo13') as TfrxMemoView;  //frxDBDataset2l_student
    field12 := frxReport1.FindObject('Memo14') as TfrxMemoView;  //frxDBDataset2l_student
    field13 := frxReport1.FindObject('Memo15') as TfrxMemoView;  //frxDBDataset2l_student
    field14 := frxReport1.FindObject('Memo16') as TfrxMemoView;  //frxDBDataset2l_student
    field1.Height := fr1cm * cbLines.EditValue;
    field2.Height := fr1cm * cbLines.EditValue;
    field3.Height := fr1cm * cbLines.EditValue;
    field4.Height := fr1cm * cbLines.EditValue;
    field5.Height := fr1cm * cbLines.EditValue;
    field6.Height := fr1cm * cbLines.EditValue;
    field7.Height := fr1cm * cbLines.EditValue;
    field8.Height := fr1cm * cbLines.EditValue;
    field9.Height := fr1cm * cbLines.EditValue;
    field10.Height := fr1cm * cbLines.EditValue;
    field11.Height := fr1cm * cbLines.EditValue;
    field12.Height := fr1cm * cbLines.EditValue;
    field13.Height := fr1cm * cbLines.EditValue;
    field14.Height := fr1cm * cbLines.EditValue;
  end;
  if kind = 3 then begin
    field1 := frxReport1.FindObject('frxDBDataset2seq_no') as TfrxMemoView;  //frxDBDataset2l_student
    field2 := frxReport1.FindObject('frxDBDataset2l_student') as TfrxMemoView;  //frxDBDataset2l_student
    field3 := frxReport1.FindObject('frxDBDataset2l_tel') as TfrxMemoView;  //frxDBDataset2l_student
    field4 := frxReport1.FindObject('Memo6') as TfrxMemoView;  //frxDBDataset2l_student
    field5 := frxReport1.FindObject('Memo7') as TfrxMemoView;  //frxDBDataset2l_student
    field6 := frxReport1.FindObject('Memo8') as TfrxMemoView;  //frxDBDataset2l_student
    field7 := frxReport1.FindObject('Memo9') as TfrxMemoView;  //frxDBDataset2l_student
    field8 := frxReport1.FindObject('Memo10') as TfrxMemoView;  //frxDBDataset2l_student
    field9 := frxReport1.FindObject('Memo11') as TfrxMemoView;  //frxDBDataset2l_student
    field10 := frxReport1.FindObject('Memo12') as TfrxMemoView;  //frxDBDataset2l_student
    field11 := frxReport1.FindObject('Memo13') as TfrxMemoView;  //frxDBDataset2l_student
    field12 := frxReport1.FindObject('Memo14') as TfrxMemoView;  //frxDBDataset2l_student
    field13 := frxReport1.FindObject('Memo15') as TfrxMemoView;  //frxDBDataset2l_student
    field14 := frxReport1.FindObject('Memo16') as TfrxMemoView;  //frxDBDataset2l_student
    field15 := frxReport1.FindObject('Memo17') as TfrxMemoView;  //frxDBDataset2l_student
    field16 := frxReport1.FindObject('Memo18') as TfrxMemoView;  //frxDBDataset2l_student
    field17 := frxReport1.FindObject('Memo19') as TfrxMemoView;  //frxDBDataset2l_student
    field1.Height := fr1cm * cbLines.EditValue;
    field2.Height := fr1cm * cbLines.EditValue;
    field3.Height := fr1cm * cbLines.EditValue;
    field4.Height := fr1cm * cbLines.EditValue;
    field5.Height := fr1cm * cbLines.EditValue;
    field6.Height := fr1cm * cbLines.EditValue;
    field7.Height := fr1cm * cbLines.EditValue;
    field8.Height := fr1cm * cbLines.EditValue;
    field9.Height := fr1cm * cbLines.EditValue;
    field10.Height := fr1cm * cbLines.EditValue;
    field11.Height := fr1cm * cbLines.EditValue;
    field12.Height := fr1cm * cbLines.EditValue;
    field13.Height := fr1cm * cbLines.EditValue;
    field14.Height := fr1cm * cbLines.EditValue;
    field15.Height := fr1cm * cbLines.EditValue;
    field16.Height := fr1cm * cbLines.EditValue;
    field17.Height := fr1cm * cbLines.EditValue;
  end;
  if kind = 4 then begin
    field1 := frxReport1.FindObject('frxDBDataset2seq_no') as TfrxMemoView;  //frxDBDataset2l_student
    field2 := frxReport1.FindObject('frxDBDataset2l_student') as TfrxMemoView;  //frxDBDataset2l_student
    field3 := frxReport1.FindObject('frxDBDataset2l_tel') as TfrxMemoView;  //frxDBDataset2l_student
    field4 := frxReport1.FindObject('Memo6') as TfrxMemoView;  //frxDBDataset2l_student
    field5 := frxReport1.FindObject('Memo7') as TfrxMemoView;  //frxDBDataset2l_student
    field6 := frxReport1.FindObject('Memo8') as TfrxMemoView;  //frxDBDataset2l_student
    field7 := frxReport1.FindObject('Memo9') as TfrxMemoView;  //frxDBDataset2l_student
    field8 := frxReport1.FindObject('Memo10') as TfrxMemoView;  //frxDBDataset2l_student
    field9 := frxReport1.FindObject('Memo11') as TfrxMemoView;  //frxDBDataset2l_student
    field10 := frxReport1.FindObject('Memo12') as TfrxMemoView;  //frxDBDataset2l_student
    field11 := frxReport1.FindObject('Memo13') as TfrxMemoView;  //frxDBDataset2l_student
    field12 := frxReport1.FindObject('Memo14') as TfrxMemoView;  //frxDBDataset2l_student
    field13 := frxReport1.FindObject('Memo15') as TfrxMemoView;  //frxDBDataset2l_student
    field14 := frxReport1.FindObject('Memo16') as TfrxMemoView;  //frxDBDataset2l_student
    field15 := frxReport1.FindObject('Memo17') as TfrxMemoView;  //frxDBDataset2l_student
    field16 := frxReport1.FindObject('Memo18') as TfrxMemoView;  //frxDBDataset2l_student
    field17 := frxReport1.FindObject('Memo19') as TfrxMemoView;  //frxDBDataset2l_student
    field18 := frxReport1.FindObject('Memo20') as TfrxMemoView;  //frxDBDataset2l_student
    field19 := frxReport1.FindObject('Memo21') as TfrxMemoView;  //frxDBDataset2l_student
    field20 := frxReport1.FindObject('Memo22') as TfrxMemoView;  //frxDBDataset2l_student
    field21 := frxReport1.FindObject('Memo23') as TfrxMemoView;  //frxDBDataset2l_student
    field22 := frxReport1.FindObject('Memo24') as TfrxMemoView;  //frxDBDataset2l_student
    field23 := frxReport1.FindObject('Memo25') as TfrxMemoView;  //frxDBDataset2l_student
    field24 := frxReport1.FindObject('Memo26') as TfrxMemoView;  //frxDBDataset2l_student
    field25 := frxReport1.FindObject('Memo27') as TfrxMemoView;  //frxDBDataset2l_student
    field26 := frxReport1.FindObject('Memo28') as TfrxMemoView;  //frxDBDataset2l_student
    field1.Height := fr1cm * cbLines.EditValue;
    field2.Height := fr1cm * cbLines.EditValue;
    field3.Height := fr1cm * cbLines.EditValue;
    field4.Height := fr1cm * cbLines.EditValue;
    field5.Height := fr1cm * cbLines.EditValue;
    field6.Height := fr1cm * cbLines.EditValue;
    field7.Height := fr1cm * cbLines.EditValue;
    field8.Height := fr1cm * cbLines.EditValue;
    field9.Height := fr1cm * cbLines.EditValue;
    field10.Height := fr1cm * cbLines.EditValue;
    field11.Height := fr1cm * cbLines.EditValue;
    field12.Height := fr1cm * cbLines.EditValue;
    field13.Height := fr1cm * cbLines.EditValue;
    field14.Height := fr1cm * cbLines.EditValue;
    field15.Height := fr1cm * cbLines.EditValue;
    field16.Height := fr1cm * cbLines.EditValue;
    field17.Height := fr1cm * cbLines.EditValue;
    field18.Height := fr1cm * cbLines.EditValue;
    field19.Height := fr1cm * cbLines.EditValue;
    field20.Height := fr1cm * cbLines.EditValue;
    field21.Height := fr1cm * cbLines.EditValue;
    field22.Height := fr1cm * cbLines.EditValue;
    field23.Height := fr1cm * cbLines.EditValue;
    field24.Height := fr1cm * cbLines.EditValue;
    field25.Height := fr1cm * cbLines.EditValue;
    field26.Height := fr1cm * cbLines.EditValue;
  end;
end;

procedure TfmLectureReport.MakeTimeTable(order_type : Integer);
var
  i, d, t, col_start, row_start, lyear, lmonth, col : integer;
  mon_first, DayCount, StudentCount, WeekDayNo : integer;
  student_id, LectureID, WeekDays : string;
  xdate : TDateTime;
  StartDate, EndDate, ClassDate : TDateTime;
  strList : TStringList;
  req_lines, tmpline : Integer;
  lecture_price : Double;
begin
  Screen.Cursor := crHourGlass;
  try
    LectureID := gridLectureID.EditValue;
    WeekDays  := gridLectureL_DAYS.EditValue;
    lecture_price := gridLectureL_PRICE.EditValue;
    lyear := StrToInt(frmYearQuarter1.cbYear.Text);
    lmonth := cbMonth.ItemIndex + 1;

    StartDate := StrToDate(gridLectureSTART_DATE.EditValue);
    EndDate := StrToDate(gridLectureEND_DATE.EditValue);

    strList := TStringList.Create;
    strList.CommaText := WeekDays;
    dxMemData3.Close;
    dxMemData3.Open;
    d := 0;
    col := 1;
    WeekDayNo := 1;
    ReportDayCount := strList.Count;
    q_REQUEST_VIEW.ParamByName('lecture_id').AsString := LectureID;
    q_REQUEST_VIEW.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
    q_REQUEST_VIEW.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
    if order_type = 0 then
      q_REQUEST_VIEW.IndexFieldNames := 'P_DATE, ID'
    else
      q_REQUEST_VIEW.IndexFieldNames := 'S_NAME';

    q_REQUEST_VIEW.Active := True;
    d_REQUEST_VIEW.DataSet.Refresh;
    if (lmonth = 1) or (lmonth = 4) or (lmonth = 7) or (lmonth = 10) then begin
      if lecture_price > 0 then
//        q_REQUEST_VIEW.Filter := 'REG_PRICE1 > 0 and OUT_PRICE1 = 0'
        q_REQUEST_VIEW.Filter := 'OUT_PRICE1 = 0'
      else
        q_REQUEST_VIEW.Filter := '';
    end;
    if (lmonth = 2) or (lmonth = 5) or (lmonth = 8) or (lmonth = 11) then begin
      if lecture_price > 0 then
//        q_REQUEST_VIEW.Filter := 'REG_PRICE2 > 0 and OUT_PRICE2 = 0'
        q_REQUEST_VIEW.Filter := 'OUT_PRICE2 = 0'
      else
        q_REQUEST_VIEW.Filter := '';
    end;
    if (lmonth = 3) or (lmonth = 6) or (lmonth = 9) or (lmonth = 12) then begin
      if lecture_price > 0 then
//        q_REQUEST_VIEW.Filter := 'REG_PRICE3 > 0 and OUT_PRICE3 = 0'
        q_REQUEST_VIEW.Filter := 'OUT_PRICE3 = 0'
      else
        q_REQUEST_VIEW.Filter := '';
    end;
    q_REQUEST_VIEW.Filtered := True;

    StudentCount := q_REQUEST_VIEW.RecordCount;
    if not DayCount > 0 then begin
      ShowMessage('선택한 분기의 수강자 자료가 없습니다.' + #13#10 +
                  '년도와 분기를 정확히 입력하세요.');
      Exit;
    end;

    case cbLines.ItemIndex of
      0 : req_lines := 15;
      1 : req_lines := 16;
      2 : req_lines := 17;
      3 : req_lines := 18;
      4 : req_lines := 19;
      5 : req_lines := 20;
      6 : req_lines := 21;
      7 : req_lines := 22;
      8 : req_lines := 23;
      9 : req_lines := 24;
      10 : req_lines := 25;
    end;
    dxMemData2.Close;
    dxMemData2.Open;

    q_REQUEST_VIEW.First;
    for i := 0 to StudentCount - 1 do begin
      dxMemData2.Append;
      dxMemData2l_student.Value := q_REQUEST_VIEWS_NAME.Value;
      dxMemData2l_tel.Value := q_REQUEST_VIEWS_TEL.Value;
      dxMemData2seq_no.Value := i + 1;
      dxMemData2.Post;
      q_REQUEST_VIEW.Next;
    end;
    if ReportDayCount > 3 then begin
      if StudentCount < 14 then begin
        for i := StudentCount to 13 do begin
          dxMemData2.Append;
          dxMemData2l_student.Value := '';
          dxMemData2l_tel.Value := '';
          dxMemData2seq_no.Value := i + 1;
          dxMemData2.Post;
        end;
      end;
      if (StudentCount > 14) and (StudentCount < 25) then begin
        for i := StudentCount to 24 do begin
          dxMemData2.Append;
          dxMemData2l_student.Value := '';
          dxMemData2l_tel.Value := '';
          dxMemData2seq_no.Value := i + 1;
          dxMemData2.Post;
        end;
      end;
    end else begin
      if StudentCount < req_lines then begin
        for i := StudentCount to req_lines - 1 do begin
          dxMemData2.Append;
          dxMemData2l_student.Value := '';
          dxMemData2l_tel.Value := '';
          dxMemData2seq_no.Value := i + 1;
          dxMemData2.Post;
        end;
      end else begin
        tmpline := Floor(StudentCount / req_lines) + 1;
        for i := StudentCount to (tmpline * req_lines) - 1 do begin
          dxMemData2.Append;
          dxMemData2l_student.Value := '';
          dxMemData2l_tel.Value := '';
          dxMemData2seq_no.Value := i + 1;
          dxMemData2.Post;
        end;
      end;
    end;
  finally
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmLectureReport.UpdateLectureDayTime(lecture_id : string; TOTAL_DAY : INTEGER; TOTAL_TIME : DOUBLE);
var
  SP : TUniStoredProc;
begin
  SP := TUniStoredProc.Create(self);
  try
    try
      SP.Connection := dm.UniConnection1;
      SP.StoredProcName := 'SP_UPDATE_LECTURE_DAYTIME';
      SP.PrepareSQL(False);
      SP.ParamByName('LECTURE_ID').AsString := lecture_id;
      SP.ParamByName('TOTAL_DAY').AsInteger := TOTAL_DAY;
      SP.ParamByName('TOTAL_TIME').AsFloat := TOTAL_TIME;
      SP.ExecProc;
    except on E: Exception do
      ShowMessage(e.Message);
    end;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureReport.GetAttendanceDayCount(lecture_id: string; lecture_time : Double);
var
  SP : TUniStoredProc;
  DayCount : Integer;
  total_time : Double;
begin
  SP := TUniStoredProc.Create(self);
  try
    try
      SP.Connection := dm.UniConnection1;
      SP.StoredProcName := 'SP_GET_ATTENDANCE_DAYCOUNT';
      SP.PrepareSQL(True);
      SP.ParamByName('LECTURE_ID').AsString := lecture_id;
      SP.Active := True;
      DayCount := SP.FieldByName('DAYCOUNT').AsInteger;
      total_time := DayCount * lecture_time;
      UpdateLectureDayTime(lecture_id, DayCount, total_time);
    except on E: Exception do
      ShowMessage(e.Message);
    end;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureReport.CreateAttendanceDay(lecture_id: string; attend_day: TDateTime);
var
  SP : TUniStoredProc;
begin
  SP := TUniStoredProc.Create(self);
  try
    try
      SP.Connection := dm.UniConnection1;
      SP.StoredProcName := 'SP_CREATE_ATTENDANCE_DATA';
      SP.PrepareSQL(False);
      SP.ParamByName('ID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
      SP.ParamByName('LECTURE_ID').AsString := lecture_id;
      SP.ParamByName('A_DATE').AsDateTime := attend_day;
      SP.ExecProc;
    except on E: Exception do
      ShowMessage(e.Message);
    end;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureReport.CheckAttendanceExists(lecture_id: string);
var
  SP : TUniStoredProc;
  rtn_val : Integer;
begin
  SP := TUniStoredProc.Create(self);
  try
    try
      SP.Connection := dm.UniConnection1;
      SP.StoredProcName := 'SP_CHECK_ATTENDANCE_EXISTS';
      SP.PrepareSQL(True);
      SP.ParamByName('LECTURE_ID').AsString := lecture_id;
      SP.Active := True;
      if SP.FieldByName('REC_COUNT').AsInteger > 0 then
        DeleteAttendanceData(lecture_id);
    except on E: Exception do
      ShowMessage(e.Message);
    end;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureReport.DeleteAttendanceData(LectureID : string);
var
  SP : TUniStoredProc;
begin
  SP := TUniStoredProc.Create(nil);
  try
    try
      SP.Connection := dm.UniConnection1;
      SP.StoredProcName := 'SP_DELETE_ATTENDANCE_DATA';
      SP.PrepareSQL(False);
      SP.ParamByName('LECTURE_ID').AsString := LectureID;
      SP.ExecProc;
    except on E: Exception do
      ShowMessage(e.Message);
    end;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLectureReport.FormCreate(Sender: TObject);
begin
  try
    frmYearQuarter1.InitYearMonth;
    if MonthOf(Date) = 1 then
      cbMonth.ItemIndex := 0
    else
      cbMonth.ItemIndex := MonthOf(Date) - 1;
    btnRetrieve.Click;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmLectureReport.FormShow(Sender: TObject);
var
  fname : string;
begin
  try
    fname := gsDefaultFolder + '강좌보고서.ini';
    if FileExists(fname) then
      gridLecture.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmLectureReport.frmYearQuarter1cbQuarterChange(Sender: TObject);
begin
  frmYearQuarter1.cbQuarterChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmLectureReport.frmYearQuarter1cbYearChange(Sender: TObject);
begin
  frmYearQuarter1.cbYearChange(Sender);
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmLectureReport]);

end.
