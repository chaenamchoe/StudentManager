unit UfmReportTeacherPay;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, Spin, ExtCtrls, DateUtils,
  MemDS, DBAccess, Uni, dxSkinOffice2013White, cxGridExportLink, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfmReportTeacherPay = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    cxGrid1: TcxGrid;
    gridPayment: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    speStep2: TSpinEdit;
    Label2: TLabel;
    gridPaymentTEACHER_ID: TcxGridDBColumn;
    gridPaymentP_YEAR: TcxGridDBColumn;
    gridPaymentP_MONTH: TcxGridDBColumn;
    gridPaymentTOTAL_MAN: TcxGridDBColumn;
    gridPaymentMAN_COMMON: TcxGridDBColumn;
    gridPaymentCOMMON_PRICE: TcxGridDBColumn;
    gridPaymentMAN_DC: TcxGridDBColumn;
    gridPaymentDC_PRICE: TcxGridDBColumn;
    gridPaymentTOTAL_AMOUNT: TcxGridDBColumn;
    gridPaymentSODUK: TcxGridDBColumn;
    gridPaymentJUMIN: TcxGridDBColumn;
    gridPaymentNET_AMOUNT: TcxGridDBColumn;
    btnExport: TBitBtn;
    q_TEACHER_PAYTOTAL: TUniQuery;
    q_TEACHER_PAYTOTALTEACHER_ID: TStringField;
    q_TEACHER_PAYTOTALP_YEAR: TIntegerField;
    q_TEACHER_PAYTOTALP_MONTH: TIntegerField;
    q_TEACHER_PAYTOTALCOMMON_PRICE: TFloatField;
    q_TEACHER_PAYTOTALDC_PRICE: TFloatField;
    q_TEACHER_PAYTOTALTOTAL_AMOUNT: TFloatField;
    q_TEACHER_PAYTOTALSODUK: TFloatField;
    q_TEACHER_PAYTOTALJUMIN: TFloatField;
    q_TEACHER_PAYTOTALNET_AMOUNT: TFloatField;
    d_TEACHER_PAYMENT_SEL2: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnPrint: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    q_TEACHER_PAYTOTALTOTAL_MAN: TLargeintField;
    q_TEACHER_PAYTOTALMAN_COMMON: TLargeintField;
    q_TEACHER_PAYTOTALMAN_DC: TLargeintField;
    q_TEACHER_PAYTOTALDATA_KIND: TIntegerField;
    gridPaymentDATA_KIND: TcxGridDBColumn;
    TEACHER_PAYMENT_SEL2: TUniStoredProc;
    TEACHER_PAYMENT_SEL2ID: TStringField;
    TEACHER_PAYMENT_SEL2DONG_ID: TStringField;
    TEACHER_PAYMENT_SEL2LECTURE_ID: TStringField;
    TEACHER_PAYMENT_SEL2TEACHER_ID: TStringField;
    TEACHER_PAYMENT_SEL2P_YEAR: TIntegerField;
    TEACHER_PAYMENT_SEL2P_MONTH: TIntegerField;
    TEACHER_PAYMENT_SEL2TOTAL_HOUR: TFloatField;
    TEACHER_PAYMENT_SEL2TOTAL_MAN: TFloatField;
    TEACHER_PAYMENT_SEL2MAN_COMMON: TFloatField;
    TEACHER_PAYMENT_SEL2COMMON_PRICE: TFloatField;
    TEACHER_PAYMENT_SEL2MAN_DC: TFloatField;
    TEACHER_PAYMENT_SEL2DC_PRICE: TFloatField;
    TEACHER_PAYMENT_SEL2TOTAL_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SEL2SODUK: TFloatField;
    TEACHER_PAYMENT_SEL2JUMIN: TFloatField;
    TEACHER_PAYMENT_SEL2NET_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SEL2WEEK_DAYS: TStringField;
    TEACHER_PAYMENT_SEL2BANK_NAME: TStringField;
    TEACHER_PAYMENT_SEL2BANK_NO: TStringField;
    TEACHER_PAYMENT_SEL2EXTRA_PAY: TFloatField;
    TEACHER_PAYMENT_SEL2COMMON_OUT: TFloatField;
    TEACHER_PAYMENT_SEL2DC_OUT: TFloatField;
    TEACHER_PAYMENT_SEL2LECTURE_TOTAL_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SEL2NET_CENTER_AMOUNT: TFloatField;
    TEACHER_PAYMENT_SEL2COMMON_FEE: TFloatField;
    TEACHER_PAYMENT_SEL2DC_FEE: TFloatField;
    TEACHER_PAYMENT_SEL2CALC_KIND: TSmallintField;
    TEACHER_PAYMENT_SEL2MONTH1_DAYS: TSmallintField;
    TEACHER_PAYMENT_SEL2MONTH2_DAYS: TSmallintField;
    TEACHER_PAYMENT_SEL2MONTH3_DAYS: TSmallintField;
    TEACHER_PAYMENT_SEL2L_IDX: TSmallintField;
    TEACHER_PAYMENT_SEL2L_UID: TIntegerField;
    TEACHER_PAYMENT_SEL2T_IDX: TSmallintField;
    gridPaymentID: TcxGridDBColumn;
    gridPaymentDONG_ID: TcxGridDBColumn;
    gridPaymentLECTURE_ID: TcxGridDBColumn;
    gridPaymentTOTAL_HOUR: TcxGridDBColumn;
    gridPaymentWEEK_DAYS: TcxGridDBColumn;
    gridPaymentBANK_NAME: TcxGridDBColumn;
    gridPaymentBANK_NO: TcxGridDBColumn;
    gridPaymentEXTRA_PAY: TcxGridDBColumn;
    gridPaymentCOMMON_OUT: TcxGridDBColumn;
    gridPaymentDC_OUT: TcxGridDBColumn;
    gridPaymentLECTURE_TOTAL_AMOUNT: TcxGridDBColumn;
    gridPaymentNET_CENTER_AMOUNT: TcxGridDBColumn;
    gridPaymentCOMMON_FEE: TcxGridDBColumn;
    gridPaymentDC_FEE: TcxGridDBColumn;
    gridPaymentCALC_KIND: TcxGridDBColumn;
    gridPaymentMONTH1_DAYS: TcxGridDBColumn;
    gridPaymentMONTH2_DAYS: TcxGridDBColumn;
    gridPaymentMONTH3_DAYS: TcxGridDBColumn;
    gridPaymentL_IDX: TcxGridDBColumn;
    gridPaymentL_UID: TcxGridDBColumn;
    gridPaymentT_IDX: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    TEACHER_PAYMENT_SEL2TAX_TOTAL: TFloatField;
    gridPaymentTAX_TOTAL: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportTeacherPay: TfmReportTeacherPay;

implementation

uses Udm, GlobalVar, uCommonLogic;

{$R *.dfm}


procedure TfmReportTeacherPay.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '강사수당지급대장_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmReportTeacherPay.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '강사수당지급대장';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmReportTeacherPay.btnRetrieveClick(Sender: TObject);
begin
  TEACHER_PAYMENT_SEL2.ParamByName('PYEAR').AsInteger := speYear.Value;
  TEACHER_PAYMENT_SEL2.ParamByName('PMONTH').AsInteger := speStep.Value;
  TEACHER_PAYMENT_SEL2.ParamByName('PMONTH2').AsInteger := speStep2.Value;
  TEACHER_PAYMENT_SEL2.Active := True;
  d_TEACHER_PAYMENT_SEL2.DataSet.Refresh;
end;

procedure TfmReportTeacherPay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmReportTeacherPay.FormShow(Sender: TObject);
var
  mon : integer;
begin
  speYear.Value := YearOf(Date);
  mon := MonthOf(Date);
  speStep.Value := mon;
  speStep2.Value := mon;
end;

initialization RegisterClasses([TfmReportTeacherPay]);
end.
