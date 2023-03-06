unit UfmTeacherPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, DateUtils, cxDBLookupComboBox, Math, MemDS, DBAccess, Uni,
  dxSkinOffice2013White, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, cxGridExportLink,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxPScxPivotGridLnk, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxGridCustomPopupMenu,
  cxGridPopupMenu, UfrmYearMonth, Menus, cxButtons, cxGridBandedTableView,
  cxGridDBBandedTableView, dxmdaset, cxVariants, frxClass, frxDBSet, Gauges,
  cxCurrencyEdit;

type
  TKisuPeriod = record
    LEC_START_DATE : TDateTime;
    LEC_END_DATE   : TdateTime;
  end;
type
  TfmTeacherPay = class(TForm)
    Panel1: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    d_TEACHER_PAYMENT_SEL: TDataSource;
    d_LECTURE_WITH_TEACHER: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    frmYearMonth1: TfrmYearMonth;
    btnSaveColumn: TcxButton;
    dxMemData1: TdxMemData;
    dxMemData1ID: TStringField;
    dxMemData1DONG_ID: TStringField;
    dxMemData1LECTURE_ID: TStringField;
    dxMemData1TEACHER_ID: TStringField;
    dxMemData1P_YEAR: TIntegerField;
    dxMemData1P_MONTH: TIntegerField;
    dxMemData1TOTAL_HOUR: TFloatField;
    dxMemData1TOTAL_MAN: TFloatField;
    dxMemData1MAN_COMMON: TFloatField;
    dxMemData1COMMON_PRICE: TFloatField;
    dxMemData1MAN_DC: TFloatField;
    dxMemData1DC_PRICE: TFloatField;
    dxMemData1TOTAL_AMOUNT: TFloatField;
    dxMemData1SODUK: TFloatField;
    dxMemData1JUMIN: TFloatField;
    dxMemData1NET_AMOUNT: TFloatField;
    dxMemData1WEEK_DAYS: TStringField;
    dxMemData1BANK_NAME: TStringField;
    dxMemData1BANK_NO: TStringField;
    dxMemData1EXTRA_PAY: TFloatField;
    dxMemData1COMMON_OUT: TFloatField;
    dxMemData1DC_OUT: TFloatField;
    dxMemData1LECTURE_TOTAL_AMOUNT: TFloatField;
    dxMemData1NET_CENTER_AMOUNT: TFloatField;
    dxMemData1COMMON_FEE: TFloatField;
    dxMemData1DC_FEE: TFloatField;
    d_TEACHER_MONTHLY_PAY_SEL: TDataSource;
    TEACHER_PAYMENT_CALCTOTAL: TUniStoredProc;
    d_TEACHER_PAYMENT_CALCTOTAL: TDataSource;
    dxMemData1rno: TIntegerField;
    TEACHER_PAYMENT_CALCTOTALTEACHER_ID: TStringField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_TOTAL_AMOUNT: TFloatField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_SODUK: TFloatField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_JUMIN: TFloatField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_NET_AMOUNT: TFloatField;
    gridTotal: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridTotalTEACHER_ID: TcxGridDBColumn;
    gridTotalSUM_OF_TOTAL_AMOUNT: TcxGridDBColumn;
    gridTotalSUM_OF_SODUK: TcxGridDBColumn;
    gridTotalSUM_OF_JUMIN: TcxGridDBColumn;
    gridTotalSUM_OF_NET_AMOUNT: TcxGridDBColumn;
    q_lecture: TUniQuery;
    d_lecture: TDataSource;
    q_lectureL_NAME: TStringField;
    dxMemData1data_kind: TSmallintField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    gridPayment: TcxGridDBTableView;
    gridPaymentID: TcxGridDBColumn;
    gridPaymentLECTURE_ID: TcxGridDBColumn;
    gridPaymentTEACHER_ID: TcxGridDBColumn;
    gridPaymentP_YEAR: TcxGridDBColumn;
    gridPaymentP_MONTH: TcxGridDBColumn;
    gridPaymentTOTAL_MAN: TcxGridDBColumn;
    gridPaymentMAN_COMMON: TcxGridDBColumn;
    gridPaymentLECTURE_TOTAL_AMOUNT: TcxGridDBColumn;
    gridPaymentMAN_DC: TcxGridDBColumn;
    gridPaymentNET_CENTER_AMOUNT: TcxGridDBColumn;
    gridPaymentTOTAL_AMOUNT: TcxGridDBColumn;
    gridPaymentSODUK: TcxGridDBColumn;
    gridPaymentJUMIN: TcxGridDBColumn;
    gridPaymentNET_AMOUNT: TcxGridDBColumn;
    gridPaymentBANK_NAME: TcxGridDBColumn;
    gridPaymentBANK_NO: TcxGridDBColumn;
    gridPaymentrno: TcxGridDBColumn;
    q_teacher: TUniQuery;
    d_teacher: TDataSource;
    q_teacherT_NAME: TStringField;
    btnRetrieve: TcxButton;
    btnCalcPay: TcxButton;
    btnRegistMoneyOut: TcxButton;
    btnExport: TcxButton;
    btnPrint: TcxButton;
    q_teacherBANK_NAME: TStringField;
    q_teacherBANK_NO: TStringField;
    btnMoneyIn2: TcxButton;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btnDone: TcxButton;
    btnUnDone: TcxButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    dxMemData2: TdxMemData;
    dxMemData2id: TIntegerField;
    dxMemData2teacher: TStringField;
    dxMemData2net_pay: TFloatField;
    dxMemData2bank_name: TStringField;
    dxMemData2bank_no: TStringField;
    PanelProgress: TPanel;
    lblMsg: TLabel;
    Gauge1: TGauge;
    TEACHER_MONTHLY_PAY_SEL: TUniStoredProc;
    TEACHER_MONTHLY_PAY_INS: TUniStoredProc;
    TEACHER_MONTHLY_PAY_DEL: TUniStoredProc;
    TEACHER_MONTHLY_PAY_SELID: TIntegerField;
    TEACHER_MONTHLY_PAY_SELLECTURE_ID: TStringField;
    TEACHER_MONTHLY_PAY_SELTEACHER_ID: TStringField;
    TEACHER_MONTHLY_PAY_SELP_YEAR: TIntegerField;
    TEACHER_MONTHLY_PAY_SELP_MONTH: TIntegerField;
    TEACHER_MONTHLY_PAY_SELTOTAL_MAN: TIntegerField;
    TEACHER_MONTHLY_PAY_SELMAN_COMMON: TIntegerField;
    TEACHER_MONTHLY_PAY_SELCOMMON_PRICE: TFloatField;
    TEACHER_MONTHLY_PAY_SELMAN_DC: TIntegerField;
    TEACHER_MONTHLY_PAY_SELDC_PRICE: TFloatField;
    TEACHER_MONTHLY_PAY_SELTOTAL_AMOUNT: TFloatField;
    TEACHER_MONTHLY_PAY_SELSODUK: TFloatField;
    TEACHER_MONTHLY_PAY_SELJUMIN: TFloatField;
    TEACHER_MONTHLY_PAY_SELNET_AMOUNT: TFloatField;
    TEACHER_MONTHLY_PAY_SELBANK_NAME: TStringField;
    TEACHER_MONTHLY_PAY_SELBANK_NO: TStringField;
    TEACHER_MONTHLY_PAY_SELLECTURE_TOTAL_AMOUNT: TFloatField;
    TEACHER_MONTHLY_PAY_SELNET_CENTER_AMOUNT: TFloatField;
    TEACHER_MONTHLY_PAY_SELCOMMON_FEE: TFloatField;
    TEACHER_MONTHLY_PAY_SELDC_FEE: TFloatField;
    TEACHER_MONTHLY_PAY_SELRNO: TIntegerField;
    TEACHER_MONTHLY_PAY_SELDATA_KIND: TIntegerField;
    gridPaymentDATA_KIND: TcxGridDBColumn;
    TEACHER_PAYMENT_DEL: TUniStoredProc;
    SP_LECTURE_WITH_TEACHER: TUniStoredProc;
    SP_LECTURE_WITH_TEACHERID: TStringField;
    SP_LECTURE_WITH_TEACHERDONG_ID: TStringField;
    SP_LECTURE_WITH_TEACHERL_YEAR: TIntegerField;
    SP_LECTURE_WITH_TEACHERL_STEP: TIntegerField;
    SP_LECTURE_WITH_TEACHERL_NAME: TStringField;
    SP_LECTURE_WITH_TEACHERL_TIME_WEEK: TIntegerField;
    SP_LECTURE_WITH_TEACHERL_DAYS: TStringField;
    SP_LECTURE_WITH_TEACHERL_MONTH: TIntegerField;
    SP_LECTURE_WITH_TEACHERSTART_DATE: TStringField;
    SP_LECTURE_WITH_TEACHERTEACHER_ID: TStringField;
    SP_LECTURE_WITH_TEACHERL_PRICE: TFloatField;
    SP_LECTURE_WITH_TEACHERCLASSROOM_ID: TStringField;
    SP_LECTURE_WITH_TEACHERIS_ACTIVE: TIntegerField;
    SP_LECTURE_WITH_TEACHERL_DURATION: TStringField;
    SP_LECTURE_WITH_TEACHERL_TIME: TFloatField;
    SP_LECTURE_WITH_TEACHERL_TIME_START: TSmallintField;
    SP_LECTURE_WITH_TEACHERL_TIME_END: TSmallintField;
    SP_LECTURE_WITH_TEACHEREND_DATE: TStringField;
    SP_LECTURE_WITH_TEACHERTEACHER_PERCENT: TSmallintField;
    SP_LECTURE_WITH_TEACHERTOTAL_DAY: TIntegerField;
    SP_LECTURE_WITH_TEACHERCALC_KIND: TSmallintField;
    SP_LECTURE_WITH_TEACHERMONTH1_PRICE: TFloatField;
    SP_LECTURE_WITH_TEACHERMONTH2_PRICE: TFloatField;
    SP_LECTURE_WITH_TEACHERMONTH3_PRICE: TFloatField;
    SP_LECTURE_WITH_TEACHERMONTH1_DAYS: TSmallintField;
    SP_LECTURE_WITH_TEACHERMONTH2_DAYS: TSmallintField;
    SP_LECTURE_WITH_TEACHERMONTH3_DAYS: TSmallintField;
    SP_LECTURE_WITH_TEACHERL_IDX: TSmallintField;
    SP_LECTURE_WITH_TEACHERPARENT_LECTURE_ID: TStringField;
    SP_LECTURE_WITH_TEACHERT_NAME: TStringField;
    SP_LECTURE_WITH_TEACHERBANK_NAME: TStringField;
    SP_LECTURE_WITH_TEACHERBANK_NO: TStringField;
    SP_LECTURE_WITH_TEACHERC_NAME: TStringField;
    SP_LECTURE_WITH_TEACHERIDX: TIntegerField;
    TEACHER_PAYMENT_SEL: TUniStoredProc;
    TEACHER_PAYMENT_SELID: TStringField;
    TEACHER_PAYMENT_SELDONG_ID: TStringField;
    TEACHER_PAYMENT_SELLECTURE_ID: TStringField;
    TEACHER_PAYMENT_SELTEACHER_ID: TStringField;
    TEACHER_PAYMENT_SELP_YEAR: TIntegerField;
    TEACHER_PAYMENT_SELP_MONTH: TIntegerField;
    TEACHER_PAYMENT_SELTOTAL_HOUR: TFloatField;
    TEACHER_PAYMENT_SELTOTAL_MAN: TFloatField;
    TEACHER_PAYMENT_SELMAN_COMMON: TFloatField;
    TEACHER_PAYMENT_SELCOMMON_PRICE: TFloatField;
    TEACHER_PAYMENT_SELMAN_DC: TFloatField;
    TEACHER_PAYMENT_SELDC_PRICE: TFloatField;
    TEACHER_PAYMENT_SELTOTAL_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SELSODUK: TFloatField;
    TEACHER_PAYMENT_SELJUMIN: TFloatField;
    TEACHER_PAYMENT_SELNET_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SELWEEK_DAYS: TStringField;
    TEACHER_PAYMENT_SELBANK_NAME: TStringField;
    TEACHER_PAYMENT_SELBANK_NO: TStringField;
    TEACHER_PAYMENT_SELEXTRA_PAY: TFloatField;
    TEACHER_PAYMENT_SELCOMMON_OUT: TFloatField;
    TEACHER_PAYMENT_SELDC_OUT: TFloatField;
    TEACHER_PAYMENT_SELLECTURE_TOTAL_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SELNET_CENTER_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SELCOMMON_FEE: TFloatField;
    TEACHER_PAYMENT_SELDC_FEE: TFloatField;
    TEACHER_PAYMENT_SELCALC_KIND: TSmallintField;
    TEACHER_PAYMENT_SELMONTH1_DAYS: TSmallintField;
    TEACHER_PAYMENT_SELMONTH2_DAYS: TSmallintField;
    TEACHER_PAYMENT_SELMONTH3_DAYS: TSmallintField;
    TEACHER_PAYMENT_INS: TUniStoredProc;
    SP_LECTURE_WITH_TEACHERL_UID: TIntegerField;
    TEACHER_MONTHLY_PAY_SELL_IDX: TSmallintField;
    TEACHER_MONTHLY_PAY_SELT_IDX: TSmallintField;
    TEACHER_PAYMENT_SELL_IDX: TSmallintField;
    TEACHER_PAYMENT_SELL_UID: TIntegerField;
    TEACHER_PAYMENT_SELT_IDX: TSmallintField;
    gridPaymentL_IDX: TcxGridDBColumn;
    gridPaymentT_IDX: TcxGridDBColumn;
    dxMemData2report_title: TStringField;
    btnReportBank: TcxButton;
    dxMemData2dong_name: TStringField;
    dxMemData2idx: TIntegerField;
    q_teacherIDX: TIntegerField;
    TEACHER_MONTHLY_PAY_SELsudang_sum: TFloatField;
    TEACHER_MONTHLY_PAY_SELtex_sum: TFloatField;
    gridPaymentsudang_sum: TcxGridDBColumn;
    gridPaymenttex_sum: TcxGridDBColumn;
    SP_LECTURE_WITH_TEACHERTEACHER_ID2: TStringField;
    SP_LECTURE_WITH_TEACHERTEACHER_ID3: TStringField;
    TEACHER_SEL_ID: TUniStoredProc;
    d_TEACHER_SEL_ID: TDataSource;
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
    DataSource1: TDataSource;
    gridExcel: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    gridExcelRecId: TcxGridDBColumn;
    gridExcelid: TcxGridDBColumn;
    gridExcelteacher: TcxGridDBColumn;
    gridExcelnet_pay: TcxGridDBColumn;
    gridExcelbank_name: TcxGridDBColumn;
    gridExcelbank_no: TcxGridDBColumn;
    gridExcelreport_title: TcxGridDBColumn;
    gridExceldong_name: TcxGridDBColumn;
    gridExcelidx: TcxGridDBColumn;
    cxButton1: TcxButton;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnCalcPayClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnRegistMoneyOutClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure frmYearMonth1cbYearChange(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure gridPaymentStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure gridPaymentTOTAL_AMOUNTCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure btnMoneyIn2Click(Sender: TObject);
    procedure gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems7GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems8GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems10GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnDoneClick(Sender: TObject);
    procedure btnUnDoneClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnReportBankClick(Sender: TObject);
    procedure gridPaymentColumn1GetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure gridPaymentColumn2CompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure TEACHER_MONTHLY_PAY_SELCalcFields(DataSet: TDataSet);
    procedure gridPaymenttex_sumCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure CalculatePayment(pYear, pMonth: integer);
    function GetGeneralStudentCount(pMonth, pKind: integer; lecture_id: string): integer;
    procedure CreateTeacherPayment(L_UID, LECTURE_IDX, T_IDX, pYear, pMonth: integer; ID,
      LECTURE_ID, TEACHER_ID, BANK_NAME, BANK_NO: string; MAN_COMMON, COMMON_OUT,
      MAN_DC, DC_OUT, COMMON_PRICE, DC_PRICE, TOTAL_MAN, TOTAL_AMOUNT,
      SODUK, JUMIN, NET_AMOUNT, EXTRA_PAY, LECTURE_TOTAL_AMOUNT, NET_CENTER_AMOUNT, COMMON_FEE, DC_FEE: Double);
    procedure DeleteTeacherPayment(pYear, pMonth: Integer);
    function GetLectureStudentCount : integer;
    function get_teacher_name(teacher_id: string): string;
    function get_lecture_name(lecture_id: string): string;
    procedure GetTeacherInfo(teacher_id: string);
    function GetCenterPrice: Double;
    function GetLectureRegistTotal(pMonth: Integer; lecture_id: string): Double;
    function CheckIsDone(pyear, pmonth: Integer): Boolean;
    procedure GetTotalPayment;
    procedure CreateMonthlyPayment;
    function get_teacher_idx(teacher_id: string): Integer;
    { Private declarations }
  public
    KisuPeriod  : TKisuPeriod;
    { Public declarations }
  end;

var
  fmTeacherPay: TfmTeacherPay;

implementation

uses GlobalVar, Udm, uCommonLogic, UfmMoneyInOutEdit3;

{$R *.dfm}



procedure TfmTeacherPay.btnRegistMoneyOutClick(Sender: TObject);
var
  BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  fmMoneyInOutEdit3 := TfmMoneyInOutEdit3.Create(Self);
  try
    gridPayment.DataController.GotoFirst;
    JUKYO := '강사수당 ' + frmYearMonth1.cbMonth.Text + '분(전체)';
    fmMoneyInOutEdit3.dxTemp.Active := True;
    fmMoneyInOutEdit3.dxTemp.Append;
    fmMoneyInOutEdit3.dxTempm_jukyo.AsString := jukyo;
    fmMoneyInOutEdit3.dxTempm_out.AsFloat := gridTotal.DataController.Summary.FooterSummaryValues[0]; //gridPaymentTOTAL_AMOUNT gridPaymentNET_AMOUNT.EditValue;
    fmMoneyInOutEdit3.dxTempm_date.AsDateTime := Date;
    fmMoneyInOutEdit3.dxTempm_kind.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_item.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger := 3;
    fmMoneyInOutEdit3.dxTempacc_detail.AsInteger := 6;

    fmMoneyInOutEdit3.ShowModal;
    if fmMoneyInOutEdit3.ModalResult = mrOk then begin
      BANK_ID := fmMoneyInOutEdit3.cbBankKind.EditValue;
      IO_DATE := fmMoneyInOutEdit3.dxTempm_date.AsDateTime;
      ITEM_ID := fmMoneyInOutEdit3.dxTempacc_item.AsInteger;
      SUBITEM_ID := fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger;
      DETAIL_ID := fmMoneyInOutEdit3.dxTempacc_detail.AsInteger;
      JUKYO := fmMoneyInOutEdit3.dxTempm_jukyo.AsString;
      KIND := fmMoneyInOutEdit3.dxTempm_kind.AsInteger;
      IO_REST := 0;
      DONG_ID := LoginUserDong;
      REG_LECTURE_ID := '';
      if KIND = 1 then begin
        IO_IN := fmMoneyInOutEdit3.dxTempm_out.AsFloat;
        IO_OUT := 0;
      end else begin
        IO_IN := 0;
        IO_OUT := fmMoneyInOutEdit3.dxTempm_out.AsFloat;
      end;

      dm.InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND, IO_DATE,
          JUKYO, DONG_ID, REG_LECTURE_ID, IO_IN, IO_OUT, IO_REST);
      btnDone.Click;
      ShowMessage('강사수당 지출내역 등록이 완료되었습니다.');
    end;
  finally
    fmMoneyInOutEdit3.Free;
  end;
