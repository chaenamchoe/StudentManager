unit UfmLectureAnalyse;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxmdaset, StdCtrls, Buttons, Spin, ExtCtrls, Uni, MemDS, DBAccess,
  UniProvider, InterBaseUniProvider, cxDBLookupComboBox, cxTextEdit, DateUtils,
  dxSkinOffice2013White, cxContainer, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxPScxPivotGridLnk, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxCurrencyEdit, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfmLectureAnalyse = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnRetrieve: TBitBtn;
    btnExport: TBitBtn;
    dxMemTotal: TdxMemData;
    d_MemTotal: TDataSource;
    dxMemTotallecture_id: TStringField;
    dxMemTotallecture_name: TStringField;
    dxMemTotalm_common: TIntegerField;
    dxMemTotalm_dc: TIntegerField;
    dxMemTotalm_male: TIntegerField;
    dxMemTotalm_female: TIntegerField;
    dxMemTotalm_waiter: TIntegerField;
    dxMemTotalm_outer: TIntegerField;
    dxMemTotalm_newer: TIntegerField;
    dxMemTotalm_renewer: TIntegerField;
    dxMemTotalm_samedong: TIntegerField;
    dxMemTotalm_notsamedong: TIntegerField;
    dxMemTotall_daycnt: TIntegerField;
    dxMemTotall_timecnt: TFloatField;
    dxMemTotals_attendcnt: TIntegerField;
    dxMemTotals_absentcnt: TIntegerField;
    dxMemTotall_fixedcnt: TIntegerField;
    gridReportTotal: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxMemTotalpay_amount: TFloatField;
    dxMemTotalpayback_amount: TFloatField;
    dxMemTotalregist_count: TIntegerField;
    PanelMessage: TPanel;
    Label3: TLabel;
    btnPrint: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    UniStoredProc1: TUniStoredProc;
    cbStep: TComboBox;
    cbYear: TComboBox;
    UniStoredProc1R_PLAN: TIntegerField;
    UniStoredProc1R_REGIST: TIntegerField;
    UniStoredProc1R_COMMON: TIntegerField;
    UniStoredProc1R_DROP: TIntegerField;
    UniStoredProc1R_DC: TIntegerField;
    UniStoredProc1R_DC_KIND1: TIntegerField;
    UniStoredProc1R_DC_KIND2: TIntegerField;
    UniStoredProc1R_DC_KIND3: TIntegerField;
    UniStoredProc1R_DC_KIND4: TIntegerField;
    UniStoredProc1R_DC_KIND5: TIntegerField;
    UniStoredProc1R_DC_KIND6: TIntegerField;
    UniStoredProc1R_DC_KIND7: TIntegerField;
    UniStoredProc1R_DC_KIND8: TIntegerField;
    gridReportTotalR_L_ID: TcxGridDBColumn;
    gridReportTotalR_LECTURENAME: TcxGridDBColumn;
    gridReportTotalR_PLAN: TcxGridDBColumn;
    gridReportTotalR_REGIST: TcxGridDBColumn;
    gridReportTotalR_COMMON: TcxGridDBColumn;
    gridReportTotalR_DROP: TcxGridDBColumn;
    gridReportTotalR_DC: TcxGridDBColumn;
    gridReportTotalR_DC_KIND1: TcxGridDBColumn;
    gridReportTotalR_DC_KIND2: TcxGridDBColumn;
    gridReportTotalR_DC_KIND3: TcxGridDBColumn;
    gridReportTotalR_DC_KIND4: TcxGridDBColumn;
    gridReportTotalR_DC_KIND5: TcxGridDBColumn;
    gridReportTotalR_DC_KIND6: TcxGridDBColumn;
    gridReportTotalR_DC_KIND7: TcxGridDBColumn;
    gridReportTotalR_DC_KIND8: TcxGridDBColumn;
    UniStoredProc1R_L_ID: TStringField;
    UniStoredProc1R_LECTURENAME: TStringField;
    UniStoredProc1R_L_IDX: TIntegerField;
    gridReportTotalR_L_IDX: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    UniStoredProc1COMMON_PRICE: TFloatField;
    UniStoredProc1DC_PRICE: TFloatField;
    UniStoredProc1OUT_PRICE: TFloatField;
    UniStoredProc1TOTAL_PRICE: TFloatField;
    gridReportTotalDC_PRICE: TcxGridDBColumn;
    gridReportTotalOUT_PRICE: TcxGridDBColumn;
    gridReportTotalTOTAL_PRICE: TcxGridDBColumn;
    gridReportTotalCOMMON_PRICE: TcxGridDBColumn;
    chkHidePrice: TCheckBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbStepChange(Sender: TObject);
    procedure chkHidePriceClick(Sender: TObject);
  private
    procedure GetData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureAnalyse: TfmLectureAnalyse;

implementation

uses GlobalVar, Udm, uCommonLogic;

{$R *.dfm}

procedure TfmLectureAnalyse.FormShow(Sender: TObject);
var
  i, mon : integer;
begin
  for i := YearOf(Date) - 9 to YearOf(Date) + 1 do begin
    cbYear.Items.Add(IntToStr(i));
  end;
  cbYear.ItemIndex := cbYear.Items.IndexOf(IntToStr(YearOf(Date)));
  mon := MonthOf(Date);
  case mon of
    1..3 : cbStep.ItemIndex := 0;
    4..6 : cbStep.ItemIndex := 1;
    7..9 : cbStep.ItemIndex := 2;
    10..12 : cbStep.ItemIndex := 3;
  end;
end;

procedure TfmLectureAnalyse.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '¿¢¼¿ÆÄÀÏ (*.xls)|*.xls';
    saveDLG.FileName := Caption + '_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('¿¢¼¿ÆÄÀÏ ÀúÀå¿Ï·á!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmLectureAnalyse.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '°­ÁÂ Á¾ÇÕ Áý°èÇ¥' + #13#10 +
              '==================' + #13#10 +
              '(' + cbYear.Text + '³â ' + cbStep.Text + ')';

  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '±¼¸²';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmLectureAnalyse.btnRetrieveClick(Sender: TObject);
begin
  PanelMessage.Visible := True;
  PanelMessage.Refresh;
  Screen.Cursor := crArrow;

  GetData;   //ÇÕ°èÀÚ·á »êÃâ

  PanelMessage.Visible := False;
  cxGrid1.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TfmLectureAnalyse.cbStepChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmLectureAnalyse.chkHidePriceClick(Sender: TObject);
begin
  gridReportTotalOUT_PRICE.Visible := chkHidePrice.Checked;
  gridReportTotalTOTAL_PRICE.Visible := chkHidePrice.Checked;
  gridReportTotalDC_PRICE.Visible := chkHidePrice.Checked;
  gridReportTotalCOMMON_PRICE.Visible := chkHidePrice.Checked;
end;

procedure TfmLectureAnalyse.GetData;
var
  i, cnt, l_year, l_step1 : integer;
  r_count : integer;
begin
  l_year := StrToInt(cbYear.Text);
  l_step1 := cbStep.ItemIndex + 1;
  with UniStoredProc1 do begin
    Active := False;
    SpecificOptions.Values['FetchAll'] := 'true';
    StoredProcName := 'SP_GET_ANALYSE_TOTAL2';
    PrepareSQL(True);
    ParamByName('l_year').AsInteger := l_year;
    ParamByName('l_step1').AsInteger := l_step1;
    Active := True;
  end;
  d_MemTotal.DataSet.Refresh;
end;

procedure TfmLectureAnalyse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmLectureAnalyse]);

end.
