unit UfmStudentEdit;

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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxMaskEdit, cxSpinEdit, cxDBEdit,
  cxTextEdit, cxImageComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, ComCtrls, dxCore, cxDateUtils,
  dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmStudentEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Label9: TLabel;
    edtName: TcxTextEdit;
    edtDong: TcxLookupComboBox;
    Label8: TLabel;
    edtAddr: TcxTextEdit;
    edtEmail: TcxTextEdit;
    edtSex: TcxImageComboBox;
    edtDCKind: TcxLookupComboBox;
    edtBigo: TcxTextEdit;
    Label10: TLabel;
    edtCashReceiptNo: TcxTextEdit;
    chkCashReceipt: TCheckBox;
    edtBirth: TEdit;
    edtTel: TEdit;
    procedure edtBirthChange(Sender: TObject);
    procedure edtTelChange(Sender: TObject);
  private
    function FormatBirth(Value: String): String;
    function FormatPhone(Value: String): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStudentEdit: TfmStudentEdit;

implementation

uses Udm;

{$R *.dfm}

procedure TfmStudentEdit.edtBirthChange(Sender: TObject);
var
  BirthStr : String;
begin
  BirthStr := StringReplace(edtBirth.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
  edtBirth.Text := FormatBirth(BirthStr);
  edtBirth.SelStart := Length(edtBirth.Text);
end;

procedure TfmStudentEdit.edtTelChange(Sender: TObject);
var
  PhoneStr : String;
begin
  PhoneStr := StringReplace(edtTel.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
  edtTel.Text := FormatPhone(PhoneStr);
  edtTel.SelStart := Length(edtTel.Text);
end;

function TfmStudentEdit.FormatPhone(Value: String): String;
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

function TfmStudentEdit.FormatBirth(Value: String): String;
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

end.
