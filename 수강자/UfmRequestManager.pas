unit UfmRequestManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, Buttons, Spin, ExtCtrls, cxDBLookupComboBox, cxTextEdit,
  Uni, cxImageComboBox, cxContainer, cxMaskEdit, cxDropDownEdit, DateUtils,
  MemDS, DBAccess, dxSkinOffice2013White, cxGridExportLink, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxVariants,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, UfrmYearQuarter, cxRadioGroup, cxCheckBox, ImgList,
  Menus, cxButtons, cxGridCustomPopupMenu, cxGridPopupMenu, cxProgressBar, cxLabel,
  cxCalendar, cxCurrencyEdit;

type
  TfmRequestManager = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    gridRequest: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridLectureSelect: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    gridLectureSelectID: TcxGridDBColumn;
    gridLectureSelectDONG_ID: TcxGridDBColumn;
    gridLectureSelectL_YEAR: TcxGridDBColumn;
    gridLectureSelectL_STEP: TcxGridDBColumn;
    gridLectureSelectL_NAME: TcxGridDBColumn;
    gridRequestL_NAME: TcxGridDBColumn;
    gridRequestLECTURE_ID: TcxGridDBColumn;
    gridRequestSTUDENT_ID: TcxGridDBColumn;
    gridRequestP_DATE: TcxGridDBColumn;
    gridRequestPAY_AMOUNT: TcxGridDBColumn;
    gridRequestS_NAME: TcxGridDBColumn;
    gridRequestS_TEL: TcxGridDBColumn;
    gridRequestS_SEX: TcxGridDBColumn;
    gridRequestID: TcxGridDBColumn;
    gridRequestPAY_KIND: TcxGridDBColumn;
    gridRequestR_DATE: TcxGridDBColumn;
    gridRequestOUT_AMOUNT: TcxGridDBColumn;
    gridRequestREG_KIND: TcxGridDBColumn;
    gridRequestS_BIRTH: TcxGridDBColumn;
    gridLectureSelectPLAN_MEN: TcxGridDBColumn;
    gridLectureSelectREGIST_MEN: TcxGridDBColumn;
    gridLectureSelectWAIT_MEN: TcxGridDBColumn;
    gridLectureSelectDROP_MEN: TcxGridDBColumn;
    gridRequestPAY_WAY: TcxGridDBColumn;
    gridRequestOUT_KIND: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    gridRequestPAYBACK_WAY: TcxGridDBColumn;
    gridRequestPAYBACK_BANK: TcxGridDBColumn;
    gridRequestPAYBACK_BANKID: TcxGridDBColumn;
    gridRequestS_ADDR: TcxGridDBColumn;
    gridRequestPAYBACK_BANKOWNER: TcxGridDBColumn;
    frmYearQuarter1: TfrmYearQuarter;
    rbSelect: TcxRadioButton;
    rbAll: TcxRadioButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    cxStyleGreen: TcxStyle;
    gridRequestIS_DC: TcxGridDBColumn;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    btnRetrieve: TcxButton;
    btnRefreshData: TcxButton;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnOut: TcxButton;
    btnOutEdit: TcxButton;
    btnOutCancel: TcxButton;
    btnRegistMondy: TcxButton;
    btnRefund: TcxButton;
    btnExport: TcxButton;
    btnPrint: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    gridLectureSelectL_PRICE: TcxGridDBColumn;
    btnChangeLecture: TcxButton;
    gridRequestColumn1: TcxGridDBColumn;
    gridLectureSelectL_IDX: TcxGridDBColumn;
    dxComponentPrinter2: TdxComponentPrinter;
    dxComponentPrinter2Link1: TdxGridReportLink;
    btnExport2: TcxButton;
    gridRequestREG_PRICE1: TcxGridDBColumn;
    gridRequestREG_PRICE2: TcxGridDBColumn;
    gridRequestREG_PRICE3: TcxGridDBColumn;
    gridRequestOUT_PRICE1: TcxGridDBColumn;
    gridRequestOUT_PRICE2: TcxGridDBColumn;
    gridRequestOUT_PRICE3: TcxGridDBColumn;
    gridLectureSelectMONTH1_PRICE: TcxGridDBColumn;
    gridLectureSelectMONTH2_PRICE: TcxGridDBColumn;
    gridLectureSelectMONTH3_PRICE: TcxGridDBColumn;
    gridLectureSelectPARENT_LECTURE_ID: TcxGridDBColumn;
    Splitter1: TSplitter;
    gridRequestOUT_WHEN: TcxGridDBColumn;
    btnSaveColumn: TcxButton;
    btnSMS: TcxButton;
    gridRequestBIGO: TcxGridDBColumn;
    gridRequestCASHBILL_REGISTED: TcxGridDBColumn;
    btnOut2: TcxButton;
    gridRequestR_DATE2: TcxGridDBColumn;
    gridRequestOUT_KIND2: TcxGridDBColumn;
    gridRequestOUT_WHEN2: TcxGridDBColumn;
    gridRequestOUT_AMOUNT2: TcxGridDBColumn;
    btnOutCancel2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure gridLectureSelectColumn1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnOutClick(Sender: TObject);
    procedure gridLectureSelectFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnExportClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure gridRequestFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure gridRequestStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnEditClick(Sender: TObject);
    procedure btnRegistMondyClick(Sender: TObject);
    procedure frmYearQuarter1cbQuarterChange(Sender: TObject);
    procedure frmYearQuarter1cbYearChange(Sender: TObject);
    procedure gridRequestCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnRefreshDataClick(Sender: TObject);
    procedure btnRefundClick(Sender: TObject);
    procedure btnOutCancelClick(Sender: TObject);
    procedure btnOutEditClick(Sender: TObject);
    procedure gridRequestIS_DCCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure btnChangeLectureClick(Sender: TObject);
    procedure gridRequestColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
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
    procedure btnExport2Click(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure btnSMSClick(Sender: TObject);
    procedure btnOut2Click(Sender: TObject);
    procedure btnOutCancel2Click(Sender: TObject);
  private
    procedure RetrieveRequestData;
    procedure RefreshLectureCountInfo(lecture_id: string);
    function CountLectureRegisted(lecture_id: string): integer;
    function CountLectureRegisted2(lecture_id: string): integer;
    procedure UpdateStudent(S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO: string; S_KIND, RECEIPT_YESNO: Integer);
    procedure UpdateRegistedLecture(REG_DATE, CASH_RECEIPT : string; PAY_AMOUNT, MON_PRICE1, MON_PRICE2, MON_PRICE3 : Double;
        IS_DC, PAY_WAY, MONTH1, MONTH2, MONTH3 : Integer);
    function CountLectureDC(lecture_id: string): integer;
    procedure ExportToExcel(fname: string);
    procedure ResetColumnLabel;
    procedure RefreshLectureData;
    { Private declarations }
  public
    { Public declarations }
    function CountStudent(student_name : string): integer;
    procedure RefreshAllData(LectureID : string);
    procedure SelectLecture(LectureID : string);

  end;

var
  fmRequestManager: TfmRequestManager;

implementation

uses GlobalVar, Udm, UfmRequestEdit, UfmSelectStudent, UfmRefundPayment,
  UfmRegistWait, uCommonLogic, UfmRequestEdit2, UfmRequestChange,
  UfmMoneyInOutEdit3, uSendingSMS;

{$R *.dfm}

procedure TfmRequestManager.FormCreate(Sender: TObject);
var
  mon : integer;
  fname : string;
begin
  fname := gsDefaultFolder + '수강등록.ini';
  if FileExists(fname) then
    gridRequest.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');

  frmYearQuarter1.InitYearMonth;
  mon := MonthOf(Date);
  case mon of
    1..3 : frmYearQuarter1.cbQuarter.ItemIndex := 0;
    4..6 : frmYearQuarter1.cbQuarter.ItemIndex := 1;
    7..9 : frmYearQuarter1.cbQuarter.ItemIndex := 2;
    10..12 : frmYearQuarter1.cbQuarter.ItemIndex := 3;
  end;
  btnRetrieve.Click;
end;

procedure TfmRequestManager.frmYearQuarter1cbQuarterChange(Sender: TObject);
begin
  frmYearQuarter1.cbQuarterChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmRequestManager.frmYearQuarter1cbYearChange(Sender: TObject);
begin
  frmYearQuarter1.cbYearChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmRequestManager.btnRefreshDataClick(Sender: TObject);
begin
  try
    RefreshLectureData;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfmRequestManager.RefreshLectureData;
var
  i, cnt : Integer;
  l_id : string;
begin
  dm.d_lecture_select.DataSet.DisableControls;
  cnt := gridLectureSelect.DataController.RecordCount;
  gridLectureSelect.DataController.GotoFirst;
  for i := 0 to cnt - 1 do begin
    l_id := gridLectureSelectID.EditValue;
    RefreshLectureCountInfo(l_id);
    gridLectureSelect.DataController.GotoNext;
  end;
  dm.d_lecture_select.DataSet.Refresh;
  dm.d_lecture_select.DataSet.First;
  dm.d_lecture_select.DataSet.EnableControls;
end;

procedure TfmRequestManager.btnRefundClick(Sender: TObject);
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
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    fmMoneyInOutEdit3.Free;
  end;
end;

procedure TfmRequestManager.btnRegistMondyClick(Sender: TObject);
var
  i, col, col2, cnt : Integer;
  money_str, msg, f_name : string;
  l_price, tprice : Double;
  BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  fmMoneyInOutEdit3 := TfmMoneyInOutEdit3.Create(Self);
  try
    try
      tprice := 0;
      if rbSelect.Checked then begin
        cnt := gridRequest.Controller.SelectedRecordCount;
        col := gridRequest.GetColumnByFieldName('PAY_AMOUNT').Index;
        col2 := gridRequest.GetColumnByFieldName('S_NAME').Index;
        for i := 0 to cnt - 1 do begin
          if i = 0 then
            f_name := gridRequest.Controller.SelectedRecords[0].Values[col2];
          l_price := gridRequest.Controller.SelectedRecords[i].Values[col];
          tprice := tprice + l_price;
        end;
      end else begin
        cnt := gridRequest.DataController.RecordCount;
        gridRequest.DataController.GotoFirst;
        gridRequest.DataController.GotoNext;
        f_name := gridRequestS_NAME.EditValue;
        for i := 1 to cnt do begin
          l_price := gridRequestPAY_AMOUNT.EditValue;
          tprice := tprice + l_price;
          //ShowMessage(IntToStr(i) + ' = ' + FloatToStr(tprice));
          gridRequest.DataController.GotoNext;
        end;
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
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    fmMoneyInOutEdit3.Free;
  end;
end;

procedure TfmRequestManager.btnRetrieveClick(Sender: TObject);
begin
  try
    ResetColumnLabel;
    dm.q_lecture_select.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
    dm.q_lecture_select.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
    dm.q_lecture_select.Active := True;
    dm.d_lecture_select.DataSet.Refresh;

    dm.q_REQUEST_VIEW.ParamByName('lecture_id').AsString := dm.q_lecture_selectID.AsString;
    dm.q_REQUEST_VIEW.Active := True;
    dm.d_REQUEST_VIEW.DataSet.Refresh;

    if dm.q_lecture_select.RecordCount > 0 then begin
      btnAdd.Enabled := True;
    end else begin
      btnAdd.Enabled := False;
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfmRequestManager.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '수강등록.ini';
  gridRequest.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmRequestManager.btnSMSClick(Sender: TObject);
var
  c_name, c_tel : string;
  i, cnt : Integer;
begin
  fmSendingSMS := TfmSendingSMS.Create(Self);
  try
    fmSendingSMS.mdSMS.Close;
    fmSendingSMS.mdSMS.Open;
    with gridRequest do begin
      cnt := Controller.SelectedRecordCount;
      for i := 0 to cnt - 1 do begin
        c_name := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('S_NAME').Index);
        c_tel := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('S_TEL').Index);
        if c_tel <> '' then begin
          fmSendingSMS.mdSMS.Append;
          fmSendingSMS.mdSMS.FieldByName('cname').Value := c_name;
          fmSendingSMS.mdSMS.FieldByName('ctel').Value := c_tel;
          fmSendingSMS.mdSMS.FieldByName('check_send').Value := 1;
          fmSendingSMS.mdSMS.Post;
        end;
      end;
      fmSendingSMS.mdSMS.First;
    end;
    fmSendingSMS.ShowModal;
  finally
    fmSendingSMS.Free;
  end;
