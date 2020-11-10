unit UfmUserManager;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxImageComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, ExtCtrls,
  cxContainer, dxSkinOffice2013White, cxTextEdit, Uni, UniProvider,
  dxSkinMetropolis, dxSkinMetropolisDark;

type
  TfmUserManager = class(TForm)
    btnEdit: TBitBtn;
    btnSave: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCityName: TcxTextEdit;
    edtDongName: TcxTextEdit;
    edtUserName: TcxTextEdit;
    edtLoginID: TcxTextEdit;
    edtLoginPass: TcxTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtUserTel: TcxTextEdit;
    edtUserEmail: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    procedure EnableEditControls;
    procedure DisableEditControls;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUserManager: TfmUserManager;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmUserManager.EnableEditControls;
begin
  edtUserName.Enabled := True;
  edtLoginPass.Enabled := True;
  edtUserTel.Enabled := True;
  edtUserEmail.Enabled := True;
  edtUserName.SetFocus;
end;
procedure TfmUserManager.DisableEditControls;
begin
  edtUserName.Enabled := False;
  edtLoginPass.Enabled := False;
  edtUserTel.Enabled := False;
  edtUserEmail.Enabled := False;
end;
procedure TfmUserManager.btnEditClick(Sender: TObject);
begin
  EnableEditControls;
  btnEdit.Enabled := False;
  btnSave.Enabled := True;
end;

procedure TfmUserManager.btnSaveClick(Sender: TObject);
var
  fQuery : TUniQuery;
begin
  fQuery := TUniQuery.Create(self);
  dm.UniConnection2.Server := '210.122.7.39';
  dm.UniConnection2.Port := 3050;
  dm.UniConnection2.Database := 'd:\fb_data\StudentManager\StudentManager.FDB';
  dm.UniConnection2.LoginPrompt := False;
  dm.UniConnection2.ProviderName := 'InterBase';
  dm.UniConnection2.Password := 'masterkey';
  dm.UniConnection2.Username := 'sysdba';
  dm.UniConnection2.Connected := True;
  try
    with fQuery do begin
      Connection := dm.UniConnection2;
      SQL.Clear;
      SQL.Add('UPDATE LOGIN_USER ');
      SQL.Add('SET USER_NAME=:USER_NAME, LOGIN_PASS=:LOGIN_PASS, USER_TEL=:USER_TEL, USER_EMAIL=:USER_EMAIL ');
      SQL.Add('where ID = :UserNo');
      Params.ParamByName('USER_NAME').AsString  := edtUserName.Text;
      Params.ParamByName('LOGIN_PASS').AsString := edtLoginPass.Text;
      Params.ParamByName('USER_TEL').AsString   := edtUserTel.Text;
      Params.ParamByName('USER_EMAIL').AsString := edtUserEmail.Text;
      Params.ParamByName('UserNo').AsString     := LoginUserNo;
      Execute;
    end;
    LoginUserName := edtUserName.Text;
    LoginUserPass := edtLoginPass.Text;
    LoginUserTel := edtUserTel.Text;
    LoginUserEmail := edtUserEmail.Text;
    DisableEditControls;
    btnEdit.Enabled := True;
    btnSave.Enabled := False;
  finally
    dm.UniConnection2.Connected := False;
    fQuery.Free;
  end;
end;

procedure TfmUserManager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmUserManager.FormCreate(Sender: TObject);
begin
  edtCityName.Text := LoginUserCityName;
  edtDongName.Text := LoginUserDongName;
  edtUserName.Text := LoginUserName;
  edtLoginID.Text := LoginUserID;
  edtLoginPass.Text := LoginUserPass;
  edtUserTel.Text := LoginUserTel;
  edtUserEmail.Text := LoginUserEmail;
end;

end.
