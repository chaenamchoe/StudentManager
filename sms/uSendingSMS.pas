unit uSendingSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ExtDlgs, InvokeRegistry, Rio, SOAPHTTPClient,SHDocVw,Types,Math,
  DB, dxmdaset, jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, IniFiles, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, MemDS, DBAccess, Uni,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox, Menus, cxButtons;

type
  TfmSendingSMS = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    gridSMS: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    btnSelectAll: TBitBtn;
    btnDeselect: TBitBtn;
    mdSMS: TdxMemData;
    dSMS: TDataSource;
    mdSMSid: TAutoIncField;
    mdSMScheck_send: TBooleanField;
    mdSMScname: TStringField;
    mdSMSctel: TStringField;
    gridSMSRecId: TcxGridDBColumn;
    gridSMSid: TcxGridDBColumn;
    gridSMScheck_send: TcxGridDBColumn;
    gridSMScname: TcxGridDBColumn;
    gridSMSctel: TcxGridDBColumn;
    mdSMSjob: TStringField;
    gridSMSjob: TcxGridDBColumn;
    Panel4: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    lblBytes: TLabel;
    Label11: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    lblCorpName: TLabel;
    lblCorpID: TLabel;
    lblUserName: TLabel;
    lblRestPoint: TLabel;
    SMS_USER_SEL: TUniStoredProc;
    ds_SMS_USER_SEL: TDataSource;
    SMS_USER_SELUID: TIntegerField;
    SMS_USER_SELCERTKEY: TStringField;
    SMS_USER_SELCOPRNUM: TStringField;
    SMS_USER_SELCORPNAME: TStringField;
    SMS_USER_SELCEONAME: TStringField;
    SMS_USER_SELBIZTYPE: TStringField;
    SMS_USER_SELBIZCLASS: TStringField;
    SMS_USER_SELPOSTNUM: TStringField;
    SMS_USER_SELADDR1: TStringField;
    SMS_USER_SELADDR2: TStringField;
    SMS_USER_SELMEMBERNAME: TStringField;
    SMS_USER_SELID: TStringField;
    SMS_USER_SELPWD: TStringField;
    SMS_USER_SELTEL: TStringField;
    SMS_USER_SELEMAIL: TStringField;
    SMS_USER_SELMASTER_TEL: TStringField;
    btnSMSSend: TBitBtn;
    BitBtn1: TBitBtn;
    SMS_SENDER_TEL_SEL: TUniStoredProc;
    SMS_SENDER_TEL_INS: TUniStoredProc;
    ds_SMS_SENDER_TEL_SEL: TDataSource;
    SMS_SENDER_TEL_DEL: TUniStoredProc;
    SMS_SENDER_TEL_SELID: TIntegerField;
    SMS_SENDER_TEL_SELCENTER_NAME: TStringField;
    SMS_SENDER_TEL_SELTEL_NO: TStringField;
    mdSMSsex: TIntegerField;
    gridSMSsex: TcxGridDBColumn;
    edtSender: TcxComboBox;
    btnAdd: TcxButton;
    btnDel: TcxButton;
    Panel5: TPanel;
    gridSample: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    SMS_SAMPLE_SEL: TUniStoredProc;
    ds_SMS_SAMPLE_SEL: TDataSource;
    SMS_SAMPLE_SELID: TIntegerField;
    SMS_SAMPLE_SELSMS_TEXT: TMemoField;
    SMS_SAMPLE_SELSMS_KIND: TIntegerField;
    gridSampleID: TcxGridDBColumn;
    gridSampleSMS_TEXT: TcxGridDBColumn;
    gridSampleSMS_KIND: TcxGridDBColumn;
    SMS_SAMPLE_INS: TUniStoredProc;
    SMS_SAMPLE_UPD: TUniStoredProc;
    SMS_SAMPLE_DEL: TUniStoredProc;
    btnAddSample: TcxButton;
    btnDelSample: TcxButton;
    btnEditSample: TcxButton;
    btnPointSite: TButton;
    btnSMSHistory: TBitBtn;
    Label1: TLabel;
    btnAddTemp: TBitBtn;
    btnDelTemp: TBitBtn;
    procedure btnSMSSendClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure gridSMSCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnDeselectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edtSenderFocusChanged(Sender: TObject);
    procedure btnAddSampleClick(Sender: TObject);
    procedure btnEditSampleClick(Sender: TObject);
    procedure btnDelSampleClick(Sender: TObject);
    procedure gridSampleFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnPointSiteClick(Sender: TObject);
    procedure btnSMSHistoryClick(Sender: TObject);
    procedure btnAddTempClick(Sender: TObject);
    procedure btnDelTempClick(Sender: TObject);
  private
    { Private declarations }
    CERTKEY : string;
    BUSI_ID : string;
    USER_ID : string;
    USER_PASS : string;
    SENDERNO : string;
    procedure InsertSenderTel;
  public
    { Public declarations }

  end;