end;

procedure TfmRequestManager.ResetColumnLabel;
var
  mStep : Integer;
begin
  mStep := frmYearQuarter1.cbQuarter.ItemIndex;
  case mStep of
    0: begin
      gridRequestREG_PRICE1.Caption := '수강1월';
      gridRequestREG_PRICE2.Caption := '수강2월';
      gridRequestREG_PRICE3.Caption := '수강3월';
      gridRequestOUT_PRICE1.Caption := '환불1월';
      gridRequestOUT_PRICE2.Caption := '환불2월';
      gridRequestOUT_PRICE3.Caption := '환불3월';
    end;
    1: begin
      gridRequestREG_PRICE1.Caption := '수강4월';
      gridRequestREG_PRICE2.Caption := '수강5월';
      gridRequestREG_PRICE3.Caption := '수강6월';
      gridRequestOUT_PRICE1.Caption := '환불4월';
      gridRequestOUT_PRICE2.Caption := '환불5월';
      gridRequestOUT_PRICE3.Caption := '환불6월';
    end;
    2: begin
      gridRequestREG_PRICE1.Caption := '수강7월';
      gridRequestREG_PRICE2.Caption := '수강8월';
      gridRequestREG_PRICE3.Caption := '수강9월';
      gridRequestOUT_PRICE1.Caption := '환불7월';
      gridRequestOUT_PRICE2.Caption := '환불8월';
      gridRequestOUT_PRICE3.Caption := '환불9월';
    end;
    3: begin
      gridRequestREG_PRICE1.Caption := '수강10월';
      gridRequestREG_PRICE2.Caption := '수강11월';
      gridRequestREG_PRICE3.Caption := '수강12월';
      gridRequestOUT_PRICE1.Caption := '환불10월';
      gridRequestOUT_PRICE2.Caption := '환불11월';
      gridRequestOUT_PRICE3.Caption := '환불12월';
    end;
  end;
end;

procedure TfmRequestManager.SelectLecture(LectureID: string);
begin
  dm.d_lecture_select.DataSet.Locate('ID', LectureID, []);
end;

procedure TfmRequestManager.RefreshAllData(LectureID : string);
begin
  dm.d_REQUEST_VIEW.DataSet.DisableControls;
  dm.d_REQUEST_VIEW.DataSet.Refresh;
  dm.d_REQUEST_VIEW.DataSet.EnableControls;
  RefreshLectureCountInfo(LectureID);
end;

procedure TfmRequestManager.RefreshLectureCountInfo(lecture_id : string);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    dm.d_lecture_select.DataSet.DisableControls;
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('Update LECTURE_ACTIVE set REGIST_MEN = :REGIST_MEN, WAIT_MEN = :WAIT_MEN, DROP_MEN = :DROP_MEN ');
      SQL.Add('where id = :id ');
      ParamByName('REGIST_MEN').AsInteger := CountLectureRegisted(lecture_id);
      ParamByName('WAIT_MEN').AsFloat := CountLectureDC(lecture_id); //환불자는 펑션2로 처리...
      ParamByName('DROP_MEN').AsFloat := CountLectureRegisted2(lecture_id); //환불자는 펑션2로 처리...
      ParamByName('id').AsString := lecture_id;
      Execute;
    end;
    dm.d_lecture_select.DataSet.Refresh;
    dm.d_lecture_select.DataSet.Locate('id', lecture_id, []);
    dm.d_lecture_select.DataSet.EnableControls;
  finally
    Query.Free;
  end;
end;

function TfmRequestManager.CountLectureRegisted(lecture_id : string): integer;
var
  Query : TUniQuery;
  cnt : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) as CNT from REGISTED_LECTURE ');
      SQL.Add('where LECTURE_ID = :LECTURE_ID' );
      ParamByName('LECTURE_ID').AsString := LECTURE_ID;
      Active := True;
    end;
    cnt := Query.FieldByName('CNT').AsInteger;
    if cnt > 0 then
      Result := cnt
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

