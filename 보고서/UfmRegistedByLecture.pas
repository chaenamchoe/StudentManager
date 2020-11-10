unit UfmRegistedByLecture;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxTextEdit,
  cxDBLookupComboBox, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, Spin, ExtCtrls, cxGridExportLink, DateUtils, MemDS,
  DBAccess, Uni, dxSkinOffice2013White, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmRegistedByLecture = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    cxGrid1: TcxGrid;
    gridRequest: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    chkGroup: TCheckBox;
    chkFilter: TCheckBox;
    speStep2: TSpinEdit;
    Label3: TLabel;
    btnExport: TBitBtn;
    chkExpandGroup: TCheckBox;
    q_COMBIND_ALLDATA_VIEW: TUniQuery;
    D_COMBIND_ALLDATA_VIEW: TDataSource;
    q_COMBIND_ALLDATA_VIEWROOM_C_NAME: TStringField;
    q_COMBIND_ALLDATA_VIEWROOM_IDX: TIntegerField;
    q_COMBIND_ALLDATA_VIEWTEACHER_T_NAME: TStringField;
    q_COMBIND_ALLDATA_VIEWTEACHER_T_SEX: TStringField;
    q_COMBIND_ALLDATA_VIEWTEACHER_T_BIRTH: TStringField;
    q_COMBIND_ALLDATA_VIEWTEACHER_T_TEL: TStringField;
    q_COMBIND_ALLDATA_VIEWTEACHER_T_EMAIL: TStringField;
    q_COMBIND_ALLDATA_VIEWSTUDENT_S_NAME: TStringField;
    q_COMBIND_ALLDATA_VIEWSTUDENT_S_KIND: TSmallintField;
    q_COMBIND_ALLDATA_VIEWSTUDENT_S_SEX: TStringField;
    q_COMBIND_ALLDATA_VIEWSTUDENT_REG_DATE: TDateField;
    q_COMBIND_ALLDATA_VIEWSTUDENT_S_DONG: TStringField;
    q_COMBIND_ALLDATA_VIEWSTUDENT_S_BIRTH: TStringField;
    q_COMBIND_ALLDATA_VIEWSTUDENT_S_TEL: TStringField;
    q_COMBIND_ALLDATA_VIEWREGISTED_ID: TStringField;
    q_COMBIND_ALLDATA_VIEWREGISTED_DONG_ID: TStringField;
    q_COMBIND_ALLDATA_VIEWREGISTED_LECTURE_ID: TStringField;
    q_COMBIND_ALLDATA_VIEWREGISTED_STUDENT_ID: TStringField;
    q_COMBIND_ALLDATA_VIEWREGISTED_P_DATE: TStringField;
    q_COMBIND_ALLDATA_VIEWREGISTED_PAY_AMOUNT: TFloatField;
    q_COMBIND_ALLDATA_VIEWREGISTED_IS_DC: TSmallintField;
    q_COMBIND_ALLDATA_VIEWREGISTED_PAY_KIND: TSmallintField;
    q_COMBIND_ALLDATA_VIEWREGISTED_R_DATE: TStringField;
    q_COMBIND_ALLDATA_VIEWREGISTED_OUT_AMOUNT: TFloatField;
    q_COMBIND_ALLDATA_VIEWREGISTED_REG_KIND: TSmallintField;
    q_COMBIND_ALLDATA_VIEWREGISTED_PAY_WAY: TSmallintField;
    q_COMBIND_ALLDATA_VIEWREGISTED_PAYBACK_WAY: TSmallintField;
    q_COMBIND_ALLDATA_VIEWREGISTED_OUT_KIND: TSmallintField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_YEAR: TIntegerField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_STEP: TIntegerField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_NAME: TStringField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME_WEEK: TIntegerField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_DAYS: TStringField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_MONTH: TIntegerField;
    q_COMBIND_ALLDATA_VIEWLECTURE_START_DATE: TStringField;
    q_COMBIND_ALLDATA_VIEWLECTURE_TEACHER_ID: TStringField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_PRICE: TFloatField;
    q_COMBIND_ALLDATA_VIEWLECTURE_CLASSROOM_ID: TStringField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_DURATION: TStringField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME: TFloatField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME_START: TSmallintField;
    q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME_END: TSmallintField;
    q_COMBIND_ALLDATA_VIEWLECTURE_END_DATE: TStringField;
    q_COMBIND_ALLDATA_VIEWLECTURE_PLAN_MEN: TSmallintField;
    q_COMBIND_ALLDATA_VIEWLECTURE_REGIST_MEN: TSmallintField;
    q_COMBIND_ALLDATA_VIEWLECTURE_WAIT_MEN: TSmallintField;
    q_COMBIND_ALLDATA_VIEWLECTURE_DROP_MEN: TSmallintField;
    q_COMBIND_ALLDATA_VIEWLECTURE_TOTAL_DAY: TIntegerField;
    q_COMBIND_ALLDATA_VIEWLECTURE_TOTAL_TIME: TFloatField;
    gridRequestROOM_C_NAME: TcxGridDBColumn;
    gridRequestROOM_IDX: TcxGridDBColumn;
    gridRequestTEACHER_T_NAME: TcxGridDBColumn;
    gridRequestTEACHER_T_SEX: TcxGridDBColumn;
    gridRequestTEACHER_T_BIRTH: TcxGridDBColumn;
    gridRequestTEACHER_T_TEL: TcxGridDBColumn;
    gridRequestTEACHER_T_EMAIL: TcxGridDBColumn;
    gridRequestSTUDENT_S_NAME: TcxGridDBColumn;
    gridRequestSTUDENT_S_KIND: TcxGridDBColumn;
    gridRequestSTUDENT_S_SEX: TcxGridDBColumn;
    gridRequestSTUDENT_REG_DATE: TcxGridDBColumn;
    gridRequestSTUDENT_S_DONG: TcxGridDBColumn;
    gridRequestSTUDENT_S_BIRTH: TcxGridDBColumn;
    gridRequestSTUDENT_S_TEL: TcxGridDBColumn;
    gridRequestREGISTED_ID: TcxGridDBColumn;
    gridRequestREGISTED_DONG_ID: TcxGridDBColumn;
    gridRequestREGISTED_LECTURE_ID: TcxGridDBColumn;
    gridRequestREGISTED_STUDENT_ID: TcxGridDBColumn;
    gridRequestREGISTED_P_DATE: TcxGridDBColumn;
    gridRequestREGISTED_PAY_AMOUNT: TcxGridDBColumn;
    gridRequestREGISTED_IS_DC: TcxGridDBColumn;
    gridRequestREGISTED_PAY_KIND: TcxGridDBColumn;
    gridRequestREGISTED_R_DATE: TcxGridDBColumn;
    gridRequestREGISTED_OUT_AMOUNT: TcxGridDBColumn;
    gridRequestREGISTED_REG_KIND: TcxGridDBColumn;
    gridRequestREGISTED_PAY_WAY: TcxGridDBColumn;
    gridRequestREGISTED_PAYBACK_WAY: TcxGridDBColumn;
    gridRequestREGISTED_OUT_KIND: TcxGridDBColumn;
    gridRequestLECTURE_L_YEAR: TcxGridDBColumn;
    gridRequestLECTURE_L_STEP: TcxGridDBColumn;
    gridRequestLECTURE_L_NAME: TcxGridDBColumn;
    gridRequestLECTURE_L_TIME_WEEK: TcxGridDBColumn;
    gridRequestLECTURE_L_DAYS: TcxGridDBColumn;
    gridRequestLECTURE_L_MONTH: TcxGridDBColumn;
    gridRequestLECTURE_START_DATE: TcxGridDBColumn;
    gridRequestLECTURE_TEACHER_ID: TcxGridDBColumn;
    gridRequestLECTURE_L_PRICE: TcxGridDBColumn;
    gridRequestLECTURE_CLASSROOM_ID: TcxGridDBColumn;
    gridRequestLECTURE_L_DURATION: TcxGridDBColumn;
    gridRequestLECTURE_L_TIME: TcxGridDBColumn;
    gridRequestLECTURE_L_TIME_START: TcxGridDBColumn;
    gridRequestLECTURE_L_TIME_END: TcxGridDBColumn;
    gridRequestLECTURE_END_DATE: TcxGridDBColumn;
    gridRequestLECTURE_PLAN_MEN: TcxGridDBColumn;
    gridRequestLECTURE_REGIST_MEN: TcxGridDBColumn;
    gridRequestLECTURE_WAIT_MEN: TcxGridDBColumn;
    gridRequestLECTURE_DROP_MEN: TcxGridDBColumn;
    gridRequestLECTURE_TOTAL_DAY: TcxGridDBColumn;
    gridRequestLECTURE_TOTAL_TIME: TcxGridDBColumn;
    btnPrint: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure chkGroupClick(Sender: TObject);
    procedure chkExpandGroupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRegistedByLecture: TfmRegistedByLecture;

