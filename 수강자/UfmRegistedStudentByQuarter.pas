unit UfmRegistedStudentByQuarter;

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
  dxPSCore, dxPScxCommon, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSevenClassic, dxSkinSharp, Spin, DateUtils, dxPScxPivotGridLnk,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmRegistedStudentByQuarter = class(TForm)
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
    btnReceipt: TcxButton;
    btnSaveColumn: TcxButton;
    btnRefund: TcxButton;
    gridRequestCASH_RECEIPT_NO: TcxGridDBColumn;
    gridRequestCASH_RECEIPT_YESNO: TcxGridDBColumn;
    q_update_receipt_yesno: TUniQuery;
    btnPrint: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    REGISTED_STUDENT_BYQUARTER: TUniStoredProc;
    REGISTED_STUDENT_BYQUARTERR_NO: TIntegerField;
    REGISTED_STUDENT_BYQUARTERL_YEAR: TIntegerField;
    REGISTED_STUDENT_BYQUARTERL_STEP: TIntegerField;
    REGISTED_STUDENT_BYQUARTERL_NAME: TStringField;
    REGISTED_STUDENT_BYQUARTERL_TIME_WEEK: TIntegerField;
    REGISTED_STUDENT_BYQUARTERL_DAYS: TStringField;
    REGISTED_STUDENT_BYQUARTERL_MONTH: TIntegerField;
    REGISTED_STUDENT_BYQUARTERSTART_DATE: TStringField;
    REGISTED_STUDENT_BYQUARTEREND_DATE: TStringField;
    REGISTED_STUDENT_BYQUARTERCLASSROOM_ID: TStringField;
    REGISTED_STUDENT_BYQUARTERIS_ACTIVE: TIntegerField;
    REGISTED_STUDENT_BYQUARTERDONG_ID: TStringField;
    REGISTED_STUDENT_BYQUARTERLECTURE_ID: TStringField;
    REGISTED_STUDENT_BYQUARTERSTUDENT_ID: TStringField;
    REGISTED_STUDENT_BYQUARTERP_DATE: TStringField;
    REGISTED_STUDENT_BYQUARTERPAY_AMOUNT: TFloatField;
    REGISTED_STUDENT_BYQUARTERIS_DC: TSmallintField;
    REGISTED_STUDENT_BYQUARTERPAY_KIND: TSmallintField;
    REGISTED_STUDENT_BYQUARTERR_DATE: TStringField;
    REGISTED_STUDENT_BYQUARTEROUT_AMOUNT: TFloatField;
    REGISTED_STUDENT_BYQUARTERREG_KIND: TSmallintField;
    REGISTED_STUDENT_BYQUARTERPAY_WAY: TSmallintField;
    REGISTED_STUDENT_BYQUARTERPAYBACK_WAY: TSmallintField;
    REGISTED_STUDENT_BYQUARTERPAYBACK_BANK: TStringField;
    REGISTED_STUDENT_BYQUARTERPAYBACK_BANKID: TStringField;
    REGISTED_STUDENT_BYQUARTEROUT_KIND: TSmallintField;
    REGISTED_STUDENT_BYQUARTERPAYBACK_BANKOWNER: TStringField;
    REGISTED_STUDENT_BYQUARTERBIGO: TStringField;
    REGISTED_STUDENT_BYQUARTERREG_MONTH: TSmallintField;
    REGISTED_STUDENT_BYQUARTEROUT_MONTH: TSmallintField;
    REGISTED_STUDENT_BYQUARTERTEACHER_ID: TStringField;
    REGISTED_STUDENT_BYQUARTERS_NAME: TStringField;
    REGISTED_STUDENT_BYQUARTERS_TEL: TStringField;
    REGISTED_STUDENT_BYQUARTERS_ADDR: TStringField;
    REGISTED_STUDENT_BYQUARTERS_KIND: TSmallintField;
    REGISTED_STUDENT_BYQUARTERS_SEX: TStringField;
    REGISTED_STUDENT_BYQUARTERS_BIRTH: TStringField;
    REGISTED_STUDENT_BYQUARTERS_DONG: TStringField;
    REGISTED_STUDENT_BYQUARTERCASH_RECEIPT_NO: TStringField;
    REGISTED_STUDENT_BYQUARTERCASH_RECEIPT_YESNO: TSmallintField;
    REGISTED_STUDENT_BYQUARTERT_NAME: TStringField;
    REGISTED_STUDENT_BYQUARTERT_SEX: TStringField;
    REGISTED_STUDENT_BYQUARTERT_TEL: TStringField;
    REGISTED_STUDENT_BYQUARTERBANK_NAME: TStringField;
    REGISTED_STUDENT_BYQUARTERBANK_NO: TStringField;
    REGISTED_STUDENT_BYQUARTERID: TStringField;
    gridRequestR_NO: TcxGridDBColumn;
    REGISTED_STUDENT_BYQUARTERREG_MONTH2: TSmallintField;
    REGISTED_STUDENT_BYQUARTERREG_MONTH3: TSmallintField;
    REGISTED_STUDENT_BYQUARTEROUT_MONTH2: TSmallintField;
    REGISTED_STUDENT_BYQUARTEROUT_MONTH3: TSmallintField;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
    cxStyleGreen: TcxStyle;
    seYear: TSpinEdit;
    cbbStep1: TComboBox;
    cbbStep2: TComboBox;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    REGISTED_STUDENT_BYQUARTERL_IDX: TSmallintField;
    gridRequestL_IDX: TcxGridDBColumn;
    REGISTED_STUDENT_BYQUARTERREG_PRICE1: TFloatField;
    REGISTED_STUDENT_BYQUARTERREG_PRICE2: TFloatField;
    REGISTED_STUDENT_BYQUARTERREG_PRICE3: TFloatField;
    REGISTED_STUDENT_BYQUARTEROUT_PRICE1: TFloatField;
    REGISTED_STUDENT_BYQUARTEROUT_PRICE2: TFloatField;
    REGISTED_STUDENT_BYQUARTEROUT_PRICE3: TFloatField;
    gridRequestREG_PRICE1: TcxGridDBColumn;
    gridRequestREG_PRICE2: TcxGridDBColumn;
    gridRequestREG_PRICE3: TcxGridDBColumn;
    gridRequestOUT_PRICE1: TcxGridDBColumn;
    gridRequestOUT_PRICE2: TcxGridDBColumn;
    gridRequestOUT_PRICE3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSearchClearClick(Sender: TObject);
    procedure btnSaveExcelClick(Sender: TObject);
    procedure gridRequestStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnRegistMoneyClick(Sender: TObject);
    procedure btnCommentClick(Sender: TObject);
    procedure btnSortDefaultClick(Sender: TObject);
    procedure btnReceiptClick(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRefundClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure gridRequestS_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestREG_MONTHCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestREG_MONTH2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridRequestREG_MONTH3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridRequestS_SEXStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure gridRequestCustomDrawGroupSummaryCell(Sender: TObject;
      ACanvas: TcxCanvas; ARow: TcxGridGroupRow; AColumn: TcxGridColumn;
      ASummaryItem: TcxDataSummaryItem;
      AViewInfo: TcxCustomGridViewCellViewInfo; var ADone: Boolean);
    procedure gridRequestL_IDXCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRegistedStudentByQuarter: TfmRegistedStudentByQuarter;

implementation

uses GlobalVar, Udm, UfmCashReceipt, UfmMoneyInOutEdit3;

{$R *.dfm}

procedure TfmRegistedStudentByQuarter.btnCommentClick(Sender: TObject);
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

procedure TfmRegistedStudentByQuarter.btnPrintClick(Sender: TObject);
var
  titleStr, lecture_name : string;
begin
  titleStr := '강좌-분기별 수강자 현황' + #13#10 +
              '=======================' + #13#10 +
              '(' + IntToStr(seYear.Value) + '년 ' + cbbStep1.Text + ' ~ ' + cbbStep1.Text + ')';

  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
//  dxComponentPrinter1Link1.ReportFootnotes.Text := '분기별 수강자 통계' + #13#10 +
//        '=========================================' + #13#10 +
//        '일반 수강자 : 수강료(30,000원) * 10명 = 300,000원' + #13#10 +
//        '감면 수강자 : 수강료(15,000원) * 10명 = 150,000원' + #13#10 +
//        '일반 퇴강자 : 반환금(10,000원) * 5명 = 50,000원' + #13#10 +
//        '감면 퇴강자 : 반환금(5,000원) * 10명 = 50,000원' + #13#10 +
//        '=========================================' + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 +
//         #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 +
//         #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 +
//         #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 +
//         #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 +
//         #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10 + #13#10;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmRegistedStudentByQuarter.btnReceiptClick(Sender: TObject);
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
      if not VarIsNull(gridRequest.Controller.SelectedRecords[i].Values[tel_col]) then begin
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

procedure TfmRegistedStudentByQuarter.btnRefundClick(Sender: TObject);
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

procedure TfmRegistedStudentByQuarter.btnRegistMoneyClick(Sender: TObject);
var
  i, col, col_name, cnt, filter_cnt, select_cnt : Integer;
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
      col_name := gridRequest.GetColumnByFieldName('S_NAME').Index;
      for i := 0 to cnt - 1 do begin
        if i = 0 then f_name := gridRequest.Controller.SelectedRecords[i].Values[col_name];
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

procedure TfmRegistedStudentByQuarter.btnRetrieveClick(Sender: TObject);
begin
  REGISTED_STUDENT_BYQUARTER.ParamByName('c_year').Value := seYear.Value;
  REGISTED_STUDENT_BYQUARTER.ParamByName('s_step').Value := cbbStep1.ItemIndex + 1;
  REGISTED_STUDENT_BYQUARTER.ParamByName('e_step').Value := cbbStep2.ItemIndex + 1;
  REGISTED_STUDENT_BYQUARTER.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
end;

procedure TfmRegistedStudentByQuarter.btnSearchClearClick(Sender: TObject);
begin
  edtSearch.Text := '';
  REGISTED_STUDENT_BYQUARTER.Filter := '';
  REGISTED_STUDENT_BYQUARTER.Filtered := True;
  edtSearch.SetFocus;
end;

procedure TfmRegistedStudentByQuarter.btnSearchClick(Sender: TObject);
begin
  if edtSearch.Text <> '' then begin
    REGISTED_STUDENT_BYQUARTER.Filter := 'S_NAME like "%' + Trim(edtSearch.Text) + '%"';
    REGISTED_STUDENT_BYQUARTER.Filtered := True;
  end else begin
    REGISTED_STUDENT_BYQUARTER.Filter := '';
    REGISTED_STUDENT_BYQUARTER.Filtered := True;
  end;
end;

procedure TfmRegistedStudentByQuarter.btnSortDefaultClick(Sender: TObject);
begin
  gridRequestR_NO.SortOrder := soAscending;
  gridRequestR_NO.SortIndex := 0;
end;

procedure TfmRegistedStudentByQuarter.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '기간강좌별수강자현황.ini';
  gridRequest.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmRegistedStudentByQuarter.btnSaveExcelClick(Sender: TObject);
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
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmRegistedStudentByQuarter.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRegistedStudentByQuarter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmRegistedStudentByQuarter.FormCreate(Sender: TObject);
var
  mmon : Integer;
  mstep : Integer;
begin
  seYear.Value := YearOf(Date);
  mmon := MonthOf(Date);
  case mmon of
    1..3: mstep := 0;
    4..6: mstep := 1;
    7..9: mstep := 2;
    10..12: mstep := 3;
  end;
  cbbStep1.ItemIndex := mstep;
  cbbStep2.ItemIndex := mstep;
end;

procedure TfmRegistedStudentByQuarter.FormShow(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '분기강좌별수강자현황.ini';
  if FileExists(fname) then
    gridRequest.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
end;

procedure TfmRegistedStudentByQuarter.gridRequestCustomDrawGroupSummaryCell(
  Sender: TObject; ACanvas: TcxCanvas; ARow: TcxGridGroupRow;
  AColumn: TcxGridColumn; ASummaryItem: TcxDataSummaryItem;
  AViewInfo: TcxCustomGridViewCellViewInfo; var ADone: Boolean);
var
  Value1, value2, value3: Double;
  AGroupIndex: Integer;
begin
//  AGroupIndex := AViewInfo.GridView.DataController.Groups.DataGroupIndexByRowIndex[ARow.Index];
//  Value1 := AViewInfo.GridView.DataController.summary.GroupSummaryValues[AGroupIndex, 1];
//  Value2 := AViewInfo.GridView.DataController.summary.GroupSummaryValues[AGroupIndex, 2];
//  Value3 := AViewInfo.GridView.DataController.summary.GroupSummaryValues[AGroupIndex, 3];
//  AViewInfo.GridView.DataController.summary.GroupSummaryValues[AGroupIndex, 3] := Value1 + value2 + value3;
//  ADone := True;
end;

procedure TfmRegistedStudentByQuarter.gridRequestL_IDXCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('L_IDX').Index] := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('L_NAME').Index];
end;

