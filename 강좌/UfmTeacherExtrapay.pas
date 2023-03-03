unit UfmTeacherExtrapay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxTextEdit, cxDBLookupComboBox, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSCore,
  dxPScxCommon, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, UfrmYearMonth,
  cxButtons, StdCtrls, Buttons, ExtCtrls, dxmdaset, MemDS, DBAccess, Uni,
  cxGridExportLink, DBClient, Provider, VirtualTable, dxSkinSevenClassic,
  dxSkinSharp, dxSkinOffice2007Black, dxSkinOffice2007Blue, cxVariants,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxCurrencyEdit, cxContainer, cxCheckBox;

type
  TfmTeacherExtrapay = class(TForm)
    Panel1: TPanel;
    btnSaveColumn: TcxButton;
    frmYearMonth1: TfrmYearMonth;
    cxGrid1: TcxGrid;
    gridExtrapay: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1lecture_name: TStringField;
    dxMemData1lecture_id: TStringField;
    dxMemData1teacher_name: TStringField;
    dxMemData1reg_count: TIntegerField;
    dxMemData1dc_count: TIntegerField;
    dxMemData1kind1_cnt: TIntegerField;
    dxMemData1kind2_cnt: TIntegerField;
    dxMemData1kind3_cnt: TIntegerField;
    dxMemData1kind4_cnt: TIntegerField;
    dxMemData1kind5_cnt: TIntegerField;
    dxMemData1kind_cnt6: TIntegerField;
    dxMemData1compan_price: TFloatField;
    dxMemData1total_price: TFloatField;
    dxMemData1lecture_price: TFloatField;
    q_lecture_active: TUniQuery;
    d_lecture_active: TDataSource;
    q_lecture_activeID: TStringField;
    q_lecture_activeDONG_ID: TStringField;
    q_lecture_activeL_YEAR: TIntegerField;
    q_lecture_activeL_STEP: TIntegerField;
    q_lecture_activeL_NAME: TStringField;
    q_lecture_activeL_TIME_WEEK: TIntegerField;
    q_lecture_activeL_DAYS: TStringField;
    q_lecture_activeL_MONTH: TIntegerField;
    q_lecture_activeSTART_DATE: TStringField;
    q_lecture_activeTEACHER_ID: TStringField;
    q_lecture_activeL_PRICE: TFloatField;
    q_lecture_activeCLASSROOM_ID: TStringField;
    q_lecture_activeIS_ACTIVE: TIntegerField;
    q_lecture_activeL_DURATION: TStringField;
    q_lecture_activeL_TIME: TFloatField;
    q_lecture_activeL_TIME_START: TSmallintField;
    q_lecture_activeL_TIME_END: TSmallintField;
    q_lecture_activeEND_DATE: TStringField;
    q_lecture_activePLAN_MEN: TSmallintField;
    q_lecture_activeREGIST_MEN: TSmallintField;
    q_lecture_activeWAIT_MEN: TSmallintField;
    q_lecture_activeDROP_MEN: TSmallintField;
    q_lecture_activeTOTAL_DAY: TIntegerField;
    q_lecture_activeTOTAL_TIME: TFloatField;
    q_lecture_activeTEACHER_PERCENT: TSmallintField;
    SP_GET_COMPANSATION: TUniStoredProc;
    d_SP_GET_COMPANSATION: TDataSource;
    SP_GET_COMPANSATIONID: TStringField;
    SP_GET_COMPANSATIONL_NAME: TStringField;
    SP_GET_COMPANSATIONL_PRICE: TFloatField;
    SP_GET_COMPANSATIONTEACHER_ID: TStringField;
    SP_GET_COMPANSATIONTEACHER_PERCENT: TSmallintField;
    SP_GET_COMPANSATIONCOMMON_COUNT: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT1: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT2: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT3: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT4: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT5: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT6: TIntegerField;
    SP_GET_COMPANSATIONDC_TOTAL: TIntegerField;
    SP_GET_COMPANSATIONSUDANG: TFloatField;
    SP_GET_COMPANSATIONLEC_PRICE: TFloatField;
    SP_GET_COMPANSATIONTOTAL_PRICE: TFloatField;
    SP_GET_COMPANSATIONTEACHER_NAME: TStringField;
    cdsCompansation: TClientDataSet;
    cdsCompansationID: TStringField;
    cdsCompansationL_NAME: TStringField;
    cdsCompansationL_PRICE: TFloatField;
    cdsCompansationTEACHER_ID: TStringField;
    cdsCompansationTEACHER_PERCENT: TSmallintField;
    cdsCompansationCOMMON_COUNT: TIntegerField;
    cdsCompansationDC_COUNT1: TIntegerField;
    cdsCompansationDC_COUNT2: TIntegerField;
    cdsCompansationDC_COUNT3: TIntegerField;
    cdsCompansationDC_COUNT4: TIntegerField;
    cdsCompansationDC_COUNT5: TIntegerField;
    cdsCompansationDC_COUNT6: TIntegerField;
    cdsCompansationDC_TOTAL: TIntegerField;
    cdsCompansationSUDANG: TFloatField;
    cdsCompansationLEC_PRICE: TFloatField;
    cdsCompansationTOTAL_PRICE: TFloatField;
    cdsCompansationTEACHER_NAME: TStringField;
    cdsCompansationrno: TIntegerField;
    VirtualTable1: TVirtualTable;
    VirtualTable1ID: TStringField;
    VirtualTable1L_NAME: TStringField;
    VirtualTable1L_PRICE: TFloatField;
    VirtualTable1TEACHER_ID: TStringField;
    VirtualTable1TEACHER_PERCENT: TSmallintField;
    VirtualTable1COMMON_COUNT: TIntegerField;
    VirtualTable1DC_COUNT1: TIntegerField;
    VirtualTable1DC_COUNT2: TIntegerField;
    VirtualTable1DC_COUNT3: TIntegerField;
    VirtualTable1DC_COUNT4: TIntegerField;
    VirtualTable1DC_COUNT5: TIntegerField;
    VirtualTable1DC_COUNT6: TIntegerField;
    VirtualTable1DC_TOTAL: TIntegerField;
    VirtualTable1SUDANG: TFloatField;
    VirtualTable1LEC_PRICE: TFloatField;
    VirtualTable1TOTAL_PRICE: TFloatField;
    VirtualTable1TEACHER_NAME: TStringField;
    VirtualTable1rno: TIntegerField;
    btnRetrieve: TcxButton;
    btnExport: TcxButton;
    btnAttendList: TcxButton;
    SP_GET_COMPANSATIONDC_PRICE: TFloatField;
    cdsCompansationdc_price: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cdsCompansationp_month: TIntegerField;
    SP_GET_COMPANSATIONL_IDX: TIntegerField;
    SP_GET_COMPANSATIONCOUNT_TOTAL: TIntegerField;
    cdsCompansationcount_total: TIntegerField;
    TEACHER_EXTRAPAY_SEL: TUniStoredProc;
    ds_TEACHER_EXTRAPAY_SEL: TDataSource;
    TEACHER_EXTRAPAY_SELID: TIntegerField;
    TEACHER_EXTRAPAY_SELLECTURE_ID: TStringField;
    TEACHER_EXTRAPAY_SELTEACHER_ID: TStringField;
    TEACHER_EXTRAPAY_SELL_YEAR: TIntegerField;
    TEACHER_EXTRAPAY_SELL_MONTH: TIntegerField;
    TEACHER_EXTRAPAY_SELU_PRICE: TIntegerField;
    TEACHER_EXTRAPAY_SELW_DAYS: TIntegerField;
    TEACHER_EXTRAPAY_SELW_HOURS: TFloatField;
    TEACHER_EXTRAPAY_SELCITY_PRICE: TIntegerField;
    TEACHER_EXTRAPAY_SELLECTURE_PRICE: TIntegerField;
    TEACHER_EXTRAPAY_SELBOJUN_PRICE: TIntegerField;
    TEACHER_EXTRAPAY_SELBOJUN_CNT: TIntegerField;
    TEACHER_EXTRAPAY_SELBOJUN_TOTAL: TIntegerField;
    TEACHER_EXTRAPAY_SELTOTAL_PRICE: TIntegerField;
    TEACHER_EXTRAPAY_SELSODUKSE: TIntegerField;
    TEACHER_EXTRAPAY_SELJUMINSE: TIntegerField;
    TEACHER_EXTRAPAY_SELNET_PRICE: TIntegerField;
    gridExtrapayID: TcxGridDBColumn;
    gridExtrapayLECTURE_ID: TcxGridDBColumn;
    gridExtrapayTEACHER_ID: TcxGridDBColumn;
    gridExtrapayL_YEAR: TcxGridDBColumn;
    gridExtrapayL_MONTH: TcxGridDBColumn;
    gridExtrapayU_PRICE: TcxGridDBColumn;
    gridExtrapayW_DAYS: TcxGridDBColumn;
    gridExtrapayW_HOURS: TcxGridDBColumn;
    gridExtrapayCITY_PRICE: TcxGridDBColumn;
    gridExtrapayLECTURE_PRICE: TcxGridDBColumn;
    gridExtrapayBOJUN_PRICE: TcxGridDBColumn;
    gridExtrapayBOJUN_CNT: TcxGridDBColumn;
    gridExtrapayBOJUN_TOTAL: TcxGridDBColumn;
    gridExtrapayTOTAL_PRICE: TcxGridDBColumn;
    gridExtrapaySODUKSE: TcxGridDBColumn;
    gridExtrapayJUMINSE: TcxGridDBColumn;
    gridExtrapayNET_PRICE: TcxGridDBColumn;
    TEACHER_EXTRAPAY_SELL_UID: TIntegerField;
    gridExtrapayL_UID: TcxGridDBColumn;
    btnCalc: TcxButton;
    TEACHER_EXTRAPAY_UPD: TUniStoredProc;
    btnCreateNew: TcxButton;
    TEACHER_EXTRAPAY_DEL: TUniStoredProc;
    TEACHER_EXTRAPAY_CREATE: TUniStoredProc;
    gridExtrapayIDX: TcxGridDBColumn;
    TEACHER_EXTRAPAY_SELTEACHER_IDX: TIntegerField;
    gridExtrapayTEACHER_IDX: TcxGridDBColumn;
    ds_TEACHER_EXTRAPAY_CALCTOTAL: TDataSource;
    UniQuery1: TUniQuery;
    TEACHER_EXTRAPAY_CALCTOTAL: TUniStoredProc;
    TEACHER_EXTRAPAY_CALCTOTALTEACHER_ID: TStringField;
    TEACHER_EXTRAPAY_CALCTOTALSUM_OF_TOTAL_AMOUNT: TIntegerField;
    TEACHER_EXTRAPAY_CALCTOTALSUM_OF_SODUK: TIntegerField;
    TEACHER_EXTRAPAY_CALCTOTALSUM_OF_JUMIN: TIntegerField;
    TEACHER_EXTRAPAY_CALCTOTALSUM_OF_NET_AMOUNT: TIntegerField;
    gridTotal: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridTotalTEACHER_ID: TcxGridDBColumn;
    gridTotalSUM_OF_TOTAL_AMOUNT: TcxGridDBColumn;
    gridTotalSUM_OF_SODUK: TcxGridDBColumn;
    gridTotalSUM_OF_JUMIN: TcxGridDBColumn;
    gridTotalSUM_OF_NET_AMOUNT: TcxGridDBColumn;
    TEACHER_EXTRAPAY_SELIDX: TIntegerField;
    TEACHER_EXTRAPAY_SELTOTAL_PRICE2: TIntegerField;
    TEACHER_EXTRAPAY_SELSODUKSE2: TIntegerField;
    TEACHER_EXTRAPAY_SELJUMINSE2: TIntegerField;
    TEACHER_EXTRAPAY_SELNET_PRICE2: TIntegerField;
    gridExtrapayTOTAL_PRICE2: TcxGridDBColumn;
    gridExtrapaySODUKSE2: TcxGridDBColumn;
    gridExtrapayJUMINSE2: TcxGridDBColumn;
    gridExtrapayNET_PRICE2: TcxGridDBColumn;
    TEACHER_EXTRAPAY_UPDTAX: TUniStoredProc;
    gridExtrapayColumn1: TcxGridDBColumn;
    gridExtrapayColumn2: TcxGridDBColumn;
    TEACHER_SEL_LOOKUP: TUniStoredProc;
    ds_TEACHER_SEL_LOOKUP: TDataSource;
    TEACHER_SEL_LOOKUPID: TStringField;
    TEACHER_SEL_LOOKUPT_NAME: TStringField;
    TEACHER_SEL_LOOKUPT_TEL: TStringField;
    TEACHER_SEL_LOOKUPBANK_NAME: TStringField;
    TEACHER_SEL_LOOKUPBANK_NO: TStringField;
    TEACHER_SEL_LOOKUPBANK_CODE: TStringField;
    TEACHER_SEL_LOOKUPIDX: TIntegerField;
    chkShowAll: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnAttendListClick(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure gridCompensationStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnCalcClick(Sender: TObject);
    procedure btnCreateNewClick(Sender: TObject);
    procedure gridExtrapayTEACHER_IDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridExtrapayNET_PRICECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridExtrapaySODUKSECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridExtrapayNET_PRICECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridExtrapaySODUKSECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridExtrapayJUMINSECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridExtrapayTOTAL_PRICECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridExtrapayIDXGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridExtrapayColumn1CompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure gridExtrapayColumn2CompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
  private
    function GetTeacherName(teacher_id: string): string;
    function GetRegistedCount(lecture_id: string; calc_mon : Integer): Integer;
    function GetDCCount(lecture_id: string; dc_kind, calc_mon : Integer): Integer;
    procedure RunGenerateTotalPrice;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeacherExtrapay: TfmTeacherExtrapay;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmTeacherExtrapay.btnAttendListClick(Sender: TObject);
var
  titleStr : string;
begin
  //gridCompensationColumn1.Visible := False;
  titleStr := '수당감면보전현황' + #13#10 +
              '===================' + #13#10 +
              '(' + IntToStr(frmYearMonth1.IYear) + '년' + frmYearMonth1.cbMonth.Text + '분)';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  //gridCompensationColumn1.Visible := True;
end;

procedure TfmTeacherExtrapay.btnCalcClick(Sender: TObject);
var
  i, cnt : Integer;
  city_price, w_days, sudang_price, bojun_uprice, lecture_price, bojun_cnt, bojun_total : Integer;
  total_price, soduk, SODUK_FEE, jumin, JUMIN_FEE, net_price, CITY_SUDANG, LECTURE_PERCENT : integer;
  whours : Double;
begin
  //기초자료에서 시비와 강사료 수당방식을 추출
  LECTURE_PERCENT := dm.q_basic_valueLECTURE_PERCENT.AsInteger;
  CITY_SUDANG := dm.q_basic_valueCITY_BOJO_PRICE.AsInteger;

  cnt := gridExtrapay.DataController.RecordCount;
  gridExtrapay.DataController.GotoFirst;
  for i := 0 to cnt do begin
    w_days := gridExtrapayW_DAYS.EditValue;
    whours := gridExtrapayW_HOURS.EditValue;
    sudang_price := Trunc(CITY_SUDANG * w_days * whours);

    lecture_price := gridExtrapayLECTURE_PRICE.EditValue;
    bojun_uprice := Trunc(lecture_price * (LECTURE_PERCENT / 100));
    bojun_cnt := gridExtrapayBOJUN_CNT.EditValue;
    bojun_total := bojun_uprice * bojun_cnt;

    total_price := bojun_total + sudang_price;

    SODUK_FEE := Trunc(total_price * 0.03);
    SODUK     := Trunc(SODUK_FEE * 0.1) * 10;
    JUMIN_FEE := Trunc(SODUK * 0.1);
    JUMIN     := Trunc(JUMIN_FEE * 0.1) * 10;

    TEACHER_EXTRAPAY_UPD.ParamByName('ID').Value := gridExtrapayID.EditValue;
    TEACHER_EXTRAPAY_UPD.ParamByName('U_PRICE').Value := sudang_price; //수당금액
    TEACHER_EXTRAPAY_UPD.ParamByName('CITY_PRICE').Value := CITY_SUDANG;
    TEACHER_EXTRAPAY_UPD.ParamByName('BOJUN_PRICE').Value := bojun_uprice;
    TEACHER_EXTRAPAY_UPD.ParamByName('BOJUN_TOTAL').Value := bojun_total;
    TEACHER_EXTRAPAY_UPD.ParamByName('TOTAL_PRICE').Value := total_price;
    TEACHER_EXTRAPAY_UPD.ParamByName('SODUKSE').Value := soduk;
    TEACHER_EXTRAPAY_UPD.ParamByName('JUMINSE').Value := jumin;
    TEACHER_EXTRAPAY_UPD.ParamByName('NET_PRICE').Value := total_price - (soduk + jumin);
    TEACHER_EXTRAPAY_UPD.ExecProc;
    gridExtrapay.DataController.GotoNext;
  end;
  TEACHER_EXTRAPAY_SEL.open;
  ds_TEACHER_EXTRAPAY_SEL.DataSet.Refresh;
  RunGenerateTotalPrice;
  ds_TEACHER_EXTRAPAY_SEL.DataSet.Refresh;
  gridExtrapay.DataController.GotoFirst;
end;

procedure TfmTeacherExtrapay.RunGenerateTotalPrice;
var
  i, cnt, tprice, sodukse, juminse, net_price : Integer;
  teacher_id : string;
begin
  TEACHER_EXTRAPAY_CALCTOTAL.ParamByName('PYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_EXTRAPAY_CALCTOTAL.ParamByName('PMONTH').Value := frmYearMonth1.cbMonth.ItemIndex + 1;
  TEACHER_EXTRAPAY_CALCTOTAL.Open;
  ds_TEACHER_EXTRAPAY_CALCTOTAL.DataSet.Refresh;
  cnt := TEACHER_EXTRAPAY_CALCTOTAL.RecordCount;
  TEACHER_EXTRAPAY_CALCTOTAL.First;
  for i := 0 to cnt - 1 do begin
//    teacher_id := TEACHER_EXTRAPAY_CALCTOTALTEACHER_ID.Value;
//    tprice := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_TOTAL_AMOUNT.Value;
//    sodukse := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_SODUK.Value;
//    juminse := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_JUMIN.Value;
//    net_price := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_NET_AMOUNT.Value;

    TEACHER_EXTRAPAY_UPDTAX.ParamByName('TEACHER_ID').Value := TEACHER_EXTRAPAY_CALCTOTALTEACHER_ID.Value;
    TEACHER_EXTRAPAY_UPDTAX.ParamByName('TOTAL_PRICE').Value := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_TOTAL_AMOUNT.Value;
    TEACHER_EXTRAPAY_UPDTAX.ParamByName('SODUKSE').Value := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_SODUK.Value;
    TEACHER_EXTRAPAY_UPDTAX.ParamByName('JUMINSE').Value := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_JUMIN.Value;
    TEACHER_EXTRAPAY_UPDTAX.ParamByName('NET_PRICE').Value := TEACHER_EXTRAPAY_CALCTOTALSUM_OF_NET_AMOUNT.Value;
    TEACHER_EXTRAPAY_UPDTAX.ExecProc;
//    UniQuery1.SQL.Clear;
//    UniQuery1.SQL.Add('update teacher_extrapay set total_price = :tprice, sodukse = :sodukse, juminse = :juminse, net_price = :net_price ');
//    UniQuery1.SQL.Add('where teacher_id = :t_id');
//    UniQuery1.ParamByName('tprice').Value := tprice;
//    UniQuery1.ParamByName('sodukse').Value := sodukse;
//    UniQuery1.ParamByName('juminse').Value := juminse;
//    UniQuery1.ParamByName('net_price').Value := net_price;
//    UniQuery1.ParamByName('t_id').Value := teacher_id;
//    UniQuery1.ExecSQL;
    TEACHER_EXTRAPAY_CALCTOTAL.Next;
  end;
end;

procedure TfmTeacherExtrapay.btnCreateNewClick(Sender: TObject);
var
  mon, l_step, calc_mon : Integer;
begin
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  case mon of
    1..3 : l_step := 1;
    4..6 : l_step := 2;
    7..9 : l_step := 3;
    10..12 : l_step := 4;
  end;
  if gridExtrapay.DataController.RecordCount > 0 then begin
    if Application.MessageBox('해당월의 자료가 있습니다. ' + #13#10 +
      '명령을 실행하면 기존 데이터를 삭제한 후 다시 생성을 합니다.' + #13#10 + '정말 실행을 할까요?',
      'Application.Title', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      TEACHER_EXTRAPAY_DEL.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
      TEACHER_EXTRAPAY_DEL.ParamByName('WMONTH').Value := mon;
      TEACHER_EXTRAPAY_DEL.ExecProc;

      TEACHER_EXTRAPAY_CREATE.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
      TEACHER_EXTRAPAY_CREATE.ParamByName('WSTEP').Value := l_step;
      TEACHER_EXTRAPAY_CREATE.ParamByName('WMON').Value := mon;
      TEACHER_EXTRAPAY_CREATE.ExecProc;
      ds_TEACHER_EXTRAPAY_SEL.DataSet.Refresh;
    end;
  end else begin
      TEACHER_EXTRAPAY_CREATE.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
      TEACHER_EXTRAPAY_CREATE.ParamByName('WSTEP').Value := l_step;
      TEACHER_EXTRAPAY_CREATE.ParamByName('WMON').Value := mon;
      TEACHER_EXTRAPAY_CREATE.ExecProc;
      ds_TEACHER_EXTRAPAY_SEL.DataSet.Refresh;
  end;

  btnCalc.Click;
end;

procedure TfmTeacherExtrapay.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '수당감면보전현황_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, true, true, false, 'xls');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmTeacherExtrapay.btnRetrieveClick(Sender: TObject);
var
  mon : Integer;
begin
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  TEACHER_EXTRAPAY_SEL.ParamByName('LYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_EXTRAPAY_SEL.ParamByName('LMON').Value := mon;
  TEACHER_EXTRAPAY_SEL.Open;
  ds_TEACHER_EXTRAPAY_SEL.DataSet.Refresh;
  if chkShowAll.Checked then begin
    TEACHER_EXTRAPAY_SEL.Filter := 'TOTAL_PRICE > 0';
    TEACHER_EXTRAPAY_SEL.Filtered := True;
  end else begin
    TEACHER_EXTRAPAY_SEL.Filtered := False;
  end;
end;

procedure TfmTeacherExtrapay.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '감면보전현황.ini';
  gridExtrapay.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmTeacherExtrapay.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmTeacherExtrapay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTeacherExtrapay.FormCreate(Sender: TObject);
begin
  frmYearMonth1.InitYearMonth;
  TEACHER_SEL_LOOKUP.Open;
  ds_TEACHER_SEL_LOOKUP.DataSet.Refresh;
  //btnRetrieve.Click;
end;

procedure TfmTeacherExtrapay.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

function TfmTeacherExtrapay.GetTeacherName(teacher_id : string) : string;
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(nil);
  with Query do begin
    Connection := dm.UniConnection1;
    SQL.Clear;
    SQL.Add('select t_name from teacher where id = :teacher_id ');
    ParamByName('teacher_id').Value := teacher_id;
    Active := True;
  end;
  if Query.RecordCount > 0 then
    Result := Query.FieldByName('t_name').AsString;
end;

procedure TfmTeacherExtrapay.gridExtrapayIDXGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
  AIndex: Integer;
begin
  AIndex := TcxGridTableView(Sender.GridView).DataController.GetRowIndexByRecordIndex(ARecordIndex, False);
  AText := IntToStr(AIndex);
end;

procedure TfmTeacherExtrapay.gridExtrapayColumn1CompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridExtrapay.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTeacherExtrapay.gridExtrapayColumn2CompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridExtrapay.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTeacherExtrapay.gridExtrapayJUMINSECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentOddColor
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;

end;

procedure TfmTeacherExtrapay.gridExtrapayNET_PRICECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridExtrapay.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTeacherExtrapay.gridExtrapayNET_PRICECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentOddColor
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;

end;

procedure TfmTeacherExtrapay.gridExtrapaySODUKSECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridExtrapay.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTeacherExtrapay.gridExtrapaySODUKSECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentOddColor
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;
end;

procedure TfmTeacherExtrapay.gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('#,', gridExtrapay.DataController.Summary.FooterSummaryValues[3]);
end;

procedure TfmTeacherExtrapay.gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('#,', gridExtrapay.DataController.Summary.FooterSummaryValues[1]);
end;

procedure TfmTeacherExtrapay.gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
var
  juminse2 : TcxDataSummaryItem;
begin
  AText := FormatFloat('#,', gridExtrapay.DataController.Summary.FooterSummaryValues[2]);
end;

procedure TfmTeacherExtrapay.gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('#,', gridExtrapay.DataController.Summary.FooterSummaryValues[0]);
end;

procedure TfmTeacherExtrapay.gridExtrapayTEACHER_IDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentOddColor
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;
end;

procedure TfmTeacherExtrapay.gridExtrapayTOTAL_PRICECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentOddColor
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;

end;

procedure TfmTeacherExtrapay.gridCompensationStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
//  col := gridCompensation.GetColumnByFieldName('rno').Index;
//  if ARecord.Values[col] = 0 then
//    AStyle := cxStyleBlue
//  else
//    AStyle := cxStyleDefault;
end;

function TfmTeacherExtrapay.GetRegistedCount(lecture_id : string; calc_mon : Integer) : Integer;
var
  Query : TUniQuery;
  pYear, pMonth, p_kind : Integer;
begin
  Query := TUniQuery.Create(nil);
  with Query do begin
    Connection := dm.UniConnection1;
    SQL.Clear;
    SQL.Add('select count(id) as cnt from REGISTED_LECTURE ');
    SQL.Add('where (lecture_id = :lecture_id) and (is_dc = 1) and ');
    if calc_mon = 1 then
      SQL.Add('(reg_month = 1) and (out_month = 0) ');
    if calc_mon = 2 then
      SQL.Add('(reg_month2 = 1) and (out_month2 = 0) ');
    if calc_mon = 3 then
      SQL.Add('(reg_month3 = 1) and (out_month3 = 0) ');

    ParamByName('lecture_id').Value := lecture_id;
    Active := True;
  end;
  if Query.RecordCount > 0 then
    Result := Query.FieldByName('cnt').AsInteger;

end;

function TfmTeacherExtrapay.GetDCCount(lecture_id : string; dc_kind, calc_mon : Integer) : Integer;
var
  Query : TUniQuery;
  pYear, pMonth, p_kind : Integer;
  sdate : TDateTime;
  common3_fee, common2_fee, common1_fee, pay_amount : Double;
begin
  Query := TUniQuery.Create(nil);
  with Query do begin
    Connection := dm.UniConnection1;
    SQL.Clear;
    SQL.Add('select count(id) as cnt from REGISTED_LECTURE ');
    SQL.Add('where (lecture_id = :lecture_id) and (is_dc = :dc_kind) and ');
    if calc_mon = 1 then
      SQL.Add('(reg_month = 1) and (out_month = 0) ');
    if calc_mon = 2 then
      SQL.Add('(reg_month2 = 1) and (out_month2 = 0) ');
    if calc_mon = 3 then
      SQL.Add('(reg_month3 = 1) and (out_month3 = 0) ');

    ParamByName('lecture_id').Value := lecture_id;
    ParamByName('dc_kind').Value := dc_kind;
    Active := True;
  end;
  if Query.RecordCount > 0 then
    Result := Query.FieldByName('cnt').AsInteger;

end;

initialization RegisterClasses([TfmTeacherExtrapay]);

end.
