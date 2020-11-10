unit UfmLectureAnalyseAge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  Buttons, ExtCtrls, DateUtils, MemDS, DBAccess, Uni, cxGridBandedTableView,
  cxGridDBBandedTableView, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, cxGridExportLink,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  cxContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxImageComboBox, cxDBLookupComboBox, cxCheckBox;

type
  TfmLectureAnalyseAge = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnRetrieve: TBitBtn;
    btnExport: TBitBtn;
    btnPrint: TBitBtn;
    cbYear: TComboBox;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    gridAge: TcxGridDBBandedTableView;
    gridAgeID: TcxGridDBBandedColumn;
    gridAgeKIND_10_M: TcxGridDBBandedColumn;
    gridAgeKIND_10_W: TcxGridDBBandedColumn;
    gridAgeKIND_20_M: TcxGridDBBandedColumn;
    gridAgeKIND_20_W: TcxGridDBBandedColumn;
    gridAgeKIND_30_M: TcxGridDBBandedColumn;
    gridAgeKIND_30_W: TcxGridDBBandedColumn;
    gridAgeKIND_40_M: TcxGridDBBandedColumn;
    gridAgeKIND_40_W: TcxGridDBBandedColumn;
    gridAgeKIND_50_M: TcxGridDBBandedColumn;
    gridAgeKIND_50_W: TcxGridDBBandedColumn;
    gridAgeKIND_60_M: TcxGridDBBandedColumn;
    gridAgeKIND_60_W: TcxGridDBBandedColumn;
    gridAgeKIND_70_M: TcxGridDBBandedColumn;
    gridAgeKIND_70_W: TcxGridDBBandedColumn;
    gridAgeKIND_80_M: TcxGridDBBandedColumn;
    gridAgeKIND_80_W: TcxGridDBBandedColumn;
    gridAgeKIND_TOTAL: TcxGridDBBandedColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    GET_ANALYSE_AGE_NEW: TUniStoredProc;
    GET_ANALYSE_AGE_NEWLEC_NAME: TStringField;
    GET_ANALYSE_AGE_NEWKIND_10_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_10_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_20_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_20_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_30_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_30_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_40_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_40_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_50_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_50_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_60_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_60_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_70_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_70_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_80_M: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_80_W: TIntegerField;
    GET_ANALYSE_AGE_NEWKIND_TOTAL: TIntegerField;
    STUDENT_BIRTH_UPDATE: TUniStoredProc;
    UniTransaction1: TUniTransaction;
    PanelMsg: TPanel;
    GET_ANALYSE_AGE_NEWTOTAL_DAY: TIntegerField;
    GET_ANALYSE_AGE_NEWT10M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT10W_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT20M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT20W_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT30M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT30W_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT40M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT40W_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT50M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT50W_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT60M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT60W_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT70M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT70W_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT80M_H: TIntegerField;
    GET_ANALYSE_AGE_NEWT80W_H: TIntegerField;
    gridAgeL_UID: TcxGridDBBandedColumn;
    gridAgeT10M_H: TcxGridDBBandedColumn;
    gridAgeT10W_H: TcxGridDBBandedColumn;
    gridAgeT20M_H: TcxGridDBBandedColumn;
    gridAgeT20W_H: TcxGridDBBandedColumn;
    gridAgeT30M_H: TcxGridDBBandedColumn;
    gridAgeT30W_H: TcxGridDBBandedColumn;
    gridAgeT40M_H: TcxGridDBBandedColumn;
    gridAgeT40W_H: TcxGridDBBandedColumn;
    gridAgeT50M_H: TcxGridDBBandedColumn;
    gridAgeT50W_H: TcxGridDBBandedColumn;
    gridAgeT60M_H: TcxGridDBBandedColumn;
    gridAgeT60W_H: TcxGridDBBandedColumn;
    gridAgeT70M_H: TcxGridDBBandedColumn;
    gridAgeT70W_H: TcxGridDBBandedColumn;
    gridAgeT80M_H: TcxGridDBBandedColumn;
    gridAgeT80W_H: TcxGridDBBandedColumn;
    GET_ANALYSE_AGE_NEWH_TOTAL: TIntegerField;
    gridAgeH_TOTAL: TcxGridDBBandedColumn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GET_ANALYSE_AGE_NEWL_UID: TStringField;
    GET_ANALYSE_AGE_NEWL_IDX: TIntegerField;
    cbStep1: TcxImageComboBox;
    STUDENTS_BY_AGE_SEL: TUniStoredProc;
    STUDENTS_BY_AGE_SELL_UID: TStringField;
    STUDENTS_BY_AGE_SELK10M: TIntegerField;
    STUDENTS_BY_AGE_SELK10W: TIntegerField;
    STUDENTS_BY_AGE_SELK20M: TIntegerField;
    STUDENTS_BY_AGE_SELK20W: TIntegerField;
    STUDENTS_BY_AGE_SELK30M: TIntegerField;
    STUDENTS_BY_AGE_SELK30W: TIntegerField;
    STUDENTS_BY_AGE_SELK40M: TIntegerField;
    STUDENTS_BY_AGE_SELK40W: TIntegerField;
    STUDENTS_BY_AGE_SELK50M: TIntegerField;
    STUDENTS_BY_AGE_SELK50W: TIntegerField;
    STUDENTS_BY_AGE_SELK60M: TIntegerField;
    STUDENTS_BY_AGE_SELK60W: TIntegerField;
    STUDENTS_BY_AGE_SELK70M: TIntegerField;
    STUDENTS_BY_AGE_SELK70W: TIntegerField;
    STUDENTS_BY_AGE_SELK80M: TIntegerField;
    STUDENTS_BY_AGE_SELK80W: TIntegerField;
    STUDENTS_BY_AGE_SELH10M: TIntegerField;
    STUDENTS_BY_AGE_SELH10W: TIntegerField;
    STUDENTS_BY_AGE_SELH20M: TIntegerField;
    STUDENTS_BY_AGE_SELH20W: TIntegerField;
    STUDENTS_BY_AGE_SELH30M: TIntegerField;
    STUDENTS_BY_AGE_SELH30W: TIntegerField;
    STUDENTS_BY_AGE_SELH40M: TIntegerField;
    STUDENTS_BY_AGE_SELH40W: TIntegerField;
    STUDENTS_BY_AGE_SELH50M: TIntegerField;
    STUDENTS_BY_AGE_SELH50W: TIntegerField;
    STUDENTS_BY_AGE_SELH60M: TIntegerField;
    STUDENTS_BY_AGE_SELH60W: TIntegerField;
    STUDENTS_BY_AGE_SELH70M: TIntegerField;
    STUDENTS_BY_AGE_SELH70W: TIntegerField;
    STUDENTS_BY_AGE_SELH80M: TIntegerField;
    STUDENTS_BY_AGE_SELH80W: TIntegerField;
    STUDENTS_BY_AGE_SELK_TOTAL: TIntegerField;
    STUDENTS_BY_AGE_SELH_TOTAL: TIntegerField;
    chkAddOuter: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    procedure SetFields;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureAnalyseAge: TfmLectureAnalyseAge;