function TfmRequestManager.CountLectureRegisted2(lecture_id : string): integer;
var
  Query : TUniQuery;
  cnt : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) as CNT from REGISTED_LECTURE ');
      SQL.Add('where LECTURE_ID = :LECTURE_ID and OUT_AMOUNT > 0 ' );
      ParamByName('LECTURE_ID').AsString := LECTURE_ID;
      Active := True;
    end;
    cnt := Query.FieldByName('CNT').AsInteger;
    if cnt > 0 then
      Result := cnt
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

function TfmRequestManager.CountLectureDC(lecture_id : string): integer;
var
  Query : TUniQuery;
  cnt : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) as CNT from REGISTED_LECTURE ');
      SQL.Add('where LECTURE_ID = :LECTURE_ID and IS_DC > 1 and IS_DC < 8' );
      ParamByName('LECTURE_ID').AsString := LECTURE_ID;
      Active := True;
    end;
    cnt := Query.FieldByName('CNT').AsInteger;
    if cnt > 0 then
      Result := cnt
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

procedure TfmRequestManager.btnAddClick(Sender: TObject);
var
  LectureID, LectureName : string;
  mStep : Integer;
begin
  fmRequestEdit := TfmRequestEdit.Create(Self);
  try
    try
      mStep := frmYearQuarter1.cbQuarter.ItemIndex;
      case mStep of
        0: begin
          fmRequestEdit.chkMon1.Caption := '1월';
          fmRequestEdit.chkMon2.Caption := '2월';
          fmRequestEdit.chkMon3.Caption := '3월';
        end;
        1: begin
          fmRequestEdit.chkMon1.Caption := '4월';
          fmRequestEdit.chkMon2.Caption := '5월';
          fmRequestEdit.chkMon3.Caption := '6월';
        end;
        2: begin
          fmRequestEdit.chkMon1.Caption := '7월';
          fmRequestEdit.chkMon2.Caption := '8월';
          fmRequestEdit.chkMon3.Caption := '9월';
        end;
        3: begin
          fmRequestEdit.chkMon1.Caption := '10월';
          fmRequestEdit.chkMon2.Caption := '11월';
          fmRequestEdit.chkMon3.Caption := '12월';
        end;
      end;

      dm.q_lecture_lookstep.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
      dm.q_lecture_lookstep.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
      dm.q_lecture_lookstep.Active := True;
      dm.d_lecture_lookstep.DataSet.Refresh;

      LectureID := dm.q_lecture_selectID.AsString;
      LectureName := dm.q_lecture_selectL_NAME.AsString;
      fmRequestEdit.LectureYEAR := StrToInt(frmYearQuarter1.cbYear.Text);
      fmRequestEdit.LectureSTEP := frmYearQuarter1.cbQuarter.ItemIndex + 1;
      fmRequestEdit.LectureID := LectureID;
      fmRequestEdit.cbLectureName.EditValue := LectureID;
      fmRequestEdit.LecturePrice := gridLectureSelectL_PRICE.EditValue;
      fmRequestEdit.Month1Price := gridLectureSelectMONTH1_PRICE.EditValue;
      fmRequestEdit.Month2Price := gridLectureSelectMONTH2_PRICE.EditValue;
      fmRequestEdit.Month3Price := gridLectureSelectMONTH3_PRICE.EditValue;

      dm.q_lecture_select.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
      dm.q_lecture_select.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
      dm.q_lecture_select.Active := True;
      dm.d_lecture_select.DataSet.Refresh;

      fmRequestEdit.Caption := '수강신청 등록/수정 - [' + LectureName + ']';
      fmRequestEdit.edtPrice.Refresh;
      fmRequestEdit.ShowModal;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    RefreshLectureCountInfo(LectureID);
    fmRequestEdit.Free;
  end;
end;

procedure TfmRequestManager.btnDeleteClick(Sender: TObject);
var
  rID : string;
  qry : TUniQuery;
  LectureID : string;
begin
  try
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
      + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      LectureID := dm.q_lecture_selectID.AsString;
      rID := dm.q_REQUEST_VIEWID.AsString;
      qry := TUniQuery.Create(Self);
      try
        gridLectureSelect.DataController.SaveBookmark;
        with qry do begin
          Connection := dm.UniConnection1;
          SQL.Clear;
          SQL.Add('Delete from REGISTED_LECTURE where id = :rid ');
          ParamByName('rID').AsString := rID;
          Execute;
        end;
        with qry do begin
          Connection := dm.UniConnection1;
          SQL.Clear;
          SQL.Add('Delete from MONEY_INOUT where IO_REG_LECTURE_ID = :rid ');
          ParamByName('rID').AsString := rID;
          Execute;
        end;
        dm.d_REQUEST_VIEW.DataSet.Refresh;
        RefreshLectureCountInfo(LectureID);
      finally
        gridLectureSelect.DataController.GotoBookmark;
        qry.Free;
      end;
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

function TfmRequestManager.CountStudent(student_name : string) : integer;
var
  Query : TUniQuery;
  cnt : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('SELECT * from STUDENTS ');
      SQL.Add('where S_NAME = :S_NAME');
      ParamByName('S_NAME').AsString := student_name;
      Active := True;
    end;
    cnt := Query.RecordCount;
    if cnt > 0 then
      Result := cnt
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

procedure TfmRequestManager.btnChangeLectureClick(Sender: TObject);
var
  LectureID, LectureName : string;
  NewLectureID : string;
  mStep,month1, month2, month3 : Integer;
begin
  fmRequestChange := TfmRequestChange.Create(Self);
  try
    try
      mStep := frmYearQuarter1.cbQuarter.ItemIndex;
      case mStep of
        0: begin
          fmRequestChange.chkMon1.Caption := '1월';
          fmRequestChange.chkMon2.Caption := '2월';
          fmRequestChange.chkMon3.Caption := '3월';
        end;
        1: begin
          fmRequestChange.chkMon1.Caption := '4월';
          fmRequestChange.chkMon2.Caption := '5월';
          fmRequestChange.chkMon3.Caption := '6월';
        end;
        2: begin
          fmRequestChange.chkMon1.Caption := '7월';
          fmRequestChange.chkMon2.Caption := '8월';
          fmRequestChange.chkMon3.Caption := '9월';
        end;
        3: begin
          fmRequestChange.chkMon1.Caption := '10월';
          fmRequestChange.chkMon2.Caption := '11월';
          fmRequestChange.chkMon3.Caption := '12월';
        end;
      end;
      dm.q_lecture_lookstep.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
      dm.q_lecture_lookstep.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
      dm.q_lecture_lookstep.Active := True;
      dm.d_lecture_lookstep.DataSet.Refresh;

      LectureID := dm.q_lecture_selectID.AsString;
      LectureName := dm.q_lecture_selectL_NAME.AsString;
      fmRequestChange.LectureID := LectureID;
      fmRequestChange.cbLectureName.EditValue := LectureID;
      fmRequestChange.edtStudentName.Text := gridRequestS_NAME.EditValue;
      fmRequestChange.edtStudentID.Text := gridRequestSTUDENT_ID.EditValue;
      fmRequestChange.edtRequestID.Text := gridRequestID.EditValue;
      fmRequestChange.IS_DC := gridRequestIS_DC.EditValue;
      fmRequestChange.PAY_KIND := gridRequestPAY_KIND.EditValue;
      fmRequestChange.PAY_WAY := gridRequestPAY_WAY.EditValue;
      fmRequestChange.PAY_AMOUNT := gridRequestPAY_AMOUNT.EditValue;
      fmRequestChange.OMONTH1_PRICE := gridRequestREG_PRICE1.EditValue;
      fmRequestChange.OMONTH2_PRICE := gridRequestREG_PRICE2.EditValue;
      fmRequestChange.OMONTH3_PRICE := gridRequestREG_PRICE3.EditValue;

      fmRequestChange.Caption := '강좌이동 - [' + LectureName + ']';
      fmRequestChange.ShowModal;
      if fmRequestChange.ModalResult = mrOk then begin
        NewLectureID := fmRequestChange.cbLectureNameNew.EditValue;
        gridLectureSelect.DataController.SaveBookmark;
        gridRequest.DataController.SaveBookmark;
        dm.d_REQUEST_VIEW.DataSet.Refresh;
        RefreshLectureCountInfo(NewLectureID);
        RefreshLectureCountInfo(LectureID);
        gridLectureSelect.DataController.GotoBookmark;
        gridRequest.DataController.GotoBookmark;
      end;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    fmRequestChange.Free;
  end;
end;