var
  fmSendingSMS: TfmSendingSMS;

implementation

uses BaroService_SMS, GlobalVar, Udm, UfmSMSMember, UfmSenderTelEdit,
  UfmAddTempTel;

{$R *.dfm}

procedure TfmSendingSMS.FormShow(Sender: TObject);
var
  isUser : Integer;
  Result : longint;
begin
  SMS_SAMPLE_SEL.Active := True;
  ds_SMS_SAMPLE_SEL.DataSet.Refresh;

  SMS_USER_SEL.Active := True;
  ds_SMS_USER_SEL.DataSet.Refresh;

  CERTKEY := SMS_USER_SELCERTKEY.Value;
  BUSI_ID := SMS_USER_SELCOPRNUM.Value;
  USER_ID := SMS_USER_SELID.Value;
  USER_PASS := SMS_USER_SELPWD.Value;
  SENDERNO := SMS_USER_SELMASTER_TEL.Value;

  lblCorpID.Caption := BUSI_ID;
  lblCorpName.Caption := SMS_USER_SELCORPNAME.Value;
  lblUserName.Caption := SMS_USER_SELMEMBERNAME.Value;

  SMS_SENDER_TEL_SEL.Active := True;
  ds_SMS_USER_SEL.DataSet.Refresh;

  InsertSenderTel;
  edtSender.ItemIndex := 0;
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
end;

procedure TfmSendingSMS.InsertSenderTel;
var
  tno : string;
  i, cnt : Integer;
begin
  edtSender.Properties.Items.Clear;
  cnt := SMS_SENDER_TEL_SEL.RecordCount;
  SMS_SENDER_TEL_SEL.First;
  for i := 0 to cnt - 1 do begin
    tno := SMS_SENDER_TEL_SELTEL_NO.Value;
    edtsender.Properties.Items.Add(tno);
    SMS_SENDER_TEL_SEL.Next;
  end;
end;

procedure TfmSendingSMS.gridSampleFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Memo1.Text := VarToStr(gridSampleSMS_TEXT.EditValue);
end;

procedure TfmSendingSMS.gridSMSCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sel : Boolean;
begin
  sel := mdSMS.FieldByName('check_send').AsBoolean;
  mdSMS.Edit;
  mdSMS.FieldByName('check_send').AsBoolean := not sel;
  mdSMS.Post;
end;

procedure TfmSendingSMS.Memo1Change(Sender: TObject);
var
  bytes : Integer;
begin
  bytes := Length(AnsiString(Memo1.Text));
  lblBytes.Caption := IntToStr(bytes) + '/90';
end;

procedure TfmSendingSMS.btnAddTempClick(Sender: TObject);
begin
  fmAddTempTel := TfmAddTempTel.Create(Self);
  try
    fmAddTempTel.ShowModal;
    if fmAddTempTel.ModalResult = mrOk then begin
      mdSMS.Append;
      mdSMS.FieldByName('cname').Value := fmAddTempTel.EditName.Text;
      mdSMS.FieldByName('ctel').Value := fmAddTempTel.EditTel.Text;
      mdSMS.FieldByName('check_send').Value := 1;
      mdSMS.Post;
    end;
  finally
    fmAddTempTel.Free;
  end;
end;

procedure TfmSendingSMS.btnDelTempClick(Sender: TObject);
begin
  mdSMS.Delete;
end;

procedure TfmSendingSMS.btnAddClick(Sender: TObject);
begin
  fmSenderTelEdit := TfmSenderTelEdit.Create(Self);
  try
    fmSenderTelEdit.ShowModal;
    if fmSenderTelEdit.ModalResult = mrOk then begin
      SMS_SENDER_TEL_INS.ParamByName('CENTER_NAME').Value := fmSenderTelEdit.EditCenter.Text;
      SMS_SENDER_TEL_INS.ParamByName('TEL_NO').Value := fmSenderTelEdit.EditTel.Text;
      SMS_SENDER_TEL_INS.ExecProc;
      ds_SMS_SENDER_TEL_SEL.DataSet.Refresh;
      InsertSenderTel;
    end;
  finally
    fmSenderTelEdit.Free;
  end;
end;

procedure TfmSendingSMS.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    SMS_SENDER_TEL_DEL.ParamByName('ID').Value := SMS_SENDER_TEL_SELID.Value;
    SMS_SENDER_TEL_DEL.ExecProc;
    ds_SMS_SENDER_TEL_SEL.DataSet.Refresh;
    edtSender.Clear;
    InsertSenderTel;
    edtSender.ItemIndex := 0;
  end;
end;

procedure TfmSendingSMS.btnDelSampleClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    SMS_SAMPLE_DEL.ParamByName('ID').Value := gridSampleID.EditValue;
    SMS_SAMPLE_DEL.ExecProc;
    //SavePosition(gridSample);
    ds_SMS_SAMPLE_SEL.DataSet.Refresh;
    //GotoPosition(gridSample);
  end;
