unit UfmBatchPayback;

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
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, UfrmYearQuarter, cxRadioGroup, cxCheckBox, ImgList,
  Menus, cxButtons, cxGridCustomPopupMenu, cxGridPopupMenu, cxProgressBar, cxLabel;

type
  TfmBatchPayback = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
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
    gridRequestL_YEAR: TcxGridDBColumn;
    gridRequestL_STEP: TcxGridDBColumn;
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
    Splitter1: TSplitter;
    gridRequestPAY_WAY: TcxGridDBColumn;
    gridRequestOUT_KIND: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    gridRequestDONG_ID: TcxGridDBColumn;
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
    btnOut: TcxButton;
    btnOutEdit: TcxButton;
    btnOutCancel: TcxButton;
    btnPayback: TcxButton;
    btnRefund: TcxButton;
    btnExport: TcxButton;
    btnPrint: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    gridLectureSelectL_PRICE: TcxGridDBColumn;
    gridRequestColumn1: TcxGridDBColumn;
    gridLectureSelectL_IDX: TcxGridDBColumn;
    dxComponentPrinter2: TdxComponentPrinter;
    dxComponentPrinter2Link1: TdxGridReportLink;
    btnExport2: TcxButton;
    q_REQUEST_VIEW: TUniQuery;
    q_REQUEST_VIEWL_YEAR: TIntegerField;
    q_REQUEST_VIEWL_STEP: TIntegerField;
    q_REQUEST_VIEWL_NAME: TStringField;
    q_REQUEST_VIEWLECTURE_ID: TStringField;
    q_REQUEST_VIEWSTUDENT_ID: TStringField;
    q_REQUEST_VIEWPAY_AMOUNT: TFloatField;
    q_REQUEST_VIEWS_NAME: TStringField;
    q_REQUEST_VIEWS_TEL: TStringField;
    q_REQUEST_VIEWS_KIND: TSmallintField;
    q_REQUEST_VIEWS_SEX: TStringField;
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
    q_REQUEST_VIEWP_DATE: TStringField;
    q_REQUEST_VIEWR_DATE: TStringField;
    q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField;
    q_REQUEST_VIEWIS_DC: TSmallintField;
    q_REQUEST_VIEWCASH_RECEIPT_NO: TStringField;
    q_REQUEST_VIEWCASH_RECEIPT_YESNO: TSmallintField;
    q_REQUEST_VIEWREG_MONTH: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH: TSmallintField;
    q_REQUEST_VIEWREG_MONTH2: TSmallintField;
    q_REQUEST_VIEWREG_MONTH3: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH2: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH3: TSmallintField;
    q_REQUEST_VIEWS_DONG: TStringField;
    d_REQUEST_VIEW: TDataSource;
    q_REQUEST_VIEWOUT_PRICE1: TFloatField;
    q_REQUEST_VIEWOUT_PRICE2: TFloatField;
    q_REQUEST_VIEWOUT_PRICE3: TFloatField;
    q_REQUEST_VIEWSELECTED: TSmallintField;
    gridRequestOUT_PRICE1: TcxGridDBColumn;
    gridRequestOUT_PRICE2: TcxGridDBColumn;
    gridRequestOUT_PRICE3: TcxGridDBColumn;
    gridRequestSELECTED: TcxGridDBColumn;
    UniQuery: TUniQuery;
    QueryUpdate: TUniQuery;
    btnCheckOK: TcxButton;
    btnDeselectAll: TcxButton;
    q_REQUEST_VIEWREG_PRICE1: TFloatField;
    q_REQUEST_VIEWREG_PRICE2: TFloatField;
    q_REQUEST_VIEWREG_PRICE3: TFloatField;
    gridRequestREG_PRICE1: TcxGridDBColumn;
    gridRequestREG_PRICE2: TcxGridDBColumn;
    gridRequestREG_PRICE3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure gridLectureSelectColumn1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnOutClick(Sender: TObject);
    procedure gridLectureSelectFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnExportClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure gridRequestStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure frmYearQuarter1cbQuarterChange(Sender: TObject);
    procedure frmYearQuarter1cbYearChange(Sender: TObject);
    procedure gridRequestCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnRefreshDataClick(Sender: TObject);
    procedure btnRefundClick(Sender: TObject);
    procedure btnOutCancelClick(Sender: TObject);
    procedure gridRequestIS_DCCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormActivate(Sender: TObject);
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
    procedure btnPaybackClick(Sender: TObject);
    procedure btnCheckOKClick(Sender: TObject);
    procedure btnDeselectAllClick(Sender: TObject);
    procedure gridRequestCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure RetrieveRequestData;
    procedure RefreshLectureCountInfo(lecture_id: string);
    function CountLectureRegisted(lecture_id: string): integer;
    function CountLectureRegisted2(lecture_id: string): integer;
    procedure UpdateStudent(S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO: string; S_KIND, RECEIPT_YESNO: Integer);
    procedure UpdateRegistedLecture(REG_DATE : string; PAY_AMOUNT : Double; IS_DC, PAY_WAY,
    MONTH1, MONTH2, MONTH3 : Integer);
    function CountLectureDC(lecture_id: string): integer;
    procedure ExportToExcel(fname: string);
    procedure ResetColumnLabel;
    procedure RefreshLectureData;
    function CheckDataSame : Boolean;
    { Private declarations }
  public
    { Public declarations }
    function CountStudent(student_name: string): integer;
    procedure RefreshAllData(LectureID : string);
    procedure SelectLecture(LectureID : string);

  end;