procedure TfmRequestManager.btnEditClick(Sender: TObject);
var
  LectureID, LectureName : string;
  PAY_AMOUNT : Double;
  IS_DC, PAY_WAY : Integer;
  REG_DATE, S_NAME, S_TEL, S_ADDR, S_SEX, S_EMAIL, S_DONG, S_BIRTH, RECEIPT_NO : string;
  S_KIND, RECEIPT_YESNO, REG_MONTH : Integer;
  mStep, month1, month2, month3 : Integer;
  MON_PRICE1, MON_PRICE2, MON_PRICE3 : Double;
  result : Integer;
  RECORD_UID : string;
begin
  fmRequestEdit2 := TfmRequestEdit2.Create(Self);
  try
    try
      RECORD_UID := gridRequestID.EditValue;
      if gridRequestCASHBILL_REGISTED.EditValue = 1 then
        fmRequestEdit2.chkCashReceipt.Enabled := False;

      mStep := frmYearQuarter1.cbQuarter.ItemIndex;
      case mStep of
        0: begin
          fmRequestEdit2.chkMon1.Caption := '1월';
          fmRequestEdit2.chkMon2.Caption := '2월';
          fmRequestEdit2.chkMon3.Caption := '3월';
        end;
        1: begin
          fmRequestEdit2.chkMon1.Caption := '4월';
          fmRequestEdit2.chkMon2.Caption := '5월';
          fmRequestEdit2.chkMon3.Caption := '6월';
        end;
        2: begin
          fmRequestEdit2.chkMon1.Caption := '7월';
          fmRequestEdit2.chkMon2.Caption := '8월';
          fmRequestEdit2.chkMon3.Caption := '9월';
        end;
        3: begin
          fmRequestEdit2.chkMon1.Caption := '10월';
          fmRequestEdit2.chkMon2.Caption := '11월';
          fmRequestEdit2.chkMon3.Caption := '12월';
        end;
      end;
      dm.q_lecture_lookstep.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
      dm.q_lecture_lookstep.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
      dm.q_lecture_lookstep.Active := True;
      dm.d_lecture_lookstep.DataSet.Refresh;

      LectureID := gridLectureSelectID.EditValue;
      LectureName := dm.q_lecture_selectL_NAME.AsString;
      fmRequestEdit2.IsClicked := False;
      fmRequestEdit2.LectureID := LectureID;
      fmRequestEdit2.LecturePrice := gridLectureSelectL_PRICE.EditValue;
      fmRequestEdit2.Month1Price := gridLectureSelectMONTH1_PRICE.EditValue;
      fmRequestEdit2.Month2Price := gridLectureSelectMONTH2_PRICE.EditValue;
      fmRequestEdit2.Month3Price := gridLectureSelectMONTH3_PRICE.EditValue;
      fmRequestEdit2.edtStudentID.Text := dm.q_REQUEST_VIEWSTUDENT_ID.AsString;
      fmRequestEdit2.cbLectureName.EditValue := LectureID;
      ConvertStrToDateField(dm.q_REQUEST_VIEWP_DATE.AsString, fmRequestEdit2.edtPayDate);
      fmRequestEdit2.edtBirthDate.Text := dm.q_REQUEST_VIEWS_BIRTH.AsString;

      fmRequestEdit2.edtStudentName.Text := dm.q_REQUEST_VIEWS_NAME.AsString;
      fmRequestEdit2.edtTel.Text := dm.q_REQUEST_VIEWS_TEL.AsString;
      fmRequestEdit2.edtAddr.Text := dm.q_REQUEST_VIEWS_ADDR.AsString;
      //fmRequestEdit2.edtDong.EditValue := dm.q_REQUEST_VIEWS_DONG.AsString;
      fmRequestEdit2.edtSex.EditValue := dm.q_REQUEST_VIEWS_SEX.AsString;
      fmRequestEdit2.ddlb_dckind.EditValue := dm.q_REQUEST_VIEWIS_DC.AsInteger;
      fmRequestEdit2.edtPayWay.EditValue := dm.q_REQUEST_VIEWPAY_WAY.AsInteger;
      fmRequestEdit2.cbPayKind.EditValue := dm.q_REQUEST_VIEWPAY_KIND.AsInteger;
      fmRequestEdit2.edtPrice.EditValue := dm.q_REQUEST_VIEWPAY_AMOUNT.AsFloat;
      fmRequestEdit2.Caption := '수강신청 수정';
      fmRequestEdit2.edtPrice.Refresh;
      fmRequestEdit2.edtCashReceiptNo.Text := dm.q_REQUEST_VIEWBIGO.AsString;
//      fmRequestEdit2.chkCashReceipt.Checked := dm.q_REQUEST_VIEWCASHBILL_REGISTED.AsInteger = 1;
      month1 := dm.q_REQUEST_VIEWREG_MONTH.AsInteger;
      month2 := dm.q_REQUEST_VIEWREG_MONTH2.AsInteger;
      month3 := dm.q_REQUEST_VIEWREG_MONTH3.AsInteger;
      fmRequestEdit2.chkMon1.Checked := month1 = 1;
      fmRequestEdit2.chkMon2.Checked := month2 = 1;
      fmRequestEdit2.chkMon3.Checked := month3 = 1;
      fmRequestEdit2.ShowModal;
      if fmRequestEdit2.ModalResult = mrOk then begin
        //수정내용저장
        gridRequest.DataController.SaveBookmark;
        REG_DATE := ConvertDateToStrField(fmRequestEdit2.edtPayDate.Date);
        PAY_AMOUNT := fmRequestEdit2.edtPrice.EditValue;
        IS_DC := fmRequestEdit2.ddlb_dckind.EditValue;
        PAY_WAY := fmRequestEdit2.edtPayWay.EditValue;
        S_NAME  := fmRequestEdit2.edtStudentName.Text;
        S_TEL   := fmRequestEdit2.edtTel.Text;
        S_ADDR  := fmRequestEdit2.edtAddr.Text;
        S_SEX   := fmRequestEdit2.edtSex.EditValue;
        //S_DONG  := fmRequestEdit2.edtDong.EditValue;
        S_BIRTH := fmRequestEdit2.edtBirthDate.Text;
        S_KIND  := fmRequestEdit2.ddlb_dckind.EditValue;
        RECEIPT_NO := fmRequestEdit2.edtCashReceiptNo.Text;
        if fmRequestEdit2.chkCashReceipt.Checked then
          RECEIPT_YESNO := 1
        else
          RECEIPT_YESNO := 0;

        if fmRequestEdit2.chkMon1.Checked then month1 := 1 else month1 := 0;
        if fmRequestEdit2.chkMon2.Checked then month2 := 1 else month2 := 0;
        if fmRequestEdit2.chkMon3.Checked then month3 := 1 else month3 := 0;
        MON_PRICE1 := fmRequestEdit2.edtMon1.EditValue;
        MON_PRICE2 := fmRequestEdit2.edtMon2.EditValue;
        MON_PRICE3 := fmRequestEdit2.edtMon3.EditValue;

        UpdateRegistedLecture(REG_DATE, RECEIPT_NO, PAY_AMOUNT, MON_PRICE1, MON_PRICE2, MON_PRICE3, IS_DC, PAY_WAY, month1, month2, month3);
        UpdateStudent(S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO, S_KIND, RECEIPT_YESNO);
        if fmRequestEdit2.chkCashReceipt.Checked = True then begin
          result := dm.RegistCashBill(fmRequestEdit2.edtCashReceiptNo.Text,
                                      fmRequestEdit2.edtStudentID.Text,
                                      RECORD_UID,
                                      fmRequestEdit2.edtStudentID.Text,
                                      PAY_AMOUNT);
          if result = 1 then begin
            dm.InsertCashBill(1, fmRequestEdit2.edtCashReceiptNo.Text, fmRequestEdit2.edtStudentName.Text, RECORD_UID, PAY_AMOUNT);
          end;
        end;
        dm.d_REQUEST_VIEW.DataSet.Refresh;
        gridRequest.DataController.GotoBookmark;
      end;
      RefreshLectureCountInfo(LectureID);
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    fmRequestEdit2.Free;
  end;
end;

