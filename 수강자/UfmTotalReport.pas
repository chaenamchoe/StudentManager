unit UfmTotalReport;

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
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, cxImageComboBox;

type
  TfmTotalReport = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lblPeriods: TLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridPrice: TcxGridBandedTableView;
    cxGrid2: TcxGrid;
    gridDC: TcxGridBandedTableView;
    cxGridLevel1: TcxGridLevel;
    gridPriceKind: TcxGridBandedColumn;
    gridPriceCnt1: TcxGridBandedColumn;
    gridPricePrice1: TcxGridBandedColumn;
    gridPriceCnt2: TcxGridBandedColumn;
    gridPricePrice2: TcxGridBandedColumn;
    gridPriceCnt3: TcxGridBandedColumn;
    gridPricePrice3: TcxGridBandedColumn;
    gridDCKind: TcxGridBandedColumn;
    gridDCCnt1: TcxGridBandedColumn;
    gridDCPrice1: TcxGridBandedColumn;
    gridDCPrice2: TcxGridBandedColumn;
    gridDCPrice3: TcxGridBandedColumn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dxMemData1: TdxMemData;
    dxMemData1item_cnt: TIntegerField;
    dxMemData1item_price: TFloatField;
    dxMemData1item_kind: TSmallintField;
    dxMemData4: TdxMemData;
    dxMemData4item_kind: TIntegerField;
    dxMemData4item_cnt: TIntegerField;
    dxMemData4item_price1: TFloatField;
    dxMemData4item_price2: TFloatField;
    dxMemData4item_price3: TFloatField;
    UniQuery1: TUniQuery;
    SP_CREATE_KIND_TOTAL: TUniStoredProc;
    dxMemData1item_cnt2: TIntegerField;
    dxMemData1item_price2: TFloatField;
    dxMemData1item_cnt3: TIntegerField;
    dxMemData1item_price3: TFloatField;
    lblMancount: TLabel;
    lblTotalPrice: TLabel;
    dxMemData1item_name: TIntegerField;
    Panel1: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxCustomContainerReportLink;
    cxButton1: TcxButton;
    gridPriceColumn1: TcxGridBandedColumn;
    gridPriceColumn2: TcxGridBandedColumn;
    gridDCTotal: TcxGridBandedColumn;
    dxMemData1total_cnt: TIntegerField;
    dxMemData1total_price: TFloatField;
    dxMemData4total_price: TFloatField;
    dxMemData1pay_way: TIntegerField;
    dxMemData4out_kind: TIntegerField;
    gridPricePayWay: TcxGridBandedColumn;
    dxMemData4pay_way: TIntegerField;
    gridDCPayWay: TcxGridBandedColumn;
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
  fmTotalReport: TfmTotalReport;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmTotalReport.cxButton1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmTotalReport.FormShow(Sender: TObject);
begin
  lblPeriods.Caption := FormatDateTime('yyyy-mm-dd', START_DATE) + ' ~ ' + FormatDateTime('yyyy-mm-dd', END_DATE);
  ReportTotalDescript;
end;

procedure TfmTotalReport.SetGridHeight_New(AGrid: TcxGrid; ARowsNumber: Integer);
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

procedure TfmTotalReport.ReportTotalDescript;
var
  i, cnt, row : Integer;
  g_total_count, rcnt1, rcnt2, rcnt3, pay_amount : Integer;
  price1, price2, price3 : Double;
  sum_price1, sum_price2, sum_price3 : Double;
  g_total_price, total_price1, total_price2, total_price3 : Double;
  sum_pay_amount : Double;
