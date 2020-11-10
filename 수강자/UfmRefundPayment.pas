unit UfmRefundPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinOffice2013White, dxSkinMetropolis,
  dxSkinMetropolisDark, DateUtils, cxRadioGroup, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, ExtCtrls;

type
  TfmRefundPayment = class(TForm)
    GroupBox1: TGroupBox;
    edtDate: TcxDateEdit;
    edtAmount: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    edtPayWay: TcxImageComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edtBankName: TcxTextEdit;
    edtBankID: TcxTextEdit;
    Label6: TLabel;
    edtOutKind: TcxLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    edtBankOwener: TcxTextEdit;
    chkMon1: TCheckBox;
    chkMon2: TCheckBox;
    chkMon3: TCheckBox;
    Label9: TLabel;
    edtMon1: TcxCurrencyEdit;
    edtMon2: TcxCurrencyEdit;
    edtMon3: TcxCurrencyEdit;
    edtOutWhen: TcxImageComboBox;
    PanelCashbill: TPanel;
    Label14: TLabel;
    edtCashReceiptNo: TcxTextEdit;
    chkCashReceipt: TCheckBox;
    lblCancelType: TLabel;
    procedure chkMon1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtMon1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    START_DATE_STR, END_DATE_STR : string;
    RECTURE_PRICE, REG_PRICE1, REG_PRICE2, REG_PRICE3: Double;
    OutMonth, OutMonth2, OutMonth3 : Integer;
    RegMonth, RegMonth2, RegMonth3 : Integer;
    newMonth, newMonth2, newMonth3 : Integer;
    REG_MONTH_COUNT : Integer;
  end;

var
  fmRefundPayment: TfmRefundPayment;

implementation

uses Udm;

{$R *.dfm}

procedure TfmRefundPayment.btnSaveClick(Sender: TObject);
begin
  if (chkMon1.Checked = False) and (chkMon2.Checked = False) and (chkMon3.Checked = False) then begin
    ShowMessage('퇴강월을 체크하세요.');
    Exit;
  end else begin
    ModalResult := mrOk;
  end;
end;

procedure TfmRefundPayment.chkMon1Click(Sender: TObject);
var
  mon1, mon2, mon3 : Integer;
begin
  if chkMon1.Checked then begin
    newMonth := 1;
    edtMon1.Value := REG_PRICE1;
  end else begin
    newMonth := 0;
    edtMon1.Value := 0;
  end;
  if chkMon2.Checked then begin
    newMonth2 := 1;
    edtMon2.Value := REG_PRICE2;
  end else begin
    newMonth2 := 0;
    edtMon2.Value := 0;
  end;
  if chkMon3.Checked then begin
    newMonth3 := 1;
    edtMon3.Value := REG_PRICE3;
  end else begin
    newMonth3 := 0;
    edtMon3.Value := 0;
  end;
  edtAmount.EditValue := edtMon1.EditValue + edtMon2.EditValue + edtMon3.EditValue;
  if (chkMon1.Checked = True) and (chkMon2.Checked = True) and (chkMon3.Checked = True) then
    lblCancelType.Caption := '[전액취소]'
  else
    lblCancelType.Caption := '[부분취소]';

end;

procedure TfmRefundPayment.edtMon1PropertiesEditValueChanged(Sender: TObject);
begin
  edtAmount.EditValue := edtMon1.EditValue + edtMon2.EditValue + edtMon3.EditValue;
end;

end.
