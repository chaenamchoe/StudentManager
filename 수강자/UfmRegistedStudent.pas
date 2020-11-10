unit UfmRegistedStudent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxDBLookupComboBox,
  cxImageComboBox, StdCtrls, Buttons, ComCtrls, MemDS, DBAccess, Uni,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridExportLink, Menus, cxButtons,
  cxContainer, cxCheckBox, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxRadioGroup, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, cxLabel, dxSkinSevenClassic, dxSkinSharp,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxPSContainerLnk, dxmdaset,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmRegistedStudent = class(TForm)
    Panel1: TPanel;
    d_REQUEST_VIEW: TDataSource;
    cxGrid1: TcxGrid;
    gridRequest: TcxGridDBTableView;
    gridRequestL_YEAR: TcxGridDBColumn;
    gridRequestL_STEP: TcxGridDBColumn;
    gridRequestL_NAME: TcxGridDBColumn;
    gridRequestL_TIME_WEEK: TcxGridDBColumn;
    gridRequestL_DAYS: TcxGridDBColumn;
    gridRequestL_MONTH: TcxGridDBColumn;
    gridRequestCLASSROOM_ID: TcxGridDBColumn;
    gridRequestIS_ACTIVE: TcxGridDBColumn;
    gridRequestLECTURE_ID: TcxGridDBColumn;
    gridRequestSTUDENT_ID: TcxGridDBColumn;
    gridRequestPAY_AMOUNT: TcxGridDBColumn;
    gridRequestTEACHER_ID: TcxGridDBColumn;
    gridRequestS_NAME: TcxGridDBColumn;
    gridRequestS_TEL: TcxGridDBColumn;
    gridRequestS_KIND: TcxGridDBColumn;
    gridRequestS_SEX: TcxGridDBColumn;
    gridRequestID: TcxGridDBColumn;
    gridRequestDONG_ID: TcxGridDBColumn;
    gridRequestPAY_KIND: TcxGridDBColumn;
    gridRequestOUT_AMOUNT: TcxGridDBColumn;
    gridRequestREG_KIND: TcxGridDBColumn;
    gridRequestS_BIRTH: TcxGridDBColumn;
    gridRequestPAY_WAY: TcxGridDBColumn;
    gridRequestPAYBACK_WAY: TcxGridDBColumn;
    gridRequestPAYBACK_BANK: TcxGridDBColumn;
    gridRequestPAYBACK_BANKID: TcxGridDBColumn;
    gridRequestOUT_KIND: TcxGridDBColumn;
    gridRequestS_ADDR: TcxGridDBColumn;
    gridRequestSTART_DATE: TcxGridDBColumn;
    gridRequestEND_DATE: TcxGridDBColumn;
    gridRequestP_DATE: TcxGridDBColumn;
    gridRequestR_DATE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Label2: TLabel;
    edtSearch: TEdit;
    btnSearch: TcxButton;
    btnSearchClear: TcxButton;
    btnRetrieve: TcxButton;
    btnSaveExcel: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    btnRegistMoney: TcxButton;
    rbAll: TcxRadioButton;
    rbSelect: TcxRadioButton;
    cxStyleBlue: TcxStyle;
    btnComment: TcxButton;
    gridRequestIS_DC: TcxGridDBColumn;
    gridRequestPAYBACK_BANKOWNER: TcxGridDBColumn;
    gridRequestBIGO: TcxGridDBColumn;
    q_REGISTED_LECTURE_UPD: TUniQuery;
    btnSortDefault: TcxButton;
    btnSaveColumn: TcxButton;
    btnRefund: TcxButton;
    gridRequestS_DONG: TcxGridDBColumn;
    gridRequestCASH_RECEIPT_NO: TcxGridDBColumn;
    gridRequestCASH_RECEIPT_YESNO: TcxGridDBColumn;
    q_update_receipt_yesno: TUniQuery;
    btnPrint: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnRefundMulti: TcxButton;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    gridRequestR_NO: TcxGridDBColumn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
    btnOut: TcxButton;
    btnOutEdit: TcxButton;
    cxStyleGreen: TcxStyle;
    btnFilterDialog: TcxButton;
    gridRequestREG_PRICE1: TcxGridDBColumn;
    gridRequestREG_PRICE2: TcxGridDBColumn;
    gridRequestREG_PRICE3: TcxGridDBColumn;
    gridRequestOUT_PRICE1: TcxGridDBColumn;
    gridRequestOUT_PRICE2: TcxGridDBColumn;
    gridRequestOUT_PRICE3: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    btnTotalReport: TcxButton;
    registed_student_bydate: TUniQuery;
    registed_student_bydateL_YEAR: TIntegerField;
    registed_student_bydateL_STEP: TIntegerField;
    registed_student_bydateL_NAME: TStringField;
    registed_student_bydateL_TIME_WEEK: TIntegerField;
    registed_student_bydateL_DAYS: TStringField;
    registed_student_bydateL_MONTH: TIntegerField;
    registed_student_bydateSTART_DATE: TStringField;
    registed_student_bydateEND_DATE: TStringField;
    registed_student_bydateCLASSROOM_ID: TStringField;
    registed_student_bydateIS_ACTIVE: TIntegerField;
    registed_student_bydateDONG_ID: TStringField;
    registed_student_bydateLECTURE_ID: TStringField;
    registed_student_bydateSTUDENT_ID: TStringField;
    registed_student_bydateP_DATE: TStringField;
    registed_student_bydatePAY_AMOUNT: TFloatField;
    registed_student_bydateIS_DC: TSmallintField;
    registed_student_bydatePAY_KIND: TSmallintField;
    registed_student_bydateR_DATE: TStringField;
    registed_student_bydateOUT_AMOUNT: TFloatField;
    registed_student_bydateREG_KIND: TSmallintField;
    registed_student_bydatePAY_WAY: TSmallintField;
    registed_student_bydatePAYBACK_WAY: TSmallintField;
    registed_student_bydatePAYBACK_BANK: TStringField;
    registed_student_bydatePAYBACK_BANKID: TStringField;
    registed_student_bydateOUT_KIND: TSmallintField;
    registed_student_bydatePAYBACK_BANKOWNER: TStringField;
    registed_student_bydateBIGO: TStringField;
    registed_student_bydateREG_MONTH: TSmallintField;
    registed_student_bydateREG_MONTH2: TSmallintField;
    registed_student_bydateREG_MONTH3: TSmallintField;
    registed_student_bydateOUT_MONTH: TSmallintField;
    registed_student_bydateOUT_MONTH2: TSmallintField;
    registed_student_bydateOUT_MONTH3: TSmallintField;
    registed_student_bydateREG_PRICE1: TFloatField;
    registed_student_bydateREG_PRICE2: TFloatField;
    registed_student_bydateREG_PRICE3: TFloatField;
    registed_student_bydateOUT_PRICE1: TFloatField;
    registed_student_bydateOUT_PRICE2: TFloatField;
    registed_student_bydateOUT_PRICE3: TFloatField;
    registed_student_bydateTEACHER_ID: TStringField;
    registed_student_bydateS_NAME: TStringField;
    registed_student_bydateS_TEL: TStringField;
    registed_student_bydateS_ADDR: TStringField;
    registed_student_bydateS_KIND: TSmallintField;
    registed_student_bydateS_SEX: TStringField;
    registed_student_bydateS_BIRTH: TStringField;
    registed_student_bydateS_DONG: TStringField;
    registed_student_bydateCASH_RECEIPT_NO: TStringField;
    registed_student_bydateCASH_RECEIPT_YESNO: TSmallintField;
    registed_student_bydateID: TStringField;
    registed_student_bydateOUT_WHEN: TSmallintField;
    gridRequestOUT_WHEN: TcxGridDBColumn;
    UniStoredProc1: TUniStoredProc;
    CASHBILL_INS: TUniStoredProc;
    CASHBILL_IU: TUniStoredProc;
    registed_student_bydateCASHBILL_REGISTED: TSmallintField;
    gridRequestCASHBILL_REGISTED: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSearchClearClick(Sender: TObject);
    procedure btnSaveExcelClick(Sender: TObject);
    procedure gridRequestStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnCommentClick(Sender: TObject);
    procedure btnSortDefaultClick(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRefundClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnRefundMultiClick(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure btnOutClick(Sender: TObject);
    procedure btnOutEditClick(Sender: TObject);
    procedure gridRequestS_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestR_NOGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gridRequestFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridRequestREG_MONTHCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestREG_MONTH2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridRequestREG_MONTH3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnFilterDialogClick(Sender: TObject);
    procedure btnTotalReportClick(Sender: TObject);
    procedure btnRegistMoneyClick(Sender: TObject);
    procedure gridRequestPAY_WAYCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRegistedStudent: TfmRegistedStudent;

implementation

uses GlobalVar, Udm, UfmCashReceipt, UfmRefundPayment, UfmMoneyInOutEdit3,
  UfmTotalReport;

{$R *.dfm}

procedure TfmRegistedStudent.btnCommentClick(Sender: TObject);
var
  i, cnt, col : Integer;
  l_id, bigo : string;
begin
  InputQuery('비고사항 등록', '비고사항을 입력하세요.', bigo);
  cnt := gridRequest.Controller.SelectedRecordCount;
  col := gridRequest.GetColumnByFieldName('ID').Index;
  for i := 0 to cnt - 1 do begin
    l_id := gridRequest.Controller.SelectedRecords[i].Values[col];
    q_REGISTED_LECTURE_UPD.ParamByName('ID').Value := l_id;
    q_REGISTED_LECTURE_UPD.ParamByName('BIGO').Value := bigo;
    q_REGISTED_LECTURE_UPD.Execute;
    d_REQUEST_VIEW.DataSet.Refresh;
  end;
end;

procedure TfmRegistedStudent.btnFilterDialogClick(Sender: TObject);
begin
  gridRequest.Filtering.RunCustomizeDialog;
end;

procedure TfmRegistedStudent.btnOutClick(Sender: TObject);
var
  id, LectureID, JUKYO, StudentName : string;
  qry : TUniQuery;
  r_date : TDateTime;
  o_amount, reg_price1, reg_price2, reg_price3 : Double;
  OUT_MONTH1, OUT_MONTH2, OUT_MONTH3, month1, month2, month3, mStep : Integer;
  regmon1, regmon2, regmon3 : Integer;
begin
  d_REQUEST_VIEW.DataSet.DisableControls;
  qry := TUniQuery.Create(nil);
  fmRefundPayment := TfmRefundPayment.Create(Self);
  try
    mStep := gridRequestL_STEP.EditValue;
    case mStep of
      1: begin
        fmRefundPayment.chkMon1.Caption := '1월';
        fmRefundPayment.chkMon2.Caption := '2월';
        fmRefundPayment.chkMon3.Caption := '3월';
      end;
      2: begin
        fmRefundPayment.chkMon1.Caption := '4월';
        fmRefundPayment.chkMon2.Caption := '5월';
        fmRefundPayment.chkMon3.Caption := '6월';
      end;
      3: begin
        fmRefundPayment.chkMon1.Caption := '7월';
        fmRefundPayment.chkMon2.Caption := '8월';
        fmRefundPayment.chkMon3.Caption := '9월';
      end;
      4: begin
        fmRefundPayment.chkMon1.Caption := '10월';
        fmRefundPayment.chkMon2.Caption := '11월';
        fmRefundPayment.chkMon3.Caption := '12월';
      end;
    end;
    LectureID := gridRequestLECTURE_ID.EditValue;
    id := gridRequestID.EditValue;
    StudentName := gridRequestS_NAME.EditValue;
    regmon1 := gridRequestREG_MONTH.EditValue;
    regmon2 := gridRequestREG_MONTH2.EditValue;
    regmon3 := gridRequestREG_MONTH3.EditValue;

    reg_price1 := gridRequestREG_PRICE1.EditValue;
    reg_price2 := gridRequestREG_PRICE2.EditValue;
    reg_price3 := gridRequestREG_PRICE3.EditValue;

    fmRefundPayment.REG_MONTH_COUNT := regmon1 + regmon2 + regmon3;
    fmRefundPayment.RECTURE_PRICE := gridRequestPAY_AMOUNT.EditValue;
    fmRefundPayment.RegMonth := regmon1;
    fmRefundPayment.RegMonth2 := regmon2;
    fmRefundPayment.RegMonth3 := regmon3;
    fmRefundPayment.edtDate.Date := Date;

    fmRefundPayment.REG_PRICE1 := reg_price1;
    fmRefundPayment.REG_PRICE2 := reg_price2;
    fmRefundPayment.REG_PRICE3 := reg_price3;
    fmRefundPayment.chkMon1.Checked := True;
    fmRefundPayment.chkMon2.Checked := True;
    fmRefundPayment.chkMon3.Checked := True;
    fmRefundPayment.edtMon1.Value := reg_price1;
    fmRefundPayment.edtMon2.Value := reg_price2;
    fmRefundPayment.edtMon3.Value := reg_price3;

    fmRefundPayment.edtOutKind.EditValue := 1;
    fmRefundPayment.edtPayWay.ItemIndex := 1;
    fmRefundPayment.edtBankOwener.Text := gridRequestS_NAME.EditValue;
    fmRefundPayment.ShowModal;
    if fmRefundPayment.ModalResult = mrOk then begin
      gridRequest.DataController.SaveBookmark;
      r_date := fmRefundPayment.edtDate.Date;
      o_amount := fmRefundPayment.edtAmount.EditValue;
      OUT_MONTH1 := fmRefundPayment.OUTMONTH;
      OUT_MONTH2 := fmRefundPayment.OUTMONTH2;
      OUT_MONTH3 := fmRefundPayment.OUTMONTH3;

      with qry do begin
        Connection := dm.UniConnection1;
        SQL.Clear;
        SQL.Add('Update REGISTED_LECTURE set r_date = :r_date, pay_kind = :pay_kind, out_kind = :out_kind, out_amount = :out_amount, ');
        SQL.Add('payback_way = :payback_way, payback_bank = :payback_bank, payback_bankid = :payback_bankid, PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER, ');
        SQL.Add('OUT_MONTH = :out_month1, out_month2 = :out_month2, out_month3 = :out_month3, ');
        SQL.Add('OUT_PRICE1 = :out_price1, OUT_PRICE2 = :out_price2, OUT_PRICE3 = :out_price3, out_when = :out_when ');
        SQL.Add('where id = :id ');
        ParamByName('r_date').AsString := fmRefundPayment.edtDate.EditText;
        ParamByName('out_kind').AsInteger := fmRefundPayment.edtOutKind.EditValue;
        ParamByName('out_amount').AsFloat := fmRefundPayment.edtAmount.EditValue;
        ParamByName('out_month1').AsInteger := OUT_MONTH1;
        ParamByName('out_month2').AsInteger := OUT_MONTH2;
        ParamByName('out_month3').AsInteger := OUT_MONTH3;
        ParamByName('out_price1').AsFloat := fmRefundPayment.edtMon1.EditValue;
        ParamByName('out_price2').AsFloat := fmRefundPayment.edtMon2.EditValue;
        ParamByName('out_price3').AsFloat := fmRefundPayment.edtMon3.EditValue;
        ParamByName('payback_way').AsInteger := fmRefundPayment.edtPayWay.EditValue;
        ParamByName('payback_bank').AsString := fmRefundPayment.edtBankName.Text;
        ParamByName('payback_bankid').AsString := fmRefundPayment.edtBankID.Text;
        ParamByName('PAYBACK_BANKOWNER').AsString := fmRefundPayment.edtBankOwener.Text;
        ParamByName('out_when').AsInteger := fmRefundPayment.edtOutWhen.EditValue;
        ParamByName('id').AsString := id;
        Execute;
      end;
      d_REQUEST_VIEW.DataSet.Refresh;
      gridRequest.DataController.GotoBookmark;
    end;
  finally
    qry.Free;
    d_REQUEST_VIEW.DataSet.EnableControls;
    fmRefundPayment.Free;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmRegistedStudent.btnOutEditClick(Sender: TObject);
var
  id, LectureID, JUKYO, StudentName : string;
  qry : TUniQuery;
  r_date : TDateTime;
  o_amount, out_price1, out_price2, out_price3 : Double;
  OUT_MONTH1, OUT_MONTH2, OUT_MONTH3, month1, month2, month3, mStep : Integer;
  regmon1, regmon2, regmon3 : Integer;
begin
  d_REQUEST_VIEW.DataSet.DisableControls;
  qry := TUniQuery.Create(nil);
  fmRefundPayment := TfmRefundPayment.Create(Self);
  try
    mStep := gridRequestL_STEP.EditValue;
    case mStep of
      1: begin
        fmRefundPayment.chkMon1.Caption := '1월';
        fmRefundPayment.chkMon2.Caption := '2월';
        fmRefundPayment.chkMon3.Caption := '3월';
      end;
      2: begin
        fmRefundPayment.chkMon1.Caption := '4월';
        fmRefundPayment.chkMon2.Caption := '5월';
        fmRefundPayment.chkMon3.Caption := '6월';
      end;
      3: begin
        fmRefundPayment.chkMon1.Caption := '7월';
        fmRefundPayment.chkMon2.Caption := '8월';
        fmRefundPayment.chkMon3.Caption := '9월';
      end;
      4: begin
        fmRefundPayment.chkMon1.Caption := '10월';
        fmRefundPayment.chkMon2.Caption := '11월';
        fmRefundPayment.chkMon3.Caption := '12월';
      end;
    end;
    LectureID := gridRequestLECTURE_ID.EditValue;
    id := gridRequestID.EditValue;
    StudentName := gridRequestS_NAME.EditValue;
    fmRefundPayment.RECTURE_PRICE := gridRequestPAY_AMOUNT.EditValue;
    fmRefundPayment.edtDate.Date := StrToDate(gridRequestR_DATE.EditValue);
    fmRefundPayment.edtOutKind.EditValue := gridRequestOUT_KIND.EditValue;

    regmon1 := gridRequestREG_MONTH.EditValue;
    regmon2 := gridRequestREG_MONTH2.EditValue;
    regmon3 := gridRequestREG_MONTH3.EditValue;
    fmRefundPayment.REG_MONTH_COUNT := regmon1 + regmon2 + regmon3;
    fmRefundPayment.RECTURE_PRICE := gridRequestPAY_AMOUNT.EditValue;
    fmRefundPayment.RegMonth := regmon1;
    fmRefundPayment.RegMonth2 := regmon2;
    fmRefundPayment.RegMonth3 := regmon3;

    month1 := gridRequestOUT_MONTH.EditValue;
    month2 := gridRequestOUT_MONTH2.EditValue;
    month3 := gridRequestOUT_MONTH3.EditValue;
    fmRefundPayment.OutMonth := month1;
    fmRefundPayment.OutMonth2 := month2;
    fmRefundPayment.OutMonth3 := month3;
    out_price1 := gridRequestOUT_PRICE1.EditValue;
    out_price2 := gridRequestOUT_PRICE2.EditValue;
    out_price3 := gridRequestOUT_PRICE3.EditValue;
    fmRefundPayment.chkMon1.Checked := OUT_PRICE1 > 0;
    fmRefundPayment.chkMon2.Checked := OUT_PRICE2 > 0;
    fmRefundPayment.chkMon3.Checked := OUT_PRICE3 > 0;

    fmRefundPayment.edtAmount.Value := gridRequestOUT_AMOUNT.EditValue;
    fmRefundPayment.edtPayWay.ItemIndex := gridRequestPAYBACK_WAY.EditValue;
    fmRefundPayment.edtBankName.Text := gridRequestPAYBACK_BANK.EditValue;
    fmRefundPayment.edtBankID.Text := gridRequestPAYBACK_BANKID.EditValue;
    fmRefundPayment.edtBankOwener.Text := gridRequestPAYBACK_BANKOWNER.EditValue;
    fmRefundPayment.edtMon1.Value := out_price1;
    fmRefundPayment.edtMon2.Value := OUT_PRICE2;
    fmRefundPayment.edtMon3.Value := OUT_PRICE3;

    fmRefundPayment.edtOutWhen.EditValue := gridRequestOUT_WHEN.EditValue;

    fmRefundPayment.ShowModal;
    if fmRefundPayment.ModalResult = mrOk then begin
      gridRequest.DataController.SaveBookmark;
      r_date := fmRefundPayment.edtDate.Date;
      o_amount := fmRefundPayment.edtAmount.EditValue;
      OUT_MONTH1 := fmRefundPayment.OUTMONTH;
      OUT_MONTH2 := fmRefundPayment.OUTMONTH2;
      OUT_MONTH3 := fmRefundPayment.OUTMONTH3;
//      if OUT_MONTH1 = 1 then month1 := 0;
//      if OUT_MONTH2 = 1 then month2 := 0;
//      if OUT_MONTH3 = 1 then month3 := 0;

      with qry do begin
        Connection := dm.UniConnection1;
        SQL.Clear;
        SQL.Add('Update REGISTED_LECTURE set r_date = :r_date, pay_kind = :pay_kind, out_kind = :out_kind, out_amount = :out_amount, ');
        SQL.Add('payback_way = :payback_way, payback_bank = :payback_bank, payback_bankid = :payback_bankid, PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER, ');
        SQL.Add('out_month = :out_month1, out_month2 = :out_month2, out_month3 = :out_month3, out_when = :out_when ');
        SQL.Add('where id = :id ');
        ParamByName('r_date').AsString := fmRefundPayment.edtDate.EditText;
        ParamByName('out_kind').AsInteger := fmRefundPayment.edtOutKind.EditValue;
        ParamByName('out_amount').AsFloat := fmRefundPayment.edtAmount.EditValue;
//        ParamByName('reg_month1').AsInteger := MONTH1;
//        ParamByName('reg_month2').AsInteger := MONTH2;
//        ParamByName('reg_month3').AsInteger := MONTH3;
        ParamByName('out_month1').AsInteger := OUT_MONTH1;
        ParamByName('out_month2').AsInteger := OUT_MONTH2;
        ParamByName('out_month3').AsInteger := OUT_MONTH3;
        ParamByName('payback_way').AsInteger := fmRefundPayment.edtPayWay.EditValue;
        ParamByName('payback_bank').AsString := fmRefundPayment.edtBankName.Text;
        ParamByName('payback_bankid').AsString := fmRefundPayment.edtBankID.Text;
        ParamByName('PAYBACK_BANKOWNER').AsString := fmRefundPayment.edtBankOwener.Text;
        ParamByName('out_when').AsInteger := fmRefundPayment.edtOutWhen.EditValue;
        ParamByName('id').AsString := id;
        Execute;
      end;
      d_REQUEST_VIEW.DataSet.Refresh;
      gridRequest.DataController.GotoBookmark;
    end;
  finally
    qry.Free;
    d_REQUEST_VIEW.DataSet.EnableControls;
    fmRefundPayment.Free;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmRegistedStudent.btnPrintClick(Sender: TObject);
var
  titleStr, lecture_name : string;
begin
  titleStr := '기간별 수강자 현황' + #13#10 +
              '===================' + #13#10 +
              '(' + DateToStr(DateTimePicker1.Date) + ' ~ ' + DateToStr(DateTimePicker2.Date) + ')';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
//  dxComponentPrinter1Link1.ReportFootnotes.Text := 'Report Totals: 123,123,000원' + #13#10 +
//            'Grand Totals: 20,000,000' + #13#10 +
//            'This is Third Lines' + #13#10 +
//            'This is Fourth Lines :';
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmRegistedStudent.btnTotalReportClick(Sender: TObject);
begin
  fmTotalReport := TfmTotalReport.Create(Self);
  try
    fmTotalReport.FILTER_TEXT := gridRequest.DataController.Filter.FilterText;
    fmTotalReport.START_DATE := DateTimePicker1.Date;
    fmTotalReport.END_DATE := DateTimePicker2.Date;
    fmTotalReport.ShowModal;
  finally
    fmTotalReport.Free;
  end;
end;

procedure TfmRegistedStudent.btnRefundClick(Sender: TObject);
var
  i, col, cnt, filter_cnt, select_cnt, p_kind : Integer;
  f_name, r_date, id : string;
  t_price : Double;
  BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  fmMoneyInOutEdit3 := TfmMoneyInOutEdit3.Create(Self);
  try
    t_price := 0;
    cnt := gridRequest.Controller.SelectedRecordCount;
    if cnt > 1 then begin
      ShowMessage('환불처리는 환불결의서에 개인정보가 필요하므로 한번에 1건씩만 처리합니다.');
      Exit;
    end;
    t_price := gridRequestOUT_AMOUNT.EditValue;
    if t_price > 0 then begin
      f_name := gridRequestS_NAME.EditValue;
    end else begin
      ShowMessage('환불처리는 퇴강자료만 등록할 수 있습니다.');
      Exit;
    end;
    JUKYO := '수강료환불(' + f_name + ')';
    fmMoneyInOutEdit3.dxTemp.Active := True;
    fmMoneyInOutEdit3.dxTemp.Append;
    fmMoneyInOutEdit3.dxTempm_jukyo.AsString := jukyo;
    fmMoneyInOutEdit3.dxTempm_out.AsFloat := t_price;
    fmMoneyInOutEdit3.dxTempm_date.AsDateTime := StrToDate(gridRequestR_DATE.EditValue);
    fmMoneyInOutEdit3.dxTempm_kind.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_item.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger := 5;
    fmMoneyInOutEdit3.dxTempacc_detail.AsInteger := 15;

    fmMoneyInOutEdit3.ShowModal;
    if fmMoneyInOutEdit3.ModalResult = mrOk then begin
      BANK_ID := fmMoneyInOutEdit3.cbBankKind.EditValue;
      IO_DATE := fmMoneyInOutEdit3.dxTempm_date.AsDateTime;
      ITEM_ID := fmMoneyInOutEdit3.dxTempacc_item.AsInteger;
      SUBITEM_ID := fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger;
      DETAIL_ID := fmMoneyInOutEdit3.dxTempacc_detail.AsInteger;
      JUKYO := fmMoneyInOutEdit3.dxTempm_jukyo.AsString;
      KIND := fmMoneyInOutEdit3.dxTempm_kind.AsInteger;
      IO_REST := 0;
      DONG_ID := LoginUserDong;
      REG_LECTURE_ID := gridRequestID.EditValue;;
      IO_IN := 0;
      IO_OUT := fmMoneyInOutEdit3.dxTempm_out.AsFloat;

      dm.InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND, IO_DATE,
          JUKYO, DONG_ID, REG_LECTURE_ID, IO_IN, IO_OUT, IO_REST);
      ShowMessage('수강료환불 등록이 완료되었습니다.');
    end;
  finally
    fmMoneyInOutEdit3.Free;
  end;
end;

procedure TfmRegistedStudent.btnRefundMultiClick(Sender: TObject);
var
  i, col, cnt, col_name : Integer;
  f_name, r_date, id : string;
  tprice, l_price : Double;
  BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  fmMoneyInOutEdit3 := TfmMoneyInOutEdit3.Create(Self);
  try
    tprice := 0;
    if rbSelect.Checked then begin
      cnt := gridRequest.Controller.SelectedRecordCount;
      col := gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index;
      col_name := gridRequest.GetColumnByFieldName('S_NAME').Index;
      for i := 0 to cnt - 1 do begin
        if i = 0 then f_name := gridRequest.Controller.SelectedRecords[i].Values[col_name];
        l_price := gridRequest.Controller.SelectedRecords[i].Values[col];
        if l_price > 0 then
          tprice := tprice + l_price;
      end;
    end else begin
      cnt := gridRequest.DataController.FilteredRecordCount;
      gridRequest.DataController.GotoFirst;
      for i := 0 to cnt - 1 do begin
        if i = 0 then f_name := gridRequestS_NAME.EditValue;
        l_price := gridRequestOUT_AMOUNT.EditValue;
        if l_price > 0 then
          tprice := tprice + l_price;
        gridRequest.DataController.GotoNext;
      end;
    end;
    JUKYO := '수강료환불(' + f_name + '외 ' + IntToStr(cnt) + '명)';
    fmMoneyInOutEdit3.dxTemp.Active := True;
    fmMoneyInOutEdit3.dxTemp.Append;
    fmMoneyInOutEdit3.dxTempm_jukyo.AsString := jukyo;
    fmMoneyInOutEdit3.dxTempm_out.AsFloat := tprice;
    fmMoneyInOutEdit3.dxTempm_date.AsDateTime := StrToDate(gridRequestR_DATE.EditValue);
    fmMoneyInOutEdit3.dxTempm_kind.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_item.AsInteger := 2;
    fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger := 5;
    fmMoneyInOutEdit3.dxTempacc_detail.AsInteger := 15;

    fmMoneyInOutEdit3.ShowModal;
    if fmMoneyInOutEdit3.ModalResult = mrOk then begin
      BANK_ID := fmMoneyInOutEdit3.cbBankKind.EditValue;
      IO_DATE := fmMoneyInOutEdit3.dxTempm_date.AsDateTime;
      ITEM_ID := fmMoneyInOutEdit3.dxTempacc_item.AsInteger;
      SUBITEM_ID := fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger;
      DETAIL_ID := fmMoneyInOutEdit3.dxTempacc_detail.AsInteger;
      JUKYO := fmMoneyInOutEdit3.dxTempm_jukyo.AsString;
      KIND := fmMoneyInOutEdit3.dxTempm_kind.AsInteger;
      IO_REST := 0;
      DONG_ID := LoginUserDong;
      REG_LECTURE_ID := gridRequestID.EditValue;;
      IO_IN := 0;
      IO_OUT := fmMoneyInOutEdit3.dxTempm_out.AsFloat;

      dm.InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND, IO_DATE,
          JUKYO, DONG_ID, REG_LECTURE_ID, IO_IN, IO_OUT, IO_REST);
      ShowMessage('수강료환불 등록이 완료되었습니다.');
    end;
  finally
    fmMoneyInOutEdit3.Free;
  end;
