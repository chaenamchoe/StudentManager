unit UfmRequestEdit2;

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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxCalc, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, ComCtrls, dxCore, cxDateUtils,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxImageComboBox, DB, MemDS, DBAccess, Uni, dxSkinOffice2013White,
  dxSkinMetropolis, dxSkinMetropolisDark, cxRadioGroup, ExtCtrls,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmRequestEdit2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    edtPayDate: TcxDateEdit;
    Label4: TLabel;
    ddlb_dckind: TcxLookupComboBox;
    edtStudentID: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtSex: TcxImageComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    edtDong: TcxLookupComboBox;
    cbRegKind: TcxImageComboBox;
    Label12: TLabel;
    cbPayKind: TcxImageComboBox;
    Label3: TLabel;
    cbLectureName: TcxLookupComboBox;
    Label13: TLabel;
    edtStudentName: TEdit;
    edtBirthDate: TEdit;
    edtTel: TEdit;
    edtAddr: TEdit;
    Label10: TLabel;
    Panel1: TPanel;
    chkMon1: TCheckBox;
    Panel2: TPanel;
    chkMon2: TCheckBox;
    Panel3: TPanel;
    chkMon3: TCheckBox;
    Panel4: TPanel;
    lblPrice: TLabel;
    Panel8: TPanel;
    edtPrice: TcxCurrencyEdit;
    Panel7: TPanel;
    edtMon3: TcxCurrencyEdit;
    Panel6: TPanel;
    edtMon2: TcxCurrencyEdit;
    Panel5: TPanel;
    edtMon1: TcxCurrencyEdit;
    lblpayway: TLabel;
    edtPayWay: TcxImageComboBox;
    Label14: TLabel;
    edtCashReceiptNo: TcxTextEdit;
    chkCashReceipt: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ddlb_dckindPropertiesEditValueChanged(Sender: TObject);
    procedure edtBirthDateChange(Sender: TObject);
    procedure edtTelChange(Sender: TObject);
    procedure chkMon1Click(Sender: TObject);
    procedure edtMon1PropertiesEditValueChanged(Sender: TObject);
    procedure chkCashReceiptClick(Sender: TObject);
  private
    function FormatBirth(Value: String): String;
    function FormatPhone(Value: String): String;
    procedure CalculatePrice;
    { Private declarations }
  public
    { Public declarations }
    EditMode : boolean;
    LectureID : string;
    LecturePrice : Double;
    Month1Price, Month2Price, Month3Price : Double;
    IsClicked : Boolean;
  end;

var
  fmRequestEdit2: TfmRequestEdit2;

implementation

uses Udm, UfmSelectStudent, GlobalVar, UfmRequestManager;

{$R *.dfm}

procedure TfmRequestEdit2.edtBirthDateChange(Sender: TObject);
var
  BirthStr : String;
begin
  BirthStr := StringReplace(edtBirthDate.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
  edtBirthDate.Text := FormatBirth(BirthStr);
  edtBirthDate.SelStart := Length(edtBirthDate.Text);
end;

procedure TfmRequestEdit2.edtMon1PropertiesEditValueChanged(Sender: TObject);
begin
  edtPrice.EditValue := edtMon1.EditValue + edtMon2.EditValue + edtMon3.EditValue;
end;

procedure TfmRequestEdit2.edtTelChange(Sender: TObject);
var
  PhoneStr : String;
begin
  PhoneStr := StringReplace(edtTel.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
  edtTel.Text := FormatPhone(PhoneStr);
  edtTel.SelStart := Length(edtTel.Text);
end;

function TfmRequestEdit2.FormatPhone(Value: String): String;
var
  ac, pref, num: String;
begin
  // comes in like 3334449999
  case Length(Value) of
    7: begin
      AC   := Copy(Value,1,3);
      Pref := Copy(Value,4,4);
      Result := ac + '-' + Pref;
    end;
    8: begin
      AC   := Copy(Value,1,4);
      Pref := Copy(Value,5,4);
      Result := ac + '-' + Pref;
    end;
    9: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,3);
      Num  := Copy(Value,6,4);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    10: begin
      AC   := Copy(Value,1,3);
      Pref := Copy(Value,4,3);
      Num  := Copy(Value,7,4);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    11: begin
      AC   := Copy(Value,1,3);
      Pref := Copy(Value,4,4);
      Num  := Copy(Value,8,4);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    else begin
      Result := Value;
    end;
  end;
end;

function TfmRequestEdit2.FormatBirth(Value: String): String;
var
  ac, pref, num: String;
begin
  case Length(Value) of
    3: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Result := ac + '-' + Pref;
    end;
    4: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Result := ac + '-' + Pref;
    end;
    5: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Num  := Copy(Value,5,2);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    6: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Num  := Copy(Value,5,2);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    else begin
      Result := Value;
    end;
  end;
end;

procedure TfmRequestEdit2.FormShow(Sender: TObject);
begin
  dm.SMS_USER_SEL.Active := True;
  dm.ds_SMS_USER_SEL.DataSet.Refresh;

  IsClicked := True;
end;

procedure TfmRequestEdit2.chkCashReceiptClick(Sender: TObject);
begin
  if chkCashReceipt.Checked then begin
    if not dm.SMS_USER_SEL.RecordCount > 0 then begin
      ShowMessage('현금영수증 발급서비스 회원사 등록을 하셔야 합니다.');
      chkCashReceipt.Checked := False;
    end;
    if edtCashReceiptNo.Text = '' then begin
      ShowMessage('현금영수증번호 또는 전화번호를 입력하세요.');
      chkCashReceipt.Checked := False;
    end;
    edtCashReceiptNo.SetFocus;
  end;
end;

procedure TfmRequestEdit2.chkMon1Click(Sender: TObject);
begin
  CalculatePrice;
end;

procedure TfmRequestEdit2.ddlb_dckindPropertiesEditValueChanged(Sender: TObject);
begin
  CalculatePrice;
end;

procedure TfmRequestEdit2.CalculatePrice;
var
  dc_kind, mon1, mon2, mon3 : integer;
  m1_price, m2_price, m3_price : Double;
begin
  dc_kind := ddlb_dckind.EditValue;
  case dc_kind of
    1: begin
      m1_price := Month1Price;
      m2_price := Month2Price;
      m3_price := Month3Price;
    end;
    2..7: begin
      m1_price := Month1Price / 2;
      m2_price := Month2Price / 2;
      m3_price := Month3Price / 2;
    end;
    8: begin
      m1_price := 0;
      m2_price := 0;
      m3_price := 0;
    end;
  end;
  if chkMon1.Checked then begin
    mon1 := 1;
    edtMon1.EditValue := m1_price;
  end else begin
    mon1 := 0;
    edtMon1.EditValue := 0;
  end;
  if chkMon2.Checked then begin
    mon2 := 1;
    edtMon2.EditValue := m2_price;
  end else begin
    mon2 := 0;
    edtMon2.EditValue := 0;
  end;
  if chkMon3.Checked then begin
    mon3 := 1;
    edtMon3.EditValue := m3_price;
  end else begin
    mon3 := 0;
    edtMon3.EditValue := 0;
  end;
  edtPrice.EditValue := edtMon1.EditValue + edtMon2.EditValue + edtMon3.EditValue;
end;

end.
