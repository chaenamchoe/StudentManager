unit UfmCashBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxImageComboBox, cxTextEdit, cxMaskEdit, cxSpinEdit, StdCtrls,
  cxButtons, ExtCtrls, DateUtils, MemDS, DBAccess, Uni, ComCtrls,
  cxCurrencyEdit, cxDBLookupComboBox, BaroService_CASHBILL, SHDocVw, Gauges,
  cxCheckBox;

type
  TfmCashBill = class(TForm)
    pnl1: TPanel;
    lbl9: TLabel;
    btnRetrieve: TcxButton;
    edtSearch: TEdit;
    btnSearch: TcxButton;
    btnSearchCancel: TcxButton;
    btnCashIssue: TcxButton;
    gridCashBill: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CASHBILL_DEL: TUniStoredProc;
    gridCashBillID: TcxGridDBColumn;
    gridCashBillCASHBILL_NO: TcxGridDBColumn;
    gridCashBillC_DATE: TcxGridDBColumn;
    gridCashBillITEM_NAME: TcxGridDBColumn;
    gridCashBillAMOUNT: TcxGridDBColumn;
    gridCashBillTAX: TcxGridDBColumn;
    gridCashBillSERVICE_CHARGE: TcxGridDBColumn;
    gridCashBillDATA_STATUS: TcxGridDBColumn;
    gridCashBillMEMBER_ID: TcxGridDBColumn;
    gridCashBillCASH_KIND: TcxGridDBColumn;
    gridCashBillREF_UID: TcxGridDBColumn;
    lbl3: TLabel;
    dtp_sdate: TDateTimePicker;
    dtp_edate: TDateTimePicker;
    btnCashbillDel: TcxButton;
    btnViewCash: TcxButton;
    CASHBILL_STATUS_UPD: TUniStoredProc;
    btnGotoWeb: TcxButton;
    btnDelAll: TcxButton;
    CASHBILL_DELALL: TUniStoredProc;
    UPD_CASHBILL_STATUS: TUniQuery;
    btnCheckStatus: TcxButton;
    PanelMSG: TPanel;
    Gauge1: TGauge;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    gridCashBillREGIST_DT: TcxGridDBColumn;
    gridCashBillISSUE_DT: TcxGridDBColumn;
    gridCashBillSEND_DT: TcxGridDBColumn;
    gridCashBillCONFIRM_DT: TcxGridDBColumn;
    gridCashBillCONFIRM_NUM: TcxGridDBColumn;
    chkAutoUpdate: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnCashbillDelClick(Sender: TObject);
    procedure btnViewCashClick(Sender: TObject);
    procedure btnCashIssueClick(Sender: TObject);
    procedure btnGotoWebClick(Sender: TObject);
    procedure btnDelAllClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSearchCancelClick(Sender: TObject);
    procedure dtp_sdateCloseUp(Sender: TObject);
    procedure dtp_edateCloseUp(Sender: TObject);
    procedure btnCheckStatusClick(Sender: TObject);
    procedure gridCashBillCASH_KINDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    function RegistCashBillService(MgtKey, CashBillNo, ItemName: string;
      Amount: Double): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCashBill: TfmCashBill;

implementation

uses Udm, GlobalVar;

{$R *.dfm}


procedure TfmCashBill.btnCashbillDelClick(Sender: TObject);
var
  Result : Integer;
  rno, cnt, i : Integer;
  CERTKEY : WideString;			//인증키
  CorpNum : WideString;			//연계사업자 사업자번호 ('-' 제외, 10자리)
  ID : WideString;          //연계사업자 아이디
  PWD : WideString;         //연계사업자 비밀번호
  tbMgtKey, ref_id : string;
