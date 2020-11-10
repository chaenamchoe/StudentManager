unit UfmUserRegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinOffice2013White, DB, MemDS,
  DBAccess, Uni;

type
  TfmUserRegistration = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btnCheckUse: TBitBtn;
    edtCityName: TcxTextEdit;
    edtDongName: TcxTextEdit;
    editUsername: TcxTextEdit;
    edtUserTel: TcxTextEdit;
    edtUserEmail: TcxTextEdit;
    edtLoginID: TcxTextEdit;
    edtLoginPass: TcxTextEdit;
    procedure btnCheckUseClick(Sender: TObject);
    procedure edtLoginIDPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUserRegistration: TfmUserRegistration;

implementation

uses uLogin;

{$R *.dfm}

procedure TfmUserRegistration.btnCheckUseClick(Sender: TObject);
var
  fQuery : TUniQuery;
begin
  fQuery := TUniQuery.Create(nil);
  with fQuery do begin
    Connection := fmLogin.UniConnection2;
    SQL.Clear;
    SQL.Add('select * from login_user ');
    SQL.Add(' where login_id = :uid ');
    Params.ParamByName('uid').AsString := edtLoginID.Text;
    Active := True;
  end;
  if fQuery.RecordCount > 0 then begin
    ShowMessage('이미 사용중인 ID 입니다. 다른 ID를 입력하세요.');
    edtLoginID.SetFocus;
  end else begin
    ShowMessage('사용해도 좋습니다.');
    edtLoginPass.SetFocus;
  end;
end;

procedure TfmUserRegistration.edtLoginIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  btnCheckUse.Click;
end;

end.
