unit UfmClosingBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, UniProvider, InterBaseUniProvider, DB, DBAccess,
  Uni, MemDS;

type
  TfmClosingBackup = class(TForm)
    btnBackup: TBitBtn;
    btn1: TBitBtn;
    GroupBox1: TGroupBox;
    lbl1: TLabel;
    lblBackupMsg: TLabel;
    USER_DATA_IU: TUniStoredProc;
    UniConnection2: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    USER_DATA_SEL_ID: TUniStoredProc;
    USER_DATA_SEL_IDLAST_BACKUP_DATE: TDateTimeField;
    procedure btnBackupClick(Sender: TObject);
  private
    function ConnectServer: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClosingBackup: TfmClosingBackup;

implementation

uses Udm, GlobalVar;

{$R *.dfm}

procedure TfmClosingBackup.btnBackupClick(Sender: TObject);
var
  mStream : TMemoryStream;
  fStream : TFileStream;
  fname, dname : string;
begin
  if ConnectServer = True then begin
    dm.UniConnection1.Disconnect; //disconnect local database
    Screen.Cursor := crHourGlass;
    fname := gsDefaultFolder + 'uijungbu.fdb';
    dname := gsDefaultFolder + 'uijungbu.fdk';
    if CopyFile(PWideChar(fname), PWideChar(dname), False) then
      fStream := TFileStream.Create(dname, fmOpenRead);
    try
      lblBackupMsg.Visible := True;
      lblBackupMsg.Refresh;
      USER_DATA_IU.ParamByName('ID').Value := LoginUserNo;
      USER_DATA_IU.ParamByName('LAST_BACKUP_DATE').Value := Now;
      USER_DATA_IU.ParamByName('BACKUP_DATA').LoadFromStream(fStream, ftBlob);
      USER_DATA_IU.ExecProc;
      lblBackupMsg.Visible := False;
    finally
      fStream.Free;
      Screen.Cursor := crDefault;
    end;
  end else begin
    ShowMessage('서버에 연결할 수 없습니다. 인터넷 연결을 확인하세요.');
  end;
end;

function TfmClosingBackup.ConnectServer : Boolean;
begin
  try
    UniConnection2.Server := '210.122.7.39'; //'72.34.244.131'; //'66.232.140.44';
    UniConnection2.Port := 3050;
    UniConnection2.Database := 'd:\fb_data\StudentManager\StudentManager.FDB';
    UniConnection2.LoginPrompt := False;
    UniConnection2.ProviderName := 'InterBase';
    UniConnection2.Password := 'masterkey';
    UniConnection2.Username := 'sysdba';
    UniConnection2.Connected := True;
    if UniConnection2.Connected = True then
      Result := True
    else
      Result := False;
  except on E: Exception do
    Result := False;
  end;
end;

end.
