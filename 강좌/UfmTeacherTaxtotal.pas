unit UfmTeacherTaxtotal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS, DBAccess,
  Uni, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, UfrmYearMonth,
  StdCtrls, cxButtons, ExtCtrls, cxDBLookupComboBox, cxCurrencyEdit, cxTextEdit,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxGridExportLink;

type
  TfmTeacherTaxtotal = class(TForm)
    Panel1: TPanel;
    frmYearMonth1: TfrmYearMonth;
    btnRetrieve: TcxButton;
    btnExport: TcxButton;
    btnAttendList: TcxButton;
    btnCreateNew: TcxButton;
    gridTaxtotal: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    TEACHER_TAXTOTAL_CREATE: TUniStoredProc;
    TEACHER_TAXTOTAL_SEL: TUniStoredProc;
    ds_TEACHER_TAXTOTAL_SEL: TDataSource;
    TEACHER_TAXTOTAL_SELID: TIntegerField;
    TEACHER_TAXTOTAL_SELW_YEAR: TIntegerField;
    TEACHER_TAXTOTAL_SELW_MONTH: TIntegerField;
    TEACHER_TAXTOTAL_SELTEACHER_ID: TStringField;
    TEACHER_TAXTOTAL_SELTOTAL_AMOUNT: TIntegerField;
    TEACHER_TAXTOTAL_SELSODUKSE: TIntegerField;
    TEACHER_TAXTOTAL_SELJUMINSE: TIntegerField;
    TEACHER_TAXTOTAL_SELNET_AMOUNT: TIntegerField;
    TEACHER_TAXTOTAL_SELTEACHER_IDX: TIntegerField;
    gridTaxtotalID: TcxGridDBColumn;
    gridTaxtotalW_YEAR: TcxGridDBColumn;
    gridTaxtotalW_MONTH: TcxGridDBColumn;
    gridTaxtotalTEACHER_ID: TcxGridDBColumn;
    gridTaxtotalTOTAL_AMOUNT: TcxGridDBColumn;
    gridTaxtotalSODUKSE: TcxGridDBColumn;
    gridTaxtotalJUMINSE: TcxGridDBColumn;
    gridTaxtotalNET_AMOUNT: TcxGridDBColumn;
    gridTaxtotalTEACHER_IDX: TcxGridDBColumn;
    TEACHER_SEL_LOOKUP: TUniStoredProc;
    TEACHER_SEL_LOOKUPID: TStringField;
    TEACHER_SEL_LOOKUPT_NAME: TStringField;
    TEACHER_SEL_LOOKUPT_TEL: TStringField;
    TEACHER_SEL_LOOKUPBANK_NAME: TStringField;
    TEACHER_SEL_LOOKUPBANK_NO: TStringField;
    TEACHER_SEL_LOOKUPBANK_CODE: TStringField;
    TEACHER_SEL_LOOKUPIDX: TIntegerField;
    ds_TEACHER_SEL_LOOKUP: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    TEACHER_TAXTOTAL_DEL: TUniStoredProc;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    TEACHER_TAXTOTAL_SELTOTAL_AMOUNT1: TIntegerField;
    TEACHER_TAXTOTAL_SELSODUKSE1: TIntegerField;
    TEACHER_TAXTOTAL_SELJUMINSE1: TIntegerField;
    TEACHER_TAXTOTAL_SELNET_AMOUNT1: TIntegerField;
    TEACHER_TAXTOTAL_SELTOTAL_AMOUNT2: TIntegerField;
    TEACHER_TAXTOTAL_SELSODUKSE2: TIntegerField;
    TEACHER_TAXTOTAL_SELJUMINSE2: TIntegerField;
    TEACHER_TAXTOTAL_SELNET_AMOUNT2: TIntegerField;
    gridTaxtotalTOTAL_AMOUNT1: TcxGridDBColumn;
    gridTaxtotalSODUKSE1: TcxGridDBColumn;
    gridTaxtotalJUMINSE1: TcxGridDBColumn;
    gridTaxtotalNET_AMOUNT1: TcxGridDBColumn;
    gridTaxtotalTOTAL_AMOUNT2: TcxGridDBColumn;
    gridTaxtotalSODUKSE2: TcxGridDBColumn;
    gridTaxtotalJUMINSE2: TcxGridDBColumn;
    gridTaxtotalNET_AMOUNT2: TcxGridDBColumn;
    TEACHER_TAXTOTAL_SELTOTAL_TAX: TIntegerField;
    gridTaxtotalTOTAL_TAX: TcxGridDBColumn;
    TEACHER_CHECK_TAXFREE: TUniStoredProc;
    btnTaxfree: TcxButton;
    TEACHER_TAXTOTAL_SELBANK_NAME: TStringField;
    TEACHER_TAXTOTAL_SELBANK_NO: TStringField;
    gridTaxtotalBANK_NAME: TcxGridDBColumn;
    gridTaxtotalBANK_NO: TcxGridDBColumn;
    TEACHER_TAXTOTAL_SELTAX_PAY1: TIntegerField;
    TEACHER_TAXTOTAL_SELTAX_PAY2: TIntegerField;
    gridTaxtotalTAX_PAY1: TcxGridDBColumn;
    gridTaxtotalTAX_PAY2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnCreateNewClick(Sender: TObject);
    procedure gridTaxtotalTEACHER_IDXGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure btnExportClick(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure btnTaxfreeClick(Sender: TObject);
    procedure gridTaxtotalTAX_PAY1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnAttendListClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeacherTaxtotal: TfmTeacherTaxtotal;

implementation

uses
  GlobalVar, Udm;

{$R *.dfm}

procedure TfmTeacherTaxtotal.btnAttendListClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '강사수당지급현황' + #13#10 +
              '===================' + #13#10 +
              '(' + frmYearMonth1.cbYear.Text + '년' + IntToStr(frmYearMonth1.cbMonth.ItemIndex + 1) + '월분)' + #13#10 + #13#10;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmTeacherTaxtotal.btnCreateNewClick(Sender: TObject);
var
  mon, l_step, i, cnt, total_amount : Integer;
  teacher_id : string;
begin
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  case mon of
    1..3 : l_step := 1;
    4..6 : l_step := 2;
    7..9 : l_step := 3;
    10..12 : l_step := 4;
  end;
  TEACHER_TAXTOTAL_DEL.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_TAXTOTAL_DEL.ParamByName('WMON').Value := mon;
  TEACHER_TAXTOTAL_DEL.ExecProc;

  btnRetrieve.Click;

  TEACHER_TAXTOTAL_CREATE.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_TAXTOTAL_CREATE.ParamByName('WSTEP').Value := l_step;
  TEACHER_TAXTOTAL_CREATE.ParamByName('WMON').Value := mon;
  TEACHER_TAXTOTAL_CREATE.ExecProc;

  ds_TEACHER_TAXTOTAL_SEL.DataSet.Refresh;

  gridTaxtotal.DataController.GotoFirst;
  btnTaxfree.Click;
  ShowMessage('자료가 정상적으로 생성되었습니다.');
end;

procedure TfmTeacherTaxtotal.btnTaxfreeClick(Sender: TObject);
var
  i, cnt, total_amount, mon : Integer;
  teacher_id : string;
begin
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  cnt := gridTaxtotal.DataController.RecordCount + 1;
  gridTaxtotal.DataController.GotoFirst;
  for i := 1 to cnt do begin
    total_amount := gridTaxtotalTOTAL_AMOUNT.EditValue;
    teacher_id := gridTaxtotalTEACHER_ID.EditValue;
    if not (total_amount > 125000) then begin
      TEACHER_CHECK_TAXFREE.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
      TEACHER_CHECK_TAXFREE.ParamByName('WMON').Value := mon;
      TEACHER_CHECK_TAXFREE.ParamByName('TEACHER_ID').Value := teacher_id;
      TEACHER_CHECK_TAXFREE.ExecProc;
    end;
    gridTaxtotal.DataController.GotoNext;
  end;
  btnRetrieve.Click;
end;

procedure TfmTeacherTaxtotal.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '수당감면보전현황_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, true, true, false, 'xls');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmTeacherTaxtotal.btnRetrieveClick(Sender: TObject);
begin
  TEACHER_TAXTOTAL_SEL.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_TAXTOTAL_SEL.ParamByName('WMON').Value := frmYearMonth1.cbMonth.ItemIndex + 1;
  TEACHER_TAXTOTAL_SEL.Open;
  ds_TEACHER_TAXTOTAL_SEL.DataSet.Refresh;
end;

procedure TfmTeacherTaxtotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTeacherTaxtotal.FormShow(Sender: TObject);
begin
  frmYearMonth1.InitYearMonth;
  TEACHER_SEL_LOOKUP.Open;
  ds_TEACHER_SEL_LOOKUP.DataSet.Refresh;
  btnRetrieve.Click;
end;


procedure TfmTeacherTaxtotal.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  frmYearMonth1.cbMonthChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmTeacherTaxtotal.gridTaxtotalTAX_PAY1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color := $00DCF8FF;
  ACanvas.Font.Color := clBlue;
  ACanvas.Font.Style := [fsBold];
end;

procedure TfmTeacherTaxtotal.gridTaxtotalTEACHER_IDXGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
  AIndex: Integer;
begin
  AIndex := TcxGridTableView(Sender.GridView).DataController.GetRowIndexByRecordIndex(ARecordIndex, False);
  AText := IntToStr(AIndex + 1);
end;

initialization RegisterClasses([TfmTeacherTaxtotal]);
end.
