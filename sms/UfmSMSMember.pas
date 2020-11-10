unit UfmSMSMember;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles;

type
  TfmSMSMember = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ID: TEdit;
    PWD: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    EditSender: TEdit;
    Label5: TLabel;
    CorpNum: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    CorpName: TEdit;
    Label8: TLabel;
    CEOName: TEdit;
    Label9: TLabel;
    BizType: TEdit;
    Label10: TLabel;
    BizClass: TEdit;
    Label11: TLabel;
    PostNum: TEdit;
    Label12: TLabel;
    Addr1: TEdit;
    Label13: TLabel;
    Addr2: TEdit;
    Label14: TLabel;
    MemberName: TEdit;
    Label15: TLabel;
    TEL: TEdit;
    Label16: TLabel;
    Email: TEdit;
    Label4: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSMSMember: TfmSMSMember;

implementation

uses GlobalVar, BaroService_SMS;

{$R *.dfm}

procedure TfmSMSMember.BitBtn1Click(Sender: TObject);
var
  iniFileName : string;
  FIni : TIniFile;
  isUser, isOK : Integer;
  CERTKEY : string;
begin
  CERTKEY := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';
  isUser := GetBaroService_SMSSoap(true).CheckCorpIsMember(CERTKEY,CorpNum.Text, CorpNum.Text);
  if isUser = 1 then begin
    ShowMessage('이미 등록된 사용자입니다. 다시 하세요.');
    Exit;
  end;

  isOK := GetBaroService_SMSSoap(true).RegistCorp(CERTKEY,
       CorpNum.Text, CorpName.Text, CEOName.Text, BizType.Text,
       BizClass.Text, PostNum.Text, Addr1.Text, Addr2.Text,
       MemberName.Text, '', ID.Text,PWD.Text,'', TEL.Text, '', Email.Text);

  if isOK = 1 then begin
    iniFileName := gsDefaultFolder + 'SMS_USER.ini';
    FIni := TIniFile.Create(iniFileName);
    FIni.WriteString('User', 'CorpNum', CorpNum.Text);
    FIni.WriteString('User', 'CorpName', CorpName.Text);
    FIni.WriteString('User', 'CEOName', CEOName.Text);
    FIni.WriteString('User', 'BizType', BizType.Text);
    FIni.WriteString('User', 'BizClass', BizClass.Text);
    FIni.WriteString('User', 'PostNum', PostNum.Text);
    FIni.WriteString('User', 'Addr1', Addr1.Text);
    FIni.WriteString('User', 'Addr2', Addr2.Text);
    FIni.WriteString('User', 'MemberName', MemberName.Text);
    FIni.WriteString('User', 'ID', ID.Text);
    FIni.WriteString('User', 'PWD', PWD.Text);
    FIni.WriteString('User', 'TEL', TEL.Text);
    FIni.WriteString('User', 'Email', Email.Text);
    FIni.WriteString('User', 'SenderNo', EditSender.Text);
    EditSender.Text := FIni.ReadString('User', 'SenderNo', '');
    ModalResult := mrOk;
  end else begin
    ShowMessage(IntToStr(isOK) + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY, isOK));
    Exit;
  end;
end;

procedure TfmSMSMember.FormShow(Sender: TObject);
var
  iniFileName : string;
  FIni : TIniFile;
begin
  iniFileName := gsDefaultFolder + 'SMS_USER.ini';
  FIni := TIniFile.Create(iniFileName);
  CorpNum.Text := FIni.ReadString('User', 'CorpNum', '');
  CorpName.Text := FIni.ReadString('User', 'CorpName', '');
  CEOName.Text := FIni.ReadString('User', 'CEOName', '');
  BizType.Text := FIni.ReadString('User', 'BizType', '');
  BizClass.Text := FIni.ReadString('User', 'BizClass', '');
  PostNum.Text := FIni.ReadString('User', 'PostNum', '');
  Addr1.Text := FIni.ReadString('User', 'Addr1', '');
  Addr2.Text := FIni.ReadString('User', 'Addr2', '');
  MemberName.Text := FIni.ReadString('User', 'MemberName', '');
  ID.Text := FIni.ReadString('User', 'ID', '');
  PWD.Text := FIni.ReadString('User', 'PWD', '');
  TEL.Text := FIni.ReadString('User', 'TEL', '');
  Email.Text := FIni.ReadString('User', 'Email', '');
  EditSender.Text := FIni.ReadString('User', 'SenderNo', '');
end;

end.