implementation

uses Udm;

{$R *.dfm}


procedure TfmLectureAnalyseAge.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '�������� (*.xls)|*.xls';
    saveDLG.FileName := Caption + '_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('�������� ����Ϸ�!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmLectureAnalyseAge.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '������ ����/���ɴ뺰 ����ǥ' + #13#10 +
              '==================' + #13#10;
//              '(' + cbYear.Text + '�� ' + cbStep.Text + ')';

  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '����';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmLectureAnalyseAge.btnRetrieveClick(Sender: TObject);
var
  i, l_year, l_step1, l_step2, include_out : Integer;
  syear1, syear2, syear3, syear4, syear5, syear6, syear7, syear8 : Integer;
  eyear1, eyear2, eyear3, eyear4, eyear5, eyear6, eyear7, eyear8 : Integer;
begin
  PanelMsg.Visible := True;
  PanelMsg.Refresh;
  Screen.Cursor := crHourGlass;
  l_year := StrToInt(cbYear.Text);
  l_step1 := cbStep1.EditValue;

  try
    UniTransaction1.StartTransaction;
    STUDENT_BIRTH_UPDATE.ExecProc;
    UniTransaction1.Commit;

    if chkAddOuter.Checked then
      include_out := 1
    else
      include_out := 0;
    UniTransaction1.StartTransaction;
    GET_ANALYSE_AGE_NEW.ParamByName('LEC_YEAR').Value := l_year;
    GET_ANALYSE_AGE_NEW.ParamByName('LEC_STEP').Value := l_step1;
    GET_ANALYSE_AGE_NEW.ParamByName('INCLUDE_OUT').Value := include_out;
    GET_ANALYSE_AGE_NEW.ExecProc;
    UniTransaction1.Commit;

    STUDENTS_BY_AGE_SEL.Active := True;
    DataSource1.DataSet.Refresh;
    STUDENTS_BY_AGE_SEL.Filter := 'K_TOTAL > 0';
    STUDENTS_BY_AGE_SEL.Filtered := True;
    PanelMsg.Visible := False;
    Screen.Cursor := crArrow;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfmLectureAnalyseAge.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLectureAnalyseAge.FormShow(Sender: TObject);
