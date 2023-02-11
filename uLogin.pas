unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxGDIPlusClasses, ExtCtrls, TLHelp32, ShellAPI,
  UniProvider, InterBaseUniProvider, DB, DBAccess, Registry, Uni, MemDS,
  ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, jpeg,
  dxSkinOffice2013White, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  IdHashMessageDigest, IdSMTP, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxBarBuiltInMenu,
  Menus, cxButtons, IniFiles, Gauges, BMDThread, IdHTTP;

type

  TfmLogin = class(TForm)
    pnl1: TPanel;
    lbl7: TLabel;
    lblVersion: TLabel;
    InterBaseUniProvider1: TInterBaseUniProvider;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    grpLogin: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtPassword: TEdit;
    btnLocalOK: TBitBtn;
    BitBtn1: TBitBtn;
    btnRegistProgram: TBitBtn;
    GroupBox1: TGroupBox;
    LabelMessage: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    UniConnection2: TUniConnection;
    btnClose: TBitBtn;
    q_user: TUniQuery;
    d_user: TDataSource;
    q_userID: TStringField;
    q_userDONG_ID: TStringField;
    q_userUSER_NAME: TStringField;
    q_userLOGIN_ID: TStringField;
    q_userLOGIN_PASS: TStringField;
    q_userUSER_KIND: TIntegerField;
    q_userSIDO_ID: TIntegerField;
    q_userGUGUN_ID: TIntegerField;
    q_userCITY_NAME: TStringField;
    q_userDONG_NAME: TStringField;
    q_userUSER_TEL: TStringField;
    q_userUSER_EMAIL: TStringField;
    q_userREG_DATE: TStringField;
    q_userUSER_ADDR: TStringField;
    q_userUSER_BIGO: TStringField;
    q_userAPPROVED: TSmallintField;
    q_userAPPROVED_KIND: TSmallintField;
    q_userSYSTEM_ID: TStringField;
    q_userACTIVATED: TSmallintField;
    q_userACTIVATED_DATE: TStringField;
    q_userLAST_LOGIN_TIME: TDateTimeField;
    q_userLOGIN_COUNT: TIntegerField;
    q_userDATABASE_NAME: TStringField;
    q_userAPP_VERSION: TStringField;
    q_userSERVER_IP: TStringField;
    q_userUPDATE_FILENAME: TStringField;
    q_userUPDATE_COMMENTS: TStringField;
    q_userCITY_IMAGE: TBlobField;
    edtLoginID: TEdit;
    cxTabSheet3: TcxTabSheet;
    chkSaveID: TCheckBox;
    chkSavePass: TCheckBox;
    btnAddNew: TBitBtn;
    q_userCAN_UPDATE: TSmallintField;
    q_userDB_LOCATION: TSmallintField;
    q_check_notice: TUniQuery;
    d_check_notice: TDataSource;
    q_check_noticeID: TIntegerField;
    q_check_noticeN_TITLE: TStringField;
    q_check_noticeN_DESC: TMemoField;
    q_check_noticeN_ACTIVE: TIntegerField;
    q_check_noticeN_DATE: TDateField;
    q_userSHOW_NOTICE: TSmallintField;
    q_userDONG_NUMBER: TSmallintField;
    GroupBox2: TGroupBox;
    VERSION_MANAGER_SEL: TUniStoredProc;
    VERSION_MANAGER_SELID: TIntegerField;
    VERSION_MANAGER_SELCURRENT_VERSION: TStringField;
    VERSION_MANAGER_SELUPDATE_DATE: TDateField;
    VERSION_MANAGER_SELUPDATE_MESSAGE: TStringField;
    d_VERSION_MANAGER_SEL: TUniDataSource;
    UPDATE_FILE_SEL: TUniStoredProc;
    UPDATE_FILE_SELUPDATE_FILE: TBlobField;
    UPDATE_FILE_SELID: TIntegerField;
    d_UPDATE_FILE_SEL: TUniDataSource;
    lblUpdateMessage: TLabel;
    cxButton1: TcxButton;
    procedure btnLocalOKClick(Sender: TObject);
    procedure btnRegistProgramClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure GetLoginUserInfo;
    procedure UpdateLoginCounter(login_id: string);
    function GetServerVersion: string;
    procedure DoLogin;
    procedure ShowNoticeMessage;
    procedure DownloadFile;
    { Private declarations }
  public
    { Public declarations }
    isRegisted : Boolean;
    CAN_UPDATE : Integer;
    SERVER_URL, SERVER_FILE : string;
  end;