end;

procedure TfmRegistedStudent.btnRegistMoneyClick(Sender: TObject);
var
  i, col, cnt : Integer;
  money_str, msg, f_name : string;
  l_price, tprice : Double;
  BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  fmMoneyInOutEdit3 := TfmMoneyInOutEdit3.Create(Self);
  try
    tprice := 0;
    if rbSelect.Checked then begin
      cnt := gridRequest.Controller.SelectedRecordCount;
      col := gridRequest.GetColumnByFieldName('PAY_AMOUNT').Index;
      for i := 0 to cnt - 1 do begin
        if i = 0 then f_name := gridRequestS_NAME.EditValue;
        l_price := gridRequest.Controller.SelectedRecords[i].Values[col];
        tprice := tprice + l_price;
      end;
    end else begin
      cnt := gridRequest.DataController.FilteredRecordCount;
      gridRequest.DataController.GotoFirst;
      f_name := gridRequestS_NAME.EditValue;
      tprice := gridRequest.DataController.Summary.FooterSummaryValues[4];
    end;

    JUKYO := '수강료수입 ' + f_name + '외 총:' + IntToStr(cnt) + '건';
    fmMoneyInOutEdit3.dxTemp.Active := True;
    fmMoneyInOutEdit3.dxTemp.Append;
    fmMoneyInOutEdit3.dxTempm_jukyo.AsString := jukyo;
    fmMoneyInOutEdit3.dxTempm_out.AsFloat := tprice;
    fmMoneyInOutEdit3.dxTempm_date.AsDateTime := Date;
    fmMoneyInOutEdit3.dxTempm_kind.AsInteger := 1;
    fmMoneyInOutEdit3.dxTempacc_item.AsInteger := 1;
    fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger := 1;
    fmMoneyInOutEdit3.dxTempacc_detail.AsInteger := 1;

    fmMoneyInOutEdit3.ShowModal;
    if fmMoneyInOutEdit3.ModalResult = mrOk then begin
      BANK_ID := fmMoneyInOutEdit3.cbBankKind.EditValue;
      IO_DATE := fmMoneyInOutEdit3.dxTempm_date.AsDateTime;
      ITEM_ID := fmMoneyInOutEdit3.dxTempacc_item.AsInteger;
      SUBITEM_ID := fmMoneyInOutEdit3.dxTempacc_subitem.AsInteger;
      DETAIL_ID := fmMoneyInOutEdit3.dxTempacc_detail.AsInteger;
      JUKYO := fmMoneyInOutEdit3.dxTempm_jukyo.AsString;
      KIND := fmMoneyInOutEdit3.dxTempm_kind.AsInteger;
      IO_REST := 0;
      DONG_ID := LoginUserDong;
      REG_LECTURE_ID := '';
      IO_IN := fmMoneyInOutEdit3.dxTempm_out.AsFloat;
      IO_OUT := 0;

      dm.InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND, IO_DATE,
          JUKYO, DONG_ID, REG_LECTURE_ID, IO_IN, IO_OUT, IO_REST);
      ShowMessage('수강료수입 등록이 완료되었습니다.');
    end;
  finally
    fmMoneyInOutEdit3.Free;
  end;