end;

procedure TfmTeacherPay.btnReportBankClick(Sender: TObject);
var
  titleStr : string;
  i, cnt : Integer;
  t_name, t_id : string;
begin
  titleStr := frmYearMonth1.cbYear.Text + '년도' + IntToStr(frmYearMonth1.cbMonth.ItemIndex + 1) + '월분 강사수당지급';
  with gridTotal do begin
    cnt := DataController.RecordCount;
    dxMemData2.Close;
    dxMemData2.Open;
    DataController.GotoFirst;
    for i := 0 to cnt - 1 do begin
      t_id := gridTotalTEACHER_ID.EditValue;
      GetTeacherInfo(t_id);
      gridPayment.DataController.DataSet.Locate('teacher_id', q_teacherT_NAME.Value, []);
      dxMemData2.Append;
      dxMemData2id.Value := gridPaymentrno.EditValue;
      dxMemData2idx.Value := gridPaymentrno.EditValue;
      dxMemData2teacher.Value := q_teacherT_NAME.Value;
      dxMemData2net_pay.Value := gridTotalSUM_OF_NET_AMOUNT.EditValue;
      dxMemData2bank_name.Value := q_teacherBANK_NAME.Value;
      dxMemData2bank_no.Value := q_teacherBANK_NO.Value;
      dxMemData2report_title.Value := titleStr;
      dxMemData2dong_name.Value := LoginUserDongName + ' 주민자치위원회';
      dxMemData2.Post;
      DataController.GotoNext;
    end;
  end;
  DataSource1.DataSet.Refresh;
  frxReport1.ShowReport;