var
  fmBatchPayback: TfmBatchPayback;

implementation

uses GlobalVar, Udm, UfmRequestEdit, UfmSelectStudent, UfmRefundPayment,
  UfmRegistWait, uCommonLogic, UfmRequestEdit2, UfmRequestChange,
  UfmMoneyInOutEdit3, UfmRefundBatch, UfmRefundPerson;

{$R *.dfm}

procedure TfmBatchPayback.FormCreate(Sender: TObject);
var
  mon : integer;
begin
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

procedure TfmBatchPayback.frmYearQuarter1cbQuarterChange(Sender: TObject);
begin
  frmYearQuarter1.cbQuarterChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmBatchPayback.frmYearQuarter1cbYearChange(Sender: TObject);
begin
  frmYearQuarter1.cbYearChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmBatchPayback.btnRefreshDataClick(Sender: TObject);
begin
  RefreshLectureData;
end;

procedure TfmBatchPayback.RefreshLectureData;
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

procedure TfmBatchPayback.btnRefundClick(Sender: TObject);
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

procedure TfmBatchPayback.btnRetrieveClick(Sender: TObject);
begin
  ResetColumnLabel;
  dm.q_lecture_select.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
  dm.q_lecture_select.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
  dm.q_lecture_select.Active := True;
  dm.d_lecture_select.DataSet.Refresh;

  q_REQUEST_VIEW.ParamByName('lecture_id').AsString := dm.q_lecture_selectID.AsString;
  q_REQUEST_VIEW.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
  q_REQUEST_VIEW.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
  q_REQUEST_VIEW.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;

end;

procedure TfmBatchPayback.ResetColumnLabel;
var
  mStep : Integer;
begin
  mStep := frmYearQuarter1.cbQuarter.ItemIndex;
  case mStep of
    0: begin
      gridRequestREG_PRICE1.Caption := '수강1월';
      gridRequestREG_PRICE2.Caption := '수강2월';
      gridRequestREG_PRICE3.Caption := '수강3월';
      gridRequestOUT_PRICE1.Caption := '퇴강1월';
      gridRequestOUT_PRICE2.Caption := '퇴강2월';
      gridRequestOUT_PRICE3.Caption := '퇴강3월';
    end;
    1: begin
      gridRequestREG_PRICE1.Caption := '수강4월';
      gridRequestREG_PRICE2.Caption := '수강5월';
      gridRequestREG_PRICE3.Caption := '수강6월';
      gridRequestOUT_PRICE1.Caption := '퇴강4월';
      gridRequestOUT_PRICE2.Caption := '퇴강5월';
      gridRequestOUT_PRICE3.Caption := '퇴강6월';
    end;
    2: begin
      gridRequestREG_PRICE1.Caption := '수강7월';
      gridRequestREG_PRICE2.Caption := '수강8월';
      gridRequestREG_PRICE3.Caption := '수강9월';
      gridRequestOUT_PRICE1.Caption := '퇴강7월';
      gridRequestOUT_PRICE2.Caption := '퇴강8월';
      gridRequestOUT_PRICE3.Caption := '퇴강9월';
    end;
    3: begin
      gridRequestREG_PRICE1.Caption := '수강10월';
      gridRequestREG_PRICE2.Caption := '수강11월';
      gridRequestREG_PRICE3.Caption := '수강12월';
      gridRequestOUT_PRICE1.Caption := '퇴강10월';
      gridRequestOUT_PRICE2.Caption := '퇴강11월';
      gridRequestOUT_PRICE3.Caption := '퇴강12월';
    end;
  end;
