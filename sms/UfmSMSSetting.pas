unit UfmSMSSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles,InvokeRegistry, Rio, SOAPHTTPClient,
  Uni, SHDocVw,Types,Math, DB, MemDS, DBAccess;

type
  TfmSMSSetting = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ID: TEdit;
    PWD: TEdit;
    btnSave: TBitBtn;
    EditSender: TEdit;
    CorpNum: TEdit;
    CorpName: TEdit;
    CEOName: TEdit;
    BizType: TEdit;
    BizClass: TEdit;
    PostNum: TEdit;
    Addr1: TEdit;
    Addr2: TEdit;
    MemberName: TEdit;
    TEL: TEdit;
    Email: TEdit;
    GroupBox2: TGroupBox;
    btnSMSHistory: TBitBtn;
    btnPointSite: TButton;
    Label20: TLabel;
    lblRestPoint: TLabel;
    SMS_USER_UPD: TUniStoredProc;
    SMS_USER_IU: TUniStoredProc;
    btnCheckSender: TBitBtn;
    btnRegistTel: TBitBtn;
    btnRegistComp: TBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPointSiteClick(Sender: TObject);
    procedure btnSMSHistoryClick(Sender: TObject);
    procedure btnCheckSenderClick(Sender: TObject);
    procedure btnRegistTelClick(Sender: TObject);
    procedure btnRegistCompClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CERTKEY : string;
    BUSI_ID : string;
    USER_ID : string;
    USER_PASS : string;
    SENDERNO : string;
  end;

var
  fmSMSSetting: TfmSMSSetting;

implementation

uses GlobalVar, BaroService_SMS, Udm;

{$R *.dfm}

procedure TfmSMSSetting.FormShow(Sender: TObject);
var
  isUser : Integer;
  Result : integer;
begin
  dm.SMS_USER_SEL.Active := True;
  dm.ds_SMS_USER_SEL.DataSet.Refresh;

  CERTKEY := dm.SMS_USER_SELCERTKEY.Value;
  BUSI_ID := dm.SMS_USER_SELCOPRNUM.Value;
  USER_ID := dm.SMS_USER_SELID.Value;
  USER_PASS := dm.SMS_USER_SELPWD.Value;
  SENDERNO := dm.SMS_USER_SELMASTER_TEL.Value;
  try
    isUser := GetBaroService_SMSSoap(true).CheckCorpIsMember(CERTKEY,BUSI_ID, BUSI_ID);
    if isUser = 0 then begin
      ShowMessage('SMS전송 사용자등록을 하세요.');
      Exit;
    end;

    Result := GetBaroService_SMSSoap(true).GetBalanceCostAmount(CERTKEY,BUSI_ID);
    if Result > 0 then
      lblRestPoint.Caption := IntToStr(Result) + ' 포인트'
    else
      lblRestPoint.Caption := '없음';
  except
    exit;
  end;

  CorpNum.Text := BUSI_ID;
  CorpName.Text := dm.SMS_USER_SELCORPNAME.Value;
  CEOName.Text := dm.SMS_USER_SELCEONAME.Value;
  BizType.Text := dm.SMS_USER_SELBIZTYPE.Value;
  BizClass.Text := dm.SMS_USER_SELBIZCLASS.Value;
  PostNum.Text := dm.SMS_USER_SELPOSTNUM.Value;
  Addr1.Text := dm.SMS_USER_SELADDR1.Value;
  Addr2.Text := dm.SMS_USER_SELADDR2.Value;
  MemberName.Text := dm.SMS_USER_SELMEMBERNAME.Value;
  ID.Text := USER_ID;
  PWD.Text := USER_PASS;
  TEL.Text := dm.SMS_USER_SELTEL.Value;
  Email.Text := dm.SMS_USER_SELEMAIL.Value;
  EditSender.Text := SENDERNO;
end;