end;

procedure TfmTeacherPay.btnCalcPayClick(Sender: TObject);
var
  pYear, pMonth : integer;
begin
  pYear := StrToInt(frmYearMonth1.cbYear.Text);
  pMonth := frmYearMonth1.cbMonth.ItemIndex + 1;
  if CheckIsDone(pyear, pmonth) = True then begin
    ShowMessage('계산잠금처리된 월의 강사수당계산을 할 수 없습니다. 잠금처리를 해제하세요.');
    Exit;
  end;
  if GetLectureStudentCount > 0 then begin
    if Application.MessageBox('이전에 작성한 수당내역이 있습니다.' + #13#10 +
      '이전 수당내역을 삭제한 후 새로 생성합니다.' + #13#10 + '계속 진행할까요?', '수당계산', MB_OKCANCEL)
      = IDOK then
    begin
      CalculatePayment(pYear, pMonth);
      CreateMonthlyPayment;
      btnRetrieve.Click;
      ShowMessage('수당계산 작업이 완료 되었습니다.');
    end;
  end else begin
    ShowMessage('강좌자료가 없습니다. 확인하세요.');
  end;
end;

procedure TfmTeacherPay.CalculatePayment(pYear, pMonth : integer);
var
  i, cnt, pStep, month_kind, LECTURE_IDX, L_UID, T_IDX : integer;
  ID, LECTURE_ID, TEACHER_ID, BANK_NAME, BANK_NO : string;
  intID : int64;
  TIME_COUNT, T_MONTH, CITY_SUDANG_KIND, LECTURE_SUDANG_KIND : integer;
  COMMON_COUNT, COMMON_OUT, DCCount, DC_OUT, T_HOUR, COMMON_PRICE, DC_PRICE : Double;
  TOTAL_MAN, TOTAL_AMOUNT, SODUK, JUMIN, NET_AMOUNT, EXTRA_PAY : Double;
  LECTURE_PRICE, REGISTED_PRICE, SODUK_FEE, JUMIN_FEE, CITY_SUDANG, LECTURE_SUDANG: Double;
  LECTURE_TOTAL_AMOUNT, NET_CENTER_AMOUNT, COMMON_FEE, DC_FEE : Double;
  MONTHLY_PRICE, all_common_price, all_dc_price, FREE_COUNT : Double;
  LectureStartDate, LectureEndDate : TDateTime;
  TOTAL_DAY, CALC_KIND, MONTH1_DAYS, MONTH2_DAYS, MONTH3_DAYS, MONTH_PERCENT : Integer;
  old_teacher_id, TEACHER_ID_VAL, LECTURE_PARENT : string;
  TEACHER_PERCENT, SUDANG : Double;
begin
  DeleteTeacherPayment(pYear, pMonth);
  //기초자료에서 시비와 강사료 수당방식을 추출
  CITY_SUDANG_KIND := dm.q_basic_valueCITY_BOJO_KIND.AsInteger;
  LECTURE_SUDANG_KIND := dm.q_basic_valueLECTURE_KIND.AsInteger;
  case pMonth of
    1..3 : pStep := 1;
    4..6 : pStep := 2;
    7..9 : pStep := 3;
    10..12 : pStep := 4;
  end;
  if (pMonth = 1) or (pMonth = 4) or (pMonth = 7) or (pMonth = 10) then month_kind := 1;
  if (pMonth = 2) or (pMonth = 5) or (pMonth = 8) or (pMonth = 11) then month_kind := 2;
  if (pMonth = 3) or (pMonth = 6) or (pMonth = 9) or (pMonth = 12) then month_kind := 3;

  SP_LECTURE_WITH_TEACHER.ParamByName('PYEAR').AsInteger := pYear;
  SP_LECTURE_WITH_TEACHER.ParamByName('PSTEP').AsInteger := pStep;
  SP_LECTURE_WITH_TEACHER.Active := True;
  d_LECTURE_WITH_TEACHER.DataSet.Refresh;
  intID := StrToInt64(FormatDateTime('yyyymmddhhnnsszzz', now));
  cnt := SP_LECTURE_WITH_TEACHER.RecordCount;
  //ShowMessage(IntToStr(cnt));
  Gauge1.MaxValue := cnt;
  Gauge1.Progress := 0;
  lblMsg.Caption := '강사수당 계산중입니다. 잠시만 기다려 주세요.';
  if cnt > 0 then begin
    PanelProgress.Visible := True;
    SP_LECTURE_WITH_TEACHER.First;
    for i := 0 to cnt - 1 do begin
      if SP_LECTURE_WITH_TEACHERIS_ACTIVE.AsInteger = 0 then begin
        ID := IntToStr(intID + i);
        CALC_KIND       := SP_LECTURE_WITH_TEACHERCALC_KIND.AsInteger;
        LECTURE_IDX     := SP_LECTURE_WITH_TEACHERL_IDX.AsInteger;
        LECTURE_PARENT  := SP_LECTURE_WITH_TEACHERPARENT_LECTURE_ID.AsString;
        LECTURE_ID      := SP_LECTURE_WITH_TEACHERID.AsString;
        BANK_NAME       := SP_LECTURE_WITH_TEACHERBANK_NAME.AsString;
        BANK_NO         := SP_LECTURE_WITH_TEACHERBANK_NO.AsString;
        TEACHER_PERCENT := SP_LECTURE_WITH_TEACHERTEACHER_PERCENT.AsFloat;
        L_UID           := SP_LECTURE_WITH_TEACHERL_UID.AsInteger;
        T_IDX           := 0;
        EXTRA_PAY     := 0;
        case month_kind of
          1: begin
            LECTURE_PRICE := SP_LECTURE_WITH_TEACHERMONTH1_PRICE.AsFloat;
            TEACHER_ID    := SP_LECTURE_WITH_TEACHERTEACHER_ID.AsString;
            T_IDX := get_teacher_idx(TEACHER_ID);
          end;
          2: begin
            LECTURE_PRICE := SP_LECTURE_WITH_TEACHERMONTH2_PRICE.AsFloat;
            TEACHER_ID    := SP_LECTURE_WITH_TEACHERTEACHER_ID2.AsString;
            T_IDX := get_teacher_idx(TEACHER_ID);
          end;
          3: begin
            LECTURE_PRICE := SP_LECTURE_WITH_TEACHERMONTH3_PRICE.AsFloat;
            TEACHER_ID    := SP_LECTURE_WITH_TEACHERTEACHER_ID3.AsString;
            T_IDX := get_teacher_idx(TEACHER_ID);
          end;
        end;
        if LECTURE_PRICE > 0 then begin
          REGISTED_PRICE := GetLectureRegistTotal(month_kind, LECTURE_ID);
          COMMON_COUNT  := GetGeneralStudentCount(month_kind, 0, LECTURE_ID);
          DCCount       := GetGeneralStudentCount(month_kind, 1, LECTURE_ID);
          FREE_COUNT    := GetGeneralStudentCount(month_kind, 2, LECTURE_ID);

          if REGISTED_PRICE > 0 then begin
            TEACHER_ID_VAL := TEACHER_ID;
            SUDANG := REGISTED_PRICE * (TEACHER_PERCENT / 100);
            LECTURE_SUDANG := Trunc(SUDANG * 0.1) * 10;
            TOTAL_MAN := COMMON_COUNT + DCCount;
            TOTAL_AMOUNT := LECTURE_SUDANG;
            SODUK_FEE := Trunc(TOTAL_AMOUNT * 0.03);
            SODUK     := Trunc(SODUK_FEE * 0.1) * 10;
            JUMIN_FEE := Trunc(SODUK * 0.1);
            JUMIN     := Trunc(JUMIN_FEE * 0.1) * 10;
            NET_AMOUNT := TOTAL_AMOUNT - (SODUK + JUMIN);
            LECTURE_TOTAL_AMOUNT := REGISTED_PRICE;
            NET_CENTER_AMOUNT    := REGISTED_PRICE - LECTURE_SUDANG;

            CreateTeacherPayment(L_UID, LECTURE_IDX, T_IDX, pYear, pMonth, ID, LECTURE_ID, TEACHER_ID_VAL, BANK_NAME, BANK_NO,
                COMMON_COUNT, COMMON_OUT, DCCount, DC_OUT, COMMON_PRICE, DC_PRICE, TOTAL_MAN, TOTAL_AMOUNT,
                SODUK, JUMIN, NET_AMOUNT, EXTRA_PAY, LECTURE_TOTAL_AMOUNT, NET_CENTER_AMOUNT, COMMON_FEE, DC_FEE);
            //ShowMessage('2');

          end;
        end;
      end;
      Gauge1.Progress := i + 1;
      PanelProgress.Refresh;
      SP_LECTURE_WITH_TEACHER.Next;
    end;
  end else begin
    ShowMessage('해당 강좌자료가 없습니다. 년도와 기수를 확인하세요.');
    Exit;
  end;
  TEACHER_PAYMENT_SEL.ParamByName('PYEAR').Value := pYear;
  TEACHER_PAYMENT_SEL.ParamByName('PMONTH').Value := pMonth;
  TEACHER_PAYMENT_SEL.Active := True;
  d_TEACHER_PAYMENT_SEL.DataSet.Refresh;
  PanelProgress.Visible := False;
end;

function TfmTeacherPay.GetLectureRegistTotal(pMonth : Integer; lecture_id : string) : Double;
var
  Query : TUniQuery;
  REG_PRICE, OUT_PRICE, TOTAL_PRICE : Double;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      if pMonth = 1 then begin
        SQL.Add('SELECT SUM(REG_PRICE1) as REG_PRICE, SUM(OUT_PRICE1) as OUT_PRICE from REGISTED_LECTURE ');
      end;
      if pMonth = 2 then begin
        SQL.Add('SELECT SUM(REG_PRICE2) as REG_PRICE, SUM(OUT_PRICE2) as OUT_PRICE from REGISTED_LECTURE ');
      end;
      if pMonth = 3 then begin
        SQL.Add('SELECT SUM(REG_PRICE3) as REG_PRICE, SUM(OUT_PRICE3) as OUT_PRICE from REGISTED_LECTURE ');
      end;
      SQL.Add('where lecture_id = :lecture_id ');
      ParamByName('lecture_id').AsString := lecture_id;
      Active := True;
    end;
    Query.Refresh;
    REG_PRICE := Query.FieldByName('REG_PRICE').AsFloat;
    OUT_PRICE := Query.FieldByName('OUT_PRICE').AsFloat;
    TOTAL_PRICE := REG_PRICE - OUT_PRICE;
    Result := TOTAL_PRICE;
  finally
    Query.Free;
  end;
end;

function TfmTeacherPay.GetGeneralStudentCount(pMonth, pKind : integer; lecture_id : string) : integer;
var
  Query : TUniQuery;
  cnt : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT Count(*) as rcnt from REGISTED_LECTURE ');
      if pKind = 0 then //common students
        SQL.Add('where lecture_id = :lecture_id and is_dc = 1 ');

      if pKind = 1 then  //dc students
        SQL.Add('where (lecture_id = :lecture_id) and ((is_dc > 1) and (is_dc < 8) or (is_dc = 9)) ');

      if pKind = 2 then  //free students
        SQL.Add('where (lecture_id = :lecture_id) and (is_dc = 8) ');

      //payback information
      //out_month = 1 and out_month1_kind = 1
      if pMonth = 1 then
        SQL.Add('and (reg_price1 > 0) and (out_price1 = 0)');
      if pMonth = 2 then
        SQL.Add('and (reg_price2 > 0) and (out_price2 = 0)');
      if pMonth = 3 then
        SQL.Add('and (reg_price3 > 0) and (out_price3 = 0)');
      ParamByName('lecture_ID').AsString := lecture_ID;
      Active := True;
    end;
    cnt := Query.FieldByName('rcnt').AsInteger;
    if cnt > 0 then
      Result := cnt
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

procedure TfmTeacherPay.CreateTeacherPayment(L_UID, LECTURE_IDX, T_IDX, pYear, pMonth : integer;
  ID, LECTURE_ID, TEACHER_ID, BANK_NAME, BANK_NO: string;
  MAN_COMMON, COMMON_OUT, MAN_DC, DC_OUT, COMMON_PRICE, DC_PRICE, TOTAL_MAN, TOTAL_AMOUNT,
  SODUK, JUMIN, NET_AMOUNT, EXTRA_PAY, LECTURE_TOTAL_AMOUNT, NET_CENTER_AMOUNT, COMMON_FEE, DC_FEE : Double);
var
  Query : TUniQuery;
begin
  TEACHER_SEL_ID.ParamByName('TEACHER_ID').Value := TEACHER_ID;
  TEACHER_SEL_ID.Active := True;
  d_TEACHER_SEL_ID.DataSet.Refresh;

  TEACHER_PAYMENT_INS.ParamByName('ID').Value := ID;
  TEACHER_PAYMENT_INS.ParamByName('LECTURE_ID').Value := LECTURE_ID;
  TEACHER_PAYMENT_INS.ParamByName('TEACHER_ID').Value := TEACHER_ID;
  TEACHER_PAYMENT_INS.ParamByName('P_YEAR').Value := pYear;
  TEACHER_PAYMENT_INS.ParamByName('P_MONTH').Value := pMonth;
  TEACHER_PAYMENT_INS.ParamByName('TOTAL_MAN').Value := TOTAL_MAN;
  TEACHER_PAYMENT_INS.ParamByName('MAN_COMMON').Value := MAN_COMMON;
  TEACHER_PAYMENT_INS.ParamByName('COMMON_PRICE').Value := COMMON_PRICE;
  TEACHER_PAYMENT_INS.ParamByName('MAN_DC').Value := MAN_DC;
  TEACHER_PAYMENT_INS.ParamByName('DC_PRICE').Value := DC_PRICE;
  TEACHER_PAYMENT_INS.ParamByName('TOTAL_AMOUNT').Value := TOTAL_AMOUNT;
  TEACHER_PAYMENT_INS.ParamByName('SODUK').Value := SODUK;
  TEACHER_PAYMENT_INS.ParamByName('JUMIN').Value := JUMIN;
  TEACHER_PAYMENT_INS.ParamByName('NET_AMOUNT').Value := NET_AMOUNT;
  TEACHER_PAYMENT_INS.ParamByName('BANK_NAME').Value := TEACHER_SEL_IDBANK_NAME.Value;
  TEACHER_PAYMENT_INS.ParamByName('BANK_NO').Value := TEACHER_SEL_IDBANK_NO.Value;
  TEACHER_PAYMENT_INS.ParamByName('EXTRA_PAY').Value := EXTRA_PAY;
  TEACHER_PAYMENT_INS.ParamByName('COMMON_OUT').Value := COMMON_OUT;
  TEACHER_PAYMENT_INS.ParamByName('DC_OUT').Value := DC_OUT;
  TEACHER_PAYMENT_INS.ParamByName('LECTURE_TOTAL_AMOUNT').Value := LECTURE_TOTAL_AMOUNT;
  TEACHER_PAYMENT_INS.ParamByName('NET_CENTER_AMOUNT').Value := NET_CENTER_AMOUNT;
  TEACHER_PAYMENT_INS.ParamByName('COMMON_FEE').Value := COMMON_FEE;
  TEACHER_PAYMENT_INS.ParamByName('DC_FEE').Value := DC_FEE;
  TEACHER_PAYMENT_INS.ParamByName('L_IDX').Value := LECTURE_IDX;
  TEACHER_PAYMENT_INS.ParamByName('L_UID').Value := L_UID;
  TEACHER_PAYMENT_INS.ParamByName('T_IDX').Value := T_IDX;
  TEACHER_PAYMENT_INS.Execute;
end;

procedure TfmTeacherPay.cxButton1Click(Sender: TObject);
var
  titleStr : string;
  i, cnt : Integer;
  t_name, t_id : string;
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  with gridTotal do begin
    cnt := DataController.RecordCount;
    dxMemData2.Close;
    dxMemData2.Open;
    DataController.GotoFirst;
    for i := 0 to cnt - 1 do begin
      t_id := gridTotalTEACHER_ID.EditValue;
      GetTeacherInfo(t_id);
      gridPayment.DataController.DataSet.Locate('teacher_id', q_teacherT_NAME.Value, []);
      dxMemData2.Append;
      dxMemData2id.Value := gridPaymentrno.EditValue;
      dxMemData2idx.Value := gridPaymentrno.EditValue;
      dxMemData2teacher.Value := q_teacherT_NAME.Value;
      dxMemData2net_pay.Value := gridTotalSUM_OF_NET_AMOUNT.EditValue;
      dxMemData2bank_name.Value := q_teacherBANK_NAME.Value;
      dxMemData2bank_no.Value := q_teacherBANK_NO.Value;
      dxMemData2report_title.Value := '';
      dxMemData2dong_name.Value := '';
      dxMemData2.Post;
      DataController.GotoNext;
    end;
  end;
  DataSource1.DataSet.Refresh;
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '강사수당지급내역_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid3, true, true, false, 'xls');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

function TfmTeacherPay.CheckIsDone(pyear, pmonth : Integer) : Boolean;
var
  Query, Query2 : TUniQuery;
  isdone, cnt : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT IS_DONE from TEACHER_PAYMENT_FINISH ');
      SQL.Add('where PAY_YEAR = :l_year and PAY_MONTH = :l_mon');
      ParamByName('l_year').AsInteger := pyear;
      ParamByName('l_mon').AsInteger := pmonth;
      Active := True;
    end;
    Query.Refresh;
    cnt := Query.RecordCount;
    if cnt > 0 then
      isdone := Query.FieldByName('IS_DONE').AsInteger
    else begin
      Query2 := TUniQuery.Create(Self);
      with Query2 do begin
        Connection := dm.UniConnection1;
        SQL.Clear;
        SQL.Add('INSERT INTO TEACHER_PAYMENT_FINISH ');
        SQL.Add('(PAY_YEAR, PAY_MONTH, IS_DONE) VALUES(:l_year, :l_mon, 0)');
        ParamByName('l_year').AsInteger := pyear;
        ParamByName('l_mon').AsInteger := pmonth;
        ExecSQL;
      end;
      Query2.Free;
      isdone := 0;
    end;

    if isdone = 1 then
      Result := True
    else
      Result := False;
  finally
    Query.Free;
  end;
end;

function TfmTeacherPay.GetLectureStudentCount : integer;
var
  Query : TUniQuery;
  cnt, pYear, pMonth, pStep : integer;
begin
  pYear := StrToInt(frmYearMonth1.cbYear.Text);
  pMonth := frmYearMonth1.cbMonth.ItemIndex + 1;
  case pMonth of
    1..3 : pStep := 1;
    4..6 : pStep := 2;
    7..9 : pStep := 3;
    10..12 : pStep := 4;
  end;
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT Count(*) as rcnt from LECTURE_STUDENT_REQUEST_VIEW ');
      SQL.Add('where l_year = :l_year and l_step = :l_step');
      ParamByName('l_year').AsInteger := pYear;
      ParamByName('l_step').AsInteger := pStep;
      Active := True;
    end;
    cnt := Query.FieldByName('rcnt').AsInteger;
    if cnt > 0 then
      Result := cnt
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

procedure TfmTeacherPay.DeleteTeacherPayment(pYear, pMonth : Integer);
begin
  TEACHER_PAYMENT_DEL.ParamByName('PYEAR').Value := pYear;
  TEACHER_PAYMENT_DEL.ParamByName('PMONTH').Value := pMonth;
  TEACHER_PAYMENT_DEL.Execute;

  TEACHER_MONTHLY_PAY_DEL.ParamByName('PYEAR').Value := pYear;
  TEACHER_MONTHLY_PAY_DEL.ParamByName('PMONTH').Value := pMonth;
  TEACHER_MONTHLY_PAY_DEL.Execute;
end;

procedure TfmTeacherPay.btnMoneyIn2Click(Sender: TObject);
var
  BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  fmMoneyInOutEdit3 := TfmMoneyInOutEdit3.Create(Self);
  try
    gridPayment.DataController.GotoFirst;
    JUKYO := '센터운영비(30%) ' + frmYearMonth1.cbMonth.Text + '분(전체)';
    fmMoneyInOutEdit3.dxTemp.Active := True;
    fmMoneyInOutEdit3.dxTemp.Append;
    fmMoneyInOutEdit3.dxTempm_jukyo.AsString := jukyo;
    fmMoneyInOutEdit3.dxTempm_out.AsFloat := gridPayment.DataController.Summary.GroupSummaryValues[0, 3];
    fmMoneyInOutEdit3.dxTempm_date.AsDateTime := Date;
    fmMoneyInOutEdit3.dxTempm_kind.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_item.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger := 3;
    fmMoneyInOutEdit3.dxTempacc_detail.AsInteger := 4;

    fmMoneyInOutEdit3.ShowModal;
    if fmMoneyInOutEdit3.ModalResult = mrOk then begin
      BANK_ID := fmMoneyInOutEdit3.cbBankKind.EditValue;
      IO_DATE := fmMoneyInOutEdit3.dxTempm_date.AsDateTime;
      ITEM_ID := fmMoneyInOutEdit3.dxTempacc_item.AsInteger;
      SUBITEM_ID := fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger;
      DETAIL_ID := fmMoneyInOutEdit3.dxTempacc_detail.AsInteger;
      JUKYO := fmMoneyInOutEdit3.dxTempm_jukyo.AsString;
      KIND := fmMoneyInOutEdit3.dxTempm_kind.AsInteger;
      IO_REST := 0;
      DONG_ID := LoginUserDong;
      REG_LECTURE_ID := '';
      if KIND = 1 then begin
        IO_IN := fmMoneyInOutEdit3.dxTempm_out.AsFloat;
        IO_OUT := 0;
      end else begin
        IO_IN := 0;
        IO_OUT := fmMoneyInOutEdit3.dxTempm_out.AsFloat;
      end;

      dm.InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND, IO_DATE,
          JUKYO, DONG_ID, REG_LECTURE_ID, IO_IN, IO_OUT, IO_REST);
      btnDone.Click;
      ShowMessage('센터운영비 수입내역 등록이 완료되었습니다.');
    end;
  finally
    fmMoneyInOutEdit3.Free;
  end;
