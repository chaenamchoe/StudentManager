// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://testws.baroservice.com/cashbill.asmx?wsdl
// Encoding : utf-8
// Version  : 1.0
// (2015-10-22 ¿ÀÈÄ 1:22:20 - 1.33.2.5)
// ************************************************************************ //

unit BaroService_CASHBILL;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"
  // !:long            - "http://www.w3.org/2001/XMLSchema"

  CashBill             = class;                 { "http://ws.baroservice.com/" }
  CashBillState        = class;                 { "http://ws.baroservice.com/" }
  CashBillLog          = class;                 { "http://ws.baroservice.com/" }
  SimpleCashBill       = class;                 { "http://ws.baroservice.com/" }
  PagedCashBill        = class;                 { "http://ws.baroservice.com/" }
  LinkedDoc            = class;                 { "http://ws.baroservice.com/" }
  Contact              = class;                 { "http://ws.baroservice.com/" }



  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  CashBill = class(TRemotable)
  private
    FInvoiceKey: WideString;
    FMgtKey: WideString;
    FNTSConfirmNum: WideString;
    FFranchiseCorpNum: WideString;
    FFranchiseMemberID: WideString;
    FFranchiseCorpName: WideString;
    FFranchiseCEOName: WideString;
    FFranchiseAddr: WideString;
    FFranchiseTel: WideString;
    FIdentityNum: WideString;
    FItemName: WideString;
    FHP: WideString;
    FFax: WideString;
    FEmail: WideString;
    FTradeDate: WideString;
    FTradeType: WideString;
    FTradeUsage: WideString;
    FTradeMethod: WideString;
    FAmount: WideString;
    FTax: WideString;
    FServiceCharge: WideString;
    FCancelType: WideString;
    FCancelNTSConfirmNum: WideString;
    FCancelNTSConfirmDate: WideString;
  published
    property InvoiceKey: WideString read FInvoiceKey write FInvoiceKey;
    property MgtKey: WideString read FMgtKey write FMgtKey;
    property NTSConfirmNum: WideString read FNTSConfirmNum write FNTSConfirmNum;
    property FranchiseCorpNum: WideString read FFranchiseCorpNum write FFranchiseCorpNum;
    property FranchiseMemberID: WideString read FFranchiseMemberID write FFranchiseMemberID;
    property FranchiseCorpName: WideString read FFranchiseCorpName write FFranchiseCorpName;
    property FranchiseCEOName: WideString read FFranchiseCEOName write FFranchiseCEOName;
    property FranchiseAddr: WideString read FFranchiseAddr write FFranchiseAddr;
    property FranchiseTel: WideString read FFranchiseTel write FFranchiseTel;
    property IdentityNum: WideString read FIdentityNum write FIdentityNum;
    property ItemName: WideString read FItemName write FItemName;
    property HP: WideString read FHP write FHP;
    property Fax: WideString read FFax write FFax;
    property Email: WideString read FEmail write FEmail;
    property TradeDate: WideString read FTradeDate write FTradeDate;
    property TradeType: WideString read FTradeType write FTradeType;
    property TradeUsage: WideString read FTradeUsage write FTradeUsage;
    property TradeMethod: WideString read FTradeMethod write FTradeMethod;
    property Amount: WideString read FAmount write FAmount;
    property Tax: WideString read FTax write FTax;
    property ServiceCharge: WideString read FServiceCharge write FServiceCharge;
    property CancelType: WideString read FCancelType write FCancelType;
    property CancelNTSConfirmNum: WideString read FCancelNTSConfirmNum write FCancelNTSConfirmNum;
    property CancelNTSConfirmDate: WideString read FCancelNTSConfirmDate write FCancelNTSConfirmDate;
  end;



  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  CashBillState = class(TRemotable)
  private
    FMgtKey: WideString;
    FInvoiceKey: WideString;
    FBarobillState: Integer;
    FTradeDate: WideString;
    FRegistDT: WideString;
    FIssueDT: WideString;
    FNTSSendDT: WideString;
    FNTSConfirmDT: WideString;
    FNTSConfirmMessage: WideString;
    FNTSConfirmNum: WideString;
  published
    property MgtKey: WideString read FMgtKey write FMgtKey;
    property InvoiceKey: WideString read FInvoiceKey write FInvoiceKey;
    property BarobillState: Integer read FBarobillState write FBarobillState;
    property TradeDate: WideString read FTradeDate write FTradeDate;
    property RegistDT: WideString read FRegistDT write FRegistDT;
    property IssueDT: WideString read FIssueDT write FIssueDT;
    property NTSSendDT: WideString read FNTSSendDT write FNTSSendDT;
    property NTSConfirmDT: WideString read FNTSConfirmDT write FNTSConfirmDT;
    property NTSConfirmMessage: WideString read FNTSConfirmMessage write FNTSConfirmMessage;
    property NTSConfirmNum: WideString read FNTSConfirmNum write FNTSConfirmNum;
  end;

  ArrayOfString = array of WideString;          { "http://ws.baroservice.com/" }
  ArrayOfCashBillState = array of CashBillState;   { "http://ws.baroservice.com/" }


  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  CashBillLog = class(TRemotable)
  private
    FSeq: Integer;
    FLogType: WideString;
    FLogDateTime: WideString;
    FMemo: WideString;
  published
    property Seq: Integer read FSeq write FSeq;
    property LogType: WideString read FLogType write FLogType;
    property LogDateTime: WideString read FLogDateTime write FLogDateTime;
    property Memo: WideString read FMemo write FMemo;
  end;

  ArrayOfCashBillLog = array of CashBillLog;    { "http://ws.baroservice.com/" }


  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  SimpleCashBill = class(TRemotable)
  private
    FNTSConfirmNum: WideString;
    FTradeDate: WideString;
    FTradeType: WideString;
    FFranchiseCorpNum: WideString;
    FFranchiseCorpName: WideString;
    FIdentityNum: WideString;
    FAmount: WideString;
    FTax: WideString;
    FServiceCharge: WideString;
  published
    property NTSConfirmNum: WideString read FNTSConfirmNum write FNTSConfirmNum;
    property TradeDate: WideString read FTradeDate write FTradeDate;
    property TradeType: WideString read FTradeType write FTradeType;
    property FranchiseCorpNum: WideString read FFranchiseCorpNum write FFranchiseCorpNum;
    property FranchiseCorpName: WideString read FFranchiseCorpName write FFranchiseCorpName;
    property IdentityNum: WideString read FIdentityNum write FIdentityNum;
    property Amount: WideString read FAmount write FAmount;
    property Tax: WideString read FTax write FTax;
    property ServiceCharge: WideString read FServiceCharge write FServiceCharge;
  end;

  ArrayOfSimpleCashBill = array of SimpleCashBill;   { "http://ws.baroservice.com/" }


  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  PagedCashBill = class(TRemotable)
  private
    FCurrentPage: Integer;
    FMaxIndex: Integer;
    FCountPerPage: Integer;
    FMaxPageNum: Integer;
    FSimpleCashBillList: ArrayOfSimpleCashBill;
  public
    destructor Destroy; override;
  published
    property CurrentPage: Integer read FCurrentPage write FCurrentPage;
    property MaxIndex: Integer read FMaxIndex write FMaxIndex;
    property CountPerPage: Integer read FCountPerPage write FCountPerPage;
    property MaxPageNum: Integer read FMaxPageNum write FMaxPageNum;
    property SimpleCashBillList: ArrayOfSimpleCashBill read FSimpleCashBillList write FSimpleCashBillList;
  end;



  // ************************************************************************ //
  // Namespace : http://ws.baroservice.com/
  // ************************************************************************ //
  LinkedDoc = class(TRemotable)
  private
    FDocType: Integer;
    FInvoiceKey: WideString;
    FMgtKey: WideString;
  published
    property DocType: Integer read FDocType write FDocType;
    property InvoiceKey: WideString read FInvoiceKey write FInvoiceKey;
    property MgtKey: WideString read FMgtKey write FMgtKey;
  end;

  ArrayOfLinkedDoc = array of LinkedDoc;        { "http://ws.baroservice.com/" }


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
  // binding   : BaroService_CASHBILLSoap
  // service   : BaroService_CASHBILL
  // port      : BaroService_CASHBILLSoap
  // URL       : http://testws.baroservice.com/cashbill.asmx
  // ************************************************************************ //
  BaroService_CASHBILLSoap = interface(IInvokable)
  ['{0AF0A6EB-76C3-BA96-0C56-69DDB1FE2B13}']
    function  CheckMgtKeyIsExists(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString): Integer; stdcall;
    function  CheckIsValidCashBill(const CERTKEY: WideString; const CorpNum: WideString; const Invoice: CashBill): Integer; stdcall;
    function  RegistCashBill(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const Invoice: CashBill): Integer; stdcall;
    function  UpdateCashBill(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const Invoice: CashBill): Integer; stdcall;
    function  DeleteCashBill(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString): Integer; stdcall;
    function  IssueCashBill(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString; const SMSSendYN: Boolean; const MailTitle: WideString): Integer; stdcall;
    function  CancelCashBill(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString; const CancelType: WideString; const SMSSendYN: Boolean; const MailTitle: WideString): Integer; stdcall;
    function  CancelCashBillBeforeNTSSend(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString): Integer; stdcall;
    function  GetCashBill(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString): CashBill; stdcall;
    function  GetCashBillState(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString): CashBillState; stdcall;
    function  GetCashBillStates(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKeyList: ArrayOfString): ArrayOfCashBillState; stdcall;
    function  GetCashBillLog(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString): ArrayOfCashBillLog; stdcall;
    function  SendEmail(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString; const ToEmailAddress: WideString): Integer; stdcall;
    function  SendSMS(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString; const FromNumber: WideString; const ToNumber: WideString; const Contents: WideString): Integer; stdcall;
    function  SendFax(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const MgtKey: WideString; const FromFaxNumber: WideString; const ToFaxNumber: WideString): Integer; stdcall;
    function  GetBaroBillURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString; const TOGO: WideString): WideString; stdcall;
    function  GetCashBillPopUpURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString; const MgtKey: WideString): WideString; stdcall;
    function  GetCashBillPrintURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString; const MgtKey: WideString): WideString; stdcall;
    function  GetCashBillsPrintURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString; const MgtKeyList: ArrayOfString): WideString; stdcall;
    function  GetCashBillScrapRequestURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString): WideString; stdcall;
    function  GetCashBillSalesList(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const BaseDate: WideString; const CountPerPage: Integer; const CurrentPage: Integer): PagedCashBill; stdcall;
    function  GetCashBillPurchaseList(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const BaseDate: WideString; const CountPerPage: Integer; const CurrentPage: Integer): PagedCashBill; stdcall;
    function  MakeDocLinkage(const CERTKEY: WideString; const CorpNum: WideString; const FromDocType: Integer; const FromMgtKey: WideString; const ToDocType: Integer; const ToMgtKey: WideString): Integer; stdcall;
    function  RemoveDocLinkage(const CERTKEY: WideString; const CorpNum: WideString; const FromDocType: Integer; const FromMgtKey: WideString; const ToDocType: Integer; const ToMgtKey: WideString): Integer; stdcall;
    function  GetLinkedDocs(const CERTKEY: WideString; const CorpNum: WideString; const DocType: Integer; const MgtKey: WideString): ArrayOfLinkedDoc; stdcall;
    function  GetJicInRegistURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString): WideString; stdcall;
    function  GetBusinessLicenseRegistURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString): WideString; stdcall;
    function  GetBankBookRegistURL(const CERTKEY: WideString; const CorpNum: WideString; const UserID: WideString; const PWD: WideString): WideString; stdcall;
    function  CheckCorpIsMember(const CERTKEY: WideString; const CorpNum: WideString; const CheckCorpNum: WideString): Integer; stdcall;
    function  RegistCorp(const CERTKEY: WideString; const CorpNum: WideString; const CorpName: WideString; const CEOName: WideString; const BizType: WideString; const BizClass: WideString; const PostNum: WideString; const Addr1: WideString; const Addr2: WideString; const MemberName: WideString; 
                         const JuminNum: WideString; const ID: WideString; const PWD: WideString; const Grade: WideString; const TEL: WideString; const HP: WideString; const Email: WideString): Integer; stdcall;
    function  AddUserToCorp(const CERTKEY: WideString; const CorpNum: WideString; const MemberName: WideString; const JuminNum: WideString; const ID: WideString; const PWD: WideString; const Grade: WideString; const TEL: WideString; const HP: WideString; const Email: WideString
                            ): Integer; stdcall;
    function  UpdateCorpInfo(const CERTKEY: WideString; const CorpNum: WideString; const CorpName: WideString; const CEOName: WideString; const BizType: WideString; const BizClass: WideString; const PostNum: WideString; const Addr1: WideString; const Addr2: WideString): Integer; stdcall;
    function  UpdateUserInfo(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const MemberName: WideString; const JuminNum: WideString; const TEL: WideString; const HP: WideString; const Email: WideString; const Grade: WideString): Integer; stdcall;
    function  UpdateUserPWD(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const newPWD: WideString): Integer; stdcall;
    function  ChangeCorpManager(const CERTKEY: WideString; const CorpNum: WideString; const newManagerID: WideString): Integer; stdcall;
    function  GetCorpMemberContacts(const CERTKEY: WideString; const CorpNum: WideString; const CheckCorpNum: WideString): ArrayOfContact; stdcall;
    function  GetBalanceCostAmount(const CERTKEY: WideString; const CorpNum: WideString): Int64; stdcall;
    function  GetBalanceCostAmountOfInterOP(const CERTKEY: WideString): Int64; stdcall;
    function  CheckChargeable(const CERTKEY: WideString; const CorpNum: WideString; const CType: Integer; const DocType: Integer): Integer; stdcall;
    function  GetChargeUnitCost(const CERTKEY: WideString; const CorpNum: WideString; const ChargeCode: Integer): Integer; stdcall;
    function  GetCertificateRegistDate(const CERTKEY: WideString; const CorpNum: WideString): WideString; stdcall;
    function  GetCertificateExpireDate(const CERTKEY: WideString; const CorpNum: WideString): WideString; stdcall;
    function  CheckCERTIsValid(const CERTKEY: WideString; const CorpNum: WideString): Integer; stdcall;
    function  GetCertificateRegistURL(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const PWD: WideString): WideString; stdcall;
    function  GetLoginURL(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const PWD: WideString): WideString; stdcall;
    function  GetCashChargeURL(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const PWD: WideString): WideString; stdcall;
    function  GetSMSFromNumberURL(const CERTKEY: WideString; const CorpNum: WideString; const ID: WideString; const PWD: WideString): WideString; stdcall;
    function  RegistSMSFromNumber(const CERTKEY: WideString; const CorpNum: WideString; const FromNumber: WideString): Integer; stdcall;
    function  CheckSMSFromNumber(const CERTKEY: WideString; const CorpNum: WideString; const FromNumber: WideString): Integer; stdcall;
    function  GetErrString(const CERTKEY: WideString; const ErrCode: Integer): WideString; stdcall;
    procedure Ping; stdcall;
  end;

