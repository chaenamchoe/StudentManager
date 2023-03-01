unit UfmLectureView;

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
  Uni, cxGridExportLink, DateUtils, UfrmYearQuarter, Menus, cxButtons, cxVariants,
  dxSkinSevenClassic, dxSkinSharp, MemDS, DBAccess, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinWhiteprint, dxSkinXmas2008Blue, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Gauges;

type
  TfmLectureView = class(TForm)
    Panel1: TPanel;
    gridLecture: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridLectureID: TcxGridDBColumn;
    gridLectureDONG_ID: TcxGridDBColumn;
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
    gridLectureL_DURATION: TcxGridDBColumn;
    gridLectureL_TIME: TcxGridDBColumn;
    gridLectureL_TIME_START: TcxGridDBColumn;
    gridLectureL_TIME_END: TcxGridDBColumn;
    gridLectureEND_DATE: TcxGridDBColumn;
    gridLecturePLAN_MEN: TcxGridDBColumn;
    gridLectureREGIST_MEN: TcxGridDBColumn;
    gridLectureWAIT_MEN: TcxGridDBColumn;
    gridLectureDROP_MEN: TcxGridDBColumn;
    gridLectureTOTAL_DAY: TcxGridDBColumn;
    gridLectureTOTAL_TIME: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    frmYearQuarter1: TfrmYearQuarter;
    btnSaveColumn: TcxButton;
    gridLectureTEACHER_PERCENT: TcxGridDBColumn;
    gridLectureCALC_KIND: TcxGridDBColumn;
    gridLectureMONTH1_DAYS: TcxGridDBColumn;
    gridLectureMONTH2_DAYS: TcxGridDBColumn;
    gridLectureMONTH3_DAYS: TcxGridDBColumn;
    btnRetrieve: TcxButton;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnExport: TcxButton;
    btnPrint: TcxButton;
    btnAttendance: TcxButton;
    btnCopyLecture: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleGreen: TcxStyle;
    gridLectureChange: TcxGridDBTableView;
    gridLectureChangeID: TcxGridDBColumn;
    gridLectureChangeDONG_ID: TcxGridDBColumn;
    gridLectureChangeL_YEAR: TcxGridDBColumn;
    gridLectureChangeL_STEP: TcxGridDBColumn;
    gridLectureChangeL_NAME: TcxGridDBColumn;
    gridLectureChangeL_TIME_WEEK: TcxGridDBColumn;
    gridLectureChangeL_DAYS: TcxGridDBColumn;
    gridLectureChangeL_MONTH: TcxGridDBColumn;
    gridLectureChangeSTART_DATE: TcxGridDBColumn;
    gridLectureChangeTEACHER_ID: TcxGridDBColumn;
    gridLectureChangeL_PRICE: TcxGridDBColumn;
    gridLectureChangeCLASSROOM_ID: TcxGridDBColumn;
    gridLectureChangeIS_ACTIVE: TcxGridDBColumn;
    gridLectureChangeL_DURATION: TcxGridDBColumn;
    gridLectureChangeL_TIME: TcxGridDBColumn;
    gridLectureChangeL_TIME_START: TcxGridDBColumn;
    gridLectureChangeL_TIME_END: TcxGridDBColumn;
    gridLectureChangeEND_DATE: TcxGridDBColumn;
    gridLectureChangePLAN_MEN: TcxGridDBColumn;
    gridLectureChangeREGIST_MEN: TcxGridDBColumn;
    gridLectureChangeWAIT_MEN: TcxGridDBColumn;
    gridLectureChangeDROP_MEN: TcxGridDBColumn;
    gridLectureChangeTOTAL_DAY: TcxGridDBColumn;
    gridLectureChangeTOTAL_TIME: TcxGridDBColumn;
    gridLectureChangeTEACHER_PERCENT: TcxGridDBColumn;
    gridLectureChangeCALC_KIND: TcxGridDBColumn;
    gridLectureChangeMONTH1_DAYS: TcxGridDBColumn;
    gridLectureChangeMONTH2_DAYS: TcxGridDBColumn;
    gridLectureChangeMONTH3_DAYS: TcxGridDBColumn;
    gridLectureL_IDX: TcxGridDBColumn;
    sp_lecture: TUniStoredProc;
    sp_lectureID: TStringField;
    sp_lectureDONG_ID: TStringField;
    sp_lectureL_YEAR: TIntegerField;
    sp_lectureL_STEP: TIntegerField;
    sp_lectureL_NAME: TStringField;
    sp_lectureL_TIME_WEEK: TIntegerField;
    sp_lectureL_DAYS: TStringField;
    sp_lectureL_MONTH: TIntegerField;
    sp_lectureSTART_DATE: TStringField;
    sp_lectureTEACHER_ID: TStringField;
    sp_lectureL_PRICE: TFloatField;
    sp_lectureCLASSROOM_ID: TStringField;
    sp_lectureIS_ACTIVE: TIntegerField;
    sp_lectureL_DURATION: TStringField;
    sp_lectureL_TIME: TFloatField;
    sp_lectureL_TIME_START: TSmallintField;
    sp_lectureL_TIME_END: TSmallintField;
    sp_lectureEND_DATE: TStringField;
    sp_lecturePLAN_MEN: TSmallintField;
    sp_lectureREGIST_MEN: TSmallintField;
    sp_lectureWAIT_MEN: TSmallintField;
    sp_lectureDROP_MEN: TSmallintField;
    sp_lectureTOTAL_DAY: TIntegerField;
    sp_lectureTOTAL_TIME: TFloatField;
    sp_lectureTEACHER_PERCENT: TSmallintField;
    sp_lectureCALC_KIND: TSmallintField;
    sp_lectureMONTH1_DAYS: TSmallintField;
    sp_lectureMONTH2_DAYS: TSmallintField;
    sp_lectureMONTH3_DAYS: TSmallintField;
    sp_lectureL_IDX: TSmallintField;
    ds_LECTURE: TDataSource;
    gridLectureMONTH1_PRICE: TcxGridDBColumn;
    gridLectureMONTH2_PRICE: TcxGridDBColumn;
    gridLectureMONTH3_PRICE: TcxGridDBColumn;
    gridLectureChangeMONTH1_PRICE: TcxGridDBColumn;
    gridLectureChangeMONTH2_PRICE: TcxGridDBColumn;
    gridLectureChangeMONTH3_PRICE: TcxGridDBColumn;
    SP_CHANGE_LECTURE_IDX: TUniStoredProc;
    CheckBox1: TCheckBox;
    SP_LECTURE_COPY_CHANGE: TUniStoredProc;
    btnReorder: TcxButton;
    q_update_index: TUniQuery;
    SP_LECTURE_COPY_CANCEL: TUniStoredProc;
    gridLecturePARENT_LECTURE_ID: TcxGridDBColumn;
    sp_lectureL_UID: TIntegerField;
    sp_lectureMONTH1_PRICE: TFloatField;
    sp_lectureMONTH2_PRICE: TFloatField;
    sp_lectureMONTH3_PRICE: TFloatField;
    sp_lecturePARENT_LECTURE_ID: TStringField;
    gridLectureL_UID: TcxGridDBColumn;
    gridLectureTEACHER_ID2: TcxGridDBColumn;
    gridLectureTEACHER_ID3: TcxGridDBColumn;
    cxStyleYellow: TcxStyle;
    btnSendServer: TcxButton;
    HTTP1: TIdHTTP;
    btnOnlineRegist: TcxButton;
    LECTURE_ONLINE_SEL: TUniStoredProc;
    LECTURE_ONLINE_INS: TUniStoredProc;
    UniStoredProc3: TUniStoredProc;
    LECTURE_ONLINE_UPD: TUniStoredProc;
    ds_LECTURE_ONLINE_SEL: TDataSource;
    LECTURE_ONLINE_SELID: TIntegerField;
    LECTURE_ONLINE_SELLECTURE_ID: TStringField;
    LECTURE_ONLINE_SELL_DESCRIPT: TMemoField;
    LECTURE_ONLINE_SELL_KIND_CODE: TStringField;
    LECTURE_ONLINE_SELL_AREA_CODE: TStringField;
    LECTURE_ONLINE_SELL_QTY: TIntegerField;
    PanelMSG: TPanel;
    Label1: TLabel;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    TEACHER_SEL_ID: TUniStoredProc;
    ds_TEACHER_SEL_ID: TDataSource;
    TEACHER_SEL_IDID: TStringField;
    TEACHER_SEL_IDDONG_ID: TStringField;
    TEACHER_SEL_IDT_NAME: TStringField;
    TEACHER_SEL_IDT_IDNO: TStringField;
    TEACHER_SEL_IDT_SEX: TStringField;
    TEACHER_SEL_IDT_TEL: TStringField;
    TEACHER_SEL_IDT_ADDR: TStringField;
    TEACHER_SEL_IDT_EMAIL: TStringField;
    TEACHER_SEL_IDBANK_NAME: TStringField;
    TEACHER_SEL_IDBANK_NO: TStringField;
    TEACHER_SEL_IDT_BIGO: TStringField;
    TEACHER_SEL_IDIS_ACTIVE: TIntegerField;
    TEACHER_SEL_IDREG_DATE: TDateField;
    TEACHER_SEL_IDT_BIRTH: TStringField;
    LECTURE_ONLINE_SELREG_SDATE: TStringField;
    LECTURE_ONLINE_SELREG_EDATE: TStringField;
    LECTURE_LIST_SEL: TUniStoredProc;
    LECTURE_LIST_UPD: TUniStoredProc;
    ds_LECTURE_LIST_SEL: TDataSource;
    LECTURE_LIST_SELID: TIntegerField;
    LECTURE_LIST_SELLECTURE_NAME: TStringField;
    LECTURE_LIST_SELL_DESCRIPT: TMemoField;
    LECTURE_LIST_SELL_KIND_CODE: TStringField;
    LECTURE_LIST_SELL_AREA_CODE: TStringField;
    LECTURE_LIST_SELL_QTY: TSmallintField;
    LECTURE_LIST_SELREG_SDATE: TStringField;
    LECTURE_LIST_SELREG_EDATE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridLectureCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCopyLectureClick(Sender: TObject);
    procedure btnAttendanceClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure frmYearMonth1cbYearChange(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmYearQuarter1cbQuarterChange(Sender: TObject);
    procedure gridLectureStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure gridLecturePLAN_MENCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureL_TIMECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureL_MONTHCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureTOTAL_DAYCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureTOTAL_TIMECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureSTART_DATECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureEND_DATECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureL_PRICECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureTEACHER_PERCENTCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureCLASSROOM_IDCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureREGIST_MENCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureDROP_MENCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureL_TIME_WEEKCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureL_DAYSCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureL_DURATIONCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridLectureChangeStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure gridLectureChangeCALC_KINDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridLectureCALC_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridLectureStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure gridLectureDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridLectureDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnReorderClick(Sender: TObject);
    procedure gridLectureTEACHER_ID2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure gridLectureTEACHER_ID3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnSendServerClick(Sender: TObject);
    procedure btnOnlineRegistClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure DeleteAttendanceData(LectureID: string);
    procedure CheckAttendanceExists(lecture_id: string);
    procedure CreateAttendanceDay(uid, lecture_id: string; attend_day: TDateTime);
    procedure GetAttendanceDayCount(lecture_id: string; lecture_time : Double);
    procedure UpdateLectureDayTime(lecture_id: string; TOTAL_DAY: INTEGER;
      TOTAL_TIME: DOUBLE);
    procedure SetMonthHeader;
    function CountWeek(StartDate, EndDate: TDate; CheckWeek: Integer): Integer;
    { Private declarations }
  public
    { Public declarations }
    DragIDX : Integer;
    DragID : string;
  end;

var
  fmLectureView: TfmLectureView;

implementation

uses Udm, GlobalVar, UfmLectureEdit, uCommonLogic, UfmLectureCopyDialog,
  UfmLectureChange, UfmLectureOnline;

{$R *.dfm}

procedure TfmLectureView.btnReorderClick(Sender: TObject);
var
  i, cnt : Integer;
  id : string;
begin
  dm.d_LECTURE.DataSet.DisableControls;
  cnt := dm.d_LECTURE.DataSet.RecordCount;
  dm.d_LECTURE.DataSet.First;
  for i := 0 to cnt - 1 do begin
    id := dm.d_LECTURE.DataSet.FieldByName('id').AsString;
    q_update_index.ParamByName('idx').Value := i+1;
    q_update_index.ParamByName('id').Value := id;
    q_update_index.ExecSQL;
    dm.d_LECTURE.DataSet.Next;
  end;
  dm.d_LECTURE.DataSet.Refresh;
  dm.d_LECTURE.DataSet.First;
  dm.d_LECTURE.DataSet.EnableControls;
end;

procedure TfmLectureView.btnRetrieveClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  dm.sp_lecture.ParamByName('il_year').AsInteger := frmYearQuarter1.IYear;
  dm.sp_lecture.ParamByName('il_step').AsInteger := frmYearQuarter1.IQuater;
  dm.sp_lecture.Active := True;
  dm.d_LECTURE.DataSet.Refresh;

  dm.sp_lecture_change.ParamByName('il_year').AsInteger := frmYearQuarter1.IYear;
  dm.sp_lecture_change.ParamByName('il_step').AsInteger := frmYearQuarter1.IQuater;
  dm.sp_lecture_change.Active := True;
  dm.d_LECTURE_CHANGE.DataSet.Refresh;

  SetMonthHeader;

  if dm.d_LECTURE.DataSet.RecordCount > 0 then begin
    btnEdit.Enabled := True;
    btnDelete.Enabled := True;
    btnAttendance.Enabled := True;
    btnExport.Enabled := True;
  end else begin
    btnEdit.Enabled := False;
    btnDelete.Enabled := False;
    btnAttendance.Enabled := False;
    btnExport.Enabled := False;
  end;
  Screen.Cursor := crArrow;
end;

procedure TfmLectureView.SetMonthHeader;
begin
  case frmYearQuarter1.IQuater of
    1: begin
      gridLectureMONTH1_PRICE.Caption := '1월분';
      gridLectureMONTH2_PRICE.Caption := '2월분';
      gridLectureMONTH3_PRICE.Caption := '3월분';
    end;
    2: begin
      gridLectureMONTH1_PRICE.Caption := '4월분';
      gridLectureMONTH2_PRICE.Caption := '5월분';
      gridLectureMONTH3_PRICE.Caption := '6월분';
    end;
    3: begin
      gridLectureMONTH1_PRICE.Caption := '7월분';
      gridLectureMONTH2_PRICE.Caption := '8월분';
      gridLectureMONTH3_PRICE.Caption := '9월분';
    end;
    4: begin
      gridLectureMONTH1_PRICE.Caption := '10월분';
      gridLectureMONTH2_PRICE.Caption := '11월분';
      gridLectureMONTH3_PRICE.Caption := '12월분';
    end;
  end;
end;
procedure TfmLectureView.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '강좌등록.ini';
  gridLecture.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmLectureView.btnSendServerClick(Sender: TObject);
var
  sResponse, uploadUrl : string;
  l_id, l_name, place_name, l_days, sdate, edate, l_price, t_name, l_comments : string;
  l_times, l_kind_code, l_area_code, teacher_id, teacher_phone, reg_sdate, reg_edate : string;
  i, cnt,sel_row, q_month, l_count, total_day : Integer;
  lParamList: TStringList;
begin
  cnt := gridLecture.Controller.SelectedRecordCount;
  Gauge1.MaxValue := cnt;
  PanelMSG.Visible := True;
  PanelMSG.Refresh;
  for i := 0 to cnt - 1 do begin
    sel_row := gridLecture.Controller.SelectedRecords[i].RecordIndex;
    l_id := gridLecture.DataController.GetValue(sel_row, gridLectureL_UID.Index);
    LECTURE_LIST_SEL.ParamByName('LEC_ID').Value := l_id;
    LECTURE_LIST_SEL.Active := True;
    ds_LECTURE_LIST_SEL.DataSet.Refresh;
    lParamList := TStringList.Create;
    l_name := gridLecture.DataController.GetValue(sel_row, gridLectureL_NAME.Index);
    place_name := gridLecture.DataController.GetDisplayText(sel_row, gridLectureCLASSROOM_ID.Index);
    l_days := gridLecture.DataController.GetValue(sel_row, gridLectureL_DAYS.Index);
    total_day := gridLecture.DataController.GetValue(sel_row, gridLectureTOTAL_DAY.Index);
    l_times := gridLecture.DataController.GetValue(sel_row, gridLectureL_DURATION.Index);
    sdate := gridLecture.DataController.GetDisplayText(sel_row, gridLectureSTART_DATE.Index);
    DateTimeToString(sdate, 'yyyymmddhhmmss', StrToDate(sdate));
    edate := gridLecture.DataController.GetDisplayText(sel_row, gridLectureEND_DATE.Index);
    DateTimeToString(edate, 'yyyymmddhhmmss', StrToDate(edate));
    l_price := gridLecture.DataController.GetDisplayText(sel_row, gridLectureL_PRICE.Index);
    l_price := StringReplace(l_price, ',', '', [rfReplaceAll]);
    t_name := gridLecture.DataController.GetDisplayText(sel_row, gridLectureTEACHER_ID.Index);
    teacher_id := gridLecture.DataController.GetValue(sel_row, gridLectureTEACHER_ID.Index);
    q_month := frmYearQuarter1.cbQuarter.ItemIndex + 1;


    TEACHER_SEL_ID.ParamByName('TEACHER_ID').Value := teacher_id;
    TEACHER_SEL_ID.Active := True;
    ds_TEACHER_SEL_ID.DataSet.Refresh;
    teacher_phone := TEACHER_SEL_IDT_TEL.Value;

    l_comments := VarToStrDef(LECTURE_LIST_SELL_DESCRIPT.Value, '');
    l_count := LECTURE_LIST_SELL_QTY.Value;
    l_kind_code := VarToStrDef(LECTURE_LIST_SELL_KIND_CODE.Value, '');
    l_area_code := VarToStrDef(LECTURE_LIST_SELL_AREA_CODE.Value, '');
    reg_sdate := VarToStrDef(LECTURE_LIST_SELREG_SDATE.Value, '');
    DateTimeToString(reg_sdate, 'yyyymmddhhmmss', StrToDate(reg_sdate));
    reg_edate := VarToStrDef(LECTURE_LIST_SELREG_EDATE.Value, '');
    DateTimeToString(reg_edate, 'yyyymmddhhmmss', StrToDate(reg_edate));

    lParamList.Add('title=' + l_name);
    lParamList.Add('comment=' + l_comments);
    lParamList.Add('count=' + IntToStr(l_count));
    lParamList.Add('place=' + place_name);
    lParamList.Add('pweekday=' + l_days);
    lParamList.Add('ptime=' + l_times);
    lParamList.Add('price=' + l_price);
    lParamList.Add('sdate=' + reg_sdate);
    lParamList.Add('edate=' + reg_edate);
    lParamList.Add('tme=' + IntToStr(total_day));
    lParamList.Add('tname=' + t_name);
    lParamList.Add('tphone=' + teacher_phone);
    lParamList.Add('apptype=0');
    lParamList.Add('cssdate=' + sdate);
    lParamList.Add('csedate=' + edate);
    lParamList.Add('vsdate=' + reg_sdate);
    lParamList.Add('vedate=' + reg_edate);
    lParamList.Add('quarter=' + IntToStr(q_month));
    lParamList.Add('orgNm=' + IntToStr(LoginUserDongNumber));
    lParamList.Add('refrnc=' + LoginUserTel);
    lParamList.Add('slctnMth=' + l_kind_code);
    lParamList.Add('category2=' + l_kind_code);
    lParamList.Add('category3=' + IntToStr(LoginUserDongNumber));
    lParamList.Add('dstrct=' + l_area_code);
    lParamList.Add('syncNo=' + l_id);

    try
      sResponse := HTTP1.Post(ONLINE_SITE_UPLOAD, lParamList);
    except
      on E: Exception do
        ShowMessage('전송에러: '#13#10 + e.Message);
    end;
    lParamList.Free;
    Gauge1.Progress := i + 1;
    Gauge1.Refresh;
    PanelMSG.Refresh;
  end;
  PanelMSG.Visible := False;
end;

function TfmLectureView.CountWeek(StartDate, EndDate : TDate; CheckWeek : Integer) : Integer;
var
  DayNum, StartWeek : Integer;
  i : Integer;
  dno : Integer;
begin
  dno := 0;
  for i := Trunc(Int(StartDate)) to Trunc(Int(EndDate)) do begin
    if DayOfTheWeek(i) = CheckWeek then
      inc(dno);
  end;
  Result := dno;
end;

procedure TfmLectureView.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '강좌등록현황' + #13#10 +
              '===================' + #13#10 +
              '(' + IntToStr(frmYearQuarter1.IYear) + '년' + IntToStr(frmYearQuarter1.IQuater) + '분기)';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmLectureView.BitBtn1Click(Sender: TObject);
var
  lParamList: TStringList;
  uploadUrl, sResponse : string;
begin
  lParamList := TStringList.Create;
  lParamList.Add('course=');
  lParamList.Add('srcStatus=');
  lParamList.Add('srcYear=2017');
  lParamList.Add('searchCnd=');
  lParamList.Add('searchKrwd=');
  lParamList.Add('pageUnit=');
  lParamList.Add('exempted=');
  lParamList.Add('page=');
  uploadUrl := 'http://175.212.21.90:6503/edu/InhbtntAutnCnterAppList.do';
  try
    sResponse := HTTP1.Post(uploadUrl, lParamList);
    ShowMessage(sResponse);
  except
    on E: Exception do
      ShowMessage('Error on request: '#13#10 + e.Message);
  end;

end;

procedure TfmLectureView.btnAddClick(Sender: TObject);
var
  newID : string;
  SP : TUniStoredProc;
  toprow : Integer;
begin
  fmLectureEdit := TfmLectureEdit.Create(Self);
  SP := TUniStoredProc.Create(nil);
  try
    fmLectureEdit.IsEditMode        := False;
    fmLectureEdit.curr_lecture_id   := '';
    fmLectureEdit.edtYear.EditValue := frmYearQuarter1.IYear;
    fmLectureEdit.edtKisu.EditValue := frmYearQuarter1.IQuater;
    fmLectureEdit.edtMonth1Price.EditValue := 0;
    fmLectureEdit.edtMonth2Price.EditValue := 0;
    fmLectureEdit.edtMonth3Price.EditValue := 0;
    fmLectureEdit.edtPrice.EditValue := 0;
    fmLectureEdit.edtSudangPercent.Text := FloatToStr(dm.q_basic_valueLECTURE_PERCENT.AsFloat);
    fmLectureEdit.edtMonth.EditValue := 3;
    fmLectureEdit.edtIDX.EditValue := gridLecture.DataController.RecordCount + 1;
    fmLectureEdit.ShowModal;
    if fmLectureEdit.ModalResult = mrOk then begin
      newID := FormatDateTime('yyyymmddhhnnsszzz', now);
      with SP do begin
        Connection := dm.UniConnection1;
        StoredProcName := 'LECTURE_ACTIVE_IU';
        PrepareSQL(False);
        ParamByName('ID').AsString            := newID;
        ParamByName('L_YEAR').AsInteger       := fmLectureEdit.edtYear.EditValue;
        ParamByName('L_STEP').AsInteger       := fmLectureEdit.edtKisu.EditValue;
        ParamByName('L_NAME').AsString        := fmLectureEdit.edtName.Text;
        ParamByName('L_TIME_WEEK').AsInteger  := StrToInt(fmLectureEdit.edtWeekCount.Text);
        ParamByName('L_DAYS').AsString        := fmLectureEdit.edtWeekTemp.Text;
        ParamByName('L_MONTH').AsInteger      := fmLectureEdit.edtMonth.Value;
        ParamByName('START_DATE').AsString    := fmLectureEdit.edtStartDate.EditText;
        ParamByName('TEACHER_ID').AsString    := fmLectureEdit.edtTeacher.EditValue;
        ParamByName('TEACHER_ID2').AsString   := fmLectureEdit.edtTeacher2.EditValue;
        ParamByName('TEACHER_ID3').AsString   := fmLectureEdit.edtTeacher3.EditValue;
        ParamByName('L_PRICE').AsFloat        := fmLectureEdit.edtPrice.EditValue;
        ParamByName('CLASSROOM_ID').AsString  := fmLectureEdit.edtClassroom.EditValue;
        ParamByName('IS_ACTIVE').AsInteger    := fmLectureEdit.IS_ACTIVE.EditValue;
        ParamByName('L_DURATION').AsString    := fmLectureEdit.edtTimeStr.Text;
        ParamByName('L_TIME').AsFloat         := StrToFloat(fmLectureEdit.edtTime.Text);
        ParamByName('L_TIME_START').AsInteger := fmLectureEdit.edtStartTime.EditValue;
        ParamByName('L_TIME_END').AsInteger   := fmLectureEdit.edtEndTime.EditValue;
        ParamByName('END_DATE').AsString      := fmLectureEdit.edtEndDate.EditText;
        ParamByName('PLAN_MEN').AsInteger     := fmLectureEdit.edtMen.EditValue;
        ParamByName('REGIST_MEN').AsInteger   := 0;
        ParamByName('WAIT_MEN').AsInteger     := 0;
        ParamByName('DROP_MEN').AsInteger     := 0;
        ParamByName('TOTAL_DAY').AsInteger    := 0;
        ParamByName('TOTAL_TIME').AsFloat     := 0;
        ParamByName('TEACHER_PERCENT').AsInteger := StrToInt(fmLectureEdit.edtSudangPercent.Text);
        ParamByName('CALC_KIND').AsInteger     := fmLectureEdit.cbChangeMonth.EditValue;
        ParamByName('MONTH1_DAYS').AsInteger     := fmLectureEdit.edtMonth1Days.EditValue;
        ParamByName('MONTH2_DAYS').AsInteger     := fmLectureEdit.edtMonth2Days.EditValue;
        ParamByName('MONTH3_DAYS').AsInteger     := fmLectureEdit.edtMonth3Days.EditValue;
        ParamByName('L_IDX').AsInteger           := fmLectureEdit.edtIDX.EditValue;
        ParamByName('L_UID').AsInteger           := fmLectureEdit.lcbLecture.EditValue;
        ParamByName('MONTH1_PRICE').AsFloat      := fmLectureEdit.edtMonth1Price.EditValue;
        ParamByName('MONTH2_PRICE').AsFloat      := fmLectureEdit.edtMonth2Price.EditValue;
        ParamByName('MONTH3_PRICE').AsFloat      := fmLectureEdit.edtMonth3Price.EditValue;

        ExecProc;
      end;
      toprow := gridLecture.Controller.TopRowIndex;
      dm.d_LECTURE.DataSet.Refresh;
      dm.d_LECTURE_look.DataSet.Refresh;
      dm.d_LECTURE.DataSet.Locate('ID', newID, []);
      btnAttendance.Click;
      gridLecture.Controller.TopRowIndex := toprow;
    end;
  finally
    SP.Free;
    fmLectureEdit.Free;
  end;
end;

procedure TfmLectureView.btnEditClick(Sender: TObject);
var
  Week : string;
  strList:TStringList;
  ArrStr : Array of String;
  i, toprow : integer;
  SP : TUniStoredProc;
  LectureID : string;
begin
  fmLectureEdit := TfmLectureEdit.Create(Self);
  strList := TStringList.Create;
  SP := TUniStoredProc.Create(self);
  try
    fmLectureEdit.IsEditMode := True;
    fmLectureEdit.lcbLecture.EditValue    := dm.sp_lectureL_UID.AsInteger;
    LectureID                             := dm.sp_LECTUREID.AsString;
    fmLectureEdit.edtYear.EditValue       := dm.sp_LECTUREL_YEAR.AsInteger;
    fmLectureEdit.edtKisu.EditValue       := dm.sp_LECTUREL_STEP.AsInteger;
    fmLectureEdit.edtName.Text            := dm.sp_LECTUREL_NAME.AsString;
    fmLectureEdit.edtMonth.Value          := dm.sp_LECTUREL_MONTH.AsInteger;
    fmLectureEdit.edtPrice.Value          := dm.sp_LECTUREL_PRICE.AsFloat;
    fmLectureEdit.edtClassroom.EditValue  := dm.sp_LECTURECLASSROOM_ID.AsString;
    fmLectureEdit.edtTimeStr.Text         := dm.sp_LECTUREL_DURATION.Text;
    fmLectureEdit.edtTime.Text            := FloatToStr(dm.sp_LECTUREL_TIME.AsFloat);
    fmLectureEdit.edtStartTime.EditValue  := dm.sp_LECTUREL_TIME_START.AsInteger;
    fmLectureEdit.edtEndTime.EditValue    := dm.sp_LECTUREL_TIME_END.AsInteger;
    fmLectureEdit.edtStartDate.EditText   := dm.sp_LECTURESTART_DATE.AsString;
    fmLectureEdit.edtTeacher.EditValue    := dm.sp_LECTURETEACHER_ID.AsString;
    fmLectureEdit.edtTeacher2.EditValue    := dm.sp_LECTURETEACHER_ID2.AsString;
    fmLectureEdit.edtTeacher3.EditValue    := dm.sp_LECTURETEACHER_ID3.AsString;
    fmLectureEdit.edtEndDate.EditText     := dm.sp_LECTUREEND_DATE.AsString;
    fmLectureEdit.edtMen.EditValue        := dm.sp_LECTUREPLAN_MEN.AsInteger;
    fmLectureEdit.edtSudangPercent.Text   := IntToStr(dm.sp_lectureTEACHER_PERCENT.AsInteger);
    fmLectureEdit.cbChangeMonth.EditValue := dm.sp_lectureCALC_KIND.AsInteger;
    fmLectureEdit.cbChangeKind.EditValue  := dm.sp_lectureMONTH1_DAYS.AsInteger;
    fmLectureEdit.edtSecondMonth.EditValue := dm.sp_lectureMONTH2_DAYS.AsInteger;
    fmLectureEdit.edtThirdMonth.EditValue := dm.sp_lectureMONTH3_DAYS.AsInteger;
    fmLectureEdit.edtIDX.EditValue        := dm.sp_lectureL_IDX.AsInteger;
    fmLectureEdit.edtMonth1Days.EditValue := dm.sp_lectureMONTH1_DAYS.AsFloat;
    fmLectureEdit.edtMonth2Days.EditValue := dm.sp_lectureMONTH2_DAYS.AsFloat;
    fmLectureEdit.edtMonth3Days.EditValue := dm.sp_lectureMONTH3_DAYS.AsFloat;
    fmLectureEdit.edtMonth1Price.EditValue := dm.sp_lectureMONTH1_PRICE.AsFloat;
    fmLectureEdit.edtMonth2Price.EditValue := dm.sp_lectureMONTH2_PRICE.AsFloat;
    fmLectureEdit.edtMonth3Price.EditValue := dm.sp_lectureMONTH3_PRICE.AsFloat;
    fmLectureEdit.IS_ACTIVE.EditValue := dm.sp_lectureIS_ACTIVE.AsInteger;

    Week := dm.sp_LECTUREL_DAYS.AsString;
    fmLectureEdit.edtWeekTemp.Text := Week;
    fmLectureEdit.edtWeekCount.Text := IntToStr(dm.sp_LECTUREL_TIME_WEEK.AsInteger);
    strList.CommaText := Week;
    SetLength(arrStr, strList.Count);
    for i := 0 to strList.Count - 1 do begin
      ArrStr[i] := strList[i];
      if ArrStr[i] = '월' then fmLectureEdit.CheckBox1.Checked := True;
      if ArrStr[i] = '화' then fmLectureEdit.CheckBox2.Checked := True;
      if ArrStr[i] = '수' then fmLectureEdit.CheckBox3.Checked := True;
      if ArrStr[i] = '목' then fmLectureEdit.CheckBox4.Checked := True;
      if ArrStr[i] = '금' then fmLectureEdit.CheckBox5.Checked := True;
      if ArrStr[i] = '토' then fmLectureEdit.CheckBox6.Checked := True;
      if ArrStr[i] = '일' then fmLectureEdit.CheckBox7.Checked := True;
    end;
    fmLectureEdit.ShowModal;
    if fmLectureEdit.ModalResult = mrOk then begin
      with SP do begin
        Connection := dm.UniConnection1;
        StoredProcName := 'LECTURE_ACTIVE_IU';
        PrepareSQL(False);
        ParamByName('ID').AsString            := LectureID;
        ParamByName('L_YEAR').AsInteger       := fmLectureEdit.edtYear.EditValue;
        ParamByName('L_STEP').AsInteger       := fmLectureEdit.edtKisu.EditValue;
        ParamByName('L_NAME').AsString        := fmLectureEdit.lcbLecture.Text;
        ParamByName('L_TIME_WEEK').AsInteger  := StrToInt(fmLectureEdit.edtWeekCount.Text);
        ParamByName('L_DAYS').AsString        := fmLectureEdit.edtWeekTemp.Text;
        ParamByName('L_MONTH').AsInteger      := fmLectureEdit.edtMonth.Value;
        ParamByName('START_DATE').AsString    := fmLectureEdit.edtStartDate.EditText;
        ParamByName('TEACHER_ID').AsString    := fmLectureEdit.edtTeacher.EditValue;
        ParamByName('TEACHER_ID2').AsString    := fmLectureEdit.edtTeacher2.EditValue;
        ParamByName('TEACHER_ID3').AsString    := fmLectureEdit.edtTeacher3.EditValue;
        ParamByName('L_PRICE').AsFloat        := fmLectureEdit.edtPrice.EditValue;
        ParamByName('CLASSROOM_ID').AsString  := fmLectureEdit.edtClassroom.EditValue;
        ParamByName('IS_ACTIVE').AsInteger    := fmLectureEdit.IS_ACTIVE.EditValue;
        ParamByName('L_DURATION').AsString    := fmLectureEdit.edtTimeStr.Text;
        ParamByName('L_TIME').AsFloat         := StrToFloat(fmLectureEdit.edtTime.Text);
        ParamByName('L_TIME_START').AsInteger := fmLectureEdit.edtStartTime.EditValue;
        ParamByName('L_TIME_END').AsInteger   := fmLectureEdit.edtEndTime.EditValue;
        ParamByName('END_DATE').AsString      := fmLectureEdit.edtEndDate.EditText;
        ParamByName('PLAN_MEN').AsInteger     := fmLectureEdit.edtMen.EditValue;
        ParamByName('REGIST_MEN').AsInteger   := dm.sp_lectureREGIST_MEN.AsInteger;
        ParamByName('WAIT_MEN').AsInteger     := dm.sp_lectureWAIT_MEN.AsInteger;
        ParamByName('DROP_MEN').AsInteger     := dm.sp_lectureDROP_MEN.AsInteger;
        ParamByName('TOTAL_DAY').AsInteger    := dm.sp_lectureTOTAL_DAY.AsInteger;
        ParamByName('TOTAL_TIME').AsFloat     := dm.sp_lectureTOTAL_TIME.AsInteger;
        ParamByName('TEACHER_PERCENT').AsInteger := StrToInt(fmLectureEdit.edtSudangPercent.Text);
        ParamByName('CALC_KIND').AsInteger     := fmLectureEdit.cbChangeMonth.EditValue;
        ParamByName('MONTH1_DAYS').AsInteger     := fmLectureEdit.edtMonth1Days.EditValue;
        ParamByName('MONTH2_DAYS').AsInteger     := fmLectureEdit.edtMonth2Days.EditValue;
        ParamByName('MONTH3_DAYS').AsInteger     := fmLectureEdit.edtMonth3Days.EditValue;
        ParamByName('L_IDX').AsInteger           := fmLectureEdit.edtIDX.EditValue;
        ParamByName('L_UID').AsInteger           := fmLectureEdit.lcbLecture.EditValue;
        ParamByName('MONTH1_PRICE').AsFloat      := fmLectureEdit.edtMonth1Price.EditValue;
        ParamByName('MONTH2_PRICE').AsFloat      := fmLectureEdit.edtMonth2Price.EditValue;
        ParamByName('MONTH3_PRICE').AsFloat      := fmLectureEdit.edtMonth3Price.EditValue;
        ExecProc;
      end;
      toprow := gridLecture.Controller.TopRowIndex;
      dm.d_LECTURE.DataSet.Refresh;
      dm.d_LECTURE.DataSet.Locate('ID', LectureID, []);
      btnAttendance.Click;
      gridLecture.Controller.TopRowIndex := toprow;
    end;
  finally
    SP.Free;
    strList.Free;
    fmLectureEdit.Free;
  end;
end;

procedure TfmLectureView.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xlsx)|*.xlsx';
    saveDLG.FileName := '강좌등록현황_' + DateTimeToStr(Date) + '.xlsx';
    saveDLG.DefaultExt := 'xlsx';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToXLSX(nameonly, cxGrid1, false, true, true, 'xlsx');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmLectureView.btnOnlineRegistClick(Sender: TObject);
var
  has_data : Boolean;
  sdate, edate : TDateTime;
begin
  fmLectureOnline := TfmLectureOnline.Create(Self);
  try
    LECTURE_LIST_SEL.ParamByName('LEC_ID').Value := gridLectureL_UID.EditValue;
    LECTURE_LIST_SEL.Active := True;
    ds_LECTURE_LIST_SEL.DataSet.Refresh;

    fmLectureOnline.edtOnlineQty.Text := IntToStr(LECTURE_LIST_SELL_QTY.Value);
    fmLectureOnline.icbLectureKind.EditValue := VarToStrDef(LECTURE_LIST_SELL_KIND_CODE.Value, '');
    fmLectureOnline.icbAreaCode.EditValue := VarToStrDef(LECTURE_LIST_SELL_AREA_CODE.Value, '');
    fmLectureOnline.Memo1.Text := VarToStrDef(LECTURE_LIST_SELL_DESCRIPT.Value, '');
    if TryStrToDate(VarToStrDef(LECTURE_LIST_SELREG_SDATE.Value, ''), sdate) then
      fmLectureOnline.cxDateEdit1.Date := sdate
    else
      fmLectureOnline.cxDateEdit1.Clear;

    if TryStrToDate(VarToStrDef(LECTURE_LIST_SELREG_EDATE.Value, ''), edate) then
      fmLectureOnline.cxDateEdit2.Date := edate
    else
      fmLectureOnline.cxDateEdit2.Clear;

    fmLectureOnline.ShowModal;
    if fmLectureOnline.ModalResult = mrOk then begin
      LECTURE_LIST_UPD.ParamByName('ID').Value := LECTURE_LIST_SELID.Value;
      LECTURE_LIST_UPD.ParamByName('L_DESCRIPT').Value := fmLectureOnline.Memo1.Text;
      LECTURE_LIST_UPD.ParamByName('L_KIND_CODE').Value := fmLectureOnline.icbLectureKind.EditValue;
      LECTURE_LIST_UPD.ParamByName('L_AREA_CODE').Value := fmLectureOnline.icbAreaCode.EditValue;
      LECTURE_LIST_UPD.ParamByName('L_QTY').Value := StrToInt(fmLectureOnline.edtOnlineQty.Text);
      LECTURE_LIST_UPD.ParamByName('REG_SDATE').Value := DateToStr(fmLectureOnline.cxDateEdit1.EditValue);
      LECTURE_LIST_UPD.ParamByName('REG_EDATE').Value := DateToStr(fmLectureOnline.cxDateEdit2.EditValue);
      LECTURE_LIST_UPD.ExecProc;
    end;
  finally
    fmLectureOnline.Free;
  end;
end;

procedure TfmLectureView.btnAttendanceClick(Sender: TObject);
var
  t, cnt, tcnt, WeekDayNo : Integer;
  strList : TStringList;
  WeekDays, LectureID : string;
  StartDate, EndDate : TDateTime;
  lecture_time, total_time : Double;
begin
  try
    LectureID := dm.sp_LECTUREID.AsString;
    StartDate := dm.sp_LECTURESTART_DATE.AsDateTime;
    EndDate   := dm.sp_LECTUREEND_DATE.AsDateTime;
    WeekDays  := dm.sp_LECTUREL_DAYS.AsString;
    lecture_time := dm.sp_LECTUREL_TIME.AsFloat;
  except
    ShowMessage('시작날짜나 종료날짜가 없습니다.');
    Exit;
  end;
  gridLecture.DataController.SaveBookmark;

  strList := TStringList.Create;
  strList.CommaText := WeekDays;
  tcnt := 0;
  WeekDayNo := 1;
  for t := 0 to strList.Count - 1 do begin
    if strList[t] = '월' then WeekDayNo := 1;  //1=월, 2=화, 3=수, 4=목, 5=금, 6=토, 7=일
    if strList[t] = '화' then WeekDayNo := 2;
    if strList[t] = '수' then WeekDayNo := 3;
    if strList[t] = '목' then WeekDayNo := 4;
    if strList[t] = '금' then WeekDayNo := 5;
    if strList[t] = '토' then WeekDayNo := 6;
    if strList[t] = '일' then WeekDayNo := 7;
    cnt := CountWeek(StartDate, EndDate, WeekDayNo);
    tcnt := tcnt + cnt;
  end;
  total_time := tcnt * lecture_time;
  UpdateLectureDayTime(LectureID, tcnt, total_time);
  dm.d_LECTURE.DataSet.Refresh;
  gridLecture.DataController.GotoBookmark;
end;

procedure TfmLectureView.UpdateLectureDayTime(lecture_id : string; TOTAL_DAY : INTEGER; TOTAL_TIME : DOUBLE);
var
  SP : TUniStoredProc;
begin
  SP := TUniStoredProc.Create(self);
  try
    SP.Connection := dm.UniConnection1;
    SP.StoredProcName := 'SP_UPDATE_LECTURE_DAYTIME';
    SP.PrepareSQL(False);
    SP.ParamByName('LECTURE_ID').AsString := lecture_id;
    SP.ParamByName('TOTAL_DAY').AsInteger := TOTAL_DAY;
    SP.ParamByName('TOTAL_TIME').AsFloat := TOTAL_TIME;
    SP.ExecProc;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureView.GetAttendanceDayCount(lecture_id: string; lecture_time : Double);
var
  SP : TUniStoredProc;
  DayCount : Integer;
  total_time : Double;
begin
  SP := TUniStoredProc.Create(self);
  try
    SP.Connection := dm.UniConnection1;
    SP.StoredProcName := 'SP_GET_ATTENDANCE_DAYCOUNT';
    SP.PrepareSQL(True);
    SP.ParamByName('LECTURE_ID').AsString := lecture_id;
    SP.Active := True;
    DayCount := SP.FieldByName('DAYCOUNT').AsInteger;
    total_time := DayCount * lecture_time;
    UpdateLectureDayTime(lecture_id, DayCount, total_time);
  finally
    SP.Free;
  end;
end;

procedure TfmLectureView.CreateAttendanceDay(uid, lecture_id: string; attend_day: TDateTime);
var
  SP : TUniStoredProc;
begin
  SP := TUniStoredProc.Create(self);
  try
    SP.Connection := dm.UniConnection1;
    SP.StoredProcName := 'SP_CREATE_ATTENDANCE_DATA';
    SP.PrepareSQL(False);
    SP.ParamByName('ID').AsString := uid;
    SP.ParamByName('LECTURE_ID').AsString := lecture_id;
    SP.ParamByName('A_DATE').AsDateTime := attend_day;
    SP.ExecProc;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureView.CheckAttendanceExists(lecture_id: string);
var
  SP : TUniStoredProc;
  rtn_val : Integer;
begin
  SP := TUniStoredProc.Create(self);
  try
    SP.Connection := dm.UniConnection1;
    SP.StoredProcName := 'SP_CHECK_ATTENDANCE_EXISTS';
    SP.PrepareSQL(True);
    SP.ParamByName('LECTURE_ID').AsString := lecture_id;
    SP.Active := True;
    if SP.FieldByName('REC_COUNT').AsInteger > 0 then
      DeleteAttendanceData(lecture_id);
  finally
    SP.Free;
  end;
end;

procedure TfmLectureView.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    gridLecture.DragMode := dmAutomatic
  else
    gridLecture.DragMode := dmManual;
end;

procedure TfmLectureView.DeleteAttendanceData(LectureID : string);
var
  SP : TUniStoredProc;
begin
  SP := TUniStoredProc.Create(nil);
  try
    SP.Connection := dm.UniConnection1;
    SP.StoredProcName := 'SP_DELETE_ATTENDANCE_DATA';
    SP.PrepareSQL(False);
    SP.ParamByName('LECTURE_ID').AsString := LectureID;
    SP.ExecProc;
  finally
    SP.Free;
  end;
end;

procedure TfmLectureView.btnCopyLectureClick(Sender: TObject);
begin
  fmLectureCopyDialog := TfmLectureCopyDialog.Create(Self);
  try
    fmLectureCopyDialog.ShowModal;
    //btnRetrieve.Click;
  finally
    fmLectureCopyDialog.Free;
  end;
end;

procedure TfmLectureView.btnDeleteClick(Sender: TObject);
var
  lid : string;
  recno : Integer;
  Query : TUniQuery;
begin
  if dm.d_LECTURE.DataSet.RecordCount > 0 then begin
    Screen.Cursor := crHourGlass;
    Query := TUniQuery.Create(self);
    try
      dm.d_LECTURE.DataSet.DisableControls;
      recno := dm.d_LECTURE.DataSet.RecNo;
      lid := dm.d_LECTURE.DataSet.FieldByName('ID').AsString;
      if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
        + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
      begin
        with Query do begin
          Connection := dm.UniConnection1;
          SQL.Clear;
          SQL.Add('DELETE FROM LECTURE_ACTIVE WHERE ID = :LID ');
          ParamByName('LID').AsString := lid;
          Execute;
        end;
        dm.d_LECTURE.DataSet.Refresh;
        if recno > dm.d_LECTURE.DataSet.RecordCount then
          dm.d_LECTURE.DataSet.RecNo := recno - 1
        else
          dm.d_LECTURE.DataSet.RecNo := recno;
      end;
    finally
      Query.Free;
      Screen.Cursor := crArrow;
      dm.d_LECTURE.DataSet.EnableControls;
      cxGrid1.SetFocus;
    end;
  end;
end;

procedure TfmLectureView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLectureView.FormCreate(Sender: TObject);
begin
  frmYearQuarter1.InitYearMonth;
  btnRetrieve.Click;
end;

procedure TfmLectureView.FormShow(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '강좌등록.ini';
  if FileExists(fname) then
    gridLecture.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
end;

procedure TfmLectureView.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  frmYearQuarter1.cbQuarterChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmLectureView.frmYearMonth1cbYearChange(Sender: TObject);
begin
  frmYearQuarter1.cbYearChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmLectureView.frmYearQuarter1cbQuarterChange(Sender: TObject);
begin
  frmYearQuarter1.cbQuarterChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmLectureView.gridLectureCALC_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridLecture.GetColumnByFieldName('CALC_KIND').Index];
  if(col_kind > 0) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmLectureView.gridLectureCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmLectureView.gridLectureChangeCALC_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridLectureChange.GetColumnByFieldName('CALC_KIND').Index];
  if(col_kind > 0) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmLectureView.gridLectureChangeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
  col := gridLectureChange.GetColumnByFieldName('CALC_KIND').Index;
  if ARecord.Values[col] > 0 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleDefault;
end;

procedure TfmLectureView.gridLectureCLASSROOM_IDCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  new_idx : Integer;
begin
  new_idx := gridLectureL_IDX.EditValue;
  SP_CHANGE_LECTURE_IDX.ParamByName('L_YEAR').Value := frmYearQuarter1.IYear;
  SP_CHANGE_LECTURE_IDX.ParamByName('L_STEP').Value := frmYearQuarter1.IQuater;
  SP_CHANGE_LECTURE_IDX.ParamByName('SOURCE_ID').Value := DragID;
  SP_CHANGE_LECTURE_IDX.ParamByName('SOURCE_IDX').Value := DragIDX;
  SP_CHANGE_LECTURE_IDX.ParamByName('DEST_IDX').Value := new_idx;
  SP_CHANGE_LECTURE_IDX.ExecProc;
  dm.d_LECTURE.DataSet.Refresh;
  dm.d_LECTURE.DataSet.Locate('l_idx', new_idx, []);
end;

procedure TfmLectureView.gridLectureDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TcxDragControlObject);
end;