var
  i, mon : integer;
begin
  for i := YearOf(Date) - 9 to YearOf(Date) + 1 do begin
    cbYear.Items.Add(IntToStr(i));
  end;
  cbYear.ItemIndex := cbYear.Items.IndexOf(IntToStr(YearOf(Date)));
  mon := MonthOf(Date);
  case mon of
    1..3 : cbStep1.EditValue := 1;
    4..6 : cbStep1.EditValue := 2;
    7..9 : cbStep1.EditValue := 3;
    10..12 : cbStep1.EditValue := 4;
  end;
  SetFields;
  STUDENTS_BY_AGE_SEL.Active := True;
  DataSource1.DataSet.Refresh;
  STUDENTS_BY_AGE_SEL.Filter := 'K_TOTAL > 0';
  STUDENTS_BY_AGE_SEL.Filtered := True;
end;

procedure TfmLectureAnalyseAge.RadioButton1Click(Sender: TObject);
begin
  SetFields;
end;

procedure TfmLectureAnalyseAge.RadioButton2Click(Sender: TObject);
begin
  SetFields;
end;

procedure TfmLectureAnalyseAge.SetFields;
begin
  gridAgeT10M_H.Visible := RadioButton2.Checked;
  gridAgeT10W_H.Visible := RadioButton2.Checked;
  gridAgeT20M_H.Visible := RadioButton2.Checked;
  gridAgeT20W_H.Visible := RadioButton2.Checked;
  gridAgeT30M_H.Visible := RadioButton2.Checked;
  gridAgeT30W_H.Visible := RadioButton2.Checked;
  gridAgeT40M_H.Visible := RadioButton2.Checked;
  gridAgeT40W_H.Visible := RadioButton2.Checked;
  gridAgeT50M_H.Visible := RadioButton2.Checked;
  gridAgeT50W_H.Visible := RadioButton2.Checked;
  gridAgeT60M_H.Visible := RadioButton2.Checked;
  gridAgeT60W_H.Visible := RadioButton2.Checked;
  gridAgeT70M_H.Visible := RadioButton2.Checked;
  gridAgeT70W_H.Visible := RadioButton2.Checked;
  gridAgeT80M_H.Visible := RadioButton2.Checked;
  gridAgeT80W_H.Visible := RadioButton2.Checked;
  gridAgeH_TOTAL.Visible := RadioButton2.Checked;
  gridAgeKIND_10_M.Visible := RadioButton1.Checked;
  gridAgeKIND_10_W.Visible := RadioButton1.Checked;
  gridAgeKIND_20_M.Visible := RadioButton1.Checked;
  gridAgeKIND_20_W.Visible := RadioButton1.Checked;
  gridAgeKIND_30_M.Visible := RadioButton1.Checked;
  gridAgeKIND_30_W.Visible := RadioButton1.Checked;
  gridAgeKIND_40_M.Visible := RadioButton1.Checked;
  gridAgeKIND_40_W.Visible := RadioButton1.Checked;
  gridAgeKIND_50_M.Visible := RadioButton1.Checked;
  gridAgeKIND_50_W.Visible := RadioButton1.Checked;
  gridAgeKIND_60_M.Visible := RadioButton1.Checked;
  gridAgeKIND_60_W.Visible := RadioButton1.Checked;
  gridAgeKIND_70_M.Visible := RadioButton1.Checked;
  gridAgeKIND_70_W.Visible := RadioButton1.Checked;
  gridAgeKIND_80_M.Visible := RadioButton1.Checked;
  gridAgeKIND_80_W.Visible := RadioButton1.Checked;
  gridAgeKIND_TOTAL.Visible := RadioButton1.Checked;
end;

initialization RegisterClasses([TfmLectureAnalyseAge]);

end.