end;

function TfmTeacherPay.GetCenterPrice : Double;
var
  i, cnt : Integer;
  cprice : Double;
begin
  dxMemData1.DisableControls;
  cnt := dxMemData1.RecordCount;
  cprice := 0;
  dxMemData1.First;
  for i := 0 to cnt - 1 do begin
    cprice := cprice + dxMemData1NET_CENTER_AMOUNT.AsFloat;
    dxMemData1.Next;
  end;
  Result := cprice;
  dxMemData1.First;
  dxMemData1.EnableControls;
end;

procedure TfmTeacherPay.btnDoneClick(Sender: TObject);
var
  Query : TUniQuery;
  isdone : integer;
  pyear, pmonth : Integer;
begin
  pYear := StrToInt(frmYearMonth1.cbYear.Text);
  pMonth := frmYearMonth1.cbMonth.ItemIndex + 1;
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('UPDATE TEACHER_PAYMENT_FINISH set IS_DONE = 1 ');
      SQL.Add('where PAY_YEAR = :l_year and PAY_MONTH = :l_mon');
      ParamByName('l_year').AsInteger := pyear;
      ParamByName('l_mon').AsInteger := pmonth;
      ExecSQL;
    end;
    ShowMessage('강사수당계산 기능을 잠금하였습니다.');
  finally
    Query.Free;
  end;
