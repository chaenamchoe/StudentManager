unit UfmRequestMonthly;

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
  Menus, cxButtons, cxGridCustomPopupMenu, cxGridPopupMenu, cxProgressBar, UfrmYearMonth,
  cxCalendar;

type
  TfmRequestMonthly = class(TForm)
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
    gridRequestL_YEAR: TcxGridDBColumn;
    gridRequestL_STEP: TcxGridDBColumn;
    gridRequestL_NAME: TcxGridDBColumn;
    gridRequestLECTURE_ID: TcxGridDBColumn;
    gridRequestSTUDENT_ID: TcxGridDBColumn;
    gridRequestP_DATE: TcxGridDBColumn;
    gridRequestS_NAME: TcxGridDBColumn;
    gridRequestS_TEL: TcxGridDBColumn;
    gridRequestS_SEX: TcxGridDBColumn;
    gridRequestID: TcxGridDBColumn;
    gridRequestPAY_KIND: TcxGridDBColumn;
    gridRequestR_DATE: TcxGridDBColumn;
    gridRequestOUT_AMOUNT: TcxGridDBColumn;
    gridRequestREG_KIND: TcxGridDBColumn;
    gridRequestS_BIRTH: TcxGridDBColumn;
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
    btnExport: TcxButton;
    btnPrint: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    q_REQUEST_VIEW: TUniQuery;
    q_REQUEST_VIEWL_YEAR: TIntegerField;
    q_REQUEST_VIEWL_STEP: TIntegerField;
    q_REQUEST_VIEWL_NAME: TStringField;
    q_REQUEST_VIEWLECTURE_ID: TStringField;
    q_REQUEST_VIEWSTUDENT_ID: TStringField;
    q_REQUEST_VIEWS_NAME: TStringField;
    q_REQUEST_VIEWS_TEL: TStringField;
    q_REQUEST_VIEWS_KIND: TSmallintField;
    q_REQUEST_VIEWS_SEX: TStringField;
    q_REQUEST_VIEWID: TStringField;
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
    d_REQUEST_VIEW: TDataSource;
    frmYearMonth1: TfrmYearMonth;
    q_REQUEST_VIEWS_DONG: TStringField;
    gridLectureSelectL_NAME: TcxGridDBColumn;
    gridLectureSelectREG_COUNT: TcxGridDBColumn;
    gridLectureSelectL_IDX: TcxGridDBColumn;
    chkNoOut: TcxCheckBox;
    q_REQUEST_VIEWREG_PRICE1: TFloatField;
    q_REQUEST_VIEWREG_PRICE2: TFloatField;
    q_REQUEST_VIEWREG_PRICE3: TFloatField;
    gridRequestREG_PRICE1: TcxGridDBColumn;
    gridRequestREG_PRICE2: TcxGridDBColumn;
    gridRequestREG_PRICE3: TcxGridDBColumn;
    q_REQUEST_VIEWrec_id: TIntegerField;
    gridRequestrec_id: TcxGridDBColumn;
    REQUEST_MONTHLY_SEL: TUniStoredProc;
    REQUEST_MONTHLY_SELL_YEAR: TIntegerField;
    REQUEST_MONTHLY_SELL_STEP: TIntegerField;
    REQUEST_MONTHLY_SELL_NAME: TStringField;
    REQUEST_MONTHLY_SELLECTURE_ID: TStringField;
    REQUEST_MONTHLY_SELSTUDENT_ID: TStringField;
    REQUEST_MONTHLY_SELP_DATE: TStringField;
    REQUEST_MONTHLY_SELREG_PRICE1: TFloatField;
    REQUEST_MONTHLY_SELREG_PRICE2: TFloatField;
    REQUEST_MONTHLY_SELREG_PRICE3: TFloatField;
    REQUEST_MONTHLY_SELIS_DC: TSmallintField;
    REQUEST_MONTHLY_SELPAY_KIND: TSmallintField;
    REQUEST_MONTHLY_SELR_DATE: TStringField;
    REQUEST_MONTHLY_SELOUT_AMOUNT: TFloatField;
    REQUEST_MONTHLY_SELREG_KIND: TSmallintField;
    REQUEST_MONTHLY_SELPAY_WAY: TSmallintField;
    REQUEST_MONTHLY_SELPAYBACK_WAY: TSmallintField;
    REQUEST_MONTHLY_SELPAYBACK_BANK: TStringField;
    REQUEST_MONTHLY_SELPAYBACK_BANKID: TStringField;
    REQUEST_MONTHLY_SELOUT_KIND: TSmallintField;
    REQUEST_MONTHLY_SELPAYBACK_BANKOWNER: TStringField;
    REQUEST_MONTHLY_SELREG_MONTH: TSmallintField;
    REQUEST_MONTHLY_SELREG_MONTH2: TSmallintField;
    REQUEST_MONTHLY_SELREG_MONTH3: TSmallintField;
    REQUEST_MONTHLY_SELOUT_MONTH: TSmallintField;
    REQUEST_MONTHLY_SELOUT_MONTH2: TSmallintField;
    REQUEST_MONTHLY_SELOUT_MONTH3: TSmallintField;
    REQUEST_MONTHLY_SELS_NAME: TStringField;
    REQUEST_MONTHLY_SELS_TEL: TStringField;
    REQUEST_MONTHLY_SELS_ADDR: TStringField;
    REQUEST_MONTHLY_SELS_KIND: TSmallintField;
    REQUEST_MONTHLY_SELS_SEX: TStringField;
    REQUEST_MONTHLY_SELS_BIRTH: TStringField;
    REQUEST_MONTHLY_SELS_DONG: TStringField;
    REQUEST_MONTHLY_SELCASH_RECEIPT_NO: TStringField;
    REQUEST_MONTHLY_SELCASH_RECEIPT_YESNO: TSmallintField;
    REQUEST_MONTHLY_SELID: TStringField;
    REQUEST_MONTHLY_SELlec_id: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure gridRequestColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gridLectureSelectColumn1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
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
    procedure btnRefreshDataClick(Sender: TObject);
    procedure gridRequestIS_DCCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure chkNoOutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure RetrieveRequestData;
    procedure RefreshLectureCountInfo(lecture_id: string);
    function CountLectureRegisted(lecture_id: string): integer;
    function CountLectureRegisted2(lecture_id: string): integer;
    procedure UpdateStudent(S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO: string; S_KIND, RECEIPT_YESNO: Integer);
    procedure UpdateRegistedLecture(REG_DATE : string; PAY_AMOUNT : Double; IS_DC, PAY_WAY,
    MONTH1, MONTH2, MONTH3 : Integer);
    function CountLectureDC(lecture_id: string): integer;
    procedure GenereteRecordID;
