unit UfmOutlistMonthly;

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
  cxCalendar, dxmdaset, frxClass, frxDBSet;

type
  TfmOutlistMonthly = class(TForm)
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
    gridRequestR_DATE: TcxGridDBColumn;
    gridRequestREG_KIND: TcxGridDBColumn;
    gridRequestS_BIRTH: TcxGridDBColumn;
    Splitter1: TSplitter;
    gridRequestOUT_KIND: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
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
    cxStyleGreen: TcxStyle;
    gridRequestIS_DC: TcxGridDBColumn;
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
    q_REQUEST_VIEWS_BIRTH: TStringField;
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
    d_REQUEST_VIEW: TDataSource;
    frmYearMonth1: TfrmYearMonth;
    gridLectureSelectL_NAME: TcxGridDBColumn;
    gridLectureSelectREG_COUNT: TcxGridDBColumn;
    gridLectureSelectL_IDX: TcxGridDBColumn;
    gridRequestCASH_RECEIPT_NO: TcxGridDBColumn;
    q_REQUEST_VIEWOUT_PRICE1: TFloatField;
    q_REQUEST_VIEWOUT_PRICE2: TFloatField;
    q_REQUEST_VIEWOUT_PRICE3: TFloatField;
    gridRequestCASH_RECEIPT_YESNO: TcxGridDBColumn;
    gridRequestOUT_PRICE2: TcxGridDBColumn;
    gridRequestOUT_PRICE3: TcxGridDBColumn;
    gridRequestOUT_PRICE1: TcxGridDBColumn;
    btnReportBank: TcxButton;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1s_name: TStringField;
    dxMemData1b_price: TFloatField;
    dxMemData1bank_name: TStringField;
    dxMemData1bank_no: TStringField;
    dxMemData1bank_owener: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    q_REQUEST_VIEWrec_id: TIntegerField;
    gridRequestrec_id: TcxGridDBColumn;
    q_REQUEST_VIEWL_IDX: TSmallintField;
    gridRequestL_IDX: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
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
    procedure gridRequestIS_DCCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure btnReportBankClick(Sender: TObject);
  private
    procedure RetrieveRequestData;
    procedure GenereteRecordID;
    { Private declarations }
  public
    { Public declarations }
    start_no : integer;
    procedure RefreshAllData(LectureID : string);

  end;

var
  fmOutlistMonthly: TfmOutlistMonthly;

implementation

uses GlobalVar, Udm, UfmRequestEdit, UfmSelectStudent, UfmRefundPayment,
  UfmRegistWait, uCommonLogic, UfmRequestEdit2;

{$R *.dfm}

procedure TfmOutlistMonthly.FormCreate(Sender: TObject);
var
  mon : integer;
begin
  frmYearMonth1.InitYearMonth;
  mon := MonthOf(Date);
  frmYearMonth1.cbMonth.ItemIndex := mon - 1;
  start_no := 1;
  btnRetrieve.Click;
end;

procedure TfmOutlistMonthly.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  frmYearMonth1.cbMonthChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmOutlistMonthly.btnReportBankClick(Sender: TObject);
var
  i, cnt, mon : Integer;
  m_price : Double;
begin
  dxMemData1.Close;
  dxMemData1.Open;
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  case mon of
    1, 4, 7, 10: begin
      m_price := gridRequestOUT_PRICE1.EditValue;
    end;
    2, 5, 8, 11: begin
      m_price := gridRequestOUT_PRICE2.EditValue;
    end;
    3, 6, 9, 12: begin
      m_price := gridRequestOUT_PRICE3.EditValue;
    end;
  end;

  cnt := gridRequest.DataController.RecordCount;
  q_REQUEST_VIEW.DisableControls;
  q_REQUEST_VIEW.First;
  for i := 0 to cnt - 1 do begin
    dxMemData1.Append;
    dxMemData1s_name.Value := q_REQUEST_VIEWS_NAME.Value;
    dxMemData1b_price.Value := m_price;
    dxMemData1bank_name.Value := q_REQUEST_VIEWPAYBACK_BANK.Value;
    dxMemData1bank_no.Value := q_REQUEST_VIEWPAYBACK_BANKID.Value;
    dxMemData1bank_owener.Value := q_REQUEST_VIEWPAYBACK_BANKOWNER.Value;
    dxMemData1.Post;
    q_REQUEST_VIEW.Next;
  end;
  q_REQUEST_VIEW.EnableControls;
  frxReport1.ShowReport;
end;

procedure TfmOutlistMonthly.btnRetrieveClick(Sender: TObject);
var
  mon, lstep, mon_kind : Integer;
  filter_str : string;
  lecture_id : string;
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
      filter_str := 'out_price1 > 0';
      mon_kind := 1;
      gridRequestOUT_PRICE1.Visible := True;
      gridRequestOUT_PRICE2.Visible := False;
      gridRequestOUT_PRICE3.Visible := False;
    end;
    2, 5, 8, 11: begin
      filter_str := 'out_price2 > 0';
      mon_kind := 2;
      gridRequestOUT_PRICE1.Visible := False;
      gridRequestOUT_PRICE2.Visible := True;
      gridRequestOUT_PRICE3.Visible := False;
    end;
    3, 6, 9, 12: begin
      filter_str := 'out_price3 > 0';
      mon_kind := 3;
      gridRequestOUT_PRICE1.Visible := False;
      gridRequestOUT_PRICE2.Visible := False;
      gridRequestOUT_PRICE3.Visible := True;
    end;
  end;
  dm.LECTURELIST_WITH_OUTCOUNT.ParamByName('lyear').AsInteger := StrToInt(frmYearMonth1.cbYear.Text);
  dm.LECTURELIST_WITH_OUTCOUNT.ParamByName('lstep').AsInteger := lstep;
  dm.LECTURELIST_WITH_OUTCOUNT.ParamByName('lmonth').AsInteger := mon_kind;
  dm.LECTURELIST_WITH_OUTCOUNT.Active := True;
  dm.d_LECTURELIST_WITH_OUTCOUNT.DataSet.Refresh;

  if rbSelect.Checked then
    lecture_id := dm.LECTURELIST_WITH_OUTCOUNTID.AsString
  else
    lecture_id := '%';