end;

procedure TfmTeacherPay.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '강사수당지급내역_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, true, true, true, 'xls');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmTeacherPay.btnPrintClick(Sender: TObject);
var
  titleStr : string;
  i, cnt : Integer;
  teacher : string;
begin
//  with gridPayment do begin
//    cnt := DataController.RecordCount;
//    dxMemData2.Close;
//    dxMemData2.Open;
//    DataController.GotoFirst;
//    for i := 0 to cnt - 1 do begin
//      dxMemData2.Append;
//      dxMemData2id.Value := gridPaymentrno.EditValue;
//      dxMemData2teacher.Value := DataController.GetDisplayText(i, GetColumnByFieldName('TEACHER_ID').Index);
//      dxMemData2lecture.Value := DataController.GetDisplayText(i, GetColumnByFieldName('LECTURE_ID').Index);
//      dxMemData2total_man.Value := gridPaymentTOTAL_MAN.EditValue;
//      dxMemData2common_man.Value := gridPaymentMAN_COMMON.EditValue;
//      dxMemData2dc_man.Value := gridPaymentMAN_DC.EditValue;
//      dxMemData2total_price.Value := gridpaymentLECTURE_TOTAL_AMOUNT.EditValue;
//      dxMemData2center_fee.Value := gridPaymentNET_CENTER_AMOUNT.EditValue;
//      dxMemData2teacher_fee.Value := gridpaymentTOTAL_AMOUNT.EditValue;
//      dxMemData2soduk.Value := gridPaymentSODUK.EditValue;
//      dxMemData2jumin.Value := gridPaymentJUMIN.EditValue;
//      dxMemData2bank_name.Value := gridPaymentBANK_NAME.EditValue;
//      dxMemData2bank_no.Value := gridPaymentBANK_NO.EditValue;
//      dxMemData2.Post;
//      DataController.GotoNext;
//    end;
//  end;
//  frxReport1.ShowReport;
  titleStr := '강사수당지급현황' + #13#10 +
              '===================' + #13#10 +
              '(' + frmYearMonth1.cbYear.Text + '년' + IntToStr(frmYearMonth1.cbMonth.ItemIndex + 1) + '월분)' + #13#10 + #13#10;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmTeacherPay.btnRetrieveClick(Sender: TObject);