procedure TfmLectureView.gridLectureDROP_MENCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureEND_DATECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureL_DAYSCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureL_DURATIONCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureL_MONTHCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureL_PRICECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureL_TIMECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureL_TIME_WEEKCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLecturePLAN_MENCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureREGIST_MENCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragIDX := gridLectureL_IDX.EditValue;
  DragID := gridLectureID.EditValue;
end;

procedure TfmLectureView.gridLectureSTART_DATECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
  col := gridLecture.GetColumnByFieldName('CALC_KIND').Index;
  case ARecord.Values[col] of
    1: AStyle := cxStyleBlue;
    2: AStyle := cxStyleRed;
  end;
end;

procedure TfmLectureView.gridLectureTEACHER_ID2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  t1, t2 : Integer;
begin
  t1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('teacher_id').Index;
  t2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('teacher_id2').Index;
  if ARecord.Values[t1] <> ARecord.Values[t2] then
    AStyle := cxStyleYellow;
end;

procedure TfmLectureView.gridLectureTEACHER_ID3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  t1, t2 : Integer;
begin
  t1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('teacher_id').Index;
  t2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('teacher_id3').Index;
  if ARecord.Values[t1] <> ARecord.Values[t2] then
    AStyle := cxStyleYellow;
end;

procedure TfmLectureView.gridLectureTEACHER_PERCENTCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureTOTAL_DAYCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmLectureView.gridLectureTOTAL_TIMECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridLecture.GetColumnByFieldName('L_NAME').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

initialization RegisterClasses([TfmLectureView]);

end.
