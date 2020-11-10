// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://eval.dexteditor.com:10003/SMS.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (2010-05-11 ¿ÀÈÄ 4:56:27 - 1.33.2.5)
// ************************************************************************ //

unit SMS;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:long            - "http://www.w3.org/2001/XMLSchema"

  XMSMessage           = class;                 { "http://ws.baroservice.com/" }
  SMSMessage           = class;                 { "http://ws.baroservice.com/" }
  PagedSMSMessages     = class;                 { "http://ws.baroservice.com/" }
  Contact              = class;                 { "http://ws.baroservice.com/" }

     // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  XMSMessage = class(TRemotable)
  private
    FSenderNum: WideString;
    FReceiverName: WideString;
    FReceiverNum: WideString;
    FMessage: WideString;
    FRefKey: WideString;
  published
    property SenderNum: WideString read FSenderNum write FSenderNum;
    property ReceiverName: WideString read FReceiverName write FReceiverName;
    property ReceiverNum: WideString read FReceiverNum write FReceiverNum;
    property Message: WideString read FMessage write FMessage;
    property RefKey: WideString read FRefKey write FRefKey;
  end;

  ArrayOfXMSMessage = array of XMSMessage;      { "http://ws.baroservice.com/" }



  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  SMSMessage = class(TRemotable)
  private
    FSendKey: WideString;
    FID: WideString;
    FSenderNum: WideString;
    FReceiverName: WideString;
    FReceiverNum: WideString;
    FMessage: WideString;
    FSendDT: WideString;
    FRefKey: WideString;
    FSendState: Integer;
  published
    property SendKey: WideString read FSendKey write FSendKey;
    property ID: WideString read FID write FID;
    property SenderNum: WideString read FSenderNum write FSenderNum;
    property ReceiverName: WideString read FReceiverName write FReceiverName;
    property ReceiverNum: WideString read FReceiverNum write FReceiverNum;
    property Message: WideString read FMessage write FMessage;
    property SendDT: WideString read FSendDT write FSendDT;
    property RefKey: WideString read FRefKey write FRefKey;
    property SendState: Integer read FSendState write FSendState;
  end;

  ArrayOfString = array of WideString;          { "http://ws.baroservice.com/" }
  ArrayOfSMSMessage = array of SMSMessage;      { "http://ws.baroservice.com/" }


  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  PagedSMSMessages = class(TRemotable)
  private
    FCurrentPage: Integer;
    FMaxIndex: Integer;
    FCountPerPage: Integer;
    FMaxPageNum: Integer;
    FMessageList: ArrayOfSMSMessage;
  public
    destructor Destroy; override;
  published
    property CurrentPage: Integer read FCurrentPage write FCurrentPage;
    property MaxIndex: Integer read FMaxIndex write FMaxIndex;
    property CountPerPage: Integer read FCountPerPage write FCountPerPage;
    property MaxPageNum: Integer read FMaxPageNum write FMaxPageNum;
    property MessageList: ArrayOfSMSMessage read FMessageList write FMessageList;
  end;

  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  Contact = class(TRemotable)
  private
    FID: WideString;
    FContactName: WideString;
    FGrade: WideString;
    FEmail: WideString;
    FTEL: WideString;
    FHP: WideString;
  published
    property ID: WideString read FID write FID;
    property ContactName: WideString read FContactName write FContactName;
    property Grade: WideString read FGrade write FGrade;
    property Email: WideString read FEmail write FEmail;
    property TEL: WideString read FTEL write FTEL;
    property HP: WideString read FHP write FHP;
  end;

  ArrayOfContact = array of Contact;            { "http://ws.baroservice.com/" }

  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // soapAction: http://ws.baroservice.com/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : BaroService_SMSSoap
  // service   : BaroService_SMS
  // port      : BaroService_SMSSoap
  // URL       : http://eval.dexteditor.com:10003/SMS.asmx
  // ************************************************************************ //
  BaroService_SMSSoap = interface(IInvokable)
  ['{58F9AB04-D915-122E-384A-3562F386E285}']
    function  SendSMSMessage(const CERTKEY: WideString; const CorpNum: WideString; const SenderID: WideString; const FromNumber: WideString; const ToName: WideString; const ToNumber: WideString; const Contents: WideString; const SendDT: WideString; const RefKey: WideString): WideString; stdcall;
    function  SendMMSMessage(const CERTKEY: WideString; const CorpNum: WideString; const SenderID: WideString; const FromNumber: WideString; const ToName: WideString; const ToNumber: WideString; const TXTSubject: WideString; const TXTMESSAGE: WideString; const ImageFile: TByteDynArray; const SendDT: WideString;
                             const RefKey: WideString): WideString; stdcall;

    function  SendMessage(const CERTKEY: WideString; const CorpNum: WideString; const SenderID: WideString; const FromNumber: WideString; const ToName: WideString; const ToNumber: WideString; const Contents: WideString; const SendDT: WideString; const RefKey: WideString): WideString; stdcall;
    function  SendMessages(const CERTKEY: WideString; const CorpNum: WideString; const SenderID: WideString; const SendCount: Integer; const CutToSMS: Boolean; const Messages: ArrayOfXMSMessage; const SendDT: WideString): WideString; stdcall;
    function  GetMessagesByReceiptNum(const CERTKEY: WideString; const CorpNum: WideString; const ReceiptNum: WideString): ArrayOfSMSMessage; stdcall;
    function  GetSMSSendState(const CERTKEY: WideString; const CorpNum: WideString; const SendKey: WideString): Integer; stdcall;
    function  GetSMSHistoryURL(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const PWD: WideString): WideString; stdcall;
    function  GetSMSSendMessage(const CERTKEY: WideString; const CorpNum: WideString; const SendKey: WideString): SMSMessage; stdcall;
    function  GetSMSSendMessages(const CERTKEY: WideString; const CorpNum: WideString; const SendKeyList: ArrayOfString): ArrayOfSMSMessage; stdcall;
    function  GetSMSSendMessagesByRefKey(const CERTKEY: WideString; const CorpNum: WideString; const RefKey: WideString): ArrayOfSMSMessage; stdcall;
    function  GetSMSSendMessagesByPaging(const CERTKEY: WideString; const CorpNum: WideString; const FromDate: WideString; const ToDate: WideString; const CountPerPage: Integer; const CurrentPage: Integer): PagedSMSMessages; stdcall;

    function  CancelReservedSMSMessage(const CERTKEY: WideString; const CorpNum: WideString; const SendKey: WideString): Integer; stdcall;
    procedure Ping; stdcall;
    function  CheckCorpIsMember(const CERTKEY: WideString; const CorpNum: WideString; const CheckCorpNum: WideString): Integer; stdcall;
    function  GetCorpMemberContacts(const CERTKEY: WideString; const CorpNum: WideString; const CheckCorpNum: WideString): ArrayOfContact; stdcall;
    function  CheckChargeable(const CERTKEY: WideString; const CorpNum: WideString; const CType: Integer; const DocType: Integer): Integer; stdcall;
    function  GetBalanceCostAmount(const CERTKEY: WideString; const CorpNum: WideString): Int64; stdcall;
    function  GetLoginURL(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const PWD: WideString): WideString; stdcall;
    function  RegistCorp(const CERTKEY: WideString; const CorpNum: WideString; const CorpName: WideString; const CEOName: WideString; const BizType: WideString; const BizClass: WideString; const PostNum: WideString; const Addr1: WideString; const Addr2: WideString; const MemberName: WideString; 
                         const JuminNum: WideString; const ID: WideString; const PWD: WideString; const Grade: WideString; const TEL: WideString; const HP: WideString; const Email: WideString): Integer; stdcall;
    function  AddUserToCorp(const CERTKEY: WideString; const CorpNum: WideString; const MemberName: WideString; const JuminNum: WideString; const ID: WideString; const PWD: WideString; const Grade: WideString; const TEL: WideString; const HP: WideString; const Email: WideString
                            ): Integer; stdcall;
    function  UpdateCorpInfo(const CERTKEY: WideString; const CorpNum: WideString; const CorpName: WideString; const CEOName: WideString; const BizType: WideString; const BizClass: WideString; const PostNum: WideString; const Addr1: WideString; const Addr2: WideString): Integer; stdcall;
    function  UpdateUserInfo(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const MemberName: WideString; const JuminNum: WideString; const TEL: WideString; const HP: WideString; const Email: WideString; const Grade: WideString): Integer; stdcall;
    function  UpdateUserPWD(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const newPWD: WideString): Integer; stdcall;
    function  ChangeCorpManager(const CERTKEY: WideString; const CorpNum: WideString; const newManagerID: WideString): Integer; stdcall;
    function  GetErrString(const CERTKEY: WideString; const ErrCode: Integer): WideString; stdcall;
    function  GetChargeUnitCost(const CERTKEY: WideString; const CorpNum: WideString; const ChargeCode: Integer): Integer; stdcall;
    function  GetCashChargeURL(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const PWD: WideString): WideString; stdcall;
  end;

