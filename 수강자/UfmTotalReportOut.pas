unit UfmTotalReportOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, MemDS, DBAccess,
  Uni, dxmdaset, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, StdCtrls, cxCurrencyEdit,
  cxDBLookupComboBox, cxTextEdit, Math, ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, Menus,
  cxButtons, dxPSCore, dxPSContainerLnk, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, cxImageComboBox,
  cxDBData, cxGridDBTableView;

type
  TfmTotalReportOut = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lblPeriods: TLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    UniQuery1: TUniQuery;
    lblMancount: TLabel;
    lblTotalPrice: TLabel;
    Panel1: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxCustomContainerReportLink;
    cxButton1: TcxButton;
    UniQuery2: TUniQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    UniQuery1OUT_AMOUNT: TIntegerField;
    UniQuery1OUT_WHEN: TIntegerField;
    UniQuery1PAYBACK_WAY: TIntegerField;
    UniQuery1COUNT: TIntegerField;
    UniQuery1SUM: TLargeintField;
    UniQuery2OUT_KIND: TIntegerField;
    UniQuery2PAYBACK_WAY: TIntegerField;
    UniQuery2COUNT: TIntegerField;
    UniQuery2SUM: TLargeintField;
    gridMoney: TcxGridDBTableView;
    gridMoneyOUT_AMOUNT: TcxGridDBColumn;
    gridMoneyOUT_WHEN: TcxGridDBColumn;
    gridMoneyPAYBACK_WAY: TcxGridDBColumn;
    gridMoneyCOUNT: TcxGridDBColumn;
    gridMoneySUM: TcxGridDBColumn;
    gridDC: TcxGridDBTableView;
    gridDCOUT_KIND: TcxGridDBColumn;
    gridDCPAYBACK_WAY: TcxGridDBColumn;
    gridDCCOUNT: TcxGridDBColumn;
    gridDCSUM: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure ReportTotalDescript;
    procedure SetGridHeight_New(AGrid: TcxGrid; ARowsNumber: Integer);
    { Private declarations }
  public
    { Public declarations }
    START_DATE, END_DATE : TDateTime;
    MONTH1_CAP, MONTH2_CAP, MONTH3_CAP : string;
    FILTER_TEXT : string;
  end;

var
  fmTotalReportOut: TfmTotalReportOut;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmTotalReportOut.cxButton1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmTotalReportOut.FormShow(Sender: TObject);
begin
  lblPeriods.Caption := FormatDateTime('yyyy-mm-dd', START_DATE) + ' ~ ' + FormatDateTime('yyyy-mm-dd', END_DATE);
  ReportTotalDescript;
end;

procedure TfmTotalReportOut.SetGridHeight_New(AGrid: TcxGrid; ARowsNumber: Integer);
var
  I: Integer;
  AHeight: Integer;
  mRowNumber: integer;
begin
  if (AGrid = nil) or (AGrid.FocusedView = nil) then
    Exit;
  AHeight := 0;
  with AGrid.FocusedView as TcxGridBandedTableView do
  begin
    AGrid.Height := ARowsNumber * 32;
  end;
end;

procedure TfmTotalReportOut.ReportTotalDescript;
var
  i, cnt, row : Integer;
  rcnt1, rcnt2, rcnt3,pay_amount, g_total_count : Integer;
  price1, price2, price3 : Double;
  sum_price1, sum_price2, sum_price3 : Double;
  g_total_price, total_price1, total_price2, total_price3 : Double;
  sum_pay_amount : Double;
begin
  UniQuery1.Open;
  DataSource1.DataSet.Refresh;
  UniQuery2.Open;
  DataSource2.DataSet.Refresh;

  g_total_count := gridDC.DataController.Summary.FooterSummaryValues[0];
  g_total_price := gridDC.DataController.Summary.FooterSummaryValues[1];
  lblTotalPrice.Caption := FormatFloat('#,', g_total_price) + ' ��';
  lblMancount.Caption := FormatFloat('#,', g_total_count) + ' ��';
  //SetGridHeight_New(cxGrid2, cnt);
end;


end.
