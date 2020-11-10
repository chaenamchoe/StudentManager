unit UfmDCList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxButtons,
  UfrmYearQuarter, StdCtrls, Buttons, ExtCtrls, UfrmYearMonth, MemDS, DBAccess,
  Uni, cxDBLookupComboBox, cxTextEdit, cxGridExportLink, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSCore,
  dxPScxCommon, cxImageComboBox, cxCheckBox, dxmdaset, DBClient, cxGeometry,
  dxSkinSevenClassic, dxSkinSharp;

type
  TfmDCList = class(TForm)
    Panel1: TPanel;
    btnSaveColumn: TcxButton;
    gridDCList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    d_SP_DC_LIST2: TDataSource;
    gridDCListL_YEAR: TcxGridDBColumn;
    gridDCListL_STEP: TcxGridDBColumn;
    gridDCListL_NAME: TcxGridDBColumn;
    gridDCListLECTURE_ID: TcxGridDBColumn;
    gridDCListSTUDENT_ID: TcxGridDBColumn;
    gridDCListP_DATE: TcxGridDBColumn;
    gridDCListS_NAME: TcxGridDBColumn;
    gridDCListS_TEL: TcxGridDBColumn;
    gridDCListS_ADDR: TcxGridDBColumn;
    gridDCListS_SEX: TcxGridDBColumn;
    gridDCListS_BIRTH: TcxGridDBColumn;
    gridDCListID: TcxGridDBColumn;
    frmYearMonth1: TfrmYearMonth;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    gridDCListL_PRICE: TcxGridDBColumn;
    gridDCListMONTHLY_FEE: TcxGridDBColumn;
    SP_DC_LIST2: TUniStoredProc;
    SP_DC_LIST2L_YEAR: TIntegerField;
    SP_DC_LIST2L_STEP: TIntegerField;
    SP_DC_LIST2L_NAME: TStringField;
    SP_DC_LIST2L_PRICE: TFloatField;
    SP_DC_LIST2LECTURE_ID: TStringField;
    SP_DC_LIST2STUDENT_ID: TStringField;
    SP_DC_LIST2P_DATE: TStringField;
    SP_DC_LIST2S_NAME: TStringField;
    SP_DC_LIST2S_TEL: TStringField;
    SP_DC_LIST2S_ADDR: TStringField;
    SP_DC_LIST2S_SEX: TStringField;
    SP_DC_LIST2S_BIRTH: TStringField;
    SP_DC_LIST2ID: TStringField;
    SP_DC_LIST2MONTHLY_FEE: TFloatField;
    gridDCListR_NO: TcxGridDBColumn;
    SP_DC_LIST2IS_DC: TIntegerField;
    gridDCListIS_DC: TcxGridDBColumn;
    btnRetrieve: TcxButton;
    btnExport: TcxButton;
    btnAttendList: TcxButton;
    SP_DC_LIST2DC_COMPANSATION: TFloatField;
    gridDCListDC_COMPANSATION: TcxGridDBColumn;
    cdsDCList: TClientDataSet;
    cdsDCListid: TStringField;
    cdsDCListl_year: TIntegerField;
    cdsDCListl_step: TIntegerField;
    cdsDCListl_name: TStringField;
    cdsDCListL_PRICE: TFloatField;
    cdsDCListDONG_ID: TStringField;
    cdsDCListP_DATE: TStringField;
    cdsDCListPAY_AMOUNT: TFloatField;
    cdsDCListREG_KIND: TSmallintField;
    cdsDCListREG_MONTH: TSmallintField;
    cdsDCListREG_MONTH2: TIntegerField;
    cdsDCListREG_MONTH3: TIntegerField;
    cdsDCListOUT_MONTH: TIntegerField;
    cdsDCListOUT_MONTH2: TIntegerField;
    cdsDCListOUT_MONTH3: TIntegerField;
    cdsDCListS_NAME: TStringField;
    cdsDCListS_TEL: TStringField;
    cdsDCListS_ADDR: TStringField;
    cdsDCListS_SEX: TStringField;
    cdsDCListS_BIRTH: TStringField;
    cdsDCListIS_DC: TIntegerField;
    cdsDCListMONTHLY_FEE: TFloatField;
    cdsDCListDC_COMPANSATION: TFloatField;
    cdsDCListr_no: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cdsDCListyear_step: TIntegerField;
    gridDCListyear_step: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnAttendListClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridDCListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    procedure InitClientDataSet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDCList: TfmDCList;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmDCList.btnAttendListClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '감면대상자명단' + #13#10 +
              '===================' + #13#10 +
              '(' + IntToStr(frmYearMonth1.IYear) + '년' + frmYearMonth1.cbMonth.Text + '분)';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmDCList.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '감면대상자명단_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, True, true, False, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmDCList.btnRetrieveClick(Sender: TObject);
