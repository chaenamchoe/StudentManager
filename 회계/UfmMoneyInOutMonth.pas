unit UfmMoneyInOutMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, Buttons, ExtCtrls, cxDBLookupComboBox,
  cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, MemDS, DBAccess, Uni,
  cxGridCustomPopupMenu, cxGridPopupMenu, DateUtils, cxRadioGroup,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit;

type
  TfmMoneyInOutMonth = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnRetrieve: TBitBtn;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    btnExport: TBitBtn;
    gridMoneyInout: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridMoneyInoutID: TcxGridDBColumn;
    gridMoneyInoutIO_DATE: TcxGridDBColumn;
    gridMoneyInoutIO_ITEM_ID: TcxGridDBColumn;
    gridMoneyInoutIO_SUBITEM_ID: TcxGridDBColumn;
    gridMoneyInoutIO_DETAIL_ID: TcxGridDBColumn;
    gridMoneyInoutIO_JUKYO: TcxGridDBColumn;
    gridMoneyInoutIO_IN: TcxGridDBColumn;
    gridMoneyInoutIO_OUT: TcxGridDBColumn;
    gridMoneyInoutIO_REST: TcxGridDBColumn;
    gridMoneyInoutIO_DONG_ID: TcxGridDBColumn;
    gridMoneyInoutColumn1: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    MONEY_INOUT_WONJANG_MONTH: TUniStoredProc;
    d_MONEY_INOUT_WONJANG_MONTH: TDataSource;
    MONEY_INOUT_WONJANG_MONTHID: TIntegerField;
    MONEY_INOUT_WONJANG_MONTHIO_DATE: TDateField;
    MONEY_INOUT_WONJANG_MONTHIO_ITEM_ID: TIntegerField;
    MONEY_INOUT_WONJANG_MONTHIO_SUBITEM_ID: TIntegerField;
    MONEY_INOUT_WONJANG_MONTHIO_DETAIL_ID: TIntegerField;
    MONEY_INOUT_WONJANG_MONTHIO_JUKYO: TStringField;
    MONEY_INOUT_WONJANG_MONTHIO_IN: TFloatField;
    MONEY_INOUT_WONJANG_MONTHIO_OUT: TFloatField;
    MONEY_INOUT_WONJANG_MONTHIO_REST: TFloatField;
    MONEY_INOUT_WONJANG_MONTHIO_DONG_ID: TStringField;
    MONEY_INOUT_WONJANG_MONTHIO_KIND: TSmallintField;
    MONEY_INOUT_WONJANG_MONTHDATA_KIND: TIntegerField;
    gridMoneyInoutIO_KIND: TcxGridDBColumn;
    gridMoneyInoutDATA_KIND: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    btnPrint: TBitBtn;
    MONEY_INOUT_WONJANG_MONTHIO_REG_LECTURE_ID: TStringField;
    gridMoneyInoutIO_REG_LECTURE_ID: TcxGridDBColumn;
    q_REGISTED_LECTURE: TUniQuery;
    q_REGISTED_LECTUREID: TStringField;
    q_REGISTED_LECTUREDONG_ID: TStringField;
    q_REGISTED_LECTURELECTURE_ID: TStringField;
    q_REGISTED_LECTURESTUDENT_ID: TStringField;
    q_REGISTED_LECTUREP_DATE: TStringField;
    q_REGISTED_LECTUREPAY_AMOUNT: TFloatField;
    q_REGISTED_LECTUREIS_DC: TSmallintField;
    q_REGISTED_LECTUREPAY_KIND: TSmallintField;
    q_REGISTED_LECTURER_DATE: TStringField;
    q_REGISTED_LECTUREOUT_AMOUNT: TFloatField;
    q_REGISTED_LECTUREREG_KIND: TSmallintField;
    q_REGISTED_LECTUREPAY_WAY: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_WAY: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_BANK: TStringField;
    q_REGISTED_LECTUREPAYBACK_BANKID: TStringField;
    q_REGISTED_LECTUREOUT_KIND: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_BANKOWNER: TStringField;
    d_REGISTED_LECTURE: TDataSource;
    q_STUDENTS: TUniQuery;
    d_STUDENTS: TDataSource;
    q_STUDENTSID: TStringField;
    q_STUDENTSDONG_ID: TStringField;
    q_STUDENTSS_NAME: TStringField;
    q_STUDENTSS_TEL: TStringField;
    q_STUDENTSS_ADDR: TStringField;
    q_STUDENTSS_SEX: TStringField;
    q_STUDENTSS_KIND: TSmallintField;
    q_STUDENTSBIGO: TStringField;
    q_STUDENTSREG_DATE: TDateField;
    q_STUDENTSS_EMAIL: TStringField;
    q_STUDENTSS_DONG: TStringField;
    q_STUDENTSS_BIRTH: TStringField;
    q_STUDENTSBANK_NAME: TStringField;
    q_STUDENTSBANK_ID: TStringField;
    q_lecture_active: TUniQuery;
    d_lecture_active: TDataSource;
    q_lecture_activeL_NAME: TStringField;
    cbYear: TComboBox;
    cbMonth: TComboBox;
    cbMonth2: TComboBox;
    Label2: TLabel;
    cbBankKind: TcxLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridMoneyInoutCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure gridMoneyInoutColumn1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure gridMoneyInoutIO_JUKYOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure gridMoneyInoutStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure edtStartDatePropertiesEditValueChanged(Sender: TObject);
    procedure edtEndDatePropertiesEditValueChanged(Sender: TObject);
    procedure edtStartDateChange(Sender: TObject);
    procedure edtEndDateChange(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure cbMonth2Change(Sender: TObject);
    procedure cbBankKindPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridMoneyInoutFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyInOutMonth: TfmMoneyInOutMonth;

implementation

uses GlobalVar, Udm, UfmMoneyInOutEdit, UfmMoneyInOutEdit2, uCommonLogic,
  UfmMoneyOutReport, UfmMoneyBackReport, UfmMoneyInReport;

{$R *.dfm}


procedure TfmMoneyInOutMonth.btnAddClick(Sender: TObject);
begin
  fmMoneyInOutEdit := TfmMoneyInOutEdit.Create(Self);
  try
    fmMoneyInOutEdit.BANK_ID := cbBankKind.EditValue;
    fmMoneyInOutEdit.dxTemp.Active := True;
    fmMoneyInOutEdit.dxTemp.Append;
    fmMoneyInOutEdit.ShowModal;
    if fmMoneyInOutEdit.ModalResult = mrOk then
      d_MONEY_INOUT_WONJANG_MONTH.DataSet.Refresh;
  finally
    fmMoneyInOutEdit.Free;
  end;
end;

procedure TfmMoneyInOutMonth.btnDeleteClick(Sender: TObject);
var
  ID : integer;
begin
  ID := gridMoneyInoutID.EditValue;
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    dm.DeleteMoneyINOUT(ID);
    d_MONEY_INOUT_WONJANG_MONTH.DataSet.Refresh;
  end;
end;

procedure TfmMoneyInOutMonth.btnEditClick(Sender: TObject);
begin
  fmMoneyInOutEdit2 := TfmMoneyInOutEdit2.Create(Self);
  try
    fmMoneyInOutEdit2.BANK_ID := cbBankKind.EditValue;
    fmMoneyInOutEdit2.dxTemp.Active := True;
    fmMoneyInOutEdit2.dxTemp.Append;
    fmMoneyInOutEdit2.dxTempid.AsInteger := gridMoneyInoutID.EditValue;
    fmMoneyInOutEdit2.dxTempm_date.AsDateTime := gridMoneyInoutIO_DATE.EditValue;
    fmMoneyInOutEdit2.dxTempm_kind.AsInteger := gridMoneyInoutIO_KIND.EditValue;
    fmMoneyInOutEdit2.dxTempacc_item.AsInteger := gridMoneyInoutIO_ITEM_ID.EditValue;
    fmMoneyInOutEdit2.dxTempacc_subitem.AsInteger := gridMoneyInoutIO_SUBITEM_ID.EditValue;
    fmMoneyInOutEdit2.dxTempacc_detail.AsInteger := gridMoneyInoutIO_DETAIL_ID.EditValue;
    fmMoneyInOutEdit2.dxTempm_jukyo.AsString := gridMoneyInoutIO_JUKYO.EditValue;
    if gridMoneyInoutIO_KIND.EditValue = 1 then
      fmMoneyInOutEdit2.dxTempm_out.AsFloat := gridMoneyInoutIO_IN.EditValue
    else
      fmMoneyInOutEdit2.dxTempm_out.AsFloat := gridMoneyInoutIO_OUT.EditValue;
    fmMoneyInOutEdit2.ShowModal;
    if fmMoneyInOutEdit2.ModalResult = mrOk then
      d_MONEY_INOUT_WONJANG_MONTH.DataSet.Refresh;
  finally
    fmMoneyInOutEdit2.Free;
  end;
end;

procedure TfmMoneyInOutMonth.btnExportClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  gridMoneyInoutColumn1.Visible := False;
  try
    filename := '수입지출현황_' + DateTimeToStr(Date) + '.xls';
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
    gridMoneyInoutColumn1.Visible := True;
  end;
end;

procedure TfmMoneyInOutMonth.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  gridMoneyInoutColumn1.Visible := False;
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  gridMoneyInoutColumn1.Visible := True;
end;

procedure TfmMoneyInOutMonth.btnRetrieveClick(Sender: TObject);
var
  syear, smonth : Integer;
begin
  syear := StrToInt(cbYear.Text);
  smonth := cbMonth.ItemIndex + 1;
  MONEY_INOUT_WONJANG_MONTH.ParamByName('bank_kind').AsInteger := cbBankKind.EditValue;
  MONEY_INOUT_WONJANG_MONTH.ParamByName('syear').AsInteger := StrToInt(cbYear.Text);
  MONEY_INOUT_WONJANG_MONTH.ParamByName('start_month').AsInteger := cbMonth.ItemIndex + 1;
  MONEY_INOUT_WONJANG_MONTH.ParamByName('end_month').AsInteger := cbMonth2.ItemIndex + 1;
  MONEY_INOUT_WONJANG_MONTH.ParamByName('start_date').AsDate := StrToDate(Format('%.4d-%.2d-01', [syear,smonth]));
  MONEY_INOUT_WONJANG_MONTH.Active := True;
  d_MONEY_INOUT_WONJANG_MONTH.DataSet.Refresh;
end;

procedure TfmMoneyInOutMonth.cbBankKindPropertiesEditValueChanged(
  Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.cbMonth2Change(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.cbMonthChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.edtStartDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.edtEndDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.edtEndDatePropertiesEditValueChanged(Sender: TObject);
begin
  //btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.edtStartDatePropertiesEditValueChanged(Sender: TObject);
begin
  //btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMoneyInOutMonth.FormCreate(Sender: TObject);
var
  i, mon : integer;
begin
  for i := YearOf(Date) - 9 to YearOf(Date) + 1 do begin
    cbYear.Items.Add(IntToStr(i));
  end;
  mon := MonthOf(Date);
  cbYear.ItemIndex := cbYear.Items.IndexOf(IntToStr(YearOf(Date)));
  cbMonth.ItemIndex := mon - 1;
  cbMonth2.ItemIndex := mon - 1;
  btnRetrieve.Click;
end;

procedure TfmMoneyInOutMonth.gridMoneyInoutCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmMoneyInOutMonth.gridMoneyInoutColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmMoneyInOutMonth.gridMoneyInoutFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  btnEdit.Enabled := gridMoneyInoutID.EditValue > 0;
  btnDelete.Enabled := gridMoneyInoutID.EditValue > 0;
end;

procedure TfmMoneyInOutMonth.gridMoneyInoutIO_JUKYOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  col : Integer;
begin
  col := gridMoneyInout.GetColumnByFieldName('DATA_KIND').Index;
  case ARecord.Values[col] of
    0: AText := '<<전기이월>>';
    2: AText := '<<월 소 계>>';
    3: AText := '<<월 누 계>>';
    4: AText := '<<누계금액>>';
  end;
end;

procedure TfmMoneyInOutMonth.gridMoneyInoutStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col, col_val : Integer;
begin
  col := gridMoneyInout.GetColumnByFieldName('DATA_KIND').Index;
  col_val := ARecord.Values[col];
  case col_val of
    0: AStyle := cxStyle2;
    2: AStyle := cxStyle3;
    3: AStyle := cxStyle3;
    4: AStyle := cxStyle2;
  end;
end;

initialization RegisterClasses([TfmMoneyInOutMonth]);

end.
