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
  CERTKEY : WideString;			//����Ű
  CorpNum : WideString;			//�������� ����ڹ�ȣ ('-' ����, 10�ڸ�)
  ID : WideString;          //�������� ���̵�
  PWD : WideString;         //�������� ��й�ȣ
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
        ShowMessage('SOAP��� ����.' + #13#13 + '1. �������� ����URL�� Ȯ���Ͻʽÿ�.' + #13 + '2. ȣ���ϴ� �����Լ��� �Ķ���͸� Ȯ���Ͻʽÿ�.');
        exit;
      end;
    end;
  end;
  gridCashBill.DataController.SaveBookmark;
  dm.ds_CASHBILL_SEL.DataSet.Refresh;
  gridCashBill.DataController.GotoBookmark;

  ShowMessage('�����Ϸ�!');
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
      1: begin   //���ΰŷ�
        if RegistCashBillService(tbMgtKey, CashBillNo, ItemName, Amount) = 1 then begin
          GetBaroService_CASHBILLSoap(true).IssueCashBill(dm.SMS_USER_SELCERTKEY.Value,
                                                          dm.SMS_USER_SELCOPRNUM.Value,
                                                          dm.SMS_USER_SELID.Value,
                                                          tbMgtKey, False, '');
        end;
      end;
      2: begin  //��Ұŷ�
        dm.RegistCashbillCancel(tbMgtKey);
      end;
      3: begin  //�κ���Ұŷ�
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

  CERTKEY : WideString;			//����Ű
  CorpNum : WideString;			//�������� ����ڹ�ȣ ('-' ����, 10�ڸ�)
  UserID : WideString;          //�������� ���̵�
  SMSSendYN : Bool;         //���� �˸����� ���ۿ��� (������� ������ ���ݵ�)
  MailTitle : WideString;   //���� �˸������� ���� (������ ��� �ٷκ� �⺻������ ���۵�.)
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
  CERTKEY : WideString;					//����Ű
  clsCashBill : CashBill;				//���ݿ����� Ŭ����
begin
  CERTKEY := dm.SMS_USER_SELCERTKEY.Value;
  clsCashBill := CashBill.Create;
  clsCashBill.MgtKey := MgtKey;						//��ü����������ȣ
	//������ ����
	clsCashBill.FranchiseCorpNum := dm.SMS_USER_SELCOPRNUM.Value;							//������ ����ڹ�ȣ
	clsCashBill.FranchiseMemberID := dm.SMS_USER_SELID.Value;						//������ �ٷκ� ȸ�� ���̵�
	clsCashBill.FranchiseCorpName := dm.SMS_USER_SELCORPNAME.Value;	//������ ȸ���
	clsCashBill.FranchiseCEOName := dm.SMS_USER_SELCEONAME.Value;				//������ ��ǥ�ڸ�
	clsCashBill.FranchiseAddr := dm.SMS_USER_SELADDR1.Value + ' ' + dm.SMS_USER_SELADDR2.Value;		//������ �ּ�
	clsCashBill.FranchiseTel := dm.SMS_USER_SELTEL.Value;			//������ ��ȭ��ȣ
	//�Һ��� ����
	clsCashBill.IdentityNum := StringReplace(CashBillNo, '-', '', [rfReplaceAll, rfIgnoreCase]); 	//�Һ��� �ź�Ȯ�ι�ȣ (';-'; �� ������ �ֹε�Ϲ�ȣ/����ڹ�ȣ/�޴�����ȣ/ī���ȣ �� ��1)
	clsCashBill.HP := '';														//�Һ��� �޴�����ȣ (���� ���۽� Ȱ��)
	clsCashBill.Fax := '';													//�Һ��� �ѽ���ȣ (�ѽ� ���۽� Ȱ��)
	clsCashBill.Email := '';												//�Һ��� �̸��� (�̸��� ���۽� Ȱ��)
	//���ݿ����� �⺻����
	clsCashBill.TradeType := 'N';										//�ŷ����� : N-���ΰŷ�, D-��Ұŷ�
	clsCashBill.TradeUsage := '1';									//�ŷ��뵵 : 1-�ҵ������, 2-���������� (�ź�Ȯ�ι�ȣ�� ����ڹ�ȣ�� ��� ��������������)
	clsCashBill.TradeMethod := '5';									//�ŷ���� : 1-ī��, 3-�ֹε�Ϲ�ȣ, 4-����ڹ�ȣ, 5-�޴�����ȣ
	clsCashBill.CancelType := '';										//��һ��� : 1-�ŷ����, 2-��������, 3-��Ÿ (�ŷ������� ��Ұŷ��� ��쿡�� �ۼ�)
	clsCashBill.CancelNTSConfirmNum := '';					//����� ���� ���ݿ������� ����û ���ι�ȣ
	clsCashBill.CancelNTSConfirmDate := '';					//����� ���� ���ݿ������� ����û �������� (YYYYMMDD)
	clsCashBill.TradeDate := '';										//�ŷ����� (YYYYMMDD), �����Է� �� Today�� �ۼ���.
	clsCashBill.ItemName := ItemName;											//ǰ���
	clsCashBill.Amount := FloatToStr(AMOUNT);									//���ް���
	clsCashBill.Tax := '0';											//�ΰ���
	clsCashBill.ServiceCharge := '0';							//�����

  Result := GetBaroService_CASHBILLSoap(true).RegistCashBill(CERTKEY, clsCashBill.FranchiseCorpNum, clsCashBill.FranchiseMemberID, clsCashBill);
end;

procedure TfmCashBill.btnDelAllClick(Sender: TObject);
var
  ref_id : string;
  i, cnt, sel_id, rec_id : Integer;
begin
  if Application.MessageBox('��ȸ�� �ڷḦ �����մϴ�. ' + #13#10 + '������ �ڷ�� �ǻ츱 �� �����ϴ�.'
    + #13#10 + '�������� �ݵ�� Ȯ���ϼ���.', '�ڷ����', MB_OKCANCEL) = IDOK then
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
  CERTKEY : WideString;			//����Ű
  CorpNum : WideString;			//�������� ����ڹ�ȣ ('-' ����, 10�ڸ�)
  ID : WideString;          //�������� ���̵�
  PWD : WideString;         //�������� ��й�ȣ
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
      ShowMessage('�����ڵ�: ' + Result + #13#10 +
        '�ش� ���� �ڷḦ ��ȸ�� �� �����ϴ�.' + #13#10 +
        '�����ڵ带 ���߻翡 �����ϼ���.');
    end else begin
      WebB := TWebBrowser.Create(self);
      Options := navOpenInNewWindow;
      WebB.Navigate(Result,Options);
    end;
  except
    ShowMessage('SOAP��� ����.' + #13#13 + '1. �������� ����URL�� Ȯ���Ͻʽÿ�.' + #13 + '2. ȣ���ϴ� �����Լ��� �Ķ���͸� Ȯ���Ͻʽÿ�.');
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

  CERTKEY : WideString;			//����Ű
  CorpNum : WideString;			//�������� ����ڹ�ȣ ('-' ����, 10�ڸ�)
  ID : WideString;          //�������� ���̵�
  PWD : WideString;         //�������� ��й�ȣ
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
      ShowMessage('�����ڵ�: ' + Result + #13#10 +
        '�ش� ���� �ڷḦ ��ȸ�� �� �����ϴ�.' + #13#10 +
        '�����ڵ带 ���߻翡 �����ϼ���.');
    end;
  except
    ShowMessage('SOAP��� ����.' + #13#13 + '1. �������� ����URL�� Ȯ���Ͻʽÿ�.' + #13 + '2. ȣ���ϴ� �����Լ��� �Ķ���͸� Ȯ���Ͻʽÿ�.');
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