var
  fmLogin: TfmLogin;

implementation

uses GlobalVar, uCommonLogic, UfmUserRegistration;


{$R *.dfm}

const
  PROGRAM_ID = 1;

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TfmLogin.GetServerVersion : string;
begin
  VERSION_MANAGER_SEL.ParamByName('PROGRAM_ID').Value := PROGRAM_ID;
  VERSION_MANAGER_SEL.Active := True;
  d_VERSION_MANAGER_SEL.DataSet.Refresh;
  if d_VERSION_MANAGER_SEL.DataSet.RecordCount > 0 then begin
    Result := d_VERSION_MANAGER_SEL.DataSet.FieldByName('current_version').AsString;
  end else begin
    Result := '';
  end;
end;

procedure TfmLogin.DownloadFile;
var
  mStream : TMemoryStream;
begin
  Screen.Cursor := crHourGlass;
  mStream := TMemoryStream.Create;
  UPDATE_FILE_SEL.ParamByName('FILE_ID').Value := PROGRAM_ID;
  UPDATE_FILE_SEL.Active := True;
  d_UPDATE_FILE_SEL.DataSet.Refresh;
  TBlobField(d_UPDATE_FILE_SEL.DataSet.FieldByName('update_file')).SaveToStream(mStream);
  mStream.Position := 0;
  mStream.SaveToFile(gsDefaultFolder + 'smg_update.exe');
  ShowMessage('강좌관리 업데이트파일 다운로드가 완료되었습니다.' + #10#13 +
              '업데이트 프로그램을 자동으로 설치합니다.' +#13#10 +
              '설치가 완료되면 새버전의 프로그램을 다시 실행합니다.');
  mStream.Free;
  ShellExecute(0, 'open', PWideChar(gsDefaultFolder + 'smg_update.exe'), nil, nil, SW_SHOWNORMAL);
  KillTask(ExtractFileName(Application.ExeName));
end;

procedure TfmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniConnection2.Disconnect;
  UniConnection2.Close;
end;

procedure TfmLogin.FormShow(Sender: TObject);
var
  pVersion, pDate : string;
  FIni : TIniFile;
  iniFileName : string;
  save_id, save_pass : string;
  sVersion : string;
begin
  EXE_FILE := Application.ExeName;
  LocalAppVersion := GetFileVersion(PWideChar(ExtractFileName(Application.ExeName)));
  sVersion := GetServerVersion;
  pDate :=  DateTimeToStr(FileDateToDateTime(FileAge(Application.ExeName)));
  pVersion := 'Version: ' + LocalAppVersion + sLineBreak + 'Compiled: ' + pDate;
  lblVersion.Caption := pVersion;
  gsDefaultFolder := ExtractFilePath(Application.ExeName);
  cxPageControl1.Properties.HideTabs := True;
  if sVersion > LocalAppVersion then begin
    cxPageControl1.ActivePageIndex := 2;
  end else begin
    cxPageControl1.ActivePageIndex := 1;
    edtLoginID.SetFocus;
    iniFileName := gsDefaultFolder + 'LoginInfo.ini';
    FIni := TIniFile.Create(iniFileName);
    save_id := FIni.ReadString('Login', 'Save ID', '');
    if save_id = '1' then begin
      chkSaveID.Checked := True;
      edtLoginID.Text := FIni.ReadString('Login', 'Login ID', '');
    end;
    save_pass := FIni.ReadString('Login', 'Save Pass', '');
    if save_pass = '1' then begin
      chkSavePass.Checked := True;
      edtPassword.Text := FIni.ReadString('Login', 'Login PW', '');
    end;
  end;