end;

procedure TfmBatchPayback.SelectLecture(LectureID: string);
begin
  dm.d_lecture_select.DataSet.Locate('ID', LectureID, []);
end;

procedure TfmBatchPayback.RefreshAllData(LectureID : string);
begin
  d_REQUEST_VIEW.DataSet.DisableControls;
  d_REQUEST_VIEW.DataSet.Refresh;
  d_REQUEST_VIEW.DataSet.EnableControls;
  RefreshLectureCountInfo(LectureID);
end;

procedure TfmBatchPayback.RefreshLectureCountInfo(lecture_id : string);
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

function TfmBatchPayback.CountLectureRegisted(lecture_id : string): integer;
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

function TfmBatchPayback.CountLectureRegisted2(lecture_id : string): integer;
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

function TfmBatchPayback.CountLectureDC(lecture_id : string): integer;
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

function TfmBatchPayback.CountStudent(student_name : string) : integer;
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

procedure TfmBatchPayback.UpdateRegistedLecture(REG_DATE : string; PAY_AMOUNT : Double; IS_DC, PAY_WAY,
              MONTH1, MONTH2, MONTH3 : Integer);
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
      SQL.Add('reg_month = :month1, reg_month2 = :month2, reg_month3 = :month3 ');
      SQL.Add('where id = :id');
      ParamByName('REG_DATE').AsString := REG_DATE;
      ParamByName('PAY_AMOUNT').AsFloat := PAY_AMOUNT;
      ParamByName('IS_DC').AsInteger := IS_DC;
      ParamByName('PAY_WAY').AsInteger := PAY_WAY;
      ParamByName('MONTH1').AsInteger := MONTH1;
      ParamByName('MONTH2').AsInteger := MONTH2;
      ParamByName('MONTH3').AsInteger := MONTH3;
      ParamByName('ID').AsString := gridRequestID.EditValue;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmBatchPayback.UpdateStudent(S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO: string; S_KIND, RECEIPT_YESNO: Integer);
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
      ParamByName('S_DONG').AsString := S_DONG;
      ParamByName('S_BIRTH').AsString := S_BIRTH;
      ParamByName('RECEIPT_NO').AsString := RECEIPT_NO;
      ParamByName('RECEIPT_YESNO').AsInteger := RECEIPT_YESNO;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmBatchPayback.btnCheckOKClick(Sender: TObject);
var
  msg : string;
begin
  if CheckDataSame then begin
    msg := '환불처리를 진행하세요.';
    ShowMessage(msg);
  end;
end;

function TfmBatchPayback.CheckDataSame : Boolean;
var
  i, cnt : integer;
  old_price, sel_price : Double;
  msg : string;
begin
  cnt := q_REQUEST_VIEW.RecordCount;
  q_REQUEST_VIEW.First;

  old_price := 0;
  for i := 0 to cnt - 1 do begin
    if q_REQUEST_VIEWSELECTED.Value = 1 then begin
      sel_price := q_REQUEST_VIEWPAY_AMOUNT.Value;
      if old_price > 0 then begin
        if sel_price <> old_price then begin
          ShowMessage('선택한 자료가 같지 않습니다. 확인하세요.');
          Result := False;
          Exit;
        end;
      end;
      old_price := sel_price;
    end;
    q_REQUEST_VIEW.Next;
  end;
  q_REQUEST_VIEW.First;
  ShowMessage('환불처리를 진행해도 좋습니다.');
  Result := True;

end;

