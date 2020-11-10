unit UfmExpenseBudgetEdit2;

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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, DB, dxmdaset, cxImageComboBox, cxDBEdit,
  StdCtrls, Buttons, cxDropDownEdit, cxCalc, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxSpinEdit, Uni, UniProvider,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmExpenseBudgetEdit2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxTemp: TdxMemData;
    dxTempacc_year: TIntegerField;
    dxTempacc_item: TIntegerField;
    dxTempacc_subitem: TIntegerField;
    dxTempacc_detail: TIntegerField;
    dxTempacc_descript: TStringField;
    dxTempacc_expense: TFloatField;
    dxTempacc_bigo: TStringField;
    dxTempacc_kind: TIntegerField;
    d_temp: TDataSource;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmExpenseBudgetEdit2: TfmExpenseBudgetEdit2;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmExpenseBudgetEdit2.btnSaveClick(Sender: TObject);
begin
  dm.q_account_expense_budget.Edit;
  dm.q_account_expense_budgetACC_YEAR.AsInteger := dxTempacc_year.AsInteger;
  dm.q_account_expense_budgetACC_ITEM.AsInteger := dxTempacc_item.AsInteger;
  dm.q_account_expense_budgetACC_SUBITEM.AsInteger := dxTempacc_subitem.AsInteger;
  dm.q_account_expense_budgetACC_DETAIL.AsInteger := dxTempacc_detail.AsInteger;
  dm.q_account_expense_budgetACC_DESCRIPT.AsString := dxTempacc_descript.AsString;
  dm.q_account_expense_budgetACC_EXPENSE.AsFloat := dxTempacc_expense.AsFloat;
  dm.q_account_expense_budgetACC_BIGO.AsString := dxTempacc_bigo.AsString;
  dm.q_account_expense_budgetACC_KIND.AsInteger := dxTempacc_kind.AsInteger;
  dm.q_account_expense_budget.Post;
  dm.d_account_expense_budget.DataSet.Refresh;
  ModalResult := mrOk;
end;

procedure TfmExpenseBudgetEdit2.FormShow(Sender: TObject);
begin
  dxTemp.Active := True;
  dxTemp.Append;
  dxTempacc_year.AsInteger := dm.q_account_expense_budgetACC_YEAR.AsInteger;
  dxTempacc_item.AsInteger := dm.q_account_expense_budgetACC_ITEM.AsInteger;
  dxTempacc_subitem.AsInteger := dm.q_account_expense_budgetACC_SUBITEM.AsInteger;
  dxTempacc_detail.AsInteger := dm.q_account_expense_budgetACC_DETAIL.AsInteger;
  dxTempacc_descript.AsString := dm.q_account_expense_budgetACC_DESCRIPT.AsString;
  dxTempacc_expense.AsFloat := dm.q_account_expense_budgetACC_EXPENSE.AsFloat;
  dxTempacc_bigo.AsString := dm.q_account_expense_budgetACC_BIGO.AsString;
  dxTempacc_kind.AsInteger := dm.q_account_expense_budgetACC_KIND.AsInteger;
end;

end.