end;

procedure TfmSendingSMS.btnDeselectClick(Sender: TObject);
begin
  mdSMS.DisableControls;
  mdSMS.First;
  while not mdSMS.Eof do begin
    mdSMS.Edit;
    mdSMS.FieldByName('check_send').AsBoolean := False;
    mdSMS.Post;
    mdSMS.Next;
  end;
  dSMS.DataSet.Refresh;
  mdSMS.First;
  mdSMS.EnableControls;
end;

procedure TfmSendingSMS.btnEditSampleClick(Sender: TObject);
begin
  SMS_SAMPLE_UPD.ParamByName('ID').Value := gridSampleID.EditValue;
  SMS_SAMPLE_UPD.ParamByName('SMS_TEXT').Value := Memo1.Text;
  SMS_SAMPLE_UPD.ParamByName('SMS_KIND').Value := 1;
  SMS_SAMPLE_UPD.ExecProc;
  //SavePosition(gridSample);
  ds_SMS_SAMPLE_SEL.DataSet.Refresh;
  //GotoPosition(gridSample);
end;

procedure TfmSendingSMS.btnPointSiteClick(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  if not (SMS_USER_SEL.RecordCount > 0) then begin
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

procedure TfmSendingSMS.btnSelectAllClick(Sender: TObject);
begin
  mdSMS.DisableControls;
  mdSMS.First;
  while not mdSMS.Eof do begin
    mdSMS.Edit;
    mdSMS.FieldByName('check_send').AsBoolean := True;
    mdSMS.Post;
    mdSMS.Next;
  end;
  dSMS.DataSet.Refresh;
  mdSMS.First;
  mdSMS.EnableControls;
end;

procedure TfmSendingSMS.btnSMSHistoryClick(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  if not (SMS_USER_SEL.RecordCount > 0) then begin
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

procedure TfmSendingSMS.btnSMSSendClick(Sender: TObject);
var
  Messages : ArrayOfXMSMessage;
  Rtn : WideString;
  cnt, i, Result : Integer;
  SENDER_NO, SEND_MSG : string;
  RECEIVER_NAME : string;
begin
  SENDER_NO := edtSender.Text;
  if edtSender.Text = '' then begin
    ShowMessage('송신번호를 입력하세요.');
    edtSender.SetFocus;
    Exit;
  end;
  SEND_MSG := Memo1.Text;
  if Memo1.Text = '' then begin
    ShowMessage('전송내용을 입력하세요.');
    Memo1.SetFocus;
    Exit;
  end;
  if USER_ID = '' then begin
    ShowMessage('바로빌 회원정보를 입력하세요.');
    Exit;
  end;
  if USER_ID = '' then begin
    ShowMessage('바로빌 회원정보를 입력하세요.');
    Exit;
  end;
  cnt := mdSMS.RecordCount;
  SetLength(Messages, cnt);
  mdSMS.First;
  for i := 0 to cnt do begin
    if mdSMS.FieldByName('check_send').AsBoolean then begin
      RECEIVER_NAME := mdSMS.FieldByName('cname').AsString;
      Messages[i] := XMSMessage.Create();
      Messages[i].ReceiverNum := mdSMS.FieldByName('ctel').AsString;
      Messages[i].ReceiverName := RECEIVER_NAME;
      Messages[i].SenderNum := SENDER_NO;
      Messages[i].Message := SEND_MSG;
    end;
    mdSMS.Next;
  end;
  Rtn := GetBaroService_SMSSoap(true).SendMessages(CERTKEY,BUSI_ID,USER_ID,cnt, False, Messages,'');
  if( Copy( Rtn,0,1) = '-') then begin
    ShowMessage(rtn + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,strtoint(rtn)));
  end else begin
    Result := GetBaroService_SMSSoap(true).GetBalanceCostAmount(CERTKEY,BUSI_ID);
    if Result > 0 then
      lblRestPoint.Caption := IntToStr(Result) + ' 포인트'
    else
      lblRestPoint.Caption := '없음';
    ShowMessage('문자전송완료!');
  end;
end;

procedure TfmSendingSMS.btnAddSampleClick(Sender: TObject);
begin
  SMS_SAMPLE_INS.ParamByName('SMS_TEXT').Value := Memo1.Text;
  SMS_SAMPLE_INS.ParamByName('SMS_KIND').Value := 1;
  SMS_SAMPLE_INS.ExecProc;
  ds_SMS_SAMPLE_SEL.DataSet.Refresh;
end;

procedure TfmSendingSMS.edtSenderFocusChanged(Sender: TObject);
begin
  SMS_SENDER_TEL_SEL.Locate('TEL_NO', edtSender.Text, []);

end;

end.