function GetBaroService_CASHBILLSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): BaroService_CASHBILLSoap;


implementation

function GetBaroService_CASHBILLSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): BaroService_CASHBILLSoap;
const
  defWSDL = 'http://ws.baroservice.com/cashbill.asmx?wsdl';
  defURL  = 'http://ws.baroservice.com/cashbill.asmx';
  defSvc  = 'BaroService_CASHBILL';
  defPrt  = 'BaroService_CASHBILLSoap';
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
    Result := (RIO as BaroService_CASHBILLSoap);
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


destructor PagedCashBill.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FSimpleCashBillList)-1 do
    if Assigned(FSimpleCashBillList[I]) then
      FSimpleCashBillList[I].Free;
  SetLength(FSimpleCashBillList, 0);
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(BaroService_CASHBILLSoap), 'http://ws.baroservice.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(BaroService_CASHBILLSoap), 'http://ws.baroservice.com/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(BaroService_CASHBILLSoap), ioDocument);
  RemClassRegistry.RegisterXSClass(CashBill, 'http://ws.baroservice.com/', 'CashBill');
  RemClassRegistry.RegisterXSClass(CashBillState, 'http://ws.baroservice.com/', 'CashBillState');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://ws.baroservice.com/', 'ArrayOfString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCashBillState), 'http://ws.baroservice.com/', 'ArrayOfCashBillState');
  RemClassRegistry.RegisterXSClass(CashBillLog, 'http://ws.baroservice.com/', 'CashBillLog');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCashBillLog), 'http://ws.baroservice.com/', 'ArrayOfCashBillLog');
  RemClassRegistry.RegisterXSClass(SimpleCashBill, 'http://ws.baroservice.com/', 'SimpleCashBill');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSimpleCashBill), 'http://ws.baroservice.com/', 'ArrayOfSimpleCashBill');
  RemClassRegistry.RegisterXSClass(PagedCashBill, 'http://ws.baroservice.com/', 'PagedCashBill');
  RemClassRegistry.RegisterXSClass(LinkedDoc, 'http://ws.baroservice.com/', 'LinkedDoc');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfLinkedDoc), 'http://ws.baroservice.com/', 'ArrayOfLinkedDoc');
  RemClassRegistry.RegisterXSClass(Contact, 'http://ws.baroservice.com/', 'Contact');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfContact), 'http://ws.baroservice.com/', 'ArrayOfContact');

end. 