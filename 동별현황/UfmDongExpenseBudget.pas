unit UfmDongExpenseBudget;

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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, Spin, ExtCtrls, DateUtils,
  cxDBLookupComboBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxLookupEdit, cxDBLookupEdit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmDongExpenseBudget = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    speYear: TSpinEdit;
    btnRetrieve: TBitBtn;
    btnExport: TBitBtn;
    gridExpense: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridExpenseID: TcxGridDBColumn;
    gridExpenseACC_YEAR: TcxGridDBColumn;
    gridExpenseACC_ITEM: TcxGridDBColumn;
    gridExpenseACC_SUBITEM: TcxGridDBColumn;
    gridExpenseACC_DETAIL: TcxGridDBColumn;
    gridExpenseACC_BUDGET: TcxGridDBColumn;
    gridExpenseACC_DESCRIPT: TcxGridDBColumn;
    gridExpenseACC_EXPENSE: TcxGridDBColumn;
    gridExpenseACC_BIGO: TcxGridDBColumn;
    gridExpenseACC_DONG_ID: TcxGridDBColumn;
    gridExpenseACC_KIND: TcxGridDBColumn;
    Label2: TLabel;
    cbKind: TcxImageComboBox;
    CheckBox1: TCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btnPrint: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Label4: TLabel;
    cbDong: TcxLookupComboBox;
    chkExpand: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure chkExpandClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDongExpenseBudget: TfmDongExpenseBudget;

implementation

uses GlobalVar, Udm, UfmExpenseBudgetEdit, uCommonLogic, UfmExpenseBudgetEdit2;

{$R *.dfm}


procedure TfmDongExpenseBudget.btnExportClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    filename := '세입세출예산_' + DateTimeToStr(Date) + '.xls';
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.DefaultExt := 'xls';
    saveDLG.FileName := filename;
    if saveDLG.Execute then begin
       filename := saveDLG.FileName;
       nameonly := copy(filename, 1, length(filename) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmDongExpenseBudget.btnPrintClick(Sender: TObject);
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

procedure TfmDongExpenseBudget.btnRetrieveClick(Sender: TObject);
var
  dong_id : string;
begin
  if cbDong.EditValue = LoginUserDong then
    dong_id := '%'
  else
    dong_id := cbDong.EditValue;
  dm.q_expense_budget_dong.ParamByName('acc_year').AsInteger := speYear.Value;
  dm.q_expense_budget_dong.ParamByName('acc_kind').AsInteger := cbKind.EditValue;
  dm.q_expense_budget_dong.ParamByName('dong_id').AsString := dong_id;
  dm.q_expense_budget_dong.Active := True;
  dm.d_expense_budget_dong.DataSet.Refresh;
end;

procedure TfmDongExpenseBudget.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    gridExpenseACC_DONG_ID.GroupIndex := 0;
    gridExpenseACC_ITEM.GroupIndex := 1;
    gridExpenseACC_SUBITEM.GroupIndex := 2;
    gridExpenseACC_DETAIL.GroupIndex := 3;
    //gridExpense.ViewData.Expand(True);
  end else begin
    gridExpenseACC_DONG_ID.GroupIndex := -1;
    gridExpenseACC_ITEM.GroupIndex := -1;
    gridExpenseACC_SUBITEM.GroupIndex := -1;
    gridExpenseACC_DETAIL.GroupIndex := -1;
  end;
end;

procedure TfmDongExpenseBudget.chkExpandClick(Sender: TObject);
begin
  if chkExpand.Checked then
    gridExpense.ViewData.Expand(True)
  else
    gridExpense.ViewData.Collapse(True);
end;

procedure TfmDongExpenseBudget.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDongExpenseBudget.FormCreate(Sender: TObject);
begin
  speYear.Value := YearOf(Date);
end;

initialization RegisterClasses([TfmDongExpenseBudget]);

end.