//    procedure ResetColumnLabel;
    { Private declarations }
  public
    { Public declarations }
    function CountStudent(student_name: string): integer;
    procedure RefreshAllData(LectureID : string);
    procedure SelectLecture(LectureID : string);

  end;

var
  fmRequestMonthly: TfmRequestMonthly;

implementation

uses GlobalVar, Udm, UfmRequestEdit, UfmSelectStudent, UfmRefundPayment,
  UfmRegistWait, uCommonLogic, UfmRequestEdit2;

{$R *.dfm}

procedure TfmRequestMonthly.FormCreate(Sender: TObject);
var
  mon : integer;
begin
  frmYearMonth1.InitYearMonth;
  mon := MonthOf(Date);
  frmYearMonth1.cbMonth.ItemIndex := mon - 1;
//  btnRetrieve.Click;
end;

procedure TfmRequestMonthly.FormShow(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRequestMonthly.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  frmYearMonth1.cbMonthChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmRequestMonthly.btnRefreshDataClick(Sender: TObject);
var
  i, cnt : Integer;
  l_id : string;
begin
  try
    cnt := gridLectureSelect.DataController.RecordCount;
    gridLectureSelect.DataController.GotoFirst;
    for i := 0 to cnt - 1 do begin
      l_id := gridLectureSelectID.EditValue;
      RefreshLectureCountInfo(l_id);
      gridLectureSelect.DataController.GotoNext;
    end;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmRequestMonthly.btnRetrieveClick(Sender: TObject);
var
  mon, lstep, mon_kind, smon, emon : Integer;
  filter_str : string;
  lecture_id : string;
  out1, out2 : Integer;
begin
  try
    mon := frmYearMonth1.cbMonth.ItemIndex + 1;
    case mon of
      1..3: lstep := 1;
      4..6: lstep := 2;
      7..9: lstep := 3;
      10..12: lstep := 4;
    end;
    case mon of
      1, 4, 7, 10: begin
        mon_kind := 1;
        gridRequestREG_PRICE1.Visible := True;
        gridRequestREG_PRICE2.Visible := False;
        gridRequestREG_PRICE3.Visible := False;
        gridRequestOUT_MONTH.Visible := True;
        gridRequestOUT_MONTH2.Visible := False;
        gridRequestOUT_MONTH3.Visible := False;
      end;
      2, 5, 8, 11: begin
        mon_kind := 2;
        gridRequestREG_PRICE1.Visible := False;
        gridRequestREG_PRICE2.Visible := True;
        gridRequestREG_PRICE3.Visible := False;
        gridRequestOUT_MONTH.Visible := False;
        gridRequestOUT_MONTH2.Visible := True;
        gridRequestOUT_MONTH3.Visible := False;
      end;
      3, 6, 9, 12: begin
        mon_kind := 3;
        gridRequestREG_PRICE1.Visible := False;
        gridRequestREG_PRICE2.Visible := False;
        gridRequestREG_PRICE3.Visible := True;
        gridRequestOUT_MONTH.Visible := False;
        gridRequestOUT_MONTH2.Visible := False;
        gridRequestOUT_MONTH3.Visible := True;
      end;
    end;
    dm.q_lecture_select.ParamByName('l_year').AsInteger := StrToInt(frmYearMonth1.cbYear.Text);
    dm.q_lecture_select.ParamByName('l_step').AsInteger := lstep;
    dm.q_lecture_select.Active := True;
    dm.d_lecture_select.DataSet.Refresh;

    dm.LECTURELIST_WITH_REGISTCOUNT.ParamByName('LYEAR').AsInteger := StrToInt(frmYearMonth1.cbYear.Text);
    dm.LECTURELIST_WITH_REGISTCOUNT.ParamByName('LSTEP').AsInteger := lstep;
    dm.LECTURELIST_WITH_REGISTCOUNT.ParamByName('LMONTH').AsInteger := mon_kind;
    dm.LECTURELIST_WITH_REGISTCOUNT.Active := True;
    dm.d_LECTURELIST_WITH_REGISTCOUNT.DataSet.Refresh;

    if rbSelect.Checked then
      lecture_id := dm.LECTURELIST_WITH_REGISTCOUNTID.AsString
    else
      lecture_id := '%';

    REQUEST_MONTHLY_SEL.ParamByName('LECTUREID').AsString := lecture_id;
    REQUEST_MONTHLY_SEL.ParamByName('LYEAR').AsInteger := StrToInt(frmYearMonth1.cbYear.Text);
    REQUEST_MONTHLY_SEL.ParamByName('LSTEP').AsInteger := lstep;
    REQUEST_MONTHLY_SEL.ParamByName('OUTMONTH1').AsInteger := 0;
    REQUEST_MONTHLY_SEL.ParamByName('OUTMONTH2').AsInteger := 0;
    REQUEST_MONTHLY_SEL.ParamByName('formonth').AsFloat := mon_kind;
    REQUEST_MONTHLY_SEL.Active := True;
    d_REQUEST_VIEW.DataSet.Refresh;
    GenereteRecordID;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmRequestMonthly.GenereteRecordID;
var
  i, cnt, f, no : Integer;
begin
  cnt := gridRequest.DataController.RecordCount;
  no := 0;
  gridRequest.DataController.BeginUpdate;
  gridRequest.DataController.GotoFirst;
  for i := 0 to cnt - 1 do begin
    if gridRequestL_YEAR.EditValue > 0 then begin
      gridRequest.DataController.Values[i, gridRequestrec_id.Index] := i+1;
    end;
    gridRequest.DataController.GotoNext;
  end;
  gridRequest.DataController.EndUpdate;
  gridRequest.DataController.GotoFirst;
end;

procedure TfmRequestMonthly.chkNoOutClick(Sender: TObject);
var
  mon : Integer;
begin
  try
    mon := frmYearMonth1.cbMonth.ItemIndex + 1;
    case mon of
      1, 4, 7, 10: begin
        if chkNoOut.Checked then
          REQUEST_MONTHLY_SEL.Filter := 'out_month = 0'
        else
          REQUEST_MONTHLY_SEL.Filter := '';
      end;
      2, 5, 8, 11: begin
        if chkNoOut.Checked then
          REQUEST_MONTHLY_SEL.Filter := 'out_month2 = 0'
        else
          REQUEST_MONTHLY_SEL.Filter := '';
      end;
      3, 6, 9, 12: begin
        if chkNoOut.Checked then
          REQUEST_MONTHLY_SEL.Filter := 'out_month3 = 0'
        else
          REQUEST_MONTHLY_SEL.Filter := '';
      end;
    end;
    REQUEST_MONTHLY_SEL.Filtered := True;
    GenereteRecordID;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmRequestMonthly.RetrieveRequestData;
var
  mon, lstep, mon_kind : Integer;
  filter_str : string;
  out1, out2 : Integer;
begin
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  case mon of
    1..3: lstep := 1;
    4..6: lstep := 2;
    7..9: lstep := 3;
    10..12: lstep := 4;
  end;
  case mon of
    1, 4, 7, 10: begin
      mon_kind := 1;
      if chkNoOut.Checked then begin
        out1 := 0;
        out2 := 0;
      end else begin
        out1 := 0;
        out2 := 1;
      end;
    end;
    2, 5, 8, 11: begin
      mon_kind := 2;
      if chkNoOut.Checked then begin
        out1 := 0;
        out2 := 0;
      end else begin
        out1 := 0;
        out2 := 1;
      end;
    end;
    3, 6, 9, 12: begin
      mon_kind := 3;
      if chkNoOut.Checked then begin
        out1 := 0;
        out2 := 0;
      end else begin
        out1 := 0;
        out2 := 1;
      end;
    end;
  end;
  REQUEST_MONTHLY_SEL.ParamByName('LECTUREID').AsString := dm.LECTURELIST_WITH_REGISTCOUNTID.AsString;
  REQUEST_MONTHLY_SEL.ParamByName('LYEAR').AsInteger := StrToInt(frmYearMonth1.cbYear.Text);
  REQUEST_MONTHLY_SEL.ParamByName('LSTEP').AsInteger := lstep;
  REQUEST_MONTHLY_SEL.ParamByName('OUTMONTH1').AsInteger := out1;
  REQUEST_MONTHLY_SEL.ParamByName('OUTMONTH2').AsInteger := out2;
  REQUEST_MONTHLY_SEL.ParamByName('FORMONTH').AsInteger := mon_kind;
  REQUEST_MONTHLY_SEL.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
  gridRequest.Controller.ClearSelection;
end;

//procedure TfmRequestMonthly.ResetColumnLabel;
//var
//  mStep : Integer;
//begin
//  mStep := frmYearMonth1.cbMonth.ItemIndex;
//  case mStep of
//    0: begin
//      gridRequestREG_MONTH.Caption := '수강1월';
//      gridRequestREG_MONTH2.Caption := '수강2월';
//      gridRequestREG_MONTH3.Caption := '수강3월';
//      gridRequestOUT_MONTH.Caption := '퇴강1월';
//      gridRequestOUT_MONTH2.Caption := '퇴강2월';
//      gridRequestOUT_MONTH3.Caption := '퇴강3월';
//    end;
//    1: begin
//      gridRequestREG_MONTH.Caption := '수강4월';
//      gridRequestREG_MONTH2.Caption := '수강5월';
//      gridRequestREG_MONTH3.Caption := '수강6월';
//      gridRequestOUT_MONTH.Caption := '퇴강4월';
//      gridRequestOUT_MONTH2.Caption := '퇴강5월';
//      gridRequestOUT_MONTH3.Caption := '퇴강6월';
//    end;
//    2: begin
//      gridRequestREG_MONTH.Caption := '수강7월';
//      gridRequestREG_MONTH2.Caption := '수강8월';
//      gridRequestREG_MONTH3.Caption := '수강9월';
//      gridRequestOUT_MONTH.Caption := '퇴강7월';
//      gridRequestOUT_MONTH2.Caption := '퇴강8월';
//      gridRequestOUT_MONTH3.Caption := '퇴강9월';
//    end;
//    3: begin
//      gridRequestREG_MONTH.Caption := '수강10월';
//      gridRequestREG_MONTH2.Caption := '수강11월';
//      gridRequestREG_MONTH3.Caption := '수강12월';
//      gridRequestOUT_MONTH.Caption := '퇴강10월';
//      gridRequestOUT_MONTH2.Caption := '퇴강11월';
//      gridRequestOUT_MONTH3.Caption := '퇴강12월';
//    end;
//  end;
//end;

procedure TfmRequestMonthly.SelectLecture(LectureID: string);
begin
  dm.d_lecture_select.DataSet.Locate('ID', LectureID, []);
end;

procedure TfmRequestMonthly.RefreshAllData(LectureID : string);
begin
  RefreshLectureCountInfo(LectureID);
  dm.d_REQUEST_VIEW.DataSet.DisableControls;
  dm.d_REQUEST_VIEW.DataSet.Refresh;
  dm.d_REQUEST_VIEW.DataSet.EnableControls;
end;

procedure TfmRequestMonthly.RefreshLectureCountInfo(lecture_id : string);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
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
  finally
    dm.d_lecture_select.DataSet.Refresh;
    Query.Free;
  end;
end;

function TfmRequestMonthly.CountLectureRegisted(lecture_id : string): integer;
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

function TfmRequestMonthly.CountLectureRegisted2(lecture_id : string): integer;
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

function TfmRequestMonthly.CountLectureDC(lecture_id : string): integer;
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

function TfmRequestMonthly.CountStudent(student_name : string) : integer;
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

procedure TfmRequestMonthly.UpdateRegistedLecture(REG_DATE : string; PAY_AMOUNT : Double; IS_DC, PAY_WAY,
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

procedure TfmRequestMonthly.UpdateStudent(S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO: string; S_KIND, RECEIPT_YESNO: Integer);
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

procedure TfmRequestMonthly.btnExportClick(Sender: TObject);
var
  filename, lecture_name, nameonly, mon_str : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    try
      mon_str := frmYearMonth1.cbMonth.Text;
      lecture_name := gridLectureSelect.DataController.GetDisplayText(gridLectureSelect.DataController.GetFocusedRecordIndex, 2);
      filename := '월별수강생현황(' + mon_str + ')_' + DateTimeToStr(Date);// + '.xlsx';
      saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
      saveDLG.DefaultExt := 'xls';
      saveDLG.FileName := filename;
      if saveDLG.Execute then begin
         filename := saveDLG.FileName;
         nameonly := copy(filename, 1, length(filename) - 4);
      end else begin
         exit;
      end;
      ExportGridToExcel(nameonly, cxGrid1, True, true, True, 'xls');
      ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
    except on E: Exception do
      ShowMessage(e.Message);
    end;
  finally
    saveDLG.Free;
  end;
end;

procedure TfmRequestMonthly.btnPrintClick(Sender: TObject);
var
  titleStr, lecture_name, mon_year, mon_str : string;
begin
  try
    mon_year := frmYearMonth1.cbYear.Text + '년 ';
    mon_str := frmYearMonth1.cbMonth.Text;
    lecture_name := gridLectureSelect.DataController.GetDisplayText(gridLectureSelect.DataController.GetFocusedRecordIndex, 2);
    titleStr := '월별수강생현황(' + mon_year + mon_str + ')';
    dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
    dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
    dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
    dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
    dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmRequestMonthly.FormActivate(Sender: TObject);
begin
//  btnRetrieve.Click;
end;

procedure TfmRequestMonthly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmRequestMonthly.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dm.q_REQUEST_VIEW.Close;

end;

procedure TfmRequestMonthly.gridLectureSelectColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex + 1);
end;

procedure TfmRequestMonthly.gridLectureSelectFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  try
    if rbSelect.Checked then begin
      RetrieveRequestData;
      GenereteRecordID;
    end;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TfmRequestMonthly.gridRequestColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index);
end;

procedure TfmRequestMonthly.gridRequestIS_DCCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
//  col_kind := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('IS_DC').Index];
//  if(col_kind > 1) then begin
//    ACanvas.Brush.Color := clBlue; //연한그린색
//    ACanvas.Font.Color := clWhite;
//  end;
end;

procedure TfmRequestMonthly.gridRequestStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  mon, col, col2, col3, col4 : Integer;
begin
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  col2 := gridRequest.GetColumnByFieldName('PAY_WAY').Index;
  if ARecord.Values[col2] = 3 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleDefault;

  case mon of
    1, 4, 7, 10: begin
      col3 := gridRequest.GetColumnByFieldName('OUT_MONTH').Index;
    end;
    2, 5, 8, 11: begin
      col3 := gridRequest.GetColumnByFieldName('OUT_MONTH2').Index;
    end;
    3, 6, 9, 12: begin
      col3 := gridRequest.GetColumnByFieldName('OUT_MONTH3').Index;
    end;
  end;
  if ARecord.Values[col3] > 0 then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleDefault;
end;

procedure TfmRequestMonthly.rbAllClick(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmRequestMonthly.rbSelectClick(Sender: TObject);
begin
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmRequestMonthly]);

end.
