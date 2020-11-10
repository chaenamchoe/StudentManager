unit ufmSMSManager;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxTextEdit, Buttons, ExtCtrls,
  OleCtrls, SHDocVw;

type
  TfmSMSManager = class(TForm)
    Panel22: TPanel;
    Panel26: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblBytes: TLabel;
    btnSMSSend: TBitBtn;
    btnSMSSave: TBitBtn;
    cxDBTextEdit1: TcxDBTextEdit;
    mmoMSG: TcxDBMemo;
    edtSenderNo: TcxDBTextEdit;
    btnSMSDel: TBitBtn;
    btnSMSInput: TBitBtn;
    edtReceverNo: TcxDBTextEdit;
    cxGrid13: TcxGrid;
    gridSentense: TcxGridDBTableView;
    gridSentenseID: TcxGridDBColumn;
    gridSentenseS_TITLE: TcxGridDBColumn;
    gridSentenseS_CONTENTS: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    btnSMSprice: TButton;
    btnRestPoint: TButton;
    btnLMSPrice: TButton;
    btnMMSPrice: TButton;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    btnPointSite: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnPointSiteClick(Sender: TObject);
    procedure btnRestPointClick(Sender: TObject);
    procedure btnSMSpriceClick(Sender: TObject);
    procedure btnLMSPriceClick(Sender: TObject);
    procedure btnMMSPriceClick(Sender: TObject);
    procedure btnSMSInputClick(Sender: TObject);
    procedure btnSMSSaveClick(Sender: TObject);
    procedure btnSMSSendClick(Sender: TObject);
    procedure mmoMSGPropertiesChange(Sender: TObject);
    procedure btnSMSDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSMSManager: TfmSMSManager;

implementation

uses uDataModule, SMS, GlobalVar;

{$R *.dfm}

procedure TfmSMSManager.BitBtn1Click(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  rtnString := GetBaroService_SMSSoap(true).GetSMSHistoryURL(CERTKEY,BUSINESS_ID, USER_ID,USER_PASS);
  WebB := TWebBrowser.Create(self);
  Options := navOpenInNewWindow;
  WebB.Navigate(rtnString,Options);
end;

procedure TfmSMSManager.btnLMSPriceClick(Sender: TObject);
var
  Rtn : Integer;
begin
  //lms 단가
  Rtn := GetBaroService_SMSSoap(true).GetChargeUnitCost(CERTKEY,BUSINESS_ID,13);
  if( Rtn < 0) then
    ShowMessage(IntToStr(rtn) + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,rtn))
  else
    ShowMessage(IntToStr(rtn));
end;

procedure TfmSMSManager.btnMMSPriceClick(Sender: TObject);
var
  Rtn : Integer;
begin
  //mms 단가
  Rtn := GetBaroService_SMSSoap(true).GetChargeUnitCost(CERTKEY,BUSINESS_ID,14);
  if(rtn < 0) then
    ShowMessage(IntToStr(rtn) + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,rtn))
  else
    ShowMessage(IntToStr(rtn));
end;

procedure TfmSMSManager.btnPointSiteClick(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  rtnString := GetBaroService_SMSSoap(true).GetCashChargeURL(CERTKEY,BUSINESS_ID,USER_ID,USER_PASS);
  WebB := TWebBrowser.Create(self);
  Options := navOpenInNewWindow;
  WebB.Navigate(rtnString,Options);
end;

procedure TfmSMSManager.btnRestPointClick(Sender: TObject);
var
  Rtn : Integer;
begin
  Rtn := GetBaroService_SMSSoap(true).GetBalanceCostAmount(CERTKEY,BUSINESS_ID);
  if(rtn < 0) then
    ShowMessage(IntToStr(rtn) + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,rtn))
  else
    ShowMessage(IntToStr(rtn));
end;

procedure TfmSMSManager.btnSMSDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    DataModule1.d_SMS_SENTENSE.DataSet.Delete;
  end;
end;

procedure TfmSMSManager.btnSMSInputClick(Sender: TObject);
begin
  DataModule1.d_SMS_SENTENSE.DataSet.Append;
  cxDBTextEdit1.SetFocus;
end;

procedure TfmSMSManager.btnSMSpriceClick(Sender: TObject);
var
  Rtn : Integer;
begin
  //sms단가
  Rtn := GetBaroService_SMSSoap(true).GetChargeUnitCost(CERTKEY, BUSINESS_ID, 11);
  if(rtn < 0) then
    ShowMessage(IntToStr(rtn) + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,rtn))
  else
    ShowMessage(IntToStr(rtn));
end;

procedure TfmSMSManager.btnSMSSaveClick(Sender: TObject);
begin
  if DataModule1.d_SMS_SENTENSE.DataSet.Modified then
    DataModule1.d_SMS_SENTENSE.DataSet.Post;
end;

procedure TfmSMSManager.btnSMSSendClick(Sender: TObject);
var
  SENDER_NO : string;
  RECEIVER_NO : string;
  SEND_MSG : string;
  rtn : WideString;
begin
  RECEIVER_NO := edtReceverNo.Text;
  SENDER_NO := edtSenderNo.Text;
  SEND_MSG := mmoMSG.Text;
  if (Length(RECEIVER_NO) > 0) and (length(SEND_MSG) > 0) then begin
    Rtn := GetBaroService_SMSSoap(true).SendMessage(CERTKEY,BUSINESS_ID, USER_ID, SENDER_NO,'',RECEIVER_NO,SEND_MSG,'','');
    if( Copy( Rtn,0,1) = '-') then
      ShowMessage(rtn + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,strtoint(rtn)));
  end;
end;

procedure TfmSMSManager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmSMSManager.mmoMSGPropertiesChange(Sender: TObject);
begin
  lblBytes.Caption := IntToStr(Length(mmoMSG.Text)) + '/80';
end;

initialization RegisterClasses([TfmSMSManager]);

end.