end;

procedure TfmRegistedStudent.btnRetrieveClick(Sender: TObject);
begin
  REGISTED_STUDENT_BYDATE.DisableControls;
  REGISTED_STUDENT_BYDATE.ParamByName('s_date').AsDateTime := DateTimePicker1.Date;
  REGISTED_STUDENT_BYDATE.ParamByName('e_date').AsDateTime := DateTimePicker2.Date;
  REGISTED_STUDENT_BYDATE.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
  REGISTED_STUDENT_BYDATE.EnableControls;
end;

procedure TfmRegistedStudent.btnSearchClearClick(Sender: TObject);
begin
  edtSearch.Text := '';
  REGISTED_STUDENT_BYDATE.Filter := '';
  REGISTED_STUDENT_BYDATE.Filtered := True;
  edtSearch.SetFocus;
end;

procedure TfmRegistedStudent.btnSearchClick(Sender: TObject);
begin
  if edtSearch.Text <> '' then begin
    REGISTED_STUDENT_BYDATE.Filter := 'S_NAME like "%' + Trim(edtSearch.Text) + '%"';
    REGISTED_STUDENT_BYDATE.Filtered := True;
  end else begin
    REGISTED_STUDENT_BYDATE.Filter := '';
    REGISTED_STUDENT_BYDATE.Filtered := True;
  end;
