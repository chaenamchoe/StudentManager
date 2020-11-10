unit UfmDataBackupRestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Uni, UniProvider, InterBaseUniProvider, StdCtrls,
  Buttons, MemDS;

type
  TfmDataBackupRestore = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    btnBackup: TBitBtn;
    btnDown: TBitBtn;
    InterBaseUniProvider1: TInterBaseUniProvider;
    UniConnection2: TUniConnection;
    USER_DATA_IU: TUniStoredProc;
    lblBackupMsg: TLabel;
    lblDownMsg: TLabel;
    USER_DATA_SEL: TUniStoredProc;
    d_USER_DATA_SEL: TDataSource;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDataBackupRestore: TfmDataBackupRestore;

implementation

uses GlobalVar;

{$R *.dfm}

procedure TfmDataBackupRestore.btnBackupClick(Sender: TObject);
var
  mStream : TMemoryStream;
  fStream : TFileStream;
  fname, dname : string;
begin
  Screen.Cursor := crHourGlass;
  fname := gsDefaultFolder + 'uijungbu.fdb';
  dname := gsDefaultFolder + 'uijungbu.fdk';
  CopyFile(PWideChar(fname), PWideChar(dname), False);
  fStream := TFileStream.Create(dname, fmOpenRead);
  try
    lblBackupMsg.Visible := True;
    lblBackupMsg.Refresh;

    USER_DATA_IU.ParamByName('ID').Value := LoginUserNo;
    USER_DATA_IU.ParamByName('LAST_BACKUP_DATE').Value := Now;
    USER_DATA_IU.ParamByName('BACKUP_DATA').LoadFromStream(fStream, ftBlob);
    USER_DATA_IU.ExecProc;
    ShowMessage('데이터백업 완료!');
    //DeleteFile(dname);
    lblBackupMsg.Visible := False;
  finally
    fStream.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmDataBackupRestore.btnDownClick(Sender: TObject);
var
  mStream : TMemoryStream;
  fname : string;
begin
  Screen.Cursor := crHourGlass;
  mStream := TMemoryStream.Create;
  try
    fname := '데이터파일_' + FormatDateTime('yyyy_mm_dd',Now) + '.fdk';
    USER_DATA_SEL.ParamByName('USER_ID').Value := LoginUserNo;
    USER_DATA_SEL.Active := True;
    d_USER_DATA_SEL.DataSet.Refresh;
    TBlobField(d_USER_DATA_SEL.DataSet.FieldByName('backup_data')).SaveToStream(mStream);
    mStream.Position := 0;
    mStream.SaveToFile(gsDefaultFolder + fname);
    ShowMessage('데이터파일 다운로드가 완료되었습니다.');
  finally
    mStream.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmDataBackupRestore.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UniConnection2.Connected := False;
  UniConnection2.Disconnect;
end;

procedure TfmDataBackupRestore.FormCreate(Sender: TObject);
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
  except on E: Exception do
    ShowMessage('서버에 연결할 수 없습니다. 인터넷 연결을 확인하세요.');
  end;
end;

end.