procedure TfmBatchPayback.btnDeselectAllClick(Sender: TObject);
var
  i, cnt, selected : integer;
  id : string;
begin
  cnt := q_REQUEST_VIEW.RecordCount;
  q_REQUEST_VIEW.First;
  for i := 0 to cnt - 1 do begin
    id := q_REQUEST_VIEWID.Value;
    selected := q_REQUEST_VIEWSELECTED.Value;
    if selected = 1 then begin
      UniQuery.SQL.Clear;
      UniQuery.SQL.Text := 'update REGISTED_LECTURE set SELECTED = 0 ' +
                           'where ID = ' + id;
      UniQuery.ExecSQL;
    end;
    q_REQUEST_VIEW.Next;
  end;
  q_REQUEST_VIEW.First;
  d_REQUEST_VIEW.DataSet.Refresh;
end;

procedure TfmBatchPayback.btnExport2Click(Sender: TObject);
var
  filename, lecture_name, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
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
  finally
    saveDLG.Free;
  end;
end;

procedure TfmBatchPayback.btnExportClick(Sender: TObject);
var
  filename, lecture_name, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
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
    ExportGridToExcel(nameonly, cxGrid1, True, true, False, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmBatchPayback.ExportToExcel(fname : string);
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

procedure TfmBatchPayback.btnOutCancelClick(Sender: TObject);
var
  id, LectureID : string;
  qry : TUniQuery;
  r_date : string;
  regmon1, regmon2, regmon3, outmon1, outmon2, outmon3 : Integer;
  bank, bankid, owner : string;
begin
  qry := TUniQuery.Create(nil);
  qry.Connection := dm.UniConnection1;
  try
    gridLectureSelect.DataController.SaveBookmark;
    gridRequest.DataController.SaveBookmark;
    LectureID := gridLectureSelectID.EditValue;
    q_REQUEST_VIEW.First;
    while not q_REQUEST_VIEW.Eof do begin
      if q_REQUEST_VIEWSELECTED.Value = 1 then begin
        id := q_REQUEST_VIEWID.AsString;
        with qry do begin
          SQL.Clear;
          SQL.Add('Update REGISTED_LECTURE set R_DATE = :r_date, OUT_KIND = -1, OUT_AMOUNT = 0, ');
          SQL.Add('PAYBACK_WAY = -1, PAYBACK_BANK = :bank, PAYBACK_BANKID = :bankid, ');
          SQL.Add('PAYBACK_BANKOWNER = :owner, ');
          SQL.Add('OUT_MONTH = 0, OUT_MONTH2 = 0, OUT_MONTH3 = 0, ');
          SQL.Add('OUT_PRICE1 = 0, OUT_PRICE2 = 0, OUT_PRICE3 = 0 ');
          SQL.Add('where ID = :id');
          ParamByName('id').Value := id;
          ParamByName('r_date').Value := '';
          ParamByName('bank').Value := '';
          ParamByName('bankid').Value := '';
          ParamByName('owner').Value := '';
          ExecSQL;
        end;
      end;
      q_REQUEST_VIEW.Next;
    end;
    d_REQUEST_VIEW.DataSet.Refresh;
    RefreshLectureCountInfo(LectureID);
    gridLectureSelect.DataController.GotoBookmark;
    gridRequest.DataController.GotoBookmark;
  finally
    qry.Free;
  end;
end;

procedure TfmBatchPayback.btnOutClick(Sender: TObject);
var
  id : string;
begin
  fmRefundPerson := TfmRefundPerson.Create(Self);
  try
    fmRefundPerson.q_REQUEST_VIEW.ParamByName('lecture_id').AsString := dm.q_lecture_selectID.AsString;
    fmRefundPerson.q_REQUEST_VIEW.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
    fmRefundPerson.q_REQUEST_VIEW.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
    fmRefundPerson.q_REQUEST_VIEW.Active := True;
    fmRefundPerson.d_REQUEST_VIEW.DataSet.Refresh;

    fmRefundPerson.ShowModal;
    if fmRefundPerson.DATA_MODIFIED = True then
      d_REQUEST_VIEW.DataSet.Refresh;
  finally
    fmRefundPerson.Free;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmBatchPayback.btnPaybackClick(Sender: TObject);
var
  id, LectureID, JUKYO, StudentName : string;
  r_date : TDateTime;
  OUT_MONTH1, OUT_MONTH2, OUT_MONTH3, month1, month2, month3, mStep : Integer;
  OUT_PRICE1, OUT_PRICE2, OUT_PRICE3, OUT_TOTAL : Double;
  REG_MONTH1, REG_MONTH2, REG_MONTH3 : Integer;
  i, cnt, selected, out_kind, pay_way : Integer;
  isAll1, isAll2, isAll3 : Integer;
  OUT_MONTH1_KIND, OUT_MONTH2_KIND, OUT_MONTH3_KIND : Integer;
  msg : string;
begin
  msg := '일괄환불처리는 선택한 모든 수강자에게 동일하게' + #10#13 +
         '환불처리를 합니다.' + #10#13 +
         '따라서 선택한 수강자들의 수강자료가 동일한 조건으로' + #10#13 +
         '선택되어야 합니다.' + #10#13 +
         '예: 동일금액, 동일월분 등...' + #10#13 +
         '일반수강자와 감면수강자는 금액이 틀리므로' + #10#13 +
         '일괄환불처리를 할 수 없습니다. 따로 따로 진행하세요.';
  ShowMessage(msg);
  if CheckDataSame = False then begin
    Exit;
  end;
  d_REQUEST_VIEW.DataSet.DisableControls;
  fmRefundBatch := TfmRefundBatch.Create(Self);
  try
    mStep := frmYearQuarter1.cbQuarter.ItemIndex;
    case mStep of
      0: begin
        fmRefundBatch.chkMon1.Caption := '1월';
        fmRefundBatch.chkMon2.Caption := '2월';
        fmRefundBatch.chkMon3.Caption := '3월';
      end;
      1: begin
        fmRefundBatch.chkMon1.Caption := '4월';
        fmRefundBatch.chkMon2.Caption := '5월';
        fmRefundBatch.chkMon3.Caption := '6월';
      end;
      2: begin
        fmRefundBatch.chkMon1.Caption := '7월';
        fmRefundBatch.chkMon2.Caption := '8월';
        fmRefundBatch.chkMon3.Caption := '9월';
      end;
      3: begin
        fmRefundBatch.chkMon1.Caption := '10월';
        fmRefundBatch.chkMon2.Caption := '11월';
        fmRefundBatch.chkMon3.Caption := '12월';
      end;
    end;
    LectureID := dm.q_lecture_selectID.AsString;
    fmRefundBatch.edtDate.Date := Date;
    fmRefundBatch.edtOutKind.EditValue := 1;
    fmRefundBatch.edtPayWay.ItemIndex := 1;
    fmRefundBatch.edtAmount.Value := 0;
    fmRefundBatch.edtAmount2.Value := 0;
    fmRefundBatch.edtAmount3.Value := 0;

    fmRefundBatch.ShowModal;
    if fmRefundBatch.ModalResult = mrOk then begin
      cnt := q_REQUEST_VIEW.RecordCount;
      r_date := fmRefundBatch.edtDate.Date;
      out_kind := fmRefundBatch.edtOutKind.EditValue;
      pay_way := fmRefundBatch.edtPayWay.EditValue;

      if fmRefundBatch.chkMon1.Checked then OUT_MONTH1 := 1 else OUT_MONTH1 := 0;
      if fmRefundBatch.chkMon2.Checked then OUT_MONTH2 := 1 else OUT_MONTH2 := 0;
      if fmRefundBatch.chkMon3.Checked then OUT_MONTH3 := 1 else OUT_MONTH3 := 0;

      OUT_PRICE1 := fmRefundBatch.edtAmount.EditValue;
      OUT_PRICE2 := fmRefundBatch.edtAmount2.EditValue;
      OUT_PRICE3 := fmRefundBatch.edtAmount3.EditValue;
      OUT_TOTAL := OUT_PRICE1 + OUT_PRICE2 + OUT_PRICE3;
      q_REQUEST_VIEW.First;
      for i := 0 to cnt - 1 do begin
        id := q_REQUEST_VIEWID.AsString;
        selected := q_REQUEST_VIEWSELECTED.Value;
        if selected = 1 then begin
          QueryUpdate.ParamByName('r_date').AsString := DateTimeToStr(r_date);
          QueryUpdate.ParamByName('out_kind').AsInteger := out_kind;
          QueryUpdate.ParamByName('payback_way').AsInteger := pay_way;
          QueryUpdate.ParamByName('out_amount').AsFloat := OUT_TOTAL;
          QueryUpdate.ParamByName('out_month1').AsInteger := OUT_MONTH1;
          QueryUpdate.ParamByName('out_month2').AsInteger := OUT_MONTH2;
          QueryUpdate.ParamByName('out_month3').AsInteger := OUT_MONTH3;
          QueryUpdate.ParamByName('out_price1').AsFloat := OUT_PRICE1;
          QueryUpdate.ParamByName('out_price2').AsFloat := OUT_PRICE2;
          QueryUpdate.ParamByName('out_price3').AsFloat := OUT_PRICE3;
          QueryUpdate.ParamByName('id').AsString := id;
          QueryUpdate.ExecSQL;
        end;
        q_REQUEST_VIEW.Next;
      end;
      d_REQUEST_VIEW.DataSet.Refresh;
      RefreshLectureCountInfo(LectureID);
    end;
  finally
    d_REQUEST_VIEW.DataSet.EnableControls;
    fmRefundPayment.Free;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmBatchPayback.btnPrintClick(Sender: TObject);
var
  titleStr, lecture_name : string;
begin
  //gridRequestColumn1.Visible := False;
  lecture_name := gridLectureSelect.DataController.GetDisplayText(gridLectureSelect.DataController.GetFocusedRecordIndex, 5);
  titleStr := '수강등록현황(' + lecture_name + ')';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  //gridRequestColumn1.Visible := True;
end;

procedure TfmBatchPayback.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmBatchPayback.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmBatchPayback.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  q_REQUEST_VIEW.Close;

end;

procedure TfmBatchPayback.RetrieveRequestData;
begin
  q_REQUEST_VIEW.ParamByName('lecture_id').AsString := dm.q_lecture_selectID.AsString;
  q_REQUEST_VIEW.ParamByName('l_year').AsInteger := StrToInt(frmYearQuarter1.cbYear.Text);
  q_REQUEST_VIEW.ParamByName('l_step').AsInteger := frmYearQuarter1.cbQuarter.ItemIndex + 1;
  q_REQUEST_VIEW.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
  gridRequest.Controller.ClearSelection;
end;
procedure TfmBatchPayback.gridLectureSelectColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex+1);
end;