begin
  SP_CREATE_KIND_TOTAL.ParamByName('SDATE').Value := START_DATE;
  SP_CREATE_KIND_TOTAL.ParamByName('EDATE').Value := END_DATE;
  SP_CREATE_KIND_TOTAL.Execute;

  MONTH1_CAP := '1 월분';
  MONTH2_CAP := '2 월분';
  MONTH3_CAP := '3 월분';
  gridPrice.Bands[1].Caption := MONTH1_CAP;
  gridPrice.Bands[2].Caption := MONTH2_CAP;
  gridPrice.Bands[3].Caption := MONTH3_CAP;
  gridDCPrice1.Caption := MONTH1_CAP;
  gridDCPrice2.Caption := MONTH2_CAP;
  gridDCPrice3.Caption := MONTH3_CAP;

  dxMemData1.Close;
  dxMemData1.Open;
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('select pay_way, price_kind, total_cnt, total_price ');
  UniQuery1.SQL.Add('from total_price_temp order by price_kind');
  UniQuery1.Active := True;
  UniQuery1.Refresh;
  if FILTER_TEXT <> '' then begin
    UniQuery1.Filter := FILTER_TEXT;
    UniQuery1.Filtered := True;
  end;
  UniQuery1.First;
  for i := 0 to UniQuery1.RecordCount - 1 do begin
    pay_amount := UniQuery1.FieldByName('price_kind').AsInteger;
    g_total_count := UniQuery1.FieldByName('total_cnt').AsInteger;
    sum_pay_amount := UniQuery1.FieldByName('total_price').AsFloat;
    dxMemData1.Append;
    dxMemData1item_name.Value := UniQuery1.FieldByName('price_kind').AsInteger;
    dxMemData1pay_way.Value := UniQuery1.FieldByName('pay_way').AsInteger;
    dxMemData1total_cnt.Value :=   g_total_count;
    dxMemData1total_price.Value := sum_pay_amount;
    dxMemData1.Post;
    UniQuery1.Next;
  end;

  dxMemData4.Close;
  dxMemData4.Open;
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('select count(is_dc) as cnt, is_dc, pay_way, sum(reg_price1) as sum_price1, sum(reg_price2) as sum_price2, ');
  UniQuery1.SQL.Add('sum(reg_price3) as sum_price3, sum(reg_price1 + reg_price2 + reg_price3) as total_price ');
  UniQuery1.SQL.Add('from registed_lecture where (cast(REGISTED_LECTURE.p_date as date) between :sdate and :edate) ');
  UniQuery1.SQL.Add('group by is_dc, pay_way ');
  UniQuery1.ParamByName('sdate').Value := DateToStr(START_DATE);
  UniQuery1.ParamByName('edate').Value := DateToStr(END_DATE);
  UniQuery1.Active := True;
  UniQuery1.Refresh;
  if FILTER_TEXT <> '' then begin
    UniQuery1.Filter := FILTER_TEXT;
    UniQuery1.Filtered := True;
  end;
  UniQuery1.First;
  for i := 0 to UniQuery1.RecordCount - 1 do begin
    dxMemData4.Append;
    dxMemData4item_kind.Value := UniQuery1.FieldByName('is_dc').AsInteger;
    dxMemData4pay_way.Value := UniQuery1.FieldByName('pay_way').AsInteger;
    dxMemData4item_cnt.Value := UniQuery1.FieldByName('cnt').AsInteger;
    dxMemData4item_price1.Value := UniQuery1.FieldByName('sum_price1').AsFloat;
    dxMemData4item_price2.Value := UniQuery1.FieldByName('sum_price2').AsFloat;
    dxMemData4item_price3.Value := UniQuery1.FieldByName('sum_price3').AsFloat;
    dxMemData4total_price.Value := UniQuery1.FieldByName('total_price').AsFloat;
    dxMemData4.Post;
    UniQuery1.Next;
  end;
  //price total
  cnt := dxMemData1.RecordCount;
  dxMemData1.First;
  gridPrice.DataController.BeginUpdate;
  for i := 0 to cnt - 1 do begin
    row := gridPrice.DataController.AppendRecord;
    gridPrice.DataController.SetValue(row, 0, IntToStr(dxMemData1item_name.Value) + '원');
    gridPrice.DataController.SetValue(row, 1, dxMemData1item_cnt.Value);
    gridPrice.DataController.SetValue(row, 2, dxMemData1item_price.Value);
    gridPrice.DataController.SetValue(row, 3, dxMemData1item_cnt2.Value);
    gridPrice.DataController.SetValue(row, 4, dxMemData1item_price2.Value);
    gridPrice.DataController.SetValue(row, 5, dxMemData1item_cnt3.Value);
    gridPrice.DataController.SetValue(row, 6, dxMemData1item_price3.Value);
    gridPrice.DataController.SetValue(row, 7, dxMemData1total_cnt.Value);
    gridPrice.DataController.SetValue(row, 8, dxMemData1total_price.Value);
    gridPrice.DataController.SetValue(row, 9, dxMemData1pay_way.Value);
    dxMemData1.Next;
  end;
  gridPrice.DataController.EndUpdate;
  //SetGridHeight_New(cxGrid1, cnt);
  //DC Total
  cnt := dxMemData4.RecordCount;
  dxMemData4.First;
  gridDC.DataController.BeginUpdate;
  for i := 0 to cnt - 1 do begin
    row := gridDC.DataController.AppendRecord;
    gridDC.DataController.SetValue(row, 0, dxMemData4item_kind.Value);
    gridDC.DataController.SetValue(row, 1, dxMemData4item_cnt.Value);
    gridDC.DataController.SetValue(row, 2, dxMemData4item_price1.Value);
    gridDC.DataController.SetValue(row, 3, dxMemData4item_price2.Value);
    gridDC.DataController.SetValue(row, 4, dxMemData4item_price3.Value);
    gridDC.DataController.SetValue(row, 5, dxMemData4total_price.Value);
    gridDC.DataController.SetValue(row, 6, dxMemData4pay_way.Value);
    dxMemData4.Next;
  end;
  gridDC.DataController.EndUpdate;

  g_total_count := gridDC.DataController.Summary.FooterSummaryValues[3];
  g_total_price := gridDC.DataController.Summary.FooterSummaryValues[0] +
                   gridDC.DataController.Summary.FooterSummaryValues[1] +
                   gridDC.DataController.Summary.FooterSummaryValues[2] ;
  lblTotalPrice.Caption := FormatFloat('#,', g_total_price) + ' 원';
  lblMancount.Caption := FormatFloat('#,', g_total_count) + ' 명';
  //SetGridHeight_New(cxGrid2, cnt);
end;


end.