procedure TfmRegistedStudentByQuarter.gridRequestREG_MONTH2CustomDrawCell(
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

procedure TfmRegistedStudentByQuarter.gridRequestREG_MONTH3CustomDrawCell(
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

procedure TfmRegistedStudentByQuarter.gridRequestREG_MONTHCustomDrawCell(
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

procedure TfmRegistedStudentByQuarter.gridRequestStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col, col2, col3 : Integer;
begin
//  col := gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index;
//  col2 := gridRequest.GetColumnByFieldName('PAY_WAY').Index;
//  if ARecord.Values[col] > 0 then
//    AStyle := cxStyleRed
//  else if ARecord.Values[col2] = 3 then
//    AStyle := cxStyleBlue
//  else
//    AStyle := cxStyleDefault;
end;

procedure TfmRegistedStudentByQuarter.gridRequestS_KINDCustomDrawCell(
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
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clWhite;
    end;
  end;
end;

procedure TfmRegistedStudentByQuarter.gridRequestS_SEXStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col_out, col_dc, col3 : Integer;
begin
  col_out := gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index;
  col_dc := gridRequest.GetColumnByFieldName('IS_DC').Index;
  if ARecord.Values[col_out] > 0 then begin  //퇴강자
    if ARecord.Values[col_dc] > 1 then  //감면자
      AStyle := cxStyleBlue
    else
      AStyle := cxStyleRed;
  end else begin
    if ARecord.Values[col_dc] > 1 then
      AStyle := cxStyleGreen
    else
      AStyle := cxStyleDefault;
  end;
end;

initialization RegisterClasses([TfmRegistedStudentByQuarter]);
end.