procedure TfmBatchPayback.gridLectureSelectFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  RetrieveRequestData;
end;

procedure TfmBatchPayback.gridRequestCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  selected, valued : Integer;
  field_name : string;
begin
  field_name := TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName;
  if field_name = 'SELECTED' then begin
    selected := q_REQUEST_VIEWSELECTED.Value;
    if selected = 0 then begin
      valued := 1;
    end else begin
      valued := 0;
    end;
    UniQuery.SQL.Clear;
    UniQuery.SQL.Text := 'update REGISTED_LECTURE set SELECTED = ' + IntToStr(valued) +
                         'where ID = ' + gridRequestID.EditValue;
    UniQuery.ExecSQL;
    d_REQUEST_VIEW.DataSet.Refresh;
  end;
end;

procedure TfmBatchPayback.gridRequestCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnOut.Click;
end;

procedure TfmBatchPayback.gridRequestColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex+1);
end;

procedure TfmBatchPayback.gridRequestIS_DCCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('IS_DC').Index];
  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index];
  if col_out > 0 then begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clBlue;
      ACanvas.Font.Color := clWhite;
    end else begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color := clWhite;
    end;
  end else begin
    if(col_kind > 1) then begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clWhite;
    end;
  end;
end;

procedure TfmBatchPayback.gridRequestREG_MONTH2CustomDrawCell(
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

procedure TfmBatchPayback.gridRequestREG_MONTH3CustomDrawCell(
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

procedure TfmBatchPayback.gridRequestREG_MONTHCustomDrawCell(
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

procedure TfmBatchPayback.gridRequestStylesGetContentStyle(
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

initialization RegisterClasses([TfmBatchPayback]);

end.