//  ShowMessage(frmYearMonth1.cbYear.Text + '/' + IntToStr(mon) + '/' + IntToStr(lstep));
  q_REQUEST_VIEW.ParamByName('lyear').Value := StrToInt(frmYearMonth1.cbYear.Text);
  q_REQUEST_VIEW.ParamByName('lstep').Value := lstep;
  q_REQUEST_VIEW.ParamByName('lecture_id').Value := lecture_id;
  q_REQUEST_VIEW.Active := True;
  q_REQUEST_VIEW.Filter := filter_str;
  q_REQUEST_VIEW.Filtered := True;
  d_REQUEST_VIEW.DataSet.Refresh;
  GenereteRecordID;
end;

procedure TfmOutlistMonthly.GenereteRecordID;
var
  i, cnt, f, no : Integer;
begin
  cnt := gridRequest.DataController.FilteredRecordCount;
  no := 0;
  gridRequest.DataController.BeginUpdate;
  gridRequest.DataController.GotoFirst;
  for i := 0 to cnt - 1 do begin
    f := gridRequest.DataController.FilteredRecordIndex[i];
    if gridRequestL_YEAR.EditValue > 0 then begin
      //ShowMessage(IntToStr(gridRequestL_YEAR.EditValue) + '/' + VarToStr(gridRequestS_NAME.EditValue));
      Inc(no);
      gridRequest.DataController.Values[f, gridRequestrec_id.Index] := no;
    end;
    gridRequest.DataController.GotoNext;
  end;
  gridRequest.DataController.EndUpdate;
  gridRequest.DataController.GotoFirst;
end;

procedure TfmOutlistMonthly.RetrieveRequestData;
var
  mon, lstep : Integer;
  filter_str : string;
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
      filter_str := 'out_price1 > 0';
      gridRequestOUT_PRICE1.Visible := True;
      gridRequestOUT_PRICE2.Visible := False;
      gridRequestOUT_PRICE3.Visible := False;
    end;
    2, 5, 8, 11: begin
      filter_str := 'out_price2 > 0';
      gridRequestOUT_PRICE1.Visible := False;
      gridRequestOUT_PRICE2.Visible := True;
      gridRequestOUT_PRICE3.Visible := False;
    end;
    3, 6, 9, 12: begin
      filter_str := 'out_price3 > 0';
      gridRequestOUT_PRICE1.Visible := False;
      gridRequestOUT_PRICE2.Visible := False;
      gridRequestOUT_PRICE3.Visible := True;
    end;
  end;

  q_REQUEST_VIEW.ParamByName('lecture_id').AsString := dm.LECTURELIST_WITH_OUTCOUNTID.AsString;
  q_REQUEST_VIEW.Active := True;
  q_REQUEST_VIEW.Filter := filter_str;
  q_REQUEST_VIEW.Filtered := True;
  d_REQUEST_VIEW.DataSet.Refresh;
  gridRequest.Controller.ClearSelection;
end;

procedure TfmOutlistMonthly.RefreshAllData(LectureID : string);
begin
  dm.d_REQUEST_VIEW.DataSet.DisableControls;
  dm.d_REQUEST_VIEW.DataSet.Refresh;
  dm.d_REQUEST_VIEW.DataSet.EnableControls;
end;

procedure TfmOutlistMonthly.btnExportClick(Sender: TObject);
var
  filename, lecture_name, nameonly, mon_str : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    mon_str := frmYearMonth1.cbMonth.Text;
    lecture_name := gridLectureSelect.DataController.GetDisplayText(
            gridLectureSelect.DataController.GetFocusedRecordIndex,
            gridLectureSelectL_NAME.Index);
    filename := '월별퇴강생현황(' + mon_str + ')_' + DateTimeToStr(Date);// + '.xlsx';
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
  finally
    saveDLG.Free;
  end;
end;

procedure TfmOutlistMonthly.btnPrintClick(Sender: TObject);
var
  titleStr, lecture_name, mon_year, mon_str : string;
begin
  mon_year := frmYearMonth1.cbYear.Text + '년 ';
  mon_str := frmYearMonth1.cbMonth.Text;
  //lecture_name := gridLectureSelect.DataController.GetDisplayText(gridLectureSelect.DataController.GetFocusedRecordIndex, 5);
  titleStr := '월별퇴강생현황(' + mon_year + mon_str + ')';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmOutlistMonthly.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutlistMonthly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOutlistMonthly.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dm.q_REQUEST_VIEW.Close;

end;

procedure TfmOutlistMonthly.gridLectureSelectColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex + 1);
end;

procedure TfmOutlistMonthly.gridLectureSelectFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if rbSelect.Checked then
    RetrieveRequestData;
end;

procedure TfmOutlistMonthly.gridRequestIS_DCCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('IS_DC').Index];
//  col_out := AViewInfo.GridRecord.Values[gridRequest.GetColumnByFieldName('OUT_AMOUNT').Index];
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

procedure TfmOutlistMonthly.rbAllClick(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutlistMonthly.rbSelectClick(Sender: TObject);
begin
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmOutlistMonthly]);

end.