end;

procedure TfmRegistedStudent.btnSortDefaultClick(Sender: TObject);
begin
  gridRequestID.SortOrder := soAscending;
  gridRequestID.SortIndex := 0;
end;

procedure TfmRegistedStudent.cxDateEdit1PropertiesEditValueChanged(
  Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudent.cxDateEdit2PropertiesEditValueChanged(
  Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudent.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '기간별수강자현황.ini';
  gridRequest.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmRegistedStudent.btnSaveExcelClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
begin
  if not (gridRequest.DataController.RecordCount > 0) then
    Exit;
  saveDLG := TSaveDialog.Create(self);
  try
    filename := '수강자등록현황_' + DateTimeToStr(Date) + '.xls';
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.DefaultExt := 'xls';
    saveDLG.FileName := filename;
    if saveDLG.Execute then begin
       filename := saveDLG.FileName;
       nameonly := copy(filename, 1, length(filename) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, true, true, false, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmRegistedStudent.DateTimePicker1Change(Sender: TObject);
begin
  If DateTimePicker1.Droppeddown then exit;
end;

procedure TfmRegistedStudent.DateTimePicker1CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudent.DateTimePicker2Change(Sender: TObject);
begin
  If DateTimePicker2.Droppeddown then exit;
end;

procedure TfmRegistedStudent.DateTimePicker2CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudent.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmRegistedStudent.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
end;

procedure TfmRegistedStudent.FormShow(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '기간별수강자현황.ini';
  if FileExists(fname) then
    gridRequest.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
end;

procedure TfmRegistedStudent.gridRequestFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if REGISTED_STUDENT_BYDATE.RecordCount > 0 then begin
    if REGISTED_STUDENT_BYDATEOUT_AMOUNT.AsFloat > 0 then begin
      btnOut.Enabled := False;
      btnOutEdit.Enabled := True;
    end else begin
      btnOut.Enabled := True;
      btnOutEdit.Enabled := False;
    end;
  end;
end;

procedure TfmRegistedStudent.gridRequestPAY_WAYCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.Value;
  if(col_kind = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmRegistedStudent.gridRequestREG_MONTH2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_out : Integer;
begin
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_MONTH2').Index];
  if col_out > 0 then begin
    ACanvas.Brush.Color := clYellow;
  end;
end;

procedure TfmRegistedStudent.gridRequestREG_MONTH3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_out : Integer;
begin
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_MONTH3').Index];
  if col_out > 0 then begin
    ACanvas.Brush.Color := clYellow;
  end;
end;

procedure TfmRegistedStudent.gridRequestREG_MONTHCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_out : Integer;
begin
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_MONTH').Index];
  if col_out > 0 then begin
    ACanvas.Brush.Color := clYellow;
  end;
end;

procedure TfmRegistedStudent.gridRequestR_NOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex + 1);
end;

procedure TfmRegistedStudent.gridRequestStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col, col2, col3 : Integer;
begin
  col := gridRequest.GetColumnByFieldName('IS_DC').Index;
  col2 := gridRequest.GetColumnByFieldName('PAY_WAY').Index;
  col3 := gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index;
  if ARecord.Values[col3] > 0 then begin
    if ARecord.Values[col] > 1 then
      AStyle := cxStyleBlue
    else
      AStyle := cxStyleRed;
  end else begin
    if ARecord.Values[col] > 1 then
      AStyle := cxStyleGreen
    else
      AStyle := cxStyleDefault;
  end;
end;

procedure TfmRegistedStudent.gridRequestS_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('IS_DC').Index];
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index];
  if col_out > 0 then begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clBlue; //연한그린색
      ACanvas.Font.Color := clWhite;
    end else begin
      ACanvas.Brush.Color := clRed; //연한그린색
      ACanvas.Font.Color := clWhite;
    end;
  end else begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clGreen; //연한그린색
      ACanvas.Font.Color := clWhite;
    end;
  end;
end;

initialization RegisterClasses([TfmRegistedStudent]);
end.
