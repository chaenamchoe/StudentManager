unit UfmStudentByLecture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit,
  cxDBLookupComboBox, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, StdCtrls, Buttons,
  Spin, ExtCtrls, dxSkinOffice2013White, MemDS, DBAccess, Uni, DateUtils,
  cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, cxButtons, cxCheckBox;

type
  TfmStudentByLecture = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbLecture: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    gridRequest: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnSendSMS: TBitBtn;
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
    q_REQUEST_VIEWS_SEX: TStringField;
    q_REQUEST_VIEWT_NAME: TStringField;
    q_REQUEST_VIEWT_SEX: TStringField;
    q_REQUEST_VIEWT_TEL: TStringField;
    q_REQUEST_VIEWBANK_NAME: TStringField;
    q_REQUEST_VIEWBANK_NO: TStringField;
    q_REQUEST_VIEWID: TStringField;
    q_REQUEST_VIEWDONG_ID: TStringField;
    q_REQUEST_VIEWOUT_AMOUNT: TFloatField;
    q_REQUEST_VIEWREG_KIND: TSmallintField;
    q_REQUEST_VIEWS_BIRTH: TStringField;
    q_REQUEST_VIEWPAYBACK_BANK: TStringField;
    q_REQUEST_VIEWPAYBACK_BANKID: TStringField;
    q_REQUEST_VIEWOUT_KIND: TSmallintField;
    q_REQUEST_VIEWS_ADDR: TStringField;
    q_REQUEST_VIEWSTART_DATE: TStringField;
    q_REQUEST_VIEWEND_DATE: TStringField;
    q_REQUEST_VIEWP_DATE: TStringField;
    q_REQUEST_VIEWR_DATE: TStringField;
    d_REQUEST_VIEW: TDataSource;
    q_lecture_select: TUniQuery;
    d_lecture_select: TDataSource;
    q_lecture_selectID: TStringField;
    q_lecture_selectL_NAME: TStringField;
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
    gridRequestS_SEX: TcxGridDBColumn;
    gridRequestT_NAME: TcxGridDBColumn;
    gridRequestT_SEX: TcxGridDBColumn;
    gridRequestT_TEL: TcxGridDBColumn;
    gridRequestBANK_NAME: TcxGridDBColumn;
    gridRequestBANK_NO: TcxGridDBColumn;
    gridRequestID: TcxGridDBColumn;
    gridRequestDONG_ID: TcxGridDBColumn;
    gridRequestOUT_AMOUNT: TcxGridDBColumn;
    gridRequestREG_KIND: TcxGridDBColumn;
    gridRequestS_BIRTH: TcxGridDBColumn;
    gridRequestPAYBACK_WAY: TcxGridDBColumn;
    gridRequestPAYBACK_BANK: TcxGridDBColumn;
    gridRequestPAYBACK_BANKID: TcxGridDBColumn;
    gridRequestOUT_KIND: TcxGridDBColumn;
    gridRequestS_ADDR: TcxGridDBColumn;
    gridRequestSTART_DATE: TcxGridDBColumn;
    gridRequestEND_DATE: TcxGridDBColumn;
    gridRequestP_DATE: TcxGridDBColumn;
    gridRequestR_DATE: TcxGridDBColumn;
    gridRequestColumn1: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cbStep1: TComboBox;
    cbStep2: TComboBox;
    cbYear: TComboBox;
    cbYear2: TComboBox;
    btnSaveColumn: TcxButton;
    q_REQUEST_VIEWL_PRICE: TFloatField;
    q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField;
    q_REQUEST_VIEWREG_MONTH: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH: TSmallintField;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    q_REQUEST_VIEWREG_MONTH2: TSmallintField;
    q_REQUEST_VIEWREG_MONTH3: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH2: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH3: TSmallintField;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
    btnRetrieve: TcxButton;
    btnSaveExcel: TcxButton;
    btnPrint: TcxButton;
    q_REQUEST_VIEWIS_DC: TSmallintField;
    gridRequestIS_DC: TcxGridDBColumn;
    q_REQUEST_VIEWPAY_KIND: TSmallintField;
    q_REQUEST_VIEWPAYBACK_WAY: TSmallintField;
    q_REQUEST_VIEWREG_PRICE1: TFloatField;
    q_REQUEST_VIEWREG_PRICE2: TFloatField;
    q_REQUEST_VIEWREG_PRICE3: TFloatField;
    q_REQUEST_VIEWOUT_PRICE1: TFloatField;
    q_REQUEST_VIEWOUT_PRICE2: TFloatField;
    q_REQUEST_VIEWOUT_PRICE3: TFloatField;
    q_REQUEST_VIEWS_KIND: TSmallintField;
    gridRequestREG_PRICE1: TcxGridDBColumn;
    gridRequestREG_PRICE2: TcxGridDBColumn;
    gridRequestREG_PRICE3: TcxGridDBColumn;
    gridRequestOUT_PRICE1: TcxGridDBColumn;
    gridRequestOUT_PRICE2: TcxGridDBColumn;
    gridRequestOUT_PRICE3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure cbLecturePropertiesEditValueChanged(Sender: TObject);
    procedure gridRequestColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnSaveExcelClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbStep1Change(Sender: TObject);
    procedure speYearChange(Sender: TObject);
    procedure speYear2Change(Sender: TObject);
    procedure cbStep2Change(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure gridRequestREG_MONTHCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestREG_MONTH2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridRequestREG_MONTH3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridRequestS_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridRequestIS_DCCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    procedure ResetLectureList;
    procedure RetrieveLectureList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStudentByLecture: TfmStudentByLecture;

implementation

uses GlobalVar, Udm, uSendingSMS, uCommonLogic;

{$R *.dfm}

procedure TfmStudentByLecture.RetrieveLectureList;
begin
  //q_lecture_select.ParamByName('dong_id').AsString := LoginUserDong;
  q_lecture_select.ParamByName('l_year').AsInteger := StrToInt(cbYear.Text);
  q_lecture_select.ParamByName('l_year2').AsInteger := StrToInt(cbYear2.Text);
  q_lecture_select.ParamByName('l_step').AsInteger := cbStep1.ItemIndex + 1;
  q_lecture_select.ParamByName('l_step2').AsInteger := cbStep2.ItemIndex + 1;
  q_lecture_select.Active := True;
  d_lecture_select.DataSet.Refresh;
  ResetLectureList;
end;

procedure TfmStudentByLecture.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  gridRequestColumn1.Visible := False;
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  gridRequestColumn1.Visible := True;
end;

procedure TfmStudentByLecture.btnRetrieveClick(Sender: TObject);
begin
  q_REQUEST_VIEW.ParamByName('lecture_id').AsString := cbLecture.EditValue;
  q_REQUEST_VIEW.ParamByName('l_year').AsInteger := StrToInt(cbYear.Text);
  q_REQUEST_VIEW.ParamByName('l_year2').AsInteger := StrToInt(cbYear2.Text);
  q_REQUEST_VIEW.ParamByName('l_step').AsInteger := cbStep1.ItemIndex + 1;
  q_REQUEST_VIEW.ParamByName('l_step2').AsInteger := cbStep2.ItemIndex + 1;
  q_REQUEST_VIEW.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
end;

procedure TfmStudentByLecture.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '강좌별수강자현황.ini';
  gridRequest.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmStudentByLecture.btnSaveExcelClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
begin
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

procedure TfmStudentByLecture.cbLecturePropertiesEditValueChanged(
  Sender: TObject);
begin
  btnRetrieve.Enabled := True;
  btnRetrieve.Click;
//  btnSendSMS.Enabled := True;
  btnSaveExcel.Enabled := True;
end;

procedure TfmStudentByLecture.ResetLectureList;
begin
//  q_lecture_select.ParamByName('dong_id').AsString := LoginUserDong;
  q_lecture_select.ParamByName('l_year').AsInteger := StrToInt(cbYear.Text);
  q_lecture_select.ParamByName('l_year2').AsInteger := StrToInt(cbYear2.Text);
  q_lecture_select.ParamByName('l_step').AsInteger := cbStep1.ItemIndex + 1;
  q_lecture_select.ParamByName('l_step2').AsInteger := cbStep2.ItemIndex + 1;
  q_lecture_select.Active := True;
  d_lecture_select.DataSet.Refresh;
end;

procedure TfmStudentByLecture.speYear2Change(Sender: TObject);
begin
  ResetLectureList;
end;

procedure TfmStudentByLecture.speYearChange(Sender: TObject);
begin
  ResetLectureList;
end;

procedure TfmStudentByLecture.cbStep1Change(Sender: TObject);
begin
  ResetLectureList;
end;

procedure TfmStudentByLecture.cbStep2Change(Sender: TObject);
begin
  ResetLectureList;
end;

procedure TfmStudentByLecture.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  q_lecture_select.Close;
  q_REQUEST_VIEW.Close;
  Action := caFree;
end;

procedure TfmStudentByLecture.FormShow(Sender: TObject);
var
  i, mon : integer;
  fname : string;
begin
  fname := gsDefaultFolder + '강좌별수강자현황.ini';
  if FileExists(fname) then
    gridRequest.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');

  for i := YearOf(Date) - 9 to YearOf(Date) + 1 do begin
    cbYear.Items.Add(IntToStr(i));
    cbYear2.Items.Add(IntToStr(i));
  end;
  cbYear.ItemIndex := cbYear.Items.IndexOf(IntToStr(YearOf(Date)));
  cbYear2.ItemIndex := cbYear2.Items.IndexOf(IntToStr(YearOf(Date)));
  mon := MonthOf(Date);
  case mon of
    1..3 : begin
             cbStep1.ItemIndex := 0;
             cbStep2.ItemIndex := 0;
           end;
    4..6 : begin
             cbStep1.ItemIndex := 1;
             cbStep2.ItemIndex := 1;
           end;
    7..9 : begin
             cbStep1.ItemIndex := 2;
             cbStep2.ItemIndex := 2;
           end;
    10..12 : begin
             cbStep1.ItemIndex := 3;
             cbStep2.ItemIndex := 3;
             end;
  end;
  RetrieveLectureList;
end;

procedure TfmStudentByLecture.gridRequestColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmStudentByLecture.gridRequestIS_DCCustomDrawCell(
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

procedure TfmStudentByLecture.gridRequestREG_MONTH2CustomDrawCell(
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

procedure TfmStudentByLecture.gridRequestREG_MONTH3CustomDrawCell(
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

procedure TfmStudentByLecture.gridRequestREG_MONTHCustomDrawCell(
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

procedure TfmStudentByLecture.gridRequestS_KINDCustomDrawCell(
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

initialization RegisterClasses([TfmStudentByLecture]);

end.