var
  pYear, pStep, pMonth, month_cnt : integer;
  filter_str : string;
  i, cnt : Integer;
  pay_amount, MONTHLY_FEE, DC_COMPANSATION : Double;
begin
  pYear := StrToInt(frmYearMonth1.cbYear.Text);
  pMonth := frmYearMonth1.cbMonth.ItemIndex + 1;

  cdsDCList.Close;
  cdsDCList.CreateDataSet;
  cdsDCList.DisableControls;

  SP_DC_LIST2.DisableControls;
  SP_DC_LIST2.ParamByName('IYEAR').Value := pYear;
  SP_DC_LIST2.ParamByName('IMONTH').Value := pMonth;
  SP_DC_LIST2.Active := True;
  SP_DC_LIST2.Refresh;
  SP_DC_LIST2.First;
  SP_DC_LIST2.EnableControls;

  pay_amount := 0;
  MONTHLY_FEE := 0;
  DC_COMPANSATION := 0;

  cnt := SP_DC_LIST2.RecordCount;
  for i := 0 to cnt - 1 do begin
    MONTHLY_FEE := MONTHLY_FEE + SP_DC_LIST2MONTHLY_FEE.Value;
    DC_COMPANSATION := DC_COMPANSATION + SP_DC_LIST2DC_COMPANSATION.Value;
    cdsDCList.Append;
    cdsDCListr_no.Value := i + 1;
    cdsDCListid.Value := SP_DC_LIST2ID.Value;
    cdsDCListl_year.Value := SP_DC_LIST2L_YEAR.Value;
    cdsDCListl_step.Value := SP_DC_LIST2l_step.Value;
    cdsDCListyear_step.Value := pMonth;
    cdsDCListl_name.Value := SP_DC_LIST2l_name.Value;
    cdsDCListL_PRICE.Value := SP_DC_LIST2L_PRICE.Value;
    cdsDCListP_DATE.Value := SP_DC_LIST2P_DATE.Value;
    cdsDCListS_NAME.Value := SP_DC_LIST2S_NAME.Value;
    cdsDCListS_TEL.Value := SP_DC_LIST2S_TEL.Value;
    cdsDCListS_ADDR.Value := SP_DC_LIST2S_ADDR.Value;
    cdsDCListS_SEX.Value := SP_DC_LIST2S_SEX.Value;
    cdsDCListS_BIRTH.Value := SP_DC_LIST2S_BIRTH.Value;
    cdsDCListIS_DC.Value := SP_DC_LIST2IS_DC.Value;
    cdsDCListMONTHLY_FEE.Value := SP_DC_LIST2MONTHLY_FEE.Value;
    cdsDCListDC_COMPANSATION.Value := SP_DC_LIST2DC_COMPANSATION.Value;
    cdsDCList.Post;
    SP_DC_LIST2.Next;
  end;
  cdsDCList.First;
  cdsDCList.EnableControls;
end;

procedure TfmDCList.InitClientDataSet;
begin
end;

procedure TfmDCList.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '감면대상자명단.ini';
  gridDCList.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmDCList.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmDCList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
procedure TfmDCList.FormCreate(Sender: TObject);
begin
  frmYearMonth1.InitYearMonth;
  btnRetrieve.Click;
end;

procedure TfmDCList.FormShow(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '감면대상자명단.ini';
  if FileExists(fname) then
    gridDCList.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
end;

procedure TfmDCList.frmYearMonth1cbMonthChange(Sender: TObject);
begin
//  frmYearMonth1.cbMonthChange(Sender);
  btnRetrieve.Click;
end;

procedure TfmDCList.gridDCListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
  col := gridDCList.GetColumnByFieldName('r_no').Index;
  if ARecord.Values[col] = 0 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleDefault;
end;

initialization RegisterClasses([TfmDCList]);

end.