procedure TfmRequestManager.UpdateRegistedLecture(REG_DATE, CASH_RECEIPT : string; PAY_AMOUNT, MON_PRICE1, MON_PRICE2, MON_PRICE3 : Double;
       IS_DC, PAY_WAY, MONTH1, MONTH2, MONTH3 : Integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('UPDATE REGISTED_LECTURE ');
      SQL.Add('SET P_DATE = :REG_DATE, PAY_AMOUNT = :pay_amount, IS_DC = :is_dc, PAY_WAY = :pay_way, ');
      SQL.Add('REG_PRICE1 = :MON_PRICE1, REG_PRICE2 = :MON_PRICE2, REG_PRICE3 = :MON_PRICE3, ');
      SQL.Add('reg_month = :month1, reg_month2 = :month2, reg_month3 = :month3, bigo = :CASH_RECEIPT ');
      SQL.Add('where id = :id');
      ParamByName('REG_DATE').AsString := REG_DATE;
      ParamByName('PAY_AMOUNT').AsFloat := PAY_AMOUNT;
      ParamByName('IS_DC').AsInteger := IS_DC;
      ParamByName('PAY_WAY').AsInteger := PAY_WAY;
      ParamByName('MONTH1').AsInteger := MONTH1;
      ParamByName('MONTH2').AsInteger := MONTH2;
      ParamByName('MONTH3').AsInteger := MONTH3;
      ParamByName('MON_PRICE1').AsFloat := MON_PRICE1;
      ParamByName('MON_PRICE2').AsFloat := MON_PRICE2;
      ParamByName('MON_PRICE3').AsFloat := MON_PRICE3;
      ParamByName('CASH_RECEIPT').AsString := CASH_RECEIPT;
      ParamByName('ID').AsString := gridRequestID.EditValue;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmRequestManager.UpdateStudent(S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO: string; S_KIND, RECEIPT_YESNO: Integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('UPDATE STUDENTS SET ');
      SQL.Add('S_NAME = :S_NAME, S_TEL = :S_TEL, S_ADDR = :S_ADDR, S_SEX = :S_SEX, ');
      SQL.Add('S_KIND = :S_KIND, S_DONG = :S_DONG, S_BIRTH = :S_BIRTH, ');
      SQL.Add('CASH_RECEIPT_NO = :RECEIPT_NO, CASH_RECEIPT_YESNO = :RECEIPT_YESNO ');
      SQL.Add('WHERE ID = :ID');

      ParamByName('ID').AsString := gridRequestSTUDENT_ID.EditValue;
      ParamByName('S_NAME').AsString := S_NAME;
      ParamByName('S_TEL').AsString := S_TEL;
      ParamByName('S_ADDR').AsString := S_ADDR;
      ParamByName('S_SEX').AsString := S_SEX;
      ParamByName('S_KIND').AsInteger := S_KIND;
      ParamByName('S_DONG').AsString := '';
      ParamByName('S_BIRTH').AsString := S_BIRTH;
      ParamByName('RECEIPT_NO').AsString := RECEIPT_NO;
      ParamByName('RECEIPT_YESNO').AsInteger := RECEIPT_YESNO;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmRequestManager.btnExport2Click(Sender: TObject);
var
  filename, lecture_name, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    try
      filename := '강좌등록현황' + DateTimeToStr(Date);// + '.xlsx';
      saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
      saveDLG.DefaultExt := 'xls';
      saveDLG.FileName := filename;
      if saveDLG.Execute then begin
         filename := saveDLG.FileName;
         nameonly := copy(filename, 1, length(filename) - 4);
      end else begin
         exit;
      end;
      ExportGridToExcel(nameonly, cxGrid2, True, true, False, 'xls');
      ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    saveDLG.Free;
  end;
end;

procedure TfmRequestManager.btnExportClick(Sender: TObject);
var
  filename, lecture_name, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    try
      lecture_name := gridLectureSelect.DataController.GetDisplayText(gridLectureSelect.DataController.GetFocusedRecordIndex, 5);
      filename := '수강등록현황(' + lecture_name + ')_' + DateTimeToStr(Date);// + '.xlsx';
      saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
      saveDLG.DefaultExt := 'xls';
      saveDLG.FileName := filename;
      if saveDLG.Execute then begin
         filename := saveDLG.FileName;
         nameonly := copy(filename, 1, length(filename) - 4);
      end else begin
         exit;
      end;
      //gridRequestColumn1.Visible := False;
      ExportGridToExcel(nameonly, cxGrid1, True, true, True, 'xls');
      ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
      //gridRequestColumn1.Visible := True;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    saveDLG.Free;
  end;
end;

procedure TfmRequestManager.ExportToExcel(fname : string);
var
  i, cnt : Integer;
begin
//  with gtXLSEngine1 do begin
//    FileName := fname;
//    BeginDoc;
//    cnt := gridRequest.DataController.RecordCount;
//    TextOut(0, 0, '컬럼헤더1', TgtHAlignment.haCenter, ctString);
//    TextOut(0, 1, '컬럼헤더2', TgtHAlignment.haCenter, ctString);
//    TextOut(0, 2, '컬럼헤더3', TgtHAlignment.haCenter, ctString);
//    gridRequest.DataController.GotoFirst;
//    for i := 0 to cnt - 1 do begin
//      TextOut(i+1, 0, gridLectureSelectL_YEAR.EditValue, TgtHAlignment.haCenter, ctString);
//      TextOut(i+1, 1, gridLectureSelectL_NAME.EditValue, TgtHAlignment.haCenter, ctString);
//      TextOut(i+1, 2, FloatToStr(gridLectureSelectL_PRICE.EditValue), TgtHAlignment.haRight, ctString);
//      gridRequest.DataController.GotoNext;
//    end;
//    EndDoc;
//  end;
end;

procedure TfmRequestManager.btnOut2Click(Sender: TObject);
var
  id, LectureID, JUKYO, StudentName : string;
  qry : TUniQuery;
  r_date : TDateTime;
  o_amount : Double;
  OUT_MONTH1, OUT_MONTH2, OUT_MONTH3, month1, month2, month3, mStep : Integer;
  regmon1, regmon2, regmon3, OUT_WHEN, result : Integer;
  reg_price1, reg_price2, reg_price3 : Double;
  out_price1, out_price2, out_price3 : Double;
begin
  dm.d_REQUEST_VIEW.DataSet.DisableControls;
  qry := TUniQuery.Create(nil);
  fmRefundPayment := TfmRefundPayment.Create(Self);
  try
    try
      if gridRequestCASHBILL_REGISTED.EditValue = 1 then begin
        fmRefundPayment.PanelCashbill.Visible := True;
        fmRefundPayment.edtCashReceiptNo.Text := gridRequestBIGO.EditValue;
      end;
      mStep := frmYearQuarter1.cbQuarter.ItemIndex;
      case mStep of
        0: begin
          fmRefundPayment.chkMon1.Caption := '1월';
          fmRefundPayment.chkMon2.Caption := '2월';
          fmRefundPayment.chkMon3.Caption := '3월';
        end;
        1: begin
          fmRefundPayment.chkMon1.Caption := '4월';
          fmRefundPayment.chkMon2.Caption := '5월';
          fmRefundPayment.chkMon3.Caption := '6월';
        end;
        2: begin
          fmRefundPayment.chkMon1.Caption := '7월';
          fmRefundPayment.chkMon2.Caption := '8월';
          fmRefundPayment.chkMon3.Caption := '9월';
        end;
        3: begin
          fmRefundPayment.chkMon1.Caption := '10월';
          fmRefundPayment.chkMon2.Caption := '11월';
          fmRefundPayment.chkMon3.Caption := '12월';
        end;
      end;
      LectureID := dm.q_lecture_selectID.AsString;
      id := dm.q_REQUEST_VIEWID.AsString;
      StudentName := dm.q_REQUEST_VIEWS_NAME.AsString;
      regmon1 := gridRequestREG_MONTH.EditValue;
      regmon2 := gridRequestREG_MONTH2.EditValue;
      regmon3 := gridRequestREG_MONTH3.EditValue;
      reg_price1 := gridRequestREG_PRICE1.EditValue;
      reg_price2 := gridRequestREG_PRICE2.EditValue;
      reg_price3 := gridRequestREG_PRICE3.EditValue;
      OUT_MONTH1 := gridRequestOUT_MONTH.EditValue;
      OUT_MONTH2 := gridRequestOUT_MONTH2.EditValue;
      OUT_MONTH3 := gridRequestOUT_MONTH3.EditValue;

      out_price1 := gridRequestOUT_PRICE1.EditValue;
      out_price2 := gridRequestOUT_PRICE2.EditValue;
      out_price3 := gridRequestOUT_PRICE3.EditValue;

      fmRefundPayment.REG_MONTH_COUNT := regmon1 + regmon2 + regmon3;
      fmRefundPayment.RECTURE_PRICE := gridRequestPAY_AMOUNT.EditValue;
      fmRefundPayment.RegMonth := regmon1;
      fmRefundPayment.RegMonth2 := regmon2;
      fmRefundPayment.RegMonth3 := regmon3;

      fmRefundPayment.REG_PRICE1 := reg_price1;
      fmRefundPayment.REG_PRICE2 := reg_price2;
      fmRefundPayment.REG_PRICE3 := reg_price3;

      fmRefundPayment.chkMon1.Checked := False;
      fmRefundPayment.edtMon1.Value := 0;
      fmRefundPayment.chkMon2.Checked := False;
      fmRefundPayment.edtMon2.Value := 0;
      fmRefundPayment.chkMon3.Checked := False;
      fmRefundPayment.edtMon3.Value := 0;
      fmRefundPayment.edtAmount.EditValue := 0;
      fmRefundPayment.edtDate.Date := Date;
      fmRefundPayment.edtOutKind.EditValue := 1;
      fmRefundPayment.edtPayWay.ItemIndex := gridRequestPAYBACK_WAY.EditValue;
      fmRefundPayment.edtOutWhen.EditValue := 3;
      fmRefundPayment.edtBankName.Text := gridRequestPAYBACK_BANK.EditValue;
      fmRefundPayment.edtBankID.Text := gridRequestPAYBACK_BANKID.EditValue;
      fmRefundPayment.edtBankOwener.Text := gridRequestPAYBACK_BANKOWNER.EditValue;
      fmRefundPayment.ShowModal;
      if fmRefundPayment.ModalResult = mrOk then begin
        gridLectureSelect.DataController.SaveBookmark;
        gridRequest.DataController.SaveBookmark;
        r_date := fmRefundPayment.edtDate.Date;
        o_amount := fmRefundPayment.edtAmount.EditValue;
        OUT_MONTH1 := fmRefundPayment.newMonth;
        OUT_MONTH2 := fmRefundPayment.newMonth2;
        OUT_MONTH3 := fmRefundPayment.newMonth3;
        OUT_WHEN := fmRefundPayment.edtOutWhen.EditValue;
        //ShowMessage(IntToStr(OUT_MONTH1) + '/' + IntToStr(OUT_MONTH2) + '/' + IntToStr(OUT_MONTH3));
        with qry do begin
          Connection := dm.UniConnection1;
          SQL.Clear;
          SQL.Add('Update REGISTED_LECTURE set r_date2 = :r_date, pay_kind = :pay_kind, out_kind2 = :out_kind, out_amount2 = :out_amount, ');
          SQL.Add('payback_way = :payback_way, payback_bank = :payback_bank, payback_bankid = :payback_bankid, PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER, ');
          SQL.Add('OUT_MONTH = :out_month1, out_month2 = :out_month2, out_month3 = :out_month3, ');
          SQL.Add('OUT_PRICE1 = :out_price1, OUT_PRICE2 = :out_price2, OUT_PRICE3 = :out_price3, OUT_WHEN2 = :OUT_WHEN ');
          SQL.Add('where id = :id ');
          ParamByName('r_date').AsString := fmRefundPayment.edtDate.EditText;
          ParamByName('out_kind').AsInteger := fmRefundPayment.edtOutKind.EditValue;
          ParamByName('out_amount').AsFloat := fmRefundPayment.edtAmount.EditValue;
          ParamByName('out_month1').AsInteger := OUT_MONTH1;
          ParamByName('out_month2').AsInteger := OUT_MONTH2;
          ParamByName('out_month3').AsInteger := OUT_MONTH3;
          ParamByName('out_price1').AsFloat := out_price1 + fmRefundPayment.edtMon1.EditValue;
          ParamByName('out_price2').AsFloat := out_price2 + fmRefundPayment.edtMon2.EditValue;
          ParamByName('out_price3').AsFloat := out_price3 + fmRefundPayment.edtMon3.EditValue;
          ParamByName('payback_way').AsInteger := fmRefundPayment.edtPayWay.EditValue;
          ParamByName('payback_bank').AsString := fmRefundPayment.edtBankName.Text;
          ParamByName('payback_bankid').AsString := fmRefundPayment.edtBankID.Text;
          ParamByName('PAYBACK_BANKOWNER').AsString := fmRefundPayment.edtBankOwener.Text;
          ParamByName('OUT_WHEN').AsInteger := fmRefundPayment.edtOutWhen.EditValue;
          ParamByName('id').AsString := id;
          Execute;
        end;
        //현금등록정보가 있으면 환불처리할 때 부분취소를 처리할 것.
        if gridRequestCASHBILL_REGISTED.EditValue = 1 then begin
          if (fmRefundPayment.chkMon1.Checked = True) and
             (fmRefundPayment.chkMon2.Checked = True) and
             (fmRefundPayment.chkMon3.Checked = True) then begin
            result := dm.RegistCashbillCancel(gridRequestID.EditValue);
            //전액취소
            if result = 1 then begin
              dm.InsertCashBill(2, gridRequestBIGO.EditValue,
                                gridRequestS_NAME.EditValue,
                                gridRequestID.EditValue,
                                gridRequestOUT_AMOUNT.EditValue);
            end;
          end else begin
            result := dm.RegistCashbillCancelPartial(gridRequestID.EditValue, gridRequestOUT_AMOUNT.EditValue);
            //부분취소
            if result = 1 then begin
              dm.InsertCashBill(3, gridRequestBIGO.EditValue,
                                gridRequestS_NAME.EditValue,
                                gridRequestID.EditValue,
                                gridRequestOUT_AMOUNT.EditValue);
            end;
          end;
        end;
        dm.d_REQUEST_VIEW.DataSet.Refresh;
        RefreshLectureCountInfo(LectureID);
        //RefreshLectureData;
        gridLectureSelect.DataController.GotoBookmark;
        gridRequest.DataController.GotoBookmark;
      end;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    qry.Free;
    dm.d_REQUEST_VIEW.DataSet.EnableControls;
    fmRefundPayment.Free;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmRequestManager.btnOutCancel2Click(Sender: TObject);
var
  id, LectureID : string;
  qry : TUniQuery;
  r_date : TDateTime;
begin
  qry := TUniQuery.Create(nil);
  try
    try
      gridLectureSelect.DataController.SaveBookmark;
      gridRequest.DataController.SaveBookmark;
      id := dm.q_REQUEST_VIEWID.AsString;
      LectureID := dm.q_lecture_selectID.AsString;
      with qry do begin
        Connection := dm.UniConnection1;
        SQL.Clear;
        SQL.Add('Update REGISTED_LECTURE set R_DATE2 = :r_date, OUT_KIND2 = -1, OUT_AMOUNT2 = 0, OUT_WHEN2 = -1 ');
        SQL.Add('where ID = :id ');
        ParamByName('r_date').AsString := '';
        ParamByName('id').AsString := id;
        Execute;
      end;
      dm.d_REQUEST_VIEW.DataSet.Refresh;
      RefreshLectureCountInfo(LectureID);
      //RefreshLectureData;
      gridLectureSelect.DataController.GotoBookmark;
      gridRequest.DataController.GotoBookmark;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    qry.Free;
  end;
end;

procedure TfmRequestManager.btnOutCancelClick(Sender: TObject);
var
  id, LectureID : string;
  qry : TUniQuery;
  r_date : TDateTime;
begin
  qry := TUniQuery.Create(nil);
  try
    try
      gridLectureSelect.DataController.SaveBookmark;
      gridRequest.DataController.SaveBookmark;
      id := dm.q_REQUEST_VIEWID.AsString;
      LectureID := dm.q_lecture_selectID.AsString;
      with qry do begin
        Connection := dm.UniConnection1;
        SQL.Clear;
        SQL.Add('Update REGISTED_LECTURE set r_date = :r_date, pay_kind = 0, out_kind = -1, out_amount = 0, ');
        SQL.Add('payback_way = -1, payback_bank = :payback_bank, payback_bankid = :payback_bankid, PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER, ');
        SQL.Add('OUT_MONTH = 0, OUT_MONTH2 = 0, OUT_MONTH3 = 0, OUT_PRICE1 = 0, OUT_PRICE2 = 0, OUT_PRICE3 = 0 ');
        SQL.Add('where id = :id ');
        ParamByName('r_date').AsString := '';
        ParamByName('payback_bank').AsString := '';
        ParamByName('payback_bankid').AsString := '';
        ParamByName('PAYBACK_BANKOWNER').AsString := '';
        ParamByName('id').AsString := id;
        Execute;
      end;
      dm.d_REQUEST_VIEW.DataSet.Refresh;
      RefreshLectureCountInfo(LectureID);
      //RefreshLectureData;
      gridLectureSelect.DataController.GotoBookmark;
      gridRequest.DataController.GotoBookmark;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    qry.Free;
  end;
end;

procedure TfmRequestManager.btnOutClick(Sender: TObject);
var
  id, LectureID, JUKYO, StudentName : string;
  qry : TUniQuery;
  r_date : TDateTime;
  o_amount : Double;
  OUT_MONTH1, OUT_MONTH2, OUT_MONTH3, month1, month2, month3, mStep : Integer;
  regmon1, regmon2, regmon3, OUT_WHEN, result : Integer;
  reg_price1, reg_price2, reg_price3 : Double;
begin
  dm.d_REQUEST_VIEW.DataSet.DisableControls;
  qry := TUniQuery.Create(nil);
  fmRefundPayment := TfmRefundPayment.Create(Self);
  try
    try
      if gridRequestCASHBILL_REGISTED.EditValue = 1 then begin
        fmRefundPayment.PanelCashbill.Visible := True;
        fmRefundPayment.edtCashReceiptNo.Text := gridRequestBIGO.EditValue;
      end;
      mStep := frmYearQuarter1.cbQuarter.ItemIndex;
      case mStep of
        0: begin
          fmRefundPayment.chkMon1.Caption := '1월';
          fmRefundPayment.chkMon2.Caption := '2월';
          fmRefundPayment.chkMon3.Caption := '3월';
        end;
        1: begin
          fmRefundPayment.chkMon1.Caption := '4월';
          fmRefundPayment.chkMon2.Caption := '5월';
          fmRefundPayment.chkMon3.Caption := '6월';
        end;
        2: begin
          fmRefundPayment.chkMon1.Caption := '7월';
          fmRefundPayment.chkMon2.Caption := '8월';
          fmRefundPayment.chkMon3.Caption := '9월';
        end;
        3: begin
          fmRefundPayment.chkMon1.Caption := '10월';
          fmRefundPayment.chkMon2.Caption := '11월';
          fmRefundPayment.chkMon3.Caption := '12월';
        end;
      end;
      LectureID := dm.q_lecture_selectID.AsString;
      id := dm.q_REQUEST_VIEWID.AsString;
      StudentName := dm.q_REQUEST_VIEWS_NAME.AsString;
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

      fmRefundPayment.REG_PRICE1 := reg_price1;
      fmRefundPayment.REG_PRICE2 := reg_price2;
      fmRefundPayment.REG_PRICE3 := reg_price3;
      fmRefundPayment.chkMon1.Checked := True;
      fmRefundPayment.chkMon2.Checked := True;
      fmRefundPayment.chkMon3.Checked := True;
      fmRefundPayment.edtMon1.Value := reg_price1;
      fmRefundPayment.edtMon2.Value := reg_price2;
      fmRefundPayment.edtMon3.Value := reg_price3;

      fmRefundPayment.edtDate.Date := Date;
      fmRefundPayment.edtOutKind.EditValue := 1;
      fmRefundPayment.edtPayWay.ItemIndex := 1;
      fmRefundPayment.edtBankOwener.Text := gridRequestS_NAME.EditValue;
      fmRefundPayment.ShowModal;
      if fmRefundPayment.ModalResult = mrOk then begin
        gridLectureSelect.DataController.SaveBookmark;
        gridRequest.DataController.SaveBookmark;
        r_date := fmRefundPayment.edtDate.Date;
        o_amount := fmRefundPayment.edtAmount.EditValue;
        OUT_MONTH1 := fmRefundPayment.newMonth;
        OUT_MONTH2 := fmRefundPayment.newMonth2;
        OUT_MONTH3 := fmRefundPayment.newMonth3;
        OUT_WHEN := fmRefundPayment.edtOutWhen.EditValue;
        //ShowMessage(IntToStr(OUT_MONTH1) + '/' + IntToStr(OUT_MONTH2) + '/' + IntToStr(OUT_MONTH3));
        with qry do begin
          Connection := dm.UniConnection1;
          SQL.Clear;
          SQL.Add('Update REGISTED_LECTURE set r_date = :r_date, pay_kind = :pay_kind, out_kind = :out_kind, out_amount = :out_amount, ');
          SQL.Add('payback_way = :payback_way, payback_bank = :payback_bank, payback_bankid = :payback_bankid, PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER, ');
          SQL.Add('OUT_MONTH = :out_month1, out_month2 = :out_month2, out_month3 = :out_month3, ');
          SQL.Add('OUT_PRICE1 = :out_price1, OUT_PRICE2 = :out_price2, OUT_PRICE3 = :out_price3, OUT_WHEN = :OUT_WHEN ');
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
          ParamByName('OUT_WHEN').AsInteger := fmRefundPayment.edtOutWhen.EditValue;
          ParamByName('id').AsString := id;
          Execute;
        end;
        //현금등록정보가 있으면 환불처리할 때 부분취소를 처리할 것.
        if gridRequestCASHBILL_REGISTED.EditValue = 1 then begin
          if (fmRefundPayment.chkMon1.Checked = True) and
             (fmRefundPayment.chkMon2.Checked = True) and
             (fmRefundPayment.chkMon3.Checked = True) then begin
            result := dm.RegistCashbillCancel(gridRequestID.EditValue);
            //전액취소
            if result = 1 then begin
              dm.InsertCashBill(2, gridRequestBIGO.EditValue,
                                gridRequestS_NAME.EditValue,
                                gridRequestID.EditValue,
                                gridRequestOUT_AMOUNT.EditValue);
            end;
          end else begin
            result := dm.RegistCashbillCancelPartial(gridRequestID.EditValue, gridRequestOUT_AMOUNT.EditValue);
            //부분취소
            if result = 1 then begin
              dm.InsertCashBill(3, gridRequestBIGO.EditValue,
                                gridRequestS_NAME.EditValue,
                                gridRequestID.EditValue,
                                gridRequestOUT_AMOUNT.EditValue);
            end;
          end;
        end;
        dm.d_REQUEST_VIEW.DataSet.Refresh;
        RefreshLectureCountInfo(LectureID);
        //RefreshLectureData;
        gridLectureSelect.DataController.GotoBookmark;
        gridRequest.DataController.GotoBookmark;
      end;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    qry.Free;
    dm.d_REQUEST_VIEW.DataSet.EnableControls;
    fmRefundPayment.Free;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmRequestManager.btnOutEditClick(Sender: TObject);
var
  id, LectureID, JUKYO, StudentName : string;
  qry : TUniQuery;
  r_date : TDateTime;
  o_amount : Double;
  OUT_MONTH1, OUT_MONTH2, OUT_MONTH3, month1, month2, month3, mStep : Integer;
  regmon1, regmon2, regmon3 : integer;
  reg_price1, reg_price2, reg_price3 : Double;
begin
  dm.d_REQUEST_VIEW.DataSet.DisableControls;
  qry := TUniQuery.Create(nil);
  fmRefundPayment := TfmRefundPayment.Create(Self);
  try
    try
      mStep := frmYearQuarter1.cbQuarter.ItemIndex;
      case mStep of
        0: begin
          fmRefundPayment.chkMon1.Caption := '1월';
          fmRefundPayment.chkMon2.Caption := '2월';
          fmRefundPayment.chkMon3.Caption := '3월';
        end;
        1: begin
          fmRefundPayment.chkMon1.Caption := '4월';
          fmRefundPayment.chkMon2.Caption := '5월';
          fmRefundPayment.chkMon3.Caption := '6월';
        end;
        2: begin
          fmRefundPayment.chkMon1.Caption := '7월';
          fmRefundPayment.chkMon2.Caption := '8월';
          fmRefundPayment.chkMon3.Caption := '9월';
        end;
        3: begin
          fmRefundPayment.chkMon1.Caption := '10월';
          fmRefundPayment.chkMon2.Caption := '11월';
          fmRefundPayment.chkMon3.Caption := '12월';
        end;
      end;
      LectureID := dm.q_lecture_selectID.AsString;
      id := dm.q_REQUEST_VIEWID.AsString;
      StudentName := dm.q_REQUEST_VIEWS_NAME.AsString;
      fmRefundPayment.RECTURE_PRICE := gridRequestPAY_AMOUNT.EditValue;
      fmRefundPayment.edtDate.Date := StrToDate(gridRequestR_DATE.EditValue);
      fmRefundPayment.edtOutKind.EditValue := gridRequestOUT_KIND.EditValue;
      regmon1 := gridRequestREG_MONTH.EditValue;
      regmon2 := gridRequestREG_MONTH2.EditValue;
      regmon3 := gridRequestREG_MONTH3.EditValue;
      month1 := gridRequestOUT_MONTH.EditValue;
      month2 := gridRequestOUT_MONTH2.EditValue;
      month3 := gridRequestOUT_MONTH3.EditValue;
      //ShowMessage(IntToStr(month1) + '/' + IntToStr(month2) + '/' + IntToStr(month3));

      fmRefundPayment.RegMonth := regmon1;
      fmRefundPayment.RegMonth2 := regmon2;
      fmRefundPayment.RegMonth3 := regmon3;
      fmRefundPayment.REG_MONTH_COUNT := regmon1 + regmon2 + regmon3;
      fmRefundPayment.chkMon1.Checked := month1 = 1;
      fmRefundPayment.chkMon2.Checked := month2 = 1;
      fmRefundPayment.chkMon3.Checked := month3 = 1;

      fmRefundPayment.REG_PRICE1 := dm.q_REQUEST_VIEWREG_PRICE1.Value;
      fmRefundPayment.REG_PRICE2 := dm.q_REQUEST_VIEWREG_PRICE2.Value;
      fmRefundPayment.REG_PRICE3 := dm.q_REQUEST_VIEWREG_PRICE3.Value;
      fmRefundPayment.edtMon1.EditValue := dm.q_REQUEST_VIEWOUT_PRICE1.Value;
      fmRefundPayment.edtMon2.EditValue := dm.q_REQUEST_VIEWOUT_PRICE2.Value;
      fmRefundPayment.edtMon3.EditValue := dm.q_REQUEST_VIEWOUT_PRICE3.Value;

      fmRefundPayment.OutMonth := month1;
      fmRefundPayment.OutMonth2 := month2;
      fmRefundPayment.OutMonth3 := month3;
      fmRefundPayment.edtAmount.Value := gridRequestOUT_AMOUNT.EditValue;
      fmRefundPayment.edtPayWay.ItemIndex := gridRequestPAYBACK_WAY.EditValue;
      fmRefundPayment.edtBankName.Text := gridRequestPAYBACK_BANK.EditValue;
      fmRefundPayment.edtBankID.Text := gridRequestPAYBACK_BANKID.EditValue;
      fmRefundPayment.edtBankOwener.Text := gridRequestPAYBACK_BANKOWNER.EditValue;
      fmRefundPayment.edtOutWhen.EditValue := gridRequestOUT_WHEN.EditValue;
      fmRefundPayment.ShowModal;
      if fmRefundPayment.ModalResult = mrOk then begin
        gridLectureSelect.DataController.SaveBookmark;
        gridRequest.DataController.SaveBookmark;
        r_date := fmRefundPayment.edtDate.Date;
        o_amount := fmRefundPayment.edtAmount.EditValue;
        OUT_MONTH1 := fmRefundPayment.newMonth;
        OUT_MONTH2 := fmRefundPayment.newMonth2;
        OUT_MONTH3 := fmRefundPayment.newMonth3;
        with qry do begin
          Connection := dm.UniConnection1;
          SQL.Clear;
          SQL.Add('Update REGISTED_LECTURE set r_date = :r_date, pay_kind = :pay_kind, out_kind = :out_kind, out_amount = :out_amount, ');
          SQL.Add('payback_way = :payback_way, payback_bank = :payback_bank, payback_bankid = :payback_bankid, PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER, ');
          SQL.Add('out_month = :out_month1, out_month2 = :out_month2, out_month3 = :out_month3, ');
          SQL.Add('OUT_PRICE1 = :out_price1, OUT_PRICE2 = :out_price2, OUT_PRICE3 = :out_price3, OUT_WHEN = :OUT_WHEN ');
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
          ParamByName('OUT_WHEN').AsInteger := fmRefundPayment.edtOutWhen.EditValue;
          ParamByName('id').AsString := id;
          Execute;
        end;
        dm.d_REQUEST_VIEW.DataSet.Refresh;
        RefreshLectureCountInfo(LectureID);
        //RefreshLectureData;
        gridLectureSelect.DataController.GotoBookmark;
        gridRequest.DataController.GotoBookmark;
      end;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    qry.Free;
    dm.d_REQUEST_VIEW.DataSet.EnableControls;
    fmRefundPayment.Free;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmRequestManager.btnPrintClick(Sender: TObject);
var
  titleStr, lecture_name : string;
begin
  try
    //gridRequestColumn1.Visible := False;
    lecture_name := gridLectureSelect.DataController.GetDisplayText(gridLectureSelect.DataController.GetFocusedRecordIndex, 5);
    titleStr := '수강등록현황(' + lecture_name + ')';
    dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
    dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
    dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
    dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
    dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
    //gridRequestColumn1.Visible := True;
   except on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmRequestManager.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRequestManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmRequestManager.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dm.q_REQUEST_VIEW.Close;

end;

procedure TfmRequestManager.RetrieveRequestData;
begin
  dm.q_REQUEST_VIEW.ParamByName('lecture_id').AsString := dm.q_lecture_selectID.AsString;
  dm.q_REQUEST_VIEW.Active := True;
  dm.d_REQUEST_VIEW.DataSet.Refresh;
  gridRequest.Controller.ClearSelection;
end;
procedure TfmRequestManager.gridLectureSelectColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex+1);
end;

procedure TfmRequestManager.gridLectureSelectFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  RetrieveRequestData;
end;

procedure TfmRequestManager.gridRequestCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmRequestManager.gridRequestColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex+1);
  //AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index);
