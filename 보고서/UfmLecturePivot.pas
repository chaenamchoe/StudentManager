unit UfmLecturePivot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxCustomPivotGrid, cxDBPivotGrid, StdCtrls, Buttons, Spin,
  ExtCtrls, cxDBLookupComboBox, DB, MemDS, DBAccess, Uni, dxSkinOffice2013White,
  cxImageComboBox, cxExportPivotGridLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, DateUtils;

type
  TfmLecturePivot = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    q_LECTURE_COMBINE_VIEW: TUniQuery;
    d_LECTURE_COMBINE_VIEW: TDataSource;
    q_LECTURE_COMBINE_VIEWROOM_C_NAME: TStringField;
    q_LECTURE_COMBINE_VIEWROOM_IDX: TIntegerField;
    q_LECTURE_COMBINE_VIEWTEACHER_T_NAME: TStringField;
    q_LECTURE_COMBINE_VIEWTEACHER_T_SEX: TStringField;
    q_LECTURE_COMBINE_VIEWTEACHER_T_BIRTH: TStringField;
    q_LECTURE_COMBINE_VIEWTEACHER_T_TEL: TStringField;
    q_LECTURE_COMBINE_VIEWTEACHER_T_EMAIL: TStringField;
    q_LECTURE_COMBINE_VIEWSTUDENT_S_NAME: TStringField;
    q_LECTURE_COMBINE_VIEWSTUDENT_S_KIND: TSmallintField;
    q_LECTURE_COMBINE_VIEWSTUDENT_S_SEX: TStringField;
    q_LECTURE_COMBINE_VIEWSTUDENT_REG_DATE: TDateField;
    q_LECTURE_COMBINE_VIEWSTUDENT_S_DONG: TStringField;
    q_LECTURE_COMBINE_VIEWSTUDENT_S_BIRTH: TStringField;
    q_LECTURE_COMBINE_VIEWSTUDENT_S_TEL: TStringField;
    q_LECTURE_COMBINE_VIEWREGISTED_ID: TStringField;
    q_LECTURE_COMBINE_VIEWREGISTED_DONG_ID: TStringField;
    q_LECTURE_COMBINE_VIEWREGISTED_LECTURE_ID: TStringField;
    q_LECTURE_COMBINE_VIEWREGISTED_STUDENT_ID: TStringField;
    q_LECTURE_COMBINE_VIEWREGISTED_P_DATE: TStringField;
    q_LECTURE_COMBINE_VIEWREGISTED_PAY_AMOUNT: TFloatField;
    q_LECTURE_COMBINE_VIEWREGISTED_IS_DC: TSmallintField;
    q_LECTURE_COMBINE_VIEWREGISTED_PAY_KIND: TSmallintField;
    q_LECTURE_COMBINE_VIEWREGISTED_R_DATE: TStringField;
    q_LECTURE_COMBINE_VIEWREGISTED_OUT_AMOUNT: TFloatField;
    q_LECTURE_COMBINE_VIEWREGISTED_REG_KIND: TSmallintField;
    q_LECTURE_COMBINE_VIEWREGISTED_PAY_WAY: TSmallintField;
    q_LECTURE_COMBINE_VIEWREGISTED_PAYBACK_WAY: TSmallintField;
    q_LECTURE_COMBINE_VIEWREGISTED_OUT_KIND: TSmallintField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_YEAR: TIntegerField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_STEP: TIntegerField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_NAME: TStringField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_TIME_WEEK: TIntegerField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_DAYS: TStringField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_MONTH: TIntegerField;
    q_LECTURE_COMBINE_VIEWLECTURE_START_DATE: TStringField;
    q_LECTURE_COMBINE_VIEWLECTURE_TEACHER_ID: TStringField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_PRICE: TFloatField;
    q_LECTURE_COMBINE_VIEWLECTURE_CLASSROOM_ID: TStringField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_DURATION: TStringField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_TIME: TFloatField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_TIME_START: TSmallintField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_TIME_END: TSmallintField;
    q_LECTURE_COMBINE_VIEWLECTURE_END_DATE: TStringField;
    q_LECTURE_COMBINE_VIEWLECTURE_PLAN_MEN: TSmallintField;
    q_LECTURE_COMBINE_VIEWLECTURE_REGIST_MEN: TSmallintField;
    q_LECTURE_COMBINE_VIEWLECTURE_WAIT_MEN: TSmallintField;
    q_LECTURE_COMBINE_VIEWLECTURE_DROP_MEN: TSmallintField;
    q_LECTURE_COMBINE_VIEWLECTURE_TOTAL_DAY: TIntegerField;
    q_LECTURE_COMBINE_VIEWLECTURE_TOTAL_TIME: TFloatField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    speStep2: TSpinEdit;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    btnExport: TBitBtn;
    btnPrint: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    q_LECTURE_COMBINE_VIEWLECTURE_L_IDX: TSmallintField;
    chkColumnGrandTotal: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkColumnGrandTotalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLecturePivot: TfmLecturePivot;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmLecturePivot.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '¿¢¼¿ÆÄÀÏ (*.xls)|*.xls';
    saveDLG.FileName := Caption + '_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    cxExportPivotGridToExcel(nameonly, cxDBPivotGrid1, false, true, 'xls');
    ShowMessage('¿¢¼¿ÆÄÀÏ ÀúÀå¿Ï·á!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmLecturePivot.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := Caption + '(' + IntToStr(speYear.Value) + '³âµµ)' + #13#10 + '=================================';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '±¼¸²';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmLecturePivot.btnRetrieveClick(Sender: TObject);
var
  I : integer;
begin
  q_LECTURE_COMBINE_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
  q_LECTURE_COMBINE_VIEW.ParamByName('l_year').AsInteger := speYear.Value;
  q_LECTURE_COMBINE_VIEW.ParamByName('l_step1').AsInteger := speStep.Value;
  q_LECTURE_COMBINE_VIEW.ParamByName('l_step2').AsInteger := speStep2.Value;
  q_LECTURE_COMBINE_VIEW.Active := True;
  d_LECTURE_COMBINE_VIEW.DataSet.Refresh;

  cxDBPivotGrid1.BeginUpdate;
  try
    for I := 0 to cxDBPivotGrid1.FieldCount - 1 do
      cxDBPivotGrid1.Fields[I].ExpandAll;
  finally
    cxDBPivotGrid1.EndUpdate;
  end;
end;

procedure TfmLecturePivot.chkColumnGrandTotalClick(Sender: TObject);
begin
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chkColumnGrandTotal.Checked;
end;

procedure TfmLecturePivot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLecturePivot.FormShow(Sender: TObject);
var
  mmon, mstep : Integer;
begin
  speYear.Value := YearOf(Date);
  mmon := MonthOf(Date);
  case mmon of
    1..3: mstep := 1;
    4..6: mstep := 2;
    7..9: mstep := 3;
    10..12: mstep := 4;
  end;
  speStep.Value := mstep;
  speStep2.Value := mstep;
end;

initialization RegisterClasses([TfmLecturePivot]);

end.