begin
  GetTotalPayment;
  TEACHER_MONTHLY_PAY_SEL.ParamByName('PYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_MONTHLY_PAY_SEL.ParamByName('PMONTH').Value := frmYearMonth1.cbMonth.ItemIndex + 1;
  TEACHER_MONTHLY_PAY_SEL.Active := True;
  d_TEACHER_MONTHLY_PAY_SEL.DataSet.Refresh;
  if not (TEACHER_MONTHLY_PAY_SEL.RecordCount > 0) then begin
    CreateMonthlyPayment;
    d_TEACHER_MONTHLY_PAY_SEL.DataSet.Refresh;
  end;
end;

procedure TfmTeacherPay.CreateMonthlyPayment;
var
  i, cnt, t_cnt, rec_id : Integer;
  TEACHER_ID, nteacher_id, lecture_id : string;
begin
  GetTotalPayment;

  TEACHER_PAYMENT_SEL.ParamByName('PYEAR').AsInteger := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_PAYMENT_SEL.ParamByName('PMONTH').AsInteger := frmYearMonth1.cbMonth.ItemIndex + 1;
  TEACHER_PAYMENT_SEL.Active := True;
  d_TEACHER_PAYMENT_SEL.DataSet.Refresh;
  cnt := TEACHER_PAYMENT_SEL.RecordCount;
  Gauge1.MaxValue := cnt;
  Gauge1.Progress := 0;
//  if not (cnt > 0) then begin
//    ShowMessage('해당월의 강사수당자료가 없습니다. 수당계산 버튼을 눌러 계산을 먼저하세요.');
//    Exit;
//  end;
  lblMsg.Caption := '해당월의 수당자료를 불러오고 있습니다.';
  PanelProgress.Visible := True;
  TEACHER_PAYMENT_SEL.First;
  rec_id := 0;
  for i := 0 to cnt - 1 do begin
    teacher_id := TEACHER_PAYMENT_SELTEACHER_ID.Value;
    lecture_id := TEACHER_PAYMENT_SELLECTURE_ID.Value;
    TEACHER_PAYMENT_CALCTOTAL.Locate('teacher_id', TEACHER_ID, []);

    if TEACHER_ID <> nteacher_id then
      Inc(rec_id);

    TEACHER_MONTHLY_PAY_INS.ParamByName('LECTURE_ID').Value :=           get_lecture_name(lecture_id);
    TEACHER_MONTHLY_PAY_INS.ParamByName('TEACHER_ID').Value :=           get_teacher_name(teacher_id);
    TEACHER_MONTHLY_PAY_INS.ParamByName('P_YEAR').Value :=               TEACHER_PAYMENT_SELP_YEAR.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('P_MONTH').Value :=              TEACHER_PAYMENT_SELP_MONTH.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('TOTAL_MAN').Value :=            TEACHER_PAYMENT_SELTOTAL_MAN.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('MAN_COMMON').Value :=           TEACHER_PAYMENT_SELMAN_COMMON.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('COMMON_PRICE').Value :=         TEACHER_PAYMENT_SELCOMMON_PRICE.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('MAN_DC').Value :=               TEACHER_PAYMENT_SELMAN_DC.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('DC_PRICE').Value :=             TEACHER_PAYMENT_SELDC_PRICE.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('TOTAL_AMOUNT').Value :=         TEACHER_PAYMENT_CALCTOTALSUM_OF_TOTAL_AMOUNT.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('SODUK').Value :=                TEACHER_PAYMENT_CALCTOTALSUM_OF_SODUK.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('JUMIN').Value :=                TEACHER_PAYMENT_CALCTOTALSUM_OF_JUMIN.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('NET_AMOUNT').Value :=           TEACHER_PAYMENT_CALCTOTALSUM_OF_NET_AMOUNT.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('BANK_NAME').Value :=            TEACHER_PAYMENT_SELBANK_NAME.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('BANK_NO').Value :=              TEACHER_PAYMENT_SELBANK_NO.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('LECTURE_TOTAL_AMOUNT').Value := TEACHER_PAYMENT_SELLECTURE_TOTAL_AMOUNT.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('NET_CENTER_AMOUNT').Value :=    TEACHER_PAYMENT_SELNET_CENTER_AMOUNT.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('COMMON_FEE').Value :=           TEACHER_PAYMENT_SELCOMMON_FEE.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('DC_FEE').Value :=               TEACHER_PAYMENT_SELDC_FEE.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('RNO').Value :=                  rec_id;
    TEACHER_MONTHLY_PAY_INS.ParamByName('DATA_KIND').Value := 0;
    TEACHER_MONTHLY_PAY_INS.ParamByName('L_IDX').Value :=                TEACHER_PAYMENT_SELL_IDX.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('T_IDX').Value :=                TEACHER_PAYMENT_SELT_IDX.Value;
    TEACHER_MONTHLY_PAY_INS.ParamByName('TEACHER_ID2').Value :=          teacher_id;
    TEACHER_MONTHLY_PAY_INS.Execute;
    nteacher_id := TEACHER_ID;

    Gauge1.Progress := i + 1;
    PanelProgress.Refresh;
    TEACHER_PAYMENT_SEL.Next;
  end;
  PanelProgress.Visible := False;
end;

procedure TfmTeacherPay.GetTotalPayment;
begin
  TEACHER_PAYMENT_CALCTOTAL.DisableControls;
  TEACHER_PAYMENT_CALCTOTAL.ParamByName('PYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_PAYMENT_CALCTOTAL.ParamByName('PMONTH').Value := frmYearMonth1.cbMonth.ItemIndex + 1;
  TEACHER_PAYMENT_CALCTOTAL.Active := True;
  d_TEACHER_PAYMENT_CALCTOTAL.DataSet.Refresh;
  TEACHER_PAYMENT_CALCTOTAL.EnableControls;
end;
procedure TfmTeacherPay.GetTeacherInfo(teacher_id : string);
begin
  q_teacher.ParamByName('teacher_id').Value := teacher_id;
  q_teacher.Active := True;
  d_teacher.DataSet.Refresh;
end;

function TfmTeacherPay.get_teacher_idx(teacher_id : string) : Integer;
begin
  q_teacher.ParamByName('teacher_id').Value := teacher_id;
  q_teacher.Active := True;
  q_teacher.Refresh;
  Result := q_teacherIDX.Value;
end;

function TfmTeacherPay.get_teacher_name(teacher_id : string) : string;
begin
  q_teacher.ParamByName('teacher_id').Value := teacher_id;
  q_teacher.Active := True;
  q_teacher.Refresh;
  Result := q_teacherT_NAME.Value;
end;

function TfmTeacherPay.get_lecture_name(lecture_id : string) : string;
begin
  q_lecture.ParamByName('lecture_id').Value := lecture_id;
  q_lecture.Active := True;
  q_lecture.Refresh;
  Result := q_lectureL_NAME.Value;
end;

procedure TfmTeacherPay.gridPaymentColumn1GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
  a1_p, b1_p : double;
begin
  a1_p := gridPayment.DataController.Values[ARecordIndex, gridPayment.GetColumnByFieldName('LECTURE_TOTAL_AMOUNT').Index]; //그리드 11번째컬럼
  b1_p := gridPayment.DataController.Values[ARecordIndex, gridPayment.GetColumnByFieldName('NET_CENTER_AMOUNT').Index]; //그리드 14번째컬럼
  AText := FloatToStr(a1_p - b1_p);
end;

procedure TfmTeacherPay.gridPaymentColumn2CompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridPayment.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTeacherPay.gridPaymentStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
  col := gridPayment.GetColumnByFieldName('data_kind').Index;
  if ARecord.Values[col] > 0 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleDefault;
end;

procedure TfmTeacherPay.gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems10GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('# 명', gridTotal.DataController.Summary.FooterSummaryValues[4]);
end;

procedure TfmTeacherPay.gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems5GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('#,', gridTotal.DataController.Summary.FooterSummaryValues[0]);
end;

procedure TfmTeacherPay.gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems6GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('#,', gridTotal.DataController.Summary.FooterSummaryValues[1]);
end;

procedure TfmTeacherPay.gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems7GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('#,', gridTotal.DataController.Summary.FooterSummaryValues[2]);
end;

procedure TfmTeacherPay.gridPaymentTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems8GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := FormatFloat('#,', gridTotal.DataController.Summary.FooterSummaryValues[3]);
end;

procedure TfmTeacherPay.gridPaymenttex_sumCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridPayment.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTeacherPay.gridPaymentTOTAL_AMOUNTCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridPayment.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTeacherPay.TEACHER_MONTHLY_PAY_SELCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('sudang_sum').AsFloat :=
    DataSet.FieldByName('LECTURE_TOTAL_AMOUNT').AsFloat - DataSet.FieldByName('NET_CENTER_AMOUNT').AsFloat;
  DataSet.FieldByName('tex_sum').AsFloat :=
    DataSet.FieldByName('SODUK').AsFloat + DataSet.FieldByName('JUMIN').AsFloat;
end;

procedure TfmTeacherPay.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '강사수당관리.ini';
  gridPayment.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmTeacherPay.btnUnDoneClick(Sender: TObject);
var
  Query : TUniQuery;
  isdone, pyear, pmonth : integer;
begin
  pYear := StrToInt(frmYearMonth1.cbYear.Text);
  pMonth := frmYearMonth1.cbMonth.ItemIndex + 1;
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('UPDATE TEACHER_PAYMENT_FINISH set IS_DONE = 0 ');
      SQL.Add('where PAY_YEAR = :l_year and PAY_MONTH = :l_mon');
      ParamByName('l_year').AsInteger := pyear;
      ParamByName('l_mon').AsInteger := pmonth;
      ExecSQL;
    end;
    ShowMessage('강사수당계산 잠금기능을 해제하였습니다.');
  finally
    Query.Free;
  end;
end;

procedure TfmTeacherPay.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmTeacherPay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTeacherPay.FormCreate(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '강사수당관리.ini';
  if FileExists(fname) then
    gridPayment.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');

  frmYearMonth1.InitYearMonth;
end;

procedure TfmTeacherPay.FormResize(Sender: TObject);
begin
  PanelProgress.Top := (ClientHeight div 2) - (PanelProgress.Height div 2);
  PanelProgress.Left := (ClientWidth div 2) - (PanelProgress.Width div 2);
end;

procedure TfmTeacherPay.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  frmYearMonth1.cbMonthChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmTeacherPay.frmYearMonth1cbYearChange(Sender: TObject);
begin
  frmYearMonth1.cbYearChange(Sender);
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmTeacherPay]);

end.