implementation

uses Udm, GlobalVar, uCommonLogic;

{$R *.dfm}

procedure TfmRegistedByLecture.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := 'ø¢ºø∆ƒ¿œ (*.xls)|*.xls';
    saveDLG.FileName := '∞≠¡¬≈Î«’¡∂»∏__' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('ø¢ºø∆ƒ¿œ ¿˙¿Âøœ∑·!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmRegistedByLecture.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '±º∏≤';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmRegistedByLecture.btnRetrieveClick(Sender: TObject);
var
  iYear, s_step, e_step : integer;
begin
  iYear := speYear.Value;
  s_step := speStep.Value;
  e_step := speStep2.Value;
  q_COMBIND_ALLDATA_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
  q_COMBIND_ALLDATA_VIEW.ParamByName('l_year').AsInteger := iYear;
  q_COMBIND_ALLDATA_VIEW.ParamByName('l_step1').AsInteger := s_step;
  q_COMBIND_ALLDATA_VIEW.ParamByName('l_step2').AsInteger := e_step;
  q_COMBIND_ALLDATA_VIEW.Active := True;
  d_COMBIND_ALLDATA_VIEW.DataSet.Refresh;
end;

procedure TfmRegistedByLecture.chkExpandGroupClick(Sender: TObject);
begin
  if chkExpandGroup.Checked then
    gridRequest.DataController.Options := [dcoAssignGroupingValues,dcoAssignMasterDetailKeys,dcoSaveExpanding,dcoGroupsAlwaysExpanded]
  else
    gridRequest.DataController.Options := [dcoAssignGroupingValues,dcoAssignMasterDetailKeys,dcoSaveExpanding];
end;

procedure TfmRegistedByLecture.chkFilterClick(Sender: TObject);
begin
  gridRequest.FilterRow.Visible := chkFilter.Checked;
end;

procedure TfmRegistedByLecture.chkGroupClick(Sender: TObject);
begin
  gridRequest.OptionsView.GroupByBox := chkGroup.Checked;
end;

procedure TfmRegistedByLecture.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  q_COMBIND_ALLDATA_VIEW.Close;
  Action := caFree;
end;

procedure TfmRegistedByLecture.FormShow(Sender: TObject);
var
  mon : integer;
begin
  speYear.Value := YearOf(Date);
  mon := MonthOf(Date);
  case mon of
    1..3 : begin
             speStep.Value := 1;
             speStep2.Value := 1;
           end;
    4..6 : begin
             speStep.Value := 2;
             speStep2.Value := 2;
           end;
    7..9 : begin
             speStep.Value := 3;
             speStep2.Value := 3;
           end;
    10..12 : begin
               speStep.Value := 4;
               speStep2.Value := 4;
             end;
  end;
end;

initialization RegisterClasses([TfmRegistedByLecture]);
end.