end;

procedure TfmLogin.DoLogin;
var
  keyName, logID : string;
  currVersion, ServerVersion : string;
begin
  q_user.ParamByName('L_ID').AsString := HDDID;
  q_user.Active := True;
  d_user.DataSet.Refresh;
  if d_user.DataSet.RecordCount > 0 then begin
    d_user.DataSet.Last;
    edtLoginID.Text := d_user.DataSet.FieldByName('LOGIN_ID').AsString;
  end else begin
    LabelMessage.Caption := '사용자 등록이 되지 않았습니다.' + #13#10 +
                            '사용자 등록을 먼저 하세요.';
    btnRegistProgram.Visible := True;
    btnClose.Visible := False;
    cxPageControl1.ActivePageIndex := 0;
    Exit;
  end;
end;

procedure TfmLogin.btnRegistProgramClick(Sender: TObject);
var
  fQuery : TUniQuery;
  sender_email, receiver, subject, msg : string;
begin
  fQuery := TUniQuery.Create(nil);
  fmUserRegistration := TfmUserRegistration.Create(Self);
  try
    fmUserRegistration.ShowModal;
    if fmUserRegistration.ModalResult = mrOk then begin
      with fQuery do begin
        Connection := UniConnection2;
        SQL.Clear;
        SQL.Add('INSERT INTO LOGIN_USER ');
        SQL.Add('(ID, USER_NAME, LOGIN_ID, LOGIN_PASS, USER_KIND, ');
        SQL.Add('CITY_NAME, DONG_NAME, USER_TEL, USER_EMAIL, REG_DATE, ');
        SQL.Add('APPROVED, SYSTEM_ID)');
        SQL.Add('VALUES ');
        SQL.Add('(:ID, :USER_NAME, :LOGIN_ID, :LOGIN_PASS, :USER_KIND, ');
        SQL.Add(':CITY_NAME, :DONG_NAME, :USER_TEL, :USER_EMAIL, :REG_DATE, ');
        SQL.Add(':APPROVED, :SYSTEM_ID)');
        Params.ParamByName('ID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
        Params.ParamByName('USER_NAME').AsString := fmUserRegistration.editUsername.Text;
        Params.ParamByName('LOGIN_ID').AsString := fmUserRegistration.edtLoginID.Text;
        Params.ParamByName('LOGIN_PASS').AsString := fmUserRegistration.edtLoginPass.Text;
        Params.ParamByName('USER_KIND').AsInteger := 0;
        Params.ParamByName('CITY_NAME').AsString := fmUserRegistration.edtCityName.Text;
        Params.ParamByName('DONG_NAME').AsString := fmUserRegistration.edtDongName.Text;
        Params.ParamByName('USER_TEL').AsString := fmUserRegistration.edtUserTel.Text;
        Params.ParamByName('USER_EMAIL').AsString := fmUserRegistration.edtUserEmail.Text;
        Params.ParamByName('REG_DATE').AsString := DateTimeToStr(Date);
        Params.ParamByName('APPROVED').AsInteger := 0;
        Params.ParamByName('SYSTEM_ID').AsString := HDDID;
        Execute;
      end;
      LabelMessage.Caption := '사용자 등록이 완료되었습니다.' + #13#10 + '사용자 승인이 되면 알려드립니다.';
    end;
  finally
    fQuery.Free;
    fmUserRegistration.Free;
  end;
end;

procedure TfmLogin.cxButton1Click(Sender: TObject);
begin
  DownloadFile;
end;

procedure TfmLogin.GetLoginUserInfo;
begin
  LoginUserPass   := d_user.DataSet.FieldByName('login_pass').AsString;
  LoginUserNo     := d_user.DataSet.FieldByName('id').AsString;
  LoginUserName   := d_user.DataSet.FieldByName('user_name').AsString;
  LoginUserID     := d_user.DataSet.FieldByName('login_id').AsString;
  LoginUserDong   := d_user.DataSet.FieldByName('dong_id').AsString;
  LoginUserDongName   := d_user.DataSet.FieldByName('dong_name').AsString;
  LoginUserCityName   := d_user.DataSet.FieldByName('city_name').AsString;
  LoginUserDongNumber := d_user.DataSet.FieldByName('dong_number').AsInteger;
  LoginUserTel    := d_user.DataSet.FieldByName('user_tel').AsString;
  LoginUserEmail  := d_user.DataSet.FieldByName('user_email').AsString;
  LoginUserHDDID  := d_user.DataSet.FieldByName('system_id').AsString;
  LoginUserKind   := d_user.DataSet.FieldByName('user_kind').AsInteger;
  LoginCounter    := d_user.DataSet.FieldByName('login_count').AsInteger;
  DBFilename      := d_user.DataSet.FieldByName('DATABASE_NAME').AsString;
  DBServerIP      := d_user.DataSet.FieldByName('SERVER_IP').AsString;
  ServerAppVersion := d_user.DataSet.FieldByName('APP_VERSION').AsString;
  UpdateFileName  := d_user.DataSet.FieldByName('UPDATE_FILENAME').AsString;
  UpdateComments  := d_user.DataSet.FieldByName('UPDATE_COMMENTS').AsString;
  CAN_UPDATE      := d_user.DataSet.FieldByName('CAN_UPDATE').AsInteger;
  DB_LOCATION     := d_user.DataSet.FieldByName('DB_LOCATION').AsInteger;
  if LoginUserKind = 1 then
    IS_ADMIN := True
  else
    IS_ADMIN := False;
end;

procedure TfmLogin.btnAddNewClick(Sender: TObject);
var
  fQuery : TUniQuery;
  sender_email, receiver, subject, msg : string;
begin
  fQuery := TUniQuery.Create(nil);
  fmUserRegistration := TfmUserRegistration.Create(Self);
  try
    fmUserRegistration.ShowModal;
    if fmUserRegistration.ModalResult = mrOk then begin
      with fQuery do begin
        Connection := UniConnection2;
        SQL.Clear;
        SQL.Add('INSERT INTO LOGIN_USER ');
        SQL.Add('(ID, USER_NAME, LOGIN_ID, LOGIN_PASS, USER_KIND, ');
        SQL.Add('CITY_NAME, DONG_NAME, USER_TEL, USER_EMAIL, REG_DATE, ');
        SQL.Add('APPROVED, SYSTEM_ID)');
        SQL.Add('VALUES ');
        SQL.Add('(:ID, :USER_NAME, :LOGIN_ID, :LOGIN_PASS, :USER_KIND, ');
        SQL.Add(':CITY_NAME, :DONG_NAME, :USER_TEL, :USER_EMAIL, :REG_DATE, ');
        SQL.Add(':APPROVED, :SYSTEM_ID)');
        Params.ParamByName('ID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
        Params.ParamByName('USER_NAME').AsString := fmUserRegistration.editUsername.Text;
        Params.ParamByName('LOGIN_ID').AsString := fmUserRegistration.edtLoginID.Text;
        Params.ParamByName('LOGIN_PASS').AsString := fmUserRegistration.edtLoginPass.Text;
        Params.ParamByName('USER_KIND').AsInteger := 0;
        Params.ParamByName('CITY_NAME').AsString := fmUserRegistration.edtCityName.Text;
        Params.ParamByName('DONG_NAME').AsString := fmUserRegistration.edtDongName.Text;
        Params.ParamByName('USER_TEL').AsString := fmUserRegistration.edtUserTel.Text;
        Params.ParamByName('USER_EMAIL').AsString := fmUserRegistration.edtUserEmail.Text;
        Params.ParamByName('REG_DATE').AsString := DateTimeToStr(Date);
        Params.ParamByName('APPROVED').AsInteger := 0;
        Params.ParamByName('SYSTEM_ID').AsString := HDDID;
        Execute;
      end;
      LabelMessage.Caption := '사용자 등록이 완료되었습니다.' + #13#10 + '사용자 승인이 되면 알려드립니다.';
    end;
  finally
    fQuery.Free;
    fmUserRegistration.Free;
  end;
end;

procedure TfmLogin.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmLogin.btnLocalOKClick(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName : string;
  ServerVersion : string;
begin
  if edtPassword.Text = '' then begin
    ShowMessage('비밀번호를 입력하세요.');
    edtPassword.Setfocus;
    Exit;
  end;
  if edtLoginID.Text = '' then begin
    ShowMessage('로그인ID를 입력하세요.');
    edtLoginID.Setfocus;
    Exit;
  end;
  q_user.ParamByName('L_ID').AsString := edtLoginID.Text;
  q_user.ParamByName('L_PASS').AsString := edtPassword.Text;
  q_user.Active := True;
  d_user.DataSet.Refresh;
  if d_user.DataSet.RecordCount > 0 then begin
    if q_userAPPROVED.Value > 0 then begin
      GetLoginUserInfo;
      ServerVersion := GetServerVersion;
      UpdateLoginCounter(LoginUserID);
      if q_userSHOW_NOTICE.Value = 1 then
        ShowNoticeMessage;

      if chkSaveID.Checked then begin
        iniFileName := gsDefaultFolder + 'LoginInfo.ini';
        FIni := TIniFile.Create(iniFileName);
        FIni.WriteString('Login', 'Login ID', edtLoginID.Text);
        FIni.WriteString('Login', 'Save ID', '1');
      end else begin
        iniFileName := gsDefaultFolder + 'LoginInfo.ini';
        FIni := TIniFile.Create(iniFileName);
        FIni.WriteString('Login', 'Login ID', '');
        FIni.WriteString('Login', 'Save ID', '0');
      end;
      if chkSavePass.Checked then begin
        iniFileName := gsDefaultFolder + 'LoginInfo.ini';
        FIni := TIniFile.Create(iniFileName);
        FIni.WriteString('Login', 'Login PW', edtPassword.Text);
        FIni.WriteString('Login', 'Save Pass', '1');
      end else begin
        iniFileName := gsDefaultFolder + 'LoginInfo.ini';
        FIni := TIniFile.Create(iniFileName);
        FIni.WriteString('Login', 'Login PW', '');
        FIni.WriteString('Login', 'Save Pass', '0');
      end;
      ModalResult := mrOk;
    end else begin
      ShowMessage('비승인된 사용자입니다.' + #13#10 +
                  '사용자승인을 받으세요.');
      Exit;
    end;
  end else begin
    ShowMessage('사용자ID와 비밀번호를 틀립니다.' + #13#10 +
                '사용자ID와 비밀번호를 확인하세요.');
    edtLoginID.SetFocus;
    Exit;
  end;
end;

procedure TfmLogin.ShowNoticeMessage;
var
  i, cnt : Integer;
  n_msg : string;
begin
  q_check_notice.Active := True;
  d_check_notice.DataSet.Refresh;
  cnt := d_check_notice.DataSet.RecordCount;
  q_check_notice.First;
  n_msg := '';
  for i := 0 to cnt - 1 do begin
    if q_check_noticeN_ACTIVE.Value = 1 then begin
      n_msg := n_msg + q_check_noticeN_TITLE.Value + #10#13 + #10#13 +
               q_check_noticeN_DESC.Value + #10#13 + #10#13;
    end;
    q_check_notice.Next;
  end;
  if cnt > 0 then
    ShowMessage(n_msg);
end;

procedure TfmLogin.UpdateLoginCounter(login_id : string);
var
  fQuery : TUniQuery;
begin
  fQuery := TUniQuery.Create(nil);
  try
    with fQuery do begin
      Connection := UniConnection2;
      SQL.Clear;
      SQL.Add('update login_user set last_login_time = :login_time, login_count = :login_cnt, user_version = :user_version ');
      SQL.Add('where login_id = :uid ');
      Params.ParamByName('login_time').AsDateTime := Now;
      Params.ParamByName('login_cnt').AsInteger := LoginCounter + 1;
      Params.ParamByName('user_version').AsString := LocalAppVersion;
      Params.ParamByName('uid').AsString := login_id;
      Execute;
    end;
  finally
    fQuery.Free;
  end;
end;

end.