procedure TfmSMSSetting.btnCheckSenderClick(Sender: TObject);
var
  Result : WideString;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  try
    Result := GetBaroService_SMSSoap(true).GetSMSFromNumberURL(CERTKEY, BUSI_ID, USER_ID, USER_PASS);
    if(Copy(Result,0,1) <> '-') then begin
      WebB := TWebBrowser.Create(self);
      Options := navOpenInNewWindow;
      WebB.Navigate(Result,Options);
    end;
  except
    ShowMessage('SOAP통신 오류.' + #13#13 + '1. 연동서비스 참조URL을 확인하십시오.' + #13 + '2. 호출하는 연동함수의 파라메터를 확인하십시오.');
    exit;
  end;
end;

procedure TfmSMSSetting.btnPointSiteClick(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  if not (dm.SMS_USER_SEL.RecordCount > 0) then begin
    ShowMessage('SMS 사용자등록을 하고 포인트를 구매하세요.');
    Exit;
  end;

  rtnString := GetBaroService_SMSSoap(true).GetCashChargeURL(CERTKEY,BUSI_ID,USER_ID,USER_PASS);
  if( Copy( rtnString,0,1) = '-') then begin
    ShowMessage(rtnString + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,strtoint(rtnString)));
    Exit;
  end else begin
    WebB := TWebBrowser.Create(self);
    Options := navOpenInNewWindow;
    WebB.Navigate(rtnString,Options);
  end;
end;

procedure TfmSMSSetting.btnRegistCompClick(Sender: TObject);
var
  isUser, isOK : Integer;
begin
  isUser := GetBaroService_SMSSoap(true).CheckCorpIsMember(CERTKEY,CorpNum.Text, CorpNum.Text);
  if isUser = 1 then begin
    ShowMessage('이미 등록된 사용자입니다. 사용자정보를 변경한 후 다시 하세요.');
    Exit;
  end else begin
    isOK := GetBaroService_SMSSoap(true).RegistCorp(CERTKEY,
       CorpNum.Text, CorpName.Text, CEOName.Text, BizType.Text,
       BizClass.Text, PostNum.Text, Addr1.Text, Addr2.Text,
       MemberName.Text, '', ID.Text,PWD.Text,'', TEL.Text, '', Email.Text);

    if isOK = 1 then begin
      ShowMessage('사용자등록이 완료되었습니다. SMS 문자를 보내려면 포인트를 구매하세요.');
    end else begin
      ShowMessage(IntToStr(isOK) + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY, isOK));
      Exit;
    end;
  end;
end;

procedure TfmSMSSetting.btnRegistTelClick(Sender: TObject);
var
  Result : Integer;
begin
  try
    Result := GetBaroService_SMSSoap(true).RegistSMSFromNumber(CERTKEY, BUSI_ID, EditSender.Text);
  except
    ShowMessage('SOAP통신 오류.' + #13#13 + '1. 연동서비스 참조URL을 확인하십시오.' + #13 + '2. 호출하는 연동함수의 파라메터를 확인하십시오.');
    exit;
  end;
  ShowMessage(IntToStr(Result));
end;

procedure TfmSMSSetting.btnSaveClick(Sender: TObject);
begin
  SMS_USER_IU.ParamByName('UID').Value := 1;
  SMS_USER_IU.ParamByName('CERTKEY').Value := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';
  SMS_USER_IU.ParamByName('COPRNUM').Value := CorpNum.Text;
  SMS_USER_IU.ParamByName('CORPNAME').Value := CorpName.Text;
  SMS_USER_IU.ParamByName('CEONAME').Value := CEOName.Text;
  SMS_USER_IU.ParamByName('BIZTYPE').Value := BizType.Text;
  SMS_USER_IU.ParamByName('BIZCLASS').Value := BizClass.Text;
  SMS_USER_IU.ParamByName('POSTNUM').Value := PostNum.Text;
  SMS_USER_IU.ParamByName('ADDR1').Value :=  Addr1.Text;
  SMS_USER_IU.ParamByName('ADDR2').Value :=  Addr2.Text;
  SMS_USER_IU.ParamByName('MEMBERNAME').Value := MemberName.Text;
  SMS_USER_IU.ParamByName('ID').Value := ID.Text;
  SMS_USER_IU.ParamByName('PWD').Value := PWD.Text;
  SMS_USER_IU.ParamByName('TEL').Value := TEL.Text;
  SMS_USER_IU.ParamByName('EMAIL').Value := Email.Text;
  SMS_USER_IU.ParamByName('MASTER_TEL').Value := EditSender.Text;
  SMS_USER_IU.ExecProc;
  dm.ds_SMS_USER_SEL.DataSet.Refresh;
end;

procedure TfmSMSSetting.btnSMSHistoryClick(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  if not (dm.SMS_USER_SEL.RecordCount > 0) then begin
    ShowMessage('SMS 사용자등록을 하고 포인트를 구매하세요.');
    Exit;
  end;
  rtnString := GetBaroService_SMSSoap(true).GetSMSHistoryURL(CERTKEY,BUSI_ID,USER_ID,USER_PASS);
  if( Copy( rtnString,0,1) = '-') then begin
    ShowMessage(rtnString + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,strtoint(rtnString)));
    Exit;
  end else begin
    WebB := TWebBrowser.Create(self);
    Options := navOpenInNewWindow;
    WebB.Navigate(rtnString,Options);
  end;
end;


end.
