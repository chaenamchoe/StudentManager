unit UfmExpenseBudgetEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Buttons, cxDropDownEdit, cxCalc,
  cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxSpinEdit, DB, dxmdaset, DateUtils, Uni, UniProvider,
  cxImageComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmExpenseBudgetEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label7: TLabel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    dxTemp: TdxMemData;
    d_temp: TDataSource;
    dxTempacc_year: TIntegerField;
    dxTempacc_item: TIntegerField;
    dxTempacc_subitem: TIntegerField;
    dxTempacc_detail: TIntegerField;
    dxTempacc_descript: TStringField;
    dxTempacc_expense: TFloatField;
    dxTempacc_bigo: TStringField;
    Label8: TLabel;
    dxTempacc_kind: TIntegerField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    acc_year, acc_kind, acc_item : integer;
  end;

var
  fmExpenseBudgetEdit: TfmExpenseBudgetEdit;

implementation

uses Udm, GlobalVar;

{$R *.dfm}

procedure TfmExpenseBudgetEdit.btnSaveClick(Sender: TObject);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      connection := dm.UniConnection1;
      SQL.Add('INSERT INTO ACCOUNT_EXPENSE_BUDGET ');
      SQL.Add('(ID, ACC_YEAR, ACC_ITEM, ACC_SUBITEM, ACC_DETAIL, ACC_BUDGET, ');
      SQL.Add('ACC_DESCRIPT, ACC_EXPENSE, ACC_BIGO, ACC_DONG_ID, ACC_KIND) ');
      SQL.Add('VALUES ');
      SQL.Add('(:ID, :ACC_YEAR, :ACC_ITEM, :ACC_SUBITEM, :ACC_DETAIL, :ACC_BUDGET, ');
      SQL.Add(':ACC_DESCRIPT, :ACC_EXPENSE, :ACC_BIGO, :ACC_DONG_ID, :ACC_KIND) ');
      ParamByName('ID').AsInteger := dm.GetMaxID('ACCOUNT_EXPENSE_BUDGET', 'id');
      ParamByName('ACC_YEAR').AsInteger := dxTempacc_year.AsInteger;
      ParamByName('ACC_ITEM').AsInteger := dxTempacc_item.AsInteger;
      ParamByName('ACC_SUBITEM').AsInteger := dxTempacc_subitem.AsInteger;
      ParamByName('ACC_DETAIL').AsInteger := dxTempacc_detail.AsInteger;
      ParamByName('ACC_BUDGET').AsFloat := 0;
      ParamByName('ACC_DESCRIPT').AsString := dxTempacc_descript.AsString;
      ParamByName('ACC_EXPENSE').AsFloat := dxTempacc_expense.AsFloat;
      ParamByName('ACC_BIGO').AsString := dxTempacc_bigo.AsString;
      ParamByName('ACC_DONG_ID').AsString := LoginUserDong;
      ParamByName('ACC_KIND').AsInteger := dxTempacc_kind.AsInteger;
      Execute;
    end;
    dm.d_account_expense_budget.DataSet.Refresh;
  finally
    Query.Free;
  end;
end;

procedure TfmExpenseBudgetEdit.FormShow(Sender: TObject);
begin
  dxTemp.Active := True;
  dxTemp.Append;
  dxTempacc_year.AsInteger := acc_year;
  dxTempacc_kind.AsInteger := acc_kind;
  dxTempacc_item.AsInteger := acc_item;
end;

end.