end;

procedure TfmRequestManager.gridRequestFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if dm.d_REQUEST_VIEW.DataSet.RecordCount > 0 then begin
    if dm.q_REQUEST_VIEWOUT_AMOUNT.AsFloat = 0 then begin
      btnDelete.Enabled := True;
    end else begin
      btnDelete.Enabled := True;
    end;
    if dm.q_REQUEST_VIEWOUT_AMOUNT.AsFloat > 0 then begin
      btnOut.Enabled := False;
      btnOut2.Enabled := True;
      btnOutEdit.Enabled := True;
      btnOutCancel.Enabled := True;
    end else begin
      btnOut.Enabled := True;
      btnOut2.Enabled := False;
      btnOutEdit.Enabled := False;
      btnOutCancel.Enabled := False;
    end;
    if dm.q_REQUEST_VIEWOUT_AMOUNT2.AsFloat > 0 then begin
      btnOut2.Enabled := False;
      btnOutCancel2.Enabled := True;
    end else begin
      btnOutCancel2.Enabled := False;
    end;
    btnEdit.Enabled := True;
  end else begin
    btnEdit.Enabled := False;
    btnDelete.Enabled := False;
    btnOut.Enabled := False;
    btnOutCancel.Enabled := False;
  end;
end;

procedure TfmRequestManager.gridRequestIS_DCCustomDrawCell(
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

procedure TfmRequestManager.gridRequestREG_MONTH2CustomDrawCell(
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

procedure TfmRequestManager.gridRequestREG_MONTH3CustomDrawCell(
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

procedure TfmRequestManager.gridRequestREG_MONTHCustomDrawCell(
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

procedure TfmRequestManager.gridRequestStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col2, col3 : Integer;
begin
  col2 := gridRequest.GetColumnByFieldName('PAY_WAY').Index;
  col3 := gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index;
  if ARecord.Values[col2] = 3 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleDefault;

  if ARecord.Values[col3] > 0 then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleDefault;
end;

initialization RegisterClasses([TfmRequestManager]);

end.