begin
  CERTKEY := dm.SMS_USER_SELCERTKEY.Value;
  CorpNum := dm.SMS_USER_SELCOPRNUM.Value;
  ID := dm.SMS_USER_SELID.Value;
  with gridCashBill do begin
    cnt := Controller.SelectedRecordCount;
    for i := 0 to cnt - 1 do begin
      rno := Controller.SelectedRecords[i].RecordIndex;
      tbMgtKey := DataController.GetValue(rno, gridCashBillREF_UID.Index);
      ref_id := gridCashBill.DataController.GetDisplayText(rno, gridCashBillREF_UID.Index);
      try
        Result := GetBaroService_CASHBILLSoap(true).DeleteCashBill(CERTKEY, CorpNum, ID, tbMgtKey);
        if Result > 0 then begin
          CASHBILL_STATUS_UPD.ParamByName('ID').Value := gridCashBillID.EditValue;
          CASHBILL_STATUS_UPD.ParamByName('DATA_STATUS').Value := 4;
          CASHBILL_STATUS_UPD.ExecProc;

          UPD_CASHBILL_STATUS.ParamByName('id').Value := ref_id;
          UPD_CASHBILL_STATUS.ParamByName('status').Value := 4;
          UPD_CASHBILL_STATUS.ExecSQL;
        end;
      except
        ShowMessage('SOAP통신 오류.' + #13#13 + '1. 연동서비스 참조URL을 확인하십시오.' + #13 + '2. 호출하는 연동함수의 파라메터를 확인하십시오.');
        exit;
      end;
    end;
  end;
  gridCashBill.DataController.SaveBookmark;
  dm.ds_CASHBILL_SEL.DataSet.Refresh;
  gridCashBill.DataController.GotoBookmark;

  ShowMessage('삭제완료!');
end;

procedure TfmCashBill.btnCashIssueClick(Sender: TObject);
var
  i, cnt, sidx, cash_kind : Integer;
  tbMgtKey,ItemName,CashBillNo, ref_id : string;
  Amount : Double;
begin
  dm.ds_CASHBILL_SEL.DataSet.DisableControls;
  cnt := gridCashBill.Controller.SelectedRecordCount;
  for i := 0 to cnt - 1 do begin
    sidx := gridCashBill.Controller.SelectedRecords[i].RecordIndex;
    CashBillNo := gridCashBill.DataController.GetDisplayText(sidx, gridCashBillCASHBILL_NO.Index);
    tbMgtKey := gridCashBill.DataController.GetDisplayText(sidx, gridCashBillREF_UID.Index);
    Amount := gridCashBill.DataController.GetValue(sidx, gridCashBillAMOUNT.Index);
    ref_id := gridCashBill.DataController.GetDisplayText(sidx, gridCashBillREF_UID.Index);
    cash_kind := gridCashBill.DataController.GetValue(sidx, gridCashBillCASH_KIND.Index);
    case cash_kind of
      1: begin   //승인거래
        if RegistCashBillService(tbMgtKey, CashBillNo, ItemName, Amount) = 1 then begin
          GetBaroService_CASHBILLSoap(true).IssueCashBill(dm.SMS_USER_SELCERTKEY.Value,
                                                          dm.SMS_USER_SELCOPRNUM.Value,
                                                          dm.SMS_USER_SELID.Value,
                                                          tbMgtKey, False, '');
        end;
      end;
      2: begin  //취소거래
        dm.RegistCashbillCancel(tbMgtKey);
      end;
      3: begin  //부분취소거래
        dm.RegistCashbillCancelPartial(tbMgtKey, Amount);
      end;
    end;
  end;
  dm.ds_CASHBILL_SEL.DataSet.EnableControls;
  btnCheckStatus.Click;
end;

procedure TfmCashBill.btnCheckStatusClick(Sender: TObject);
var
  BS : BaroService_CASHBILLSoap;
  Result : CashBillState;

  CERTKEY : WideString;			//인증키
  CorpNum : WideString;			//연계사업자 사업자번호 ('-' 제외, 10자리)
  UserID : WideString;          //연계사업자 아이디
  SMSSendYN : Bool;         //발행 알림문자 전송여부 (발행비용과 별도로 과금됨)
  MailTitle : WideString;   //발행 알림메일의 제목 (공백의 경우 바로빌 기본값으로 전송됨.)
  i, cnt, old_status : Integer;
  tbMgtKey,ItemName,CashBillNo, mname, ref_id : string;
  Amount : Double;
begin
  BS := GetBaroService_CASHBILLSoap(true);
  CERTKEY := dm.SMS_USER_SELCERTKEY.Value;
  CorpNum := dm.SMS_USER_SELCOPRNUM.Value;
  UserID := dm.SMS_USER_SELID.Value;
  SMSSendYN := False;
  MailTitle := '';
  dm.CASHBILL_SEL.DisableControls;
  cnt := dm.CASHBILL_SEL.RecordCount;
  Gauge1.MaxValue := cnt;
  PanelMSG.Visible := True;
  dm.CASHBILL_SEL.First;
  for i := 0 to cnt - 1 do begin
    tbMgtKey := dm.CASHBILL_SELREF_UID.Value;
    old_status := dm.CASHBILL_SELDATA_STATUS.Value;
    Result := BS.GetCashBillState(CERTKEY, CorpNum, UserID, tbMgtKey);
    if old_status <> Result.BarobillState then begin
      CASHBILL_STATUS_UPD.ParamByName('ID').Value := dm.CASHBILL_SELID.Value;
      CASHBILL_STATUS_UPD.ParamByName('DATA_STATUS').Value := Result.BarobillState;
      CASHBILL_STATUS_UPD.ParamByName('REGIST_DT').Value := Result.RegistDT;
      CASHBILL_STATUS_UPD.ParamByName('ISSUE_DT').Value := Result.IssueDT;
      CASHBILL_STATUS_UPD.ParamByName('SEND_DT').Value := Result.NTSSendDT;
      CASHBILL_STATUS_UPD.ParamByName('CONFIRM_DT').Value := Result.NTSConfirmDT;
      CASHBILL_STATUS_UPD.ParamByName('CONFIRM_NUM').Value := Result.NTSConfirmNum;
      CASHBILL_STATUS_UPD.ExecProc;
//      ShowMessage('save');
    end;
    Gauge1.Progress := i + 1;
    PanelMSG.Refresh;
    dm.CASHBILL_SEL.Next;
  end;
  dm.CASHBILL_SEL.EnableControls;
  PanelMSG.Visible := False;
  dm.ds_CASHBILL_SEL.DataSet.Refresh;
  gridCashBill.DataController.ClearSelection;
  gridCashBill.DataController.GotoFirst;
  cxGrid1.SetFocus;
end;

function TfmCashBill.RegistCashBillService(MgtKey, CashBillNo, ItemName : string; Amount:Double) : Integer;
var
  CERTKEY : WideString;					//인증키
  clsCashBill : CashBill;				//현금영수증 클래스
begin
  CERTKEY := dm.SMS_USER_SELCERTKEY.Value;
  clsCashBill := CashBill.Create;
  clsCashBill.MgtKey := MgtKey;						//자체문서관리번호
	//가맹점 정보
	clsCashBill.FranchiseCorpNum := dm.SMS_USER_SELCOPRNUM.Value;							//가맹점 사업자번호
	clsCashBill.FranchiseMemberID := dm.SMS_USER_SELID.Value;						//가맹점 바로빌 회원 아이디
	clsCashBill.FranchiseCorpName := dm.SMS_USER_SELCORPNAME.Value;	//가맹점 회사명
	clsCashBill.FranchiseCEOName := dm.SMS_USER_SELCEONAME.Value;				//가맹점 대표자명
	clsCashBill.FranchiseAddr := dm.SMS_USER_SELADDR1.Value + ' ' + dm.SMS_USER_SELADDR2.Value;		//가맹점 주소
	clsCashBill.FranchiseTel := dm.SMS_USER_SELTEL.Value;			//가맹점 전화번호
	//소비자 정보
	clsCashBill.IdentityNum := StringReplace(CashBillNo, '-', '', [rfReplaceAll, rfIgnoreCase]); 	//소비자 신분확인번호 (';-'; 를 제외한 주민등록번호/사업자번호/휴대폰번호/카드번호 중 택1)
	clsCashBill.HP := '';														//소비자 휴대폰번호 (문자 전송시 활용)
	clsCashBill.Fax := '';													//소비자 팩스번호 (팩스 전송시 활용)
	clsCashBill.Email := '';												//소비자 이메일 (이메일 전송시 활용)
	//현금영수증 기본정보
	clsCashBill.TradeType := 'N';										//거래구분 : N-승인거래, D-취소거래
	clsCashBill.TradeUsage := '1';									//거래용도 : 1-소득공제용, 2-지출증빙용 (신분확인번호가 사업자번호인 경우 지출증빙용으로)
	clsCashBill.TradeMethod := '5';									//거래방법 : 1-카드, 3-주민등록번호, 4-사업자번호, 5-휴대폰번호
	clsCashBill.CancelType := '';										//취소사유 : 1-거래취소, 2-오류발행, 3-기타 (거래구분이 취소거래일 경우에만 작성)
	clsCashBill.CancelNTSConfirmNum := '';					//취소할 원본 현금영수증의 국세청 승인번호
	clsCashBill.CancelNTSConfirmDate := '';					//취소할 원본 현금영수증의 국세청 승인일자 (YYYYMMDD)
	clsCashBill.TradeDate := '';										//거래일자 (YYYYMMDD), 공백입력 시 Today로 작성됨.
	clsCashBill.ItemName := ItemName;											//품목명
	clsCashBill.Amount := FloatToStr(AMOUNT);									//공급가액
	clsCashBill.Tax := '0';											//부가세
	clsCashBill.ServiceCharge := '0';							//봉사료

  Result := GetBaroService_CASHBILLSoap(true).RegistCashBill(CERTKEY, clsCashBill.FranchiseCorpNum, clsCashBill.FranchiseMemberID, clsCashBill);
end;

procedure TfmCashBill.btnDelAllClick(Sender: TObject);
var
  ref_id : string;
  i, cnt, sel_id, rec_id : Integer;
begin
  if Application.MessageBox('조회한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    cnt := gridCashBill.Controller.SelectedRecordCount;
    for i := 0 to cnt - 1 do begin
      with gridCashBill do begin
        sel_id := Controller.SelectedRecords[i].RecordIndex;
        rec_id := DataController.GetValue(sel_id, GetColumnByFieldName('ID').Index);
        ref_id := DataController.GetValue(sel_id, GetColumnByFieldName('REF_UID').Index);

        UPD_CASHBILL_STATUS.ParamByName('id').Value := ref_id;
        UPD_CASHBILL_STATUS.ParamByName('status').Value := 0;
        UPD_CASHBILL_STATUS.ExecSQL;

        CASHBILL_DEL.ParamByName('ID').Value := rec_id;
        CASHBILL_DEL.ExecProc;
      end;
    end;
    dm.ds_CASHBILL_SEL.DataSet.Refresh;
  end;
end;

procedure TfmCashBill.btnRetrieveClick(Sender: TObject);
begin
  dm.CASHBILL_SEL.ParamByName('SDATE').Value := dtp_sdate.Date;
  dm.CASHBILL_SEL.ParamByName('EDATE').Value := dtp_edate.Date;
  dm.CASHBILL_SEL.Active := True;
  dm.ds_CASHBILL_SEL.DataSet.Refresh;
  cxGrid1.Refresh;
  if chkAutoUpdate.Checked = True then
    btnCheckStatus.Click;

end;

procedure TfmCashBill.btnSearchCancelClick(Sender: TObject);
begin
  edtSearch.Text := '';
  dm.CASHBILL_SEL.Filter := '';
  dm.CASHBILL_SEL.Filtered := True;
  edtSearch.SetFocus;
end;

procedure TfmCashBill.btnSearchClick(Sender: TObject);
var
  filter_str : string;
begin
  if Length(edtSearch.Text) > 0 then begin
    filter_str := 'member_id like "%' + edtSearch.Text + '%"';
  end else begin
    filter_str := '';
  end;
  dm.CASHBILL_SEL.Filter := filter_str;
  dm.CASHBILL_SEL.Filtered := True;
end;

procedure TfmCashBill.btnViewCashClick(Sender: TObject);
var
  CERTKEY : WideString;			//인증키
  CorpNum : WideString;			//연계사업자 사업자번호 ('-' 제외, 10자리)
  ID : WideString;          //연계사업자 아이디
  PWD : WideString;         //연계사업자 비밀번호
  tbMgtKey : string;
  Options : OleVariant;
  WebB : TWebBrowser;
  Result : WideString;
begin
  CERTKEY := dm.SMS_USER_SELCERTKEY.Value;
  CorpNum := dm.SMS_USER_SELCOPRNUM.Value;
  ID := dm.SMS_USER_SELID.Value;
  PWD := dm.SMS_USER_SELPWD.Value;
  tbMgtKey := gridCashBillREF_UID.EditValue;

  try
    Result := GetBaroService_CASHBILLSoap(true).GetCashBillPopUpURL(CERTKEY, CorpNum, ID, PWD, tbMgtKey);
    if Result[1] = '-' then begin
      ShowMessage('오류코드: ' + Result + #13#10 +
        '해당 건의 자료를 조회할 수 없습니다.' + #13#10 +
        '오류코드를 개발사에 문의하세요.');
    end else begin
      WebB := TWebBrowser.Create(self);
      Options := navOpenInNewWindow;
      WebB.Navigate(Result,Options);
    end;
  except
    ShowMessage('SOAP통신 오류.' + #13#13 + '1. 연동서비스 참조URL을 확인하십시오.' + #13 + '2. 호출하는 연동함수의 파라메터를 확인하십시오.');
    exit;
  end;
end;

procedure TfmCashBill.dtp_edateCloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmCashBill.dtp_sdateCloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmCashBill.btnGotoWebClick(Sender: TObject);
var
  Result : WideString;

  CERTKEY : WideString;			//인증키
  CorpNum : WideString;			//연계사업자 사업자번호 ('-' 제외, 10자리)
  ID : WideString;          //연계사업자 아이디
  PWD : WideString;         //연계사업자 비밀번호
  tbMgtKey, TOGO : string;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  CERTKEY := dm.SMS_USER_SELCERTKEY.Value;
  CorpNum := dm.SMS_USER_SELCOPRNUM.Value;
  ID := dm.SMS_USER_SELID.Value;
  PWD := dm.SMS_USER_SELPWD.Value;
  TOGO := 'CASHBILL_INTEROPBOX';
  try
    Result := GetBaroService_CASHBILLSoap(true).GetBaroBillURL(CERTKEY, CorpNum, ID, PWD, TOGO);
    if Copy(Result, 1, 1) <> '-' then begin
      WebB := TWebBrowser.Create(self);
      Options := navOpenInNewWindow;
      WebB.Navigate(Result,Options);
    end else begin
      ShowMessage('오류코드: ' + Result + #13#10 +
        '해당 건의 자료를 조회할 수 없습니다.' + #13#10 +
        '오류코드를 개발사에 문의하세요.');
    end;
  except
    ShowMessage('SOAP통신 오류.' + #13#13 + '1. 연동서비스 참조URL을 확인하십시오.' + #13 + '2. 호출하는 연동함수의 파라메터를 확인하십시오.');
    exit;
  end;
end;

procedure TfmCashBill.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCashBill.FormShow(Sender: TObject);
begin
  dtp_sdate.Date := StartOfTheMonth(Date);
  dtp_edate.Date := Date;

  dm.SMS_USER_SEL.Active := True;
  dm.ds_SMS_USER_SEL.DataSet.Refresh;

  btnRetrieve.Click;
end;

procedure TfmCashBill.gridCashBillCASH_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  case AViewInfo.Value of
    2: begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color := clWhite;
    end;
    3: begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
    end;
  end;
end;

initialization RegisterClasses([TfmCashBill]);

end.
