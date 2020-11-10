unit UfmDongLectureList;

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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxDBLookupComboBox, cxImageComboBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, MemDS,
  DBAccess, Uni, StdCtrls, Buttons, Spin, ExtCtrls, dxPSCore, dxPScxCommon,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, DateUtils, cxGridExportLink,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmDongLectureList = class(TForm)
    cxGrid1: TcxGrid;
    gridLecture: TcxGridDBTableView;
    gridLectureID: TcxGridDBColumn;
    gridLectureDONG_ID: TcxGridDBColumn;
    gridLectureL_YEAR: TcxGridDBColumn;
    gridLectureL_STEP: TcxGridDBColumn;
    gridLectureL_NAME: TcxGridDBColumn;
    gridLecturePLAN_MEN: TcxGridDBColumn;
    gridLectureL_TIME_WEEK: TcxGridDBColumn;
    gridLectureL_DAYS: TcxGridDBColumn;
    gridLectureL_DURATION: TcxGridDBColumn;
    gridLectureL_TIME: TcxGridDBColumn;
    gridLectureL_MONTH: TcxGridDBColumn;
    gridLectureTOTAL_DAY: TcxGridDBColumn;
    gridLectureTOTAL_TIME: TcxGridDBColumn;
    gridLectureSTART_DATE: TcxGridDBColumn;
    gridLectureEND_DATE: TcxGridDBColumn;
    gridLectureTEACHER_ID: TcxGridDBColumn;
    gridLectureL_PRICE: TcxGridDBColumn;
    gridLectureCLASSROOM_ID: TcxGridDBColumn;
    gridLectureIS_ACTIVE: TcxGridDBColumn;
    gridLectureL_TIME_START: TcxGridDBColumn;
    gridLectureL_TIME_END: TcxGridDBColumn;
    gridLectureREGIST_MEN: TcxGridDBColumn;
    gridLectureWAIT_MEN: TcxGridDBColumn;
    gridLectureDROP_MEN: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    chkFilter: TCheckBox;
    chkGroup: TCheckBox;
    btnExport: TBitBtn;
    btnPrint: TBitBtn;
    q_LECTURE: TUniQuery;
    q_LECTUREID: TStringField;
    q_LECTUREDONG_ID: TStringField;
    q_LECTUREL_YEAR: TIntegerField;
    q_LECTUREL_STEP: TIntegerField;
    q_LECTUREL_NAME: TStringField;
    q_LECTUREL_TIME_WEEK: TIntegerField;
    q_LECTUREL_DAYS: TStringField;
    q_LECTUREL_MONTH: TIntegerField;
    q_LECTURETEACHER_ID: TStringField;
    q_LECTUREL_PRICE: TFloatField;
    q_LECTURECLASSROOM_ID: TStringField;
    q_LECTUREIS_ACTIVE: TIntegerField;
    q_LECTUREL_DURATION: TStringField;
    q_LECTUREL_TIME: TFloatField;
    q_LECTUREL_TIME_START: TSmallintField;
    q_LECTUREL_TIME_END: TSmallintField;
    q_LECTUREPLAN_MEN: TSmallintField;
    q_LECTUREREGIST_MEN: TSmallintField;
    q_LECTUREWAIT_MEN: TSmallintField;
    q_LECTUREDROP_MEN: TSmallintField;
    q_LECTURESTART_DATE: TStringField;
    q_LECTUREEND_DATE: TStringField;
    q_LECTURETOTAL_DAY: TIntegerField;
    q_LECTURETOTAL_TIME: TFloatField;
    d_LECTURE: TDataSource;
    speStep2: TSpinEdit;
    Label3: TLabel;
    cbDong: TcxLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDongLectureList: TfmDongLectureList;

implementation

uses GlobalVar, Udm;

{$R *.dfm}


procedure TfmDongLectureList.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '¿¢¼¿ÆÄÀÏ (*.xls)|*.xls';
    saveDLG.FileName := '°­ÁÂµî·ÏÇöÈ²_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('¿¢¼¿ÆÄÀÏ ÀúÀå¿Ï·á!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmDongLectureList.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '°­ÁÂµî·ÏÇöÈ²' + #13#10 +
              '===================' + #13#10 +
              '(' + IntToStr(speYear.Value) + '³â' + IntToStr(speStep.Value) + 'ºÐ±â)';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '±¼¸²';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmDongLectureList.btnRetrieveClick(Sender: TObject);
var
  vYear, vMon1, vMon2 : integer;
  dong_id : string;
begin
  vYear := speYear.Value;
  vMon1 := speStep.Value;
  vMon2 := speStep2.Value;
  if cbDong.EditValue = LoginUserDong then
    dong_id := '%'
  else
    dong_id := cbDong.EditValue;
  q_LECTURE.ParamByName('dong_id').AsString := dong_id;
  q_LECTURE.ParamByName('l_year').AsInteger := vYear;
  q_LECTURE.ParamByName('l_step1').AsInteger := vMon1;
  q_LECTURE.ParamByName('l_step2').AsInteger := vMon2;
  q_LECTURE.Active := True;
  d_LECTURE.DataSet.Refresh;
  cxGrid1.SetFocus;
end;

procedure TfmDongLectureList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDongLectureList.FormCreate(Sender: TObject);
var
  mon : integer;
begin
  speYear.Value := YearOf(Date);
  mon := MonthOf(Date);
  case mon of
    1..3 : speStep2.Value := 1;
    4..6 : speStep2.Value := 2;
    7..9 : speStep2.Value := 3;
    10..12 : speStep2.Value := 4;
  end;
end;

initialization RegisterClasses([TfmDongLectureList]);

end.