function GetBaroService_SMSSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): BaroService_SMSSoap;


implementation

function GetBaroService_SMSSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): BaroService_SMSSoap;
const
  defWSDL = 'http://ws.baroservice.com/SMS.asmx?WSDL';
  defURL  = 'http://ws.baroservice.com/SMS.asmx';
  defSvc  = 'BaroService_SMS';
  defPrt  = 'BaroService_SMSSoap';
var
  RIO: THTTPRIO;
begin
   Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as BaroService_SMSSoap);
    RIO.HTTPWebNode.UseUTF8InHeader := true;
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;

destructor PagedSMSMessages.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FMessageList)-1 do
    if Assigned(FMessageList[I]) then
      FMessageList[I].Free;
  SetLength(FMessageList, 0);
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(BaroService_SMSSoap), 'http://ws.baroservice.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(BaroService_SMSSoap), 'http://ws.baroservice.com/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(BaroService_SMSSoap),ioDocument);
  RemClassRegistry.RegisterXSClass(XMSMessage, 'http://ws.baroservice.com/', 'XMSMessage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfXMSMessage), 'http://ws.baroservice.com/', 'ArrayOfXMSMessage');
  RemClassRegistry.RegisterXSClass(SMSMessage, 'http://ws.baroservice.com/', 'SMSMessage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://ws.baroservice.com/', 'ArrayOfString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSMSMessage), 'http://ws.baroservice.com/', 'ArrayOfSMSMessage');
  RemClassRegistry.RegisterXSClass(PagedSMSMessages, 'http://ws.baroservice.com/', 'PagedSMSMessages');
  RemClassRegistry.RegisterXSClass(Contact, 'http://ws.baroservice.com/', 'Contact');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfContact), 'http://ws.baroservice.com/', 'ArrayOfContact');

end. 