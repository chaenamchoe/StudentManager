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
  dxSkinOffice2013White, cxCheckBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmSendingSMS = class(TForm)
    Label5: TLabel;
    Label11: TLabel;
    lblBytes: TLabel;
    Memo1: TMemo;
    edtSender: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    btnSMSSend: TBitBtn;
    BitBtn1: TBitBtn;
    gridSMS: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    btnSelectAll: TBitBtn;
    btnDeselect: TBitBtn;
    dxMemSMSList: TdxMemData;
    dxMemSMSLists_name: TStringField;
    dxMemSMSLists_birth: TStringField;
    dxMemSMSLists_sex: TStringField;
    dxMemSMSLists_tel: TStringField;
    dxMemSMSLists_dong: TStringField;
    d_MemSMSList: TDataSource;
    dxMemSMSLists_selected: TSmallintField;
    gridSMSRecId: TcxGridDBColumn;
    gridSMSs_selected: TcxGridDBColumn;
    gridSMSs_name: TcxGridDBColumn;
    gridSMSs_birth: TcxGridDBColumn;
    gridSMSs_sex: TcxGridDBColumn;
    gridSMSs_tel: TcxGridDBColumn;
    gridSMSs_dong: TcxGridDBColumn;
    procedure btnSMSSendClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure gridSMSCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnDeselectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSendingSMS: TfmSendingSMS;

implementation

uses SMS, Udm, GlobalVar;

{$R *.dfm}

procedure TfmSendingSMS.FormCreate(Sender: TObject);
begin
  CERTKEY := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';  //인증키(내꺼)
  USER_ID := 'jsy2013';                               //연계사 로그인ID
  USER_PASS := '@jsy2013';                            //연계사 비밀번호
  BUSINESS_ID := '2141058959';                        //연계사 사업자번호
end;

procedure TfmSendingSMS.gridSMSCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sel : integer;
begin
  sel := dxMemSMSList.FieldByName('s_selected').AsInteger;
  if sel = 1 then
    sel := 0
  else
    sel := 1;
  dxMemSMSList.Edit;
  dxMemSMSList.FieldByName('s_selected').AsInteger := sel;
  dxMemSMSList.Post;
end;

procedure TfmSendingSMS.Memo1Change(Sender: TObject);
begin
  lblBytes.Caption := IntToStr(Length(Memo1.Text)) + '/80';
end;

procedure TfmSendingSMS.btnDeselectClick(Sender: TObject);
begin
  dxMemSMSList.DisableControls;
  dxMemSMSList.First;
  while not dxMemSMSList.Eof do begin
    dxMemSMSList.Edit;
    dxMemSMSList.FieldByName('s_selected').AsInteger := 0;
    dxMemSMSList.Post;
    dxMemSMSList.Next;
  end;
  dxMemSMSList.First;
  dxMemSMSList.EnableControls;
end;

procedure TfmSendingSMS.btnSelectAllClick(Sender: TObject);
begin
  dxMemSMSList.DisableControls;
  dxMemSMSList.First;
  while not dxMemSMSList.Eof do begin
    dxMemSMSList.Edit;
    dxMemSMSList.FieldByName('s_selected').AsInteger := 1;
    dxMemSMSList.Post;
    dxMemSMSList.Next;
  end;
  dxMemSMSList.First;
  dxMemSMSList.EnableControls;
end;

procedure TfmSendingSMS.btnSMSSendClick(Sender: TObject);
var
  Messages : ArrayOfXMSMessage;
  Rtn : WideString;
  cnt, i : Integer;
  SENDER_NO, SEND_MSG : string;
  RECEIVER_NAME : string;
  tel1 : string;
begin
  ShowMessage('문자전송을 하려면 이동통신사와 계약이 이루어져야 합니다.' + #13#10 +
              '통신사와 계약이 이루어진 후 가입자 코드를 발급받아야 하므로 ' + #13#10 +
              '지금은 SMS 전송을 할 수 없습니다.');
  Exit;
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

//  CERTKEY := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';
//  USER_ID := 'jsy2013';
//  USER_PASS := '@jsy2013';

  dxMemSMSList.First;
  cnt := 0;
  i := 0;
  while not dxMemSMSList.Eof do begin
    if dxMemSMSList.FieldByName('s_selected').AsInteger = 1 then begin
      tel1 := dxMemSMSList.FieldByName('s_tel').AsString;
      RECEIVER_NAME := dxMemSMSList.FieldByName('s_name').AsString;
      if Length(tel1) > 10 then begin
        Inc(cnt);
        SetLength(Messages, cnt);
        Messages[i] := XMSMessage.Create();
        Messages[i].ReceiverNum := tel1;
        Messages[i].ReceiverName := RECEIVER_NAME;
        Messages[i].SenderNum := SENDER_NO;
        Messages[i].Message := SEND_MSG;
        Inc(i);
      end;
    end;
    dxMemSMSList.Next;
  end;

  Rtn := GetBaroService_SMSSoap(true).SendMessages(CERTKEY,BUSINESS_ID,USER_ID,cnt, False, Messages,'');
  if( Copy( Rtn,0,1) = '-') then
    ShowMessage(rtn + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,strtoint(rtn)));
  ShowMessage('문자전송완료!');
end;

function FIleToByteArray( const FileName : string ) : TByteDynArray;
const BLOCK_SIZE=1024;
var BytesRead, BytesToWrite, Count : integer;
  F : FIle of Byte;
  pTemp : Pointer;
begin
  AssignFile( F, FileName );
  Reset(F);
try
  Count := FileSize( F );
  SetLength(Result, Count );
  pTemp := @Result[0];
  BytesRead := BLOCK_SIZE;
  while (BytesRead = BLOCK_SIZE ) do
  begin
    BytesToWrite := Min(Count, BLOCK_SIZE);
    BlockRead(F, pTemp^, BytesToWrite , BytesRead );
    pTemp := Pointer(LongInt(pTemp) + BLOCK_SIZE);
    Count := Count-BytesRead;
  end;
finally
  CloseFile( F );
 end;
end;

end.
