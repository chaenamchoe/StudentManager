unit UfmReportIncome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit,
  cxDBLookupComboBox, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, StdCtrls, Buttons, Spin, ExtCtrls, DateUtils,
  MemDS, DBAccess, Uni, dxSkinOffice2013White, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxGridExportLink,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxCheckBox;

type
  TfmReportIncome = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    btnRetrieve: TBitBtn;
    cxGrid1: TcxGrid;
    gridRequest: TcxGridDBTableView;
    gridRequestL_YEAR: TcxGridDBColumn;
    gridRequestL_STEP: TcxGridDBColumn;
    gridRequestL_NAME: TcxGridDBColumn;
    gridRequestL_TIME_WEEK: TcxGridDBColumn;
    gridRequestL_DAYS: TcxGridDBColumn;
    gridRequestL_MONTH: TcxGridDBColumn;
    gridRequestCLASSROOM_ID: TcxGridDBColumn;
    gridRequestIS_ACTIVE: TcxGridDBColumn;
    gridRequestLECTURE_ID: TcxGridDBColumn;
    gridRequestSTUDENT_ID: TcxGridDBColumn;
    gridRequestS_NAME: TcxGridDBColumn;
    gridRequestS_BIRTH: TcxGridDBColumn;
    gridRequestS_SEX: TcxGridDBColumn;
    gridRequestREG_KIND: TcxGridDBColumn;
    gridRequestP_DATE: TcxGridDBColumn;
    gridRequestPAY_AMOUNT: TcxGridDBColumn;
    gridRequestTEACHER_ID: TcxGridDBColumn;
    gridRequestR_DATE: TcxGridDBColumn;
    gridRequestOUT_AMOUNT: TcxGridDBColumn;
    gridRequestPAY_WAY: TcxGridDBColumn;
    gridRequestS_TEL: TcxGridDBColumn;
    gridRequestT_NAME: TcxGridDBColumn;
    gridRequestT_SEX: TcxGridDBColumn;
    gridRequestT_TEL: TcxGridDBColumn;
    gridRequestBANK_NAME: TcxGridDBColumn;
    gridRequestBANK_NO: TcxGridDBColumn;
    gridRequestID: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    gridRequestDONG_ID: TcxGridDBColumn;
    gridRequestPAYBACK_WAY: TcxGridDBColumn;
    gridRequestPAYBACK_BANK: TcxGridDBColumn;
    gridRequestPAYBACK_BANKID: TcxGridDBColumn;
    Label3: TLabel;
    cbDataKind: TcxImageComboBox;
    btnExport: TBitBtn;
    gridRequestOUT_KIND: TcxGridDBColumn;
    q_REQUEST_VIEW_ALL: TUniQuery;
    q_REQUEST_VIEW_ALLL_YEAR: TIntegerField;
    q_REQUEST_VIEW_ALLL_STEP: TIntegerField;
    q_REQUEST_VIEW_ALLL_NAME: TStringField;
    q_REQUEST_VIEW_ALLL_TIME_WEEK: TIntegerField;
    q_REQUEST_VIEW_ALLL_DAYS: TStringField;
    q_REQUEST_VIEW_ALLL_MONTH: TIntegerField;
    q_REQUEST_VIEW_ALLCLASSROOM_ID: TStringField;
    q_REQUEST_VIEW_ALLIS_ACTIVE: TIntegerField;
    q_REQUEST_VIEW_ALLDONG_ID: TStringField;
    q_REQUEST_VIEW_ALLLECTURE_ID: TStringField;
    q_REQUEST_VIEW_ALLSTUDENT_ID: TStringField;
    q_REQUEST_VIEW_ALLPAY_AMOUNT: TFloatField;
    q_REQUEST_VIEW_ALLPAY_KIND: TSmallintField;
    q_REQUEST_VIEW_ALLOUT_AMOUNT: TFloatField;
    q_REQUEST_VIEW_ALLREG_KIND: TSmallintField;
    q_REQUEST_VIEW_ALLTEACHER_ID: TStringField;
    q_REQUEST_VIEW_ALLS_NAME: TStringField;
    q_REQUEST_VIEW_ALLS_TEL: TStringField;
    q_REQUEST_VIEW_ALLS_KIND: TSmallintField;
    q_REQUEST_VIEW_ALLS_SEX: TStringField;
    q_REQUEST_VIEW_ALLS_BIRTH: TStringField;
    q_REQUEST_VIEW_ALLT_NAME: TStringField;
    q_REQUEST_VIEW_ALLT_SEX: TStringField;
    q_REQUEST_VIEW_ALLT_TEL: TStringField;
    q_REQUEST_VIEW_ALLBANK_NAME: TStringField;
    q_REQUEST_VIEW_ALLBANK_NO: TStringField;
    q_REQUEST_VIEW_ALLID: TStringField;
    q_REQUEST_VIEW_ALLPAY_WAY: TSmallintField;
    q_REQUEST_VIEW_ALLPAYBACK_WAY: TSmallintField;
    q_REQUEST_VIEW_ALLPAYBACK_BANK: TStringField;
    q_REQUEST_VIEW_ALLPAYBACK_BANKID: TStringField;
    q_REQUEST_VIEW_ALLS_ADDR: TStringField;
    q_REQUEST_VIEW_ALLOUT_KIND: TSmallintField;
    q_REQUEST_VIEW_ALLSTART_DATE: TStringField;
    q_REQUEST_VIEW_ALLEND_DATE: TStringField;
    q_REQUEST_VIEW_ALLP_DATE: TStringField;
    q_REQUEST_VIEW_ALLR_DATE: TStringField;
    d_REQUEST_VIEW_ALL: TDataSource;
    CheckBox1: TCheckBox;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnPrint: TBitBtn;
    cbStep1: TComboBox;
    cbStep2: TComboBox;
    q_REQUEST_VIEW_ALLL_PRICE: TFloatField;
    q_REQUEST_VIEW_ALLPAYBACK_BANKOWNER: TStringField;
    q_REQUEST_VIEW_ALLREG_MONTH: TSmallintField;
    q_REQUEST_VIEW_ALLOUT_MONTH: TSmallintField;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    q_REQUEST_VIEW_ALLREG_MONTH2: TSmallintField;
    q_REQUEST_VIEW_ALLREG_MONTH3: TSmallintField;
    q_REQUEST_VIEW_ALLOUT_MONTH2: TSmallintField;
    q_REQUEST_VIEW_ALLOUT_MONTH3: TSmallintField;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleGreen: TcxStyle;
    q_REQUEST_VIEW_ALLIS_DC: TSmallintField;
    gridRequestIS_DC: TcxGridDBColumn;
    q_REQUEST_VIEW_ALLL_IDX: TSmallintField;
    gridRequestL_IDX: TcxGridDBColumn;
    q_REQUEST_VIEW_ALLREG_PRICE1: TFloatField;
    q_REQUEST_VIEW_ALLREG_PRICE2: TFloatField;
    q_REQUEST_VIEW_ALLREG_PRICE3: TFloatField;
    q_REQUEST_VIEW_ALLOUT_PRICE1: TFloatField;
    q_REQUEST_VIEW_ALLOUT_PRICE2: TFloatField;
    q_REQUEST_VIEW_ALLOUT_PRICE3: TFloatField;
    gridRequestREG_PRICE1: TcxGridDBColumn;
    gridRequestREG_PRICE2: TcxGridDBColumn;
    gridRequestREG_PRICE3: TcxGridDBColumn;
    gridRequestOUT_PRICE1: TcxGridDBColumn;
    gridRequestOUT_PRICE2: TcxGridDBColumn;
    gridRequestOUT_PRICE3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure cbDataKindPropertiesEditValueChanged(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbStep1Change(Sender: TObject);
    procedure cbStep2Change(Sender: TObject);
    procedure speYearChange(Sender: TObject);
    procedure gridRequestS_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestIS_DCCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestREG_MONTHCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestREG_MONTH2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridRequestREG_MONTH3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    procedure SetDataFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportIncome: TfmReportIncome;

implementation

uses GlobalVar, Udm, uCommonLogic;

{$R *.dfm}



procedure TfmReportIncome.btnExportClick(Sender: TObject);
var
  filename : string;
  filter_kind : Integer;
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    filter_kind := cbDataKind.EditValue;
    case filter_kind of
      0 : filename := '수강료수납대장(전체)' + DateTimeToStr(Date) + '.xls';
      1 : filename := '수강료수납대장(등록자)' + DateTimeToStr(Date) + '.xls';
      2 : filename := '수강료수납대장(환불자)' + DateTimeToStr(Date) + '.xls';
      3 : filename := '수강료수납대장(대기자)' + DateTimeToStr(Date) + '.xls';
    end;
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := filename;
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

procedure TfmReportIncome.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmReportIncome.btnRetrieveClick(Sender: TObject);
var
  iYear, s_step, e_step : integer;
begin
  iYear := speYear.Value;
  s_step := cbStep1.ItemIndex + 1;
  e_step := cbStep2.ItemIndex + 1;
  q_REQUEST_VIEW_ALL.ParamByName('l_year').AsInteger := iYear;
  q_REQUEST_VIEW_ALL.ParamByName('start_step').AsInteger := s_step;
  q_REQUEST_VIEW_ALL.ParamByName('end_step').AsInteger := e_step;
  q_REQUEST_VIEW_ALL.Active := True;
  d_REQUEST_VIEW_ALL.DataSet.Refresh;
  SetDataFilter;
end;

procedure TfmReportIncome.cbDataKindPropertiesEditValueChanged(Sender: TObject);
begin
  SetDataFilter;
end;

procedure TfmReportIncome.cbStep1Change(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmReportIncome.cbStep2Change(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmReportIncome.CheckBox1Click(Sender: TObject);
begin
  gridRequest.OptionsView.GroupByBox := CheckBox1.Checked;
end;

procedure TfmReportIncome.SetDataFilter;
var
  filter_kind : integer;
  filter_str : string;
begin
  filter_kind := cbDataKind.EditValue;
  case filter_kind of
    0 : begin
      filter_str := '';
      q_REQUEST_VIEW_ALL.Filter := filter_str;
      q_REQUEST_VIEW_ALL.Filtered := True;
    end;
    1 : begin
      filter_str := 'pay_kind = 0';
      q_REQUEST_VIEW_ALL.Filter := filter_str;
      q_REQUEST_VIEW_ALL.Filtered := True;
    end;
    2 : begin
      filter_str := 'pay_kind > 0';
      q_REQUEST_VIEW_ALL.Filter := filter_str;
      q_REQUEST_VIEW_ALL.Filtered := True;
    end;
  end;
end;

procedure TfmReportIncome.speYearChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmReportIncome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmReportIncome.FormShow(Sender: TObject);
var
  mon : integer;
begin
  speYear.Value := YearOf(Date);
  mon := MonthOf(Date);
  case mon of
    1..3 : begin
             cbStep1.ItemIndex := 0;
             cbStep2.ItemIndex := 0;
           end;
    4..6 : begin
             cbStep1.ItemIndex := 1;
             cbStep2.ItemIndex := 1;
           end;
    7..9 : begin
             cbStep1.ItemIndex := 2;
             cbStep2.ItemIndex := 2;
           end;
    10..12 : begin
             cbStep1.ItemIndex := 3;
             cbStep2.ItemIndex := 3;
             end;
  end;
end;

procedure TfmReportIncome.gridRequestIS_DCCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('IS_DC').Index];
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index];
  if col_out > 0 then begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clBlue; //연한그린색
      ACanvas.Font.Color := clWhite;
    end else begin
      ACanvas.Brush.Color := clRed; //연한그린색
      ACanvas.Font.Color := clWhite;
    end;
  end else begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clWhite;
    end;
  end;
end;

procedure TfmReportIncome.gridRequestREG_MONTH2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_out : Integer;
begin
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_MONTH2').Index];
  if col_out > 0 then begin
    ACanvas.Brush.Color := clYellow;
  end;
end;

procedure TfmReportIncome.gridRequestREG_MONTH3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_out : Integer;
begin
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_MONTH3').Index];
  if col_out > 0 then begin
    ACanvas.Brush.Color := clYellow;
  end;
end;

procedure TfmReportIncome.gridRequestREG_MONTHCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_out : Integer;
begin
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_MONTH').Index];
  if col_out > 0 then begin
    ACanvas.Brush.Color := clYellow;
  end;
end;

procedure TfmReportIncome.gridRequestS_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('S_KIND').Index];
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index];
  if col_out > 0 then begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clBlue; //연한그린색
      ACanvas.Font.Color := clWhite;
    end else begin
      ACanvas.Brush.Color := clRed; //연한그린색
      ACanvas.Font.Color := clWhite;
    end;
  end else begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clGreen; //연한그린색
      ACanvas.Font.Color := clWhite;
    end;
  end;
end;

initialization RegisterClasses([TfmReportIncome]);

end.
