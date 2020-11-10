unit UfmTotalByLecture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, DateUtils, cxDBLookupComboBox, Math, MemDS, DBAccess, Uni,
  dxSkinOffice2013White, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, cxGridExportLink,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxPScxPivotGridLnk, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxGridCustomPopupMenu,
  cxGridPopupMenu, UfrmYearMonth, Menus, cxButtons, cxGridBandedTableView,
  cxGridDBBandedTableView, dxmdaset, cxVariants, UfrmYearQuarter;

type
  TKisuPeriod = record
    LEC_START_DATE : TDateTime;
    LEC_END_DATE   : TdateTime;
  end;
type
  TfmTotalByLecture = class(TForm)
    Panel1: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_TEACHER_PAYMENT: TUniQuery;
    q_TEACHER_PAYMENTID: TStringField;
    q_TEACHER_PAYMENTDONG_ID: TStringField;
    q_TEACHER_PAYMENTLECTURE_ID: TStringField;
    q_TEACHER_PAYMENTTEACHER_ID: TStringField;
    q_TEACHER_PAYMENTP_YEAR: TIntegerField;
    q_TEACHER_PAYMENTP_MONTH: TIntegerField;
    q_TEACHER_PAYMENTTOTAL_HOUR: TFloatField;
    q_TEACHER_PAYMENTTOTAL_MAN: TFloatField;
    q_TEACHER_PAYMENTMAN_COMMON: TFloatField;
    q_TEACHER_PAYMENTCOMMON_PRICE: TFloatField;
    q_TEACHER_PAYMENTMAN_DC: TFloatField;
    q_TEACHER_PAYMENTDC_PRICE: TFloatField;
    q_TEACHER_PAYMENTTOTAL_AMOUNT: TFloatField;
    q_TEACHER_PAYMENTSODUK: TFloatField;
    q_TEACHER_PAYMENTJUMIN: TFloatField;
    q_TEACHER_PAYMENTNET_AMOUNT: TFloatField;
    q_TEACHER_PAYMENTWEEK_DAYS: TStringField;
    q_TEACHER_PAYMENTBANK_NAME: TStringField;
    q_TEACHER_PAYMENTBANK_NO: TStringField;
    q_TEACHER_PAYMENTEXTRA_PAY: TFloatField;
    d_TEACHER_PAYMENT: TDataSource;
    q_LECTURE_VIEW: TUniQuery;
    q_LECTURE_VIEWID: TStringField;
    q_LECTURE_VIEWDONG_ID: TStringField;
    q_LECTURE_VIEWL_YEAR: TIntegerField;
    q_LECTURE_VIEWL_STEP: TIntegerField;
    q_LECTURE_VIEWL_NAME: TStringField;
    q_LECTURE_VIEWTEACHER_ID: TStringField;
    q_LECTURE_VIEWL_PRICE: TFloatField;
    q_LECTURE_VIEWCLASSROOM_ID: TStringField;
    q_LECTURE_VIEWT_NAME: TStringField;
    q_LECTURE_VIEWBANK_NAME: TStringField;
    q_LECTURE_VIEWBANK_NO: TStringField;
    q_LECTURE_VIEWC_NAME: TStringField;
    d_LECTURE_VIEW: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    q_TEACHER_PAYMENTCOMMON_OUT: TFloatField;
    q_TEACHER_PAYMENTDC_OUT: TFloatField;
    btnSaveColumn: TcxButton;
    q_LECTURE_VIEWTEACHER_PERCENT: TIntegerField;
    q_TEACHER_PAYMENTLECTURE_TOTAL_AMOUNT: TFloatField;
    q_TEACHER_PAYMENTNET_CENTER_AMOUNT: TFloatField;
    q_TEACHER_PAYMENTCOMMON_FEE: TFloatField;
    q_TEACHER_PAYMENTDC_FEE: TFloatField;
    TEACHER_PAYMENT_CALCTOTAL: TUniStoredProc;
    d_TEACHER_PAYMENT_CALCTOTAL: TDataSource;
    TEACHER_PAYMENT_CALCTOTALTEACHER_ID: TStringField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_TOTAL_AMOUNT: TFloatField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_SODUK: TFloatField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_JUMIN: TFloatField;
    TEACHER_PAYMENT_CALCTOTALSUM_OF_NET_AMOUNT: TFloatField;
    q_lecture: TUniQuery;
    d_lecture: TDataSource;
    q_lectureL_NAME: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    gridPayment: TcxGridDBTableView;
    q_teacher: TUniQuery;
    d_teacher: TDataSource;
    q_teacherT_NAME: TStringField;
    btnRetrieve: TcxButton;
    btnExport: TcxButton;
    btnPrint: TcxButton;
    q_LECTURE_VIEWTOTAL_DAY: TIntegerField;
    q_LECTURE_VIEWCALC_KIND: TSmallintField;
    q_LECTURE_VIEWMONTH1_DAYS: TSmallintField;
    q_LECTURE_VIEWMONTH2_DAYS: TSmallintField;
    q_LECTURE_VIEWMONTH3_DAYS: TSmallintField;
    q_lecture_change: TUniQuery;
    d_lecture_change: TDataSource;
    q_lecture_changeTEACHER_ID: TStringField;
    q_lecture_changeMONTH1_DAYS: TSmallintField;
    q_lecture_changeMONTH2_DAYS: TSmallintField;
    q_lecture_changeMONTH3_DAYS: TSmallintField;
    q_teacherBANK_NAME: TStringField;
    q_teacherBANK_NO: TStringField;
    q_LECTURE_VIEWL_TIME_WEEK: TIntegerField;
    q_LECTURE_VIEWL_IDX: TSmallintField;
    q_TEACHER_PAYMENTL_IDX: TSmallintField;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    frmYearMonth1: TfrmYearMonth;
    frmYearMonth2: TfrmYearMonth;
    q_TEACHER_PAYMENTL_UID: TIntegerField;
    gridPaymentID: TcxGridDBColumn;
    gridPaymentDONG_ID: TcxGridDBColumn;
    gridPaymentTEACHER_ID: TcxGridDBColumn;
    gridPaymentP_YEAR: TcxGridDBColumn;
    gridPaymentP_MONTH: TcxGridDBColumn;
    gridPaymentTOTAL_HOUR: TcxGridDBColumn;
    gridPaymentTOTAL_MAN: TcxGridDBColumn;
    gridPaymentMAN_COMMON: TcxGridDBColumn;
    gridPaymentCOMMON_PRICE: TcxGridDBColumn;
    gridPaymentMAN_DC: TcxGridDBColumn;
    gridPaymentDC_PRICE: TcxGridDBColumn;
    gridPaymentTOTAL_AMOUNT: TcxGridDBColumn;
    gridPaymentSODUK: TcxGridDBColumn;
    gridPaymentJUMIN: TcxGridDBColumn;
    gridPaymentNET_AMOUNT: TcxGridDBColumn;
    gridPaymentWEEK_DAYS: TcxGridDBColumn;
    gridPaymentBANK_NAME: TcxGridDBColumn;
    gridPaymentBANK_NO: TcxGridDBColumn;
    gridPaymentEXTRA_PAY: TcxGridDBColumn;
    gridPaymentCOMMON_OUT: TcxGridDBColumn;
    gridPaymentDC_OUT: TcxGridDBColumn;
    gridPaymentLECTURE_TOTAL_AMOUNT: TcxGridDBColumn;
    gridPaymentNET_CENTER_AMOUNT: TcxGridDBColumn;
    gridPaymentCOMMON_FEE: TcxGridDBColumn;
    gridPaymentDC_FEE: TcxGridDBColumn;
    gridPaymentL_IDX: TcxGridDBColumn;
    gridPaymentL_UID: TcxGridDBColumn;
    q_TEACHER_PAYMENTTOTAL_TAX: TFloatField;
    gridPaymentTOTAL_TAX: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure frmYearMonth1cbYearChange(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure gridPaymentStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure gridPaymentTOTAL_AMOUNTCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
  private
    procedure DeleteTeacherPayment(pYear, pMonth: Integer);
    function get_teacher_name(teacher_id: string): string;
    function get_lecture_name(lecture_id: string): string;
    procedure GetTeacherInfo(teacher_id: string);
    { Private declarations }
  public
    KisuPeriod  : TKisuPeriod;
    { Public declarations }
  end;

var
  fmTotalByLecture: TfmTotalByLecture;

implementation

uses GlobalVar, Udm, uCommonLogic, UfmMoneyInOutEdit3;

{$R *.dfm}



procedure TfmTotalByLecture.DeleteTeacherPayment(pYear, pMonth : Integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('delete from TEACHER_PAYMENT ');
      SQL.Add('where dong_id = :dongID and p_year = :pYear and p_month = :pMonth ');
      ParamByName('dongID').AsString := LoginUserDong;
      ParamByName('pYear').AsInteger := pYear;
      ParamByName('pMonth').AsInteger := pMonth;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmTotalByLecture.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := 'ø¢ºø∆ƒ¿œ (*.xls)|*.xls';
    saveDLG.FileName := 'ø˘∫∞ ∞≠¡¬≈Î∞Ë_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, true, true, false, 'xls');
    ShowMessage('ø¢ºø∆ƒ¿œ ¿˙¿Âøœ∑·!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmTotalByLecture.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := 'ø˘∫∞ ∞≠¡¬≈Î∞Ë' + #13#10 +
              '===================' + #13#10 +
              '(' + frmYearMonth1.cbYear.Text + '≥‚' + IntToStr(frmYearMonth1.cbMonth.ItemIndex + 1) + 'ø˘ ~ ' +
              frmYearMonth2.cbYear.Text + '≥‚' + IntToStr(frmYearMonth2.cbMonth.ItemIndex + 1) + 'ø˘)';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '±º∏≤';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmTotalByLecture.btnRetrieveClick(Sender: TObject);
begin
  //q_TEACHER_PAYMENT.DisableControls;
  q_TEACHER_PAYMENT.ParamByName('s_year').AsInteger := StrToInt(frmYearMonth1.cbYear.Text);
  q_TEACHER_PAYMENT.ParamByName('s_month').AsInteger := frmYearMonth1.cbMonth.ItemIndex + 1;
  q_TEACHER_PAYMENT.ParamByName('e_year').AsInteger := StrToInt(frmYearMonth2.cbYear.Text);
  q_TEACHER_PAYMENT.ParamByName('e_month').AsInteger := frmYearMonth2.cbMonth.ItemIndex + 1;
  q_TEACHER_PAYMENT.Active := True;
  q_TEACHER_PAYMENT.Refresh;
end;

procedure TfmTotalByLecture.GetTeacherInfo(teacher_id : string);
begin
  q_teacher.ParamByName('teacher_id').Value := teacher_id;
  q_teacher.Active := True;
  d_teacher.DataSet.Refresh;
end;

function TfmTotalByLecture.get_teacher_name(teacher_id : string) : string;
begin
  q_teacher.ParamByName('teacher_id').Value := teacher_id;
  q_teacher.Active := True;
  q_teacher.Refresh;
  Result := q_teacherT_NAME.Value;
end;

function TfmTotalByLecture.get_lecture_name(lecture_id : string) : string;
begin
end;

procedure TfmTotalByLecture.gridPaymentStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
//  col := gridPayment.GetColumnByFieldName('data_kind').Index;
//  if ARecord.Values[col] > 0 then
//    AStyle := cxStyleBlue
//  else
//    AStyle := cxStyleDefault;
end;

procedure TfmTotalByLecture.gridPaymentTOTAL_AMOUNTCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := gridPayment.GetColumnByFieldName('TEACHER_ID').Index;
  AAreEqual :=  VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TfmTotalByLecture.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '∫–±‚∫∞ ∞≠¡¬≈Î∞Ë.ini';
  gridPayment.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmTotalByLecture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  q_LECTURE_VIEW.Close;
  q_TEACHER_PAYMENT.Close;
  Action := caFree;
end;

procedure TfmTotalByLecture.FormCreate(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '∫–±‚∫∞ ∞≠¡¬≈Î∞Ë.ini';
  if FileExists(fname) then
    gridPayment.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');

  frmYearMonth1.InitYearMonth;
  frmYearMonth2.InitYearMonth;
  btnRetrieve.Click;
end;

procedure TfmTotalByLecture.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  frmYearMonth1.cbMonthChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmTotalByLecture.frmYearMonth1cbYearChange(Sender: TObject);
begin
  frmYearMonth1.cbYearChange(Sender);
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmTotalByLecture]);

end.
