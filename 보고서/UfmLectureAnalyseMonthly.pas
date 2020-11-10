unit UfmLectureAnalyseMonthly;

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
  cxCurrencyEdit, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TfmLectureAnalyseMonthly = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnRetrieve: TBitBtn;
    btnExport: TBitBtn;
    dxMemTotal: TdxMemData;
    D_GET_ANALYSE_MONTHLY: TDataSource;
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
    SP_GET_ANALYSE_MONTHLY: TUniStoredProc;
    cbStep: TComboBox;
    cbYear: TComboBox;
    SP_GET_ANALYSE_MONTHLYR_PLAN: TIntegerField;
    SP_GET_ANALYSE_MONTHLYR_L_ID: TStringField;
    SP_GET_ANALYSE_MONTHLYR_LECTURENAME: TStringField;
    SP_GET_ANALYSE_MONTHLYR_L_IDX: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    gridMonthly: TcxGridDBBandedTableView;
    gridMonthlyR_L_ID: TcxGridDBBandedColumn;
    gridMonthlyR_L_IDX: TcxGridDBBandedColumn;
    gridMonthlyR_LECTURENAME: TcxGridDBBandedColumn;
    gridMonthlyR_PLAN: TcxGridDBBandedColumn;
    SP_GET_ANALYSE_MONTHLYMONTH1_INPRICE: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH2_INPRICE: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH3_INPRICE: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH1_OUTPRICE: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH2_OUTPRICE: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH3_OUTPRICE: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH1_REST: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH2_REST: TFloatField;
    SP_GET_ANALYSE_MONTHLYMONTH3_REST: TFloatField;
    gridMonthlyMONTH1_INPRICE: TcxGridDBBandedColumn;
    gridMonthlyMONTH2_INPRICE: TcxGridDBBandedColumn;
    gridMonthlyMONTH3_INPRICE: TcxGridDBBandedColumn;
    gridMonthlyMONTH1_OUTPRICE: TcxGridDBBandedColumn;
    gridMonthlyMONTH2_OUTPRICE: TcxGridDBBandedColumn;
    gridMonthlyMONTH3_OUTPRICE: TcxGridDBBandedColumn;
    gridMonthlyMONTH1_REST: TcxGridDBBandedColumn;
    gridMonthlyMONTH2_REST: TcxGridDBBandedColumn;
    gridMonthlyMONTH3_REST: TcxGridDBBandedColumn;
    SP_GET_ANALYSE_MONTHLYOUT_MONTH1_CNT: TIntegerField;
    SP_GET_ANALYSE_MONTHLYOUT_MONTH2_CNT: TIntegerField;
    SP_GET_ANALYSE_MONTHLYOUT_MONTH3_CNT: TIntegerField;
    gridMonthlyOUT_MONTH1_CNT: TcxGridDBBandedColumn;
    gridMonthlyOUT_MONTH2_CNT: TcxGridDBBandedColumn;
    gridMonthlyOUT_MONTH3_CNT: TcxGridDBBandedColumn;
    SP_GET_ANALYSE_MONTHLYMONTH1_REST_CNT: TIntegerField;
    SP_GET_ANALYSE_MONTHLYMONTH2_REST_CNT: TIntegerField;
    SP_GET_ANALYSE_MONTHLYMONTH3_REST_CNT: TIntegerField;
    SP_GET_ANALYSE_MONTHLYREG_MONTH1_CNT: TIntegerField;
    SP_GET_ANALYSE_MONTHLYREG_MONTH2_CNT: TIntegerField;
    SP_GET_ANALYSE_MONTHLYREG_MONTH3_CNT: TIntegerField;
    gridMonthlyMONTH1_REST_CNT: TcxGridDBBandedColumn;
    gridMonthlyMONTH2_REST_CNT: TcxGridDBBandedColumn;
    gridMonthlyMONTH3_REST_CNT: TcxGridDBBandedColumn;
    gridMonthlyREG_MONTH1_CNT: TcxGridDBBandedColumn;
    gridMonthlyREG_MONTH2_CNT: TcxGridDBBandedColumn;
    gridMonthlyREG_MONTH3_CNT: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbStepChange(Sender: TObject);
  private
    procedure GetData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureAnalyseMonthly: TfmLectureAnalyseMonthly;

implementation

uses GlobalVar, Udm, uCommonLogic;

{$R *.dfm}

procedure TfmLectureAnalyseMonthly.FormShow(Sender: TObject);
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

procedure TfmLectureAnalyseMonthly.btnExportClick(Sender: TObject);
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

procedure TfmLectureAnalyseMonthly.btnPrintClick(Sender: TObject);
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

procedure TfmLectureAnalyseMonthly.btnRetrieveClick(Sender: TObject);
begin
  PanelMessage.Visible := True;
  PanelMessage.Refresh;
  Screen.Cursor := crArrow;

  GetData;   //ÇÕ°èÀÚ·á »êÃâ

  PanelMessage.Visible := False;
  cxGrid1.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TfmLectureAnalyseMonthly.cbStepChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmLectureAnalyseMonthly.GetData;
var
  i, cnt, l_year, l_step1 : integer;
  r_count : integer;
begin
  l_year := StrToInt(cbYear.Text);
  l_step1 := cbStep.ItemIndex + 1;
  SP_GET_ANALYSE_MONTHLY.ParamByName('L_YEAR').Value := l_year;
  SP_GET_ANALYSE_MONTHLY.ParamByName('L_STEP1').Value := l_step1;
  SP_GET_ANALYSE_MONTHLY.Active := True;
  D_GET_ANALYSE_MONTHLY.DataSet.Refresh;
end;

procedure TfmLectureAnalyseMonthly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmLectureAnalyseMonthly]);

end.
