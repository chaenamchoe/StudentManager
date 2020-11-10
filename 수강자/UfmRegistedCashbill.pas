unit UfmRegistedCashbill;

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
  TfmRegistedCashbill = class(TForm)
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
    cxStyleBlue: TcxStyle;
    btnComment: TcxButton;
    gridRequestIS_DC: TcxGridDBColumn;
    gridRequestPAYBACK_BANKOWNER: TcxGridDBColumn;
    gridRequestBIGO: TcxGridDBColumn;
    q_REGISTED_LECTURE_UPD: TUniQuery;
    btnSortDefault: TcxButton;
    btnReceipt: TcxButton;
    btnSaveColumn: TcxButton;
    gridRequestS_DONG: TcxGridDBColumn;
    gridRequestCASH_RECEIPT_NO: TcxGridDBColumn;
    gridRequestCASH_RECEIPT_YESNO: TcxGridDBColumn;
    q_update_receipt_yesno: TUniQuery;
    btnPrint: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    gridRequestR_NO: TcxGridDBColumn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
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
    btnCancelPartial: TcxButton;
    cxCheckBox1: TcxCheckBox;
    REGISTED_LECTURE_UPD_CASHBILL: TUniQuery;
    CASHBILL_SEL_REFID: TUniStoredProc;
    d_CASHBILL_SEL_REFID: TDataSource;
    CASHBILL_SEL_REFIDID: TIntegerField;
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
    procedure btnReceiptClick(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure gridRequestS_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestR_NOGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
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
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure btnCancelPartialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRegistedCashbill: TfmRegistedCashbill;

implementation

uses GlobalVar, Udm, UfmCashReceipt, UfmRefundPayment, UfmMoneyInOutEdit3,
  UfmTotalReport;

{$R *.dfm}

procedure TfmRegistedCashbill.btnCancelPartialClick(Sender: TObject);
begin
  gridRequest.DataController.SelectAll;
  btnReceipt.Click;
end;

procedure TfmRegistedCashbill.btnCommentClick(Sender: TObject);
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

procedure TfmRegistedCashbill.btnFilterDialogClick(Sender: TObject);
begin
  gridRequest.Filtering.RunCustomizeDialog;
end;

procedure TfmRegistedCashbill.btnPrintClick(Sender: TObject);
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

procedure TfmRegistedCashbill.btnReceiptClick(Sender: TObject);
var
  i, cnt, name_col, tel_col, price_col, id_col, date_col : Integer;
  sname, stel, l_id,ItemName : string;
  pay_amount, out_amount, cash_amount : Double;
  pdate : TDateTime;
  rid, success, cash_kind : Integer;
  msg : string;
begin
  d_REQUEST_VIEW.DataSet.DisableControls;
  with gridRequest do begin
    cnt := Controller.SelectedRecordCount;
    success := 0;
    for i := 0 to cnt - 1 do begin
      rid := Controller.SelectedRecords[i].RecordIndex;
      stel := VarToStrDef(DataController.GetValue(rid, gridRequestCASH_RECEIPT_NO.Index), '');
      if (Length(stel) > 5) then begin
        l_id := DataController.GetValue(rid, gridRequestID.Index);
        sname := DataController.GetValue(rid, gridRequestS_NAME.Index);
        pay_amount := DataController.GetValue(rid, gridRequestPAY_AMOUNT.index);
        out_amount := DataController.GetValue(rid, gridRequestOUT_AMOUNT.index);
        pdate := VarToDateTime(DataController.GetValue(rid, gridRequestP_DATE.Index));
        ItemName := '수강료';
        cash_kind := 1;
        cash_amount := pay_amount;
        CASHBILL_SEL_REFID.ParamByName('RID').Value := l_id;
        CASHBILL_SEL_REFID.ParamByName('CASH_KIND').Value := cash_kind;
        CASHBILL_SEL_REFID.Active := True;
        d_CASHBILL_SEL_REFID.DataSet.Refresh;
        if CASHBILL_SEL_REFIDID.Value > 0 then begin
          msg := DateTimeToStr(pdate) + ' ' + sname + ' 자료는 이미 등록된 자료입니다.'    ;
          ShowMessage(msg);
        end else begin
          if out_amount > 0 then begin   //cash_kind 1=판매거래, 2=전액취소, 3=부분취소
            if pay_amount = out_amount then cash_kind := 2;
            if pay_amount > out_amount then cash_kind := 3;
            cash_amount := out_amount;
          end;
          CASHBILL_IU.ParamByName('CASHBILL_NO').Value := StringReplace(stel, '-', '', [rfReplaceAll]);
          CASHBILL_IU.ParamByName('C_DATE').Value := pdate;
          CASHBILL_IU.ParamByName('ITEM_NAME').Value := ItemName;
          CASHBILL_IU.ParamByName('AMOUNT').Value := cash_amount;
          CASHBILL_IU.ParamByName('TAX').Value := 0;
          CASHBILL_IU.ParamByName('SERVICE_CHARGE').Value := 0;
          CASHBILL_IU.ParamByName('DATA_STATUS').Value := -21002;
          CASHBILL_IU.ParamByName('MEMBER_ID').Value := sname;
          CASHBILL_IU.ParamByName('CASH_KIND').Value := cash_kind;
          CASHBILL_IU.ParamByName('REF_UID').Value := l_id;
          CASHBILL_IU.ExecProc;

          REGISTED_LECTURE_UPD_CASHBILL.ParamByName('id').Value := l_id;
          REGISTED_LECTURE_UPD_CASHBILL.ExecSQL;

          Inc(success);
        end;
      end;
    end;
  end;
  d_REQUEST_VIEW.DataSet.Refresh;
  d_REQUEST_VIEW.DataSet.EnableControls;
  ShowMessage(IntToStr(success) + ' 건의 자료가 등록되었습니다.');
end;

procedure TfmRegistedCashbill.btnRetrieveClick(Sender: TObject);
begin
  REGISTED_STUDENT_BYDATE.DisableControls;
  REGISTED_STUDENT_BYDATE.ParamByName('s_date').AsDateTime := DateTimePicker1.Date;
  REGISTED_STUDENT_BYDATE.ParamByName('e_date').AsDateTime := DateTimePicker2.Date;
  REGISTED_STUDENT_BYDATE.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
  REGISTED_STUDENT_BYDATE.EnableControls;
end;

procedure TfmRegistedCashbill.btnSearchClearClick(Sender: TObject);
begin
  edtSearch.Text := '';
  REGISTED_STUDENT_BYDATE.Filter := '';
  REGISTED_STUDENT_BYDATE.Filtered := True;
  edtSearch.SetFocus;
end;

procedure TfmRegistedCashbill.btnSearchClick(Sender: TObject);
begin
  if edtSearch.Text <> '' then begin
    REGISTED_STUDENT_BYDATE.Filter := 'S_NAME like "%' + Trim(edtSearch.Text) + '%"';
    REGISTED_STUDENT_BYDATE.Filtered := True;
  end else begin
    REGISTED_STUDENT_BYDATE.Filter := '';
    REGISTED_STUDENT_BYDATE.Filtered := True;
  end;
end;

procedure TfmRegistedCashbill.btnSortDefaultClick(Sender: TObject);
begin
  gridRequestID.SortOrder := soAscending;
  gridRequestID.SortIndex := 0;
end;

procedure TfmRegistedCashbill.cxCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxCheckBox1.Checked then begin
    REGISTED_STUDENT_BYDATE.Filter := 'CASH_RECEIPT_NO <> ""';
    REGISTED_STUDENT_BYDATE.Filtered := True;
  end else begin
    REGISTED_STUDENT_BYDATE.Filter := '';
    REGISTED_STUDENT_BYDATE.Filtered := True;
  end;
end;

procedure TfmRegistedCashbill.cxDateEdit1PropertiesEditValueChanged(
  Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedCashbill.cxDateEdit2PropertiesEditValueChanged(
  Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedCashbill.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '현금영수증등록.ini';
  gridRequest.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmRegistedCashbill.btnSaveExcelClick(Sender: TObject);
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

procedure TfmRegistedCashbill.DateTimePicker1Change(Sender: TObject);
begin
  If DateTimePicker1.Droppeddown then exit;
end;

procedure TfmRegistedCashbill.DateTimePicker1CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedCashbill.DateTimePicker2Change(Sender: TObject);
begin
  If DateTimePicker2.Droppeddown then exit;
end;

procedure TfmRegistedCashbill.DateTimePicker2CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedCashbill.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedCashbill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmRegistedCashbill.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
end;

procedure TfmRegistedCashbill.FormShow(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '현금영수증등록.ini';
  if FileExists(fname) then
    gridRequest.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
end;

procedure TfmRegistedCashbill.gridRequestREG_MONTH2CustomDrawCell(
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

procedure TfmRegistedCashbill.gridRequestREG_MONTH3CustomDrawCell(
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

procedure TfmRegistedCashbill.gridRequestREG_MONTHCustomDrawCell(
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

procedure TfmRegistedCashbill.gridRequestR_NOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex + 1);
end;

procedure TfmRegistedCashbill.gridRequestStylesGetContentStyle(
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

procedure TfmRegistedCashbill.gridRequestS_KINDCustomDrawCell(
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

initialization RegisterClasses([TfmRegistedCashbill]);
end.
