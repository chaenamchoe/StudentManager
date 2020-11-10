unit UfmRegistedStudentMonthly;

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
  dxPSCore, dxPScxCommon, UfrmYearMonth;

type
  TfmRegistedStudentMonthly = class(TForm)
    Panel1: TPanel;
    q_REQUEST_VIEW: TUniQuery;
    q_REQUEST_VIEWL_YEAR: TIntegerField;
    q_REQUEST_VIEWL_STEP: TIntegerField;
    q_REQUEST_VIEWL_NAME: TStringField;
    q_REQUEST_VIEWL_TIME_WEEK: TIntegerField;
    q_REQUEST_VIEWL_DAYS: TStringField;
    q_REQUEST_VIEWL_MONTH: TIntegerField;
    q_REQUEST_VIEWCLASSROOM_ID: TStringField;
    q_REQUEST_VIEWIS_ACTIVE: TIntegerField;
    q_REQUEST_VIEWLECTURE_ID: TStringField;
    q_REQUEST_VIEWSTUDENT_ID: TStringField;
    q_REQUEST_VIEWPAY_AMOUNT: TFloatField;
    q_REQUEST_VIEWTEACHER_ID: TStringField;
    q_REQUEST_VIEWS_NAME: TStringField;
    q_REQUEST_VIEWS_TEL: TStringField;
    q_REQUEST_VIEWS_KIND: TSmallintField;
    q_REQUEST_VIEWS_SEX: TStringField;
    q_REQUEST_VIEWT_NAME: TStringField;
    q_REQUEST_VIEWT_SEX: TStringField;
    q_REQUEST_VIEWT_TEL: TStringField;
    q_REQUEST_VIEWBANK_NAME: TStringField;
    q_REQUEST_VIEWBANK_NO: TStringField;
    q_REQUEST_VIEWID: TStringField;
    q_REQUEST_VIEWDONG_ID: TStringField;
    q_REQUEST_VIEWPAY_KIND: TSmallintField;
    q_REQUEST_VIEWOUT_AMOUNT: TFloatField;
    q_REQUEST_VIEWREG_KIND: TSmallintField;
    q_REQUEST_VIEWS_BIRTH: TStringField;
    q_REQUEST_VIEWPAY_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_BANK: TStringField;
    q_REQUEST_VIEWPAYBACK_BANKID: TStringField;
    q_REQUEST_VIEWOUT_KIND: TSmallintField;
    q_REQUEST_VIEWS_ADDR: TStringField;
    q_REQUEST_VIEWSTART_DATE: TStringField;
    q_REQUEST_VIEWEND_DATE: TStringField;
    q_REQUEST_VIEWP_DATE: TStringField;
    q_REQUEST_VIEWR_DATE: TStringField;
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
    gridRequestT_NAME: TcxGridDBColumn;
    gridRequestT_SEX: TcxGridDBColumn;
    gridRequestT_TEL: TcxGridDBColumn;
    gridRequestBANK_NAME: TcxGridDBColumn;
    gridRequestBANK_NO: TcxGridDBColumn;
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
    gridRequestColumn1: TcxGridDBColumn;
    btnRegistMoney: TcxButton;
    rbAll: TcxRadioButton;
    rbSelect: TcxRadioButton;
    cxStyleBlue: TcxStyle;
    btnComment: TcxButton;
    q_REQUEST_VIEWIS_DC: TSmallintField;
    q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField;
    q_REQUEST_VIEWBIGO: TStringField;
    gridRequestIS_DC: TcxGridDBColumn;
    gridRequestPAYBACK_BANKOWNER: TcxGridDBColumn;
    gridRequestBIGO: TcxGridDBColumn;
    q_REGISTED_LECTURE_UPD: TUniQuery;
    btnSortDefault: TcxButton;
    btnReceipt: TcxButton;
    btnSaveColumn: TcxButton;
    btnRefund: TcxButton;
    q_REQUEST_VIEWS_DONG: TStringField;
    gridRequestS_DONG: TcxGridDBColumn;
    q_REQUEST_VIEWCASH_RECEIPT_NO: TStringField;
    q_REQUEST_VIEWCASH_RECEIPT_YESNO: TSmallintField;
    gridRequestCASH_RECEIPT_NO: TcxGridDBColumn;
    gridRequestCASH_RECEIPT_YESNO: TcxGridDBColumn;
    q_update_receipt_yesno: TUniQuery;
    btnPrint: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnRefundMulti: TcxButton;
    q_REQUEST_VIEWREG_MONTH: TSmallintField;
    q_REQUEST_VIEWREG_MONTH2: TSmallintField;
    q_REQUEST_VIEWREG_MONTH3: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH2: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH3: TSmallintField;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
    frmYearMonth1: TfrmYearMonth;
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
    procedure gridRequestColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnRegistMoneyClick(Sender: TObject);
    procedure btnCommentClick(Sender: TObject);
    procedure btnSortDefaultClick(Sender: TObject);
    procedure btnReceiptClick(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRefundClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnRefundMultiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRegistedStudentMonthly: TfmRegistedStudentMonthly;

implementation

uses GlobalVar, Udm, UfmCashReceipt;

{$R *.dfm}

procedure TfmRegistedStudentMonthly.btnCommentClick(Sender: TObject);
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

procedure TfmRegistedStudentMonthly.btnPrintClick(Sender: TObject);
var
  titleStr, lecture_name : string;
begin
  gridRequestColumn1.Visible := False;
  titleStr := '기간별 수강 등록현황';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  gridRequestColumn1.Visible := True;
end;

procedure TfmRegistedStudentMonthly.btnReceiptClick(Sender: TObject);
var
  i, cnt, name_col, tel_col, price_col, id_col : Integer;
  sname, stel, l_id : string;
  price : Double;
begin
  fmCashReceipt := TfmCashReceipt.Create(Self);
  try
    cnt := gridRequest.Controller.SelectedRecordCount;
    name_col := gridRequest.GetColumnByFieldName('S_NAME').Index;
    tel_col := gridRequest.GetColumnByFieldName('CASH_RECEIPT_NO').Index;
    price_col := gridRequest.GetColumnByFieldName('PAY_AMOUNT').Index;
    fmCashReceipt.dxMemData1.Close;
    fmCashReceipt.dxMemData1.Open;
    for i := 0 to cnt - 1 do begin
      if (not VarIsNull(gridRequest.Controller.SelectedRecords[i].Values[tel_col])) and
        (gridRequest.Controller.SelectedRecords[i].Values[price_col] > 0) then begin
        stel := gridRequest.Controller.SelectedRecords[i].Values[tel_col];
        sname := gridRequest.Controller.SelectedRecords[i].Values[name_col];
        price := gridRequest.Controller.SelectedRecords[i].Values[price_col];
        fmCashReceipt.dxMemData1.Append;
        fmCashReceipt.dxMemData1s_mkind.Value := 'D';
        fmCashReceipt.dxMemData1s_mdate.Value := FormatDateTime('yyyymmdd', Date);
        fmCashReceipt.dxMemData1s_item.Value := '수강료';
        fmCashReceipt.dxMemData1s_price.Value := FloatToStr(price);
        fmCashReceipt.dxMemData1s_tax.Value := '0';
        fmCashReceipt.dxMemData1s_service.Value := '0';
        fmCashReceipt.dxMemData1s_total.Value := FloatToStr(price);
        fmCashReceipt.dxMemData1s_purpose.Value := '0';
        fmCashReceipt.dxMemData1s_idno.AsString := StringReplace(stel, '-', '', [rfReplaceAll]);
        fmCashReceipt.dxMemData1s_tel.Value := '';
        fmCashReceipt.dxMemData1.Post;
        fmCashReceipt.DataSource1.DataSet.Refresh;
      end else begin
        ShowMessage('현금영수증 번호가 없습니다. 확인 하세요.');
        Exit;
      end;
    end;
    fmCashReceipt.ShowModal;
//현금영수증을 발급한 후에 발급되었다는 내용을 처리...
//    if fmCashReceipt.ModalResult = mrOk then begin
//      id_col := gridRequest.GetColumnByFieldName('ID').Index;
//      for i := 0 to cnt - 1 do begin
//        l_id := gridRequest.Controller.SelectedRecords[i].Values[id_col];
//        q_update_receipt_yesno.ParamByName('ID').Value := l_id;
//        q_update_receipt_yesno.Execute;
//      end;
//      d_REQUEST_VIEW.DataSet.Refresh;
//    end;
  finally
    fmCashReceipt.Free;
  end;
end;

procedure TfmRegistedStudentMonthly.btnRefundClick(Sender: TObject);
var
  i, col, cnt, filter_cnt, select_cnt, p_kind : Integer;
  jukyo, money_str, msg, f_name, r_date, id : string;
  t_price : Double;
begin
  t_price := 0;
  cnt := gridRequest.Controller.SelectedRecordCount;
  p_kind := gridRequestPAY_KIND.EditValue;
  if p_kind > 1 then begin
    f_name := gridRequestS_NAME.EditValue;
    t_price := gridRequestOUT_AMOUNT.EditValue;
    r_date := gridRequestR_DATE.EditValue;
    id := gridRequestID.EditValue;
    JUKYO := '수강료환불(' + f_name + ')';
    money_str := FormatFloat('#,원', t_price);
    msg := jukyo + ' 금액:' + money_str + '의 자료를 등록합니다.';
    if MessageBox(Handle, PWideChar(msg), '회계자료등록', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    begin
      dm.InsertMoneyINOUT(1, 2, 5, 15, 2, StrToDateTime(R_DATE), JUKYO, LoginUserDong, id, 0, t_price, 0);
      ShowMessage('회계자료가 등록되었습니다.');
    end;
  end else begin
    ShowMessage('환불처리는 퇴강자료만 등록할 수 있습니다.');
    Exit;
  end;
end;

procedure TfmRegistedStudentMonthly.btnRefundMultiClick(Sender: TObject);
var
  i, col, cnt, filter_cnt, select_cnt, p_kind, col_name : Integer;
  jukyo, money_str, msg, f_name, r_date, id : string;
  tprice, l_price : Double;
begin
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
      l_price := gridRequestPAY_AMOUNT.EditValue;
      if l_price > 0 then
        tprice := tprice + l_price;
      gridRequest.DataController.GotoNext;
    end;
  end;
  r_date := gridRequestR_DATE.EditValue;
  JUKYO := '수강료환불(' + f_name + '외 ' + IntToStr(cnt) + '명)';
  money_str := FormatFloat('#,원', tprice);
  msg := jukyo + ' 금액:' + money_str + '의 자료를 등록합니다.';
  if MessageBox(Handle, PWideChar(msg), '회계자료등록', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    dm.InsertMoneyINOUT(1, 2, 5, 15, 2, StrToDateTime(R_DATE), JUKYO, LoginUserDong, '', 0, tprice, 0);
    ShowMessage('회계자료가 등록되었습니다.');
  end;
end;

procedure TfmRegistedStudentMonthly.btnRegistMoneyClick(Sender: TObject);
var
  i, col, col_name, cnt, filter_cnt, select_cnt : Integer;
  jukyo, money_str, msg, f_name : string;
  l_price, tprice : Double;
begin
  tprice := 0;
  if rbSelect.Checked then begin
    cnt := gridRequest.Controller.SelectedRecordCount;
    col := gridRequest.GetColumnByFieldName('PAY_AMOUNT').Index;
    col_name := gridRequest.GetColumnByFieldName('S_NAME').Index;
    for i := 0 to cnt - 1 do begin
      if i = 0 then f_name := gridRequest.Controller.SelectedRecords[i].Values[col_name];
      l_price := gridRequest.Controller.SelectedRecords[i].Values[col];
      tprice := tprice + l_price;
    end;
  end else begin
    cnt := gridRequest.DataController.FilteredRecordCount;
    gridRequest.DataController.GotoFirst;
    for i := 0 to cnt - 1 do begin
      if i = 0 then f_name := gridRequestS_NAME.EditValue;
      l_price := gridRequestPAY_AMOUNT.EditValue;
      tprice := tprice + l_price;
      gridRequest.DataController.GotoNext;
    end;
  end;
  jukyo := '수강료수입 ' + f_name + '외 총:' + IntToStr(cnt) + '건';
  money_str := FormatFloat('#,원', tprice);
  msg := jukyo + ' 금액:' + money_str + '의 자료를 등록합니다.';
  if MessageBox(Handle, PWideChar(msg), '회계자료등록', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    dm.InsertMoneyINOUT(1, 1, 1, 1, 1, DATE, JUKYO, LoginUserDong, '', tprice, 0, 0);
  end;

end;

procedure TfmRegistedStudentMonthly.btnRetrieveClick(Sender: TObject);
begin
  q_REQUEST_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
  q_REQUEST_VIEW.ParamByName('s_date').AsDate := DateTimePicker1.Date;
  q_REQUEST_VIEW.ParamByName('e_date').AsDate := DateTimePicker2.Date;
  q_REQUEST_VIEW.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
end;

procedure TfmRegistedStudentMonthly.btnSearchClearClick(Sender: TObject);
begin
  edtSearch.Text := '';
  q_REQUEST_VIEW.Filter := '';
  q_REQUEST_VIEW.Filtered := True;
  edtSearch.SetFocus;
end;

procedure TfmRegistedStudentMonthly.btnSearchClick(Sender: TObject);
begin
  if edtSearch.Text <> '' then begin
    q_REQUEST_VIEW.Filter := 'S_NAME like "%' + Trim(edtSearch.Text) + '%"';
    q_REQUEST_VIEW.Filtered := True;
  end else begin
    q_REQUEST_VIEW.Filter := '';
    q_REQUEST_VIEW.Filtered := True;
  end;
end;

procedure TfmRegistedStudentMonthly.btnSortDefaultClick(Sender: TObject);
begin
  gridRequestID.SortOrder := soAscending;
  gridRequestID.SortIndex := 0;
end;

procedure TfmRegistedStudentMonthly.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '기간별수강자현황.ini';
  gridRequest.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmRegistedStudentMonthly.btnSaveExcelClick(Sender: TObject);
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
    gridRequestColumn1.Visible := False;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    gridRequestColumn1.Visible := True;
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmRegistedStudentMonthly.DateTimePicker1Change(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudentMonthly.DateTimePicker2Change(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudentMonthly.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudentMonthly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmRegistedStudentMonthly.FormCreate(Sender: TObject);
begin
  frmYearMonth1.InitYearMonth;
end;

procedure TfmRegistedStudentMonthly.FormShow(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '월별수강자현황.ini';
  if FileExists(fname) then
    gridRequest.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
end;

procedure TfmRegistedStudentMonthly.gridRequestColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmRegistedStudentMonthly.gridRequestStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col, col2, col3 : Integer;
begin
  col := gridRequest.GetColumnByFieldName('S_KIND').Index;
  col2 := gridRequest.GetColumnByFieldName('PAY_WAY').Index;
  col3 := gridRequest.GetColumnByFieldName('PAY_KIND').Index;
  if ARecord.Values[col] > 0 then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleDefault;

  if ARecord.Values[col2] = 3 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleDefault;
  if ARecord.Values[col3] > 0 then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleDefault;
end;

initialization RegisterClasses([TfmRegistedStudentMonthly]);
end.
