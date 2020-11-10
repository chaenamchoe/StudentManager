unit UfmExpenseBudget;

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
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmExpenseBudget = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    speYear: TSpinEdit;
    btnRetrieve: TBitBtn;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure gridExpenseCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure cbKindPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmExpenseBudget: TfmExpenseBudget;

implementation

uses GlobalVar, Udm, UfmExpenseBudgetEdit, uCommonLogic, UfmExpenseBudgetEdit2;

{$R *.dfm}


procedure TfmExpenseBudget.btnAddClick(Sender: TObject);
begin
  fmExpenseBudgetEdit := TfmExpenseBudgetEdit.Create(Self);
  try
    fmExpenseBudgetEdit.acc_year := speYear.Value;
    fmExpenseBudgetEdit.acc_kind := cbKind.EditValue;
    fmExpenseBudgetEdit.acc_item := 2;

    fmExpenseBudgetEdit.ShowModal;
  finally
    fmExpenseBudgetEdit.Free;
  end;
end;

procedure TfmExpenseBudget.btnDeleteClick(Sender: TObject);
begin
  if dm.d_account_expense_budget.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
      + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_account_expense_budget.DataSet.Delete;
    end;
  end;
end;

procedure TfmExpenseBudget.btnEditClick(Sender: TObject);
begin
  fmExpenseBudgetEdit2 := TfmExpenseBudgetEdit2.Create(Self);
  try
    fmExpenseBudgetEdit2.ShowModal;
  finally
    fmExpenseBudgetEdit2.Free;
  end;
end;

procedure TfmExpenseBudget.btnExportClick(Sender: TObject);
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

procedure TfmExpenseBudget.btnPrintClick(Sender: TObject);
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

procedure TfmExpenseBudget.btnRetrieveClick(Sender: TObject);
begin
  dm.q_account_expense_budget.ParamByName('acc_year').AsInteger := speYear.Value;
  dm.q_account_expense_budget.ParamByName('dong_id').AsString := LoginUserDong;
  dm.q_account_expense_budget.ParamByName('acc_kind').AsInteger := cbKind.EditValue;
  dm.q_account_expense_budget.Active := True;
  dm.d_account_expense_budget.DataSet.Refresh;
end;

procedure TfmExpenseBudget.cbKindPropertiesEditValueChanged(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmExpenseBudget.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    gridExpenseACC_ITEM.GroupIndex := 0;
    gridExpenseACC_SUBITEM.GroupIndex := 1;
    gridExpenseACC_DETAIL.GroupIndex := 2;
    //gridExpense.ViewData.Expand(True);
  end else begin
    gridExpenseACC_ITEM.GroupIndex := -1;
    gridExpenseACC_SUBITEM.GroupIndex := -1;
    gridExpenseACC_DETAIL.GroupIndex := -1;
  end;
end;

procedure TfmExpenseBudget.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmExpenseBudget.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmExpenseBudget.FormCreate(Sender: TObject);
begin
  speYear.Value := YearOf(Date);
end;

procedure TfmExpenseBudget.gridExpenseCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

initialization RegisterClasses([TfmExpenseBudget]);

end.
