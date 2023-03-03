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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnCreateNewClick(Sender: TObject);
    procedure gridTaxtotalTEACHER_IDXGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure btnExportClick(Sender: TObject);
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

procedure TfmTeacherTaxtotal.btnCreateNewClick(Sender: TObject);
var
  mon, l_step : Integer;
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

  TEACHER_TAXTOTAL_CREATE.ParamByName('WYEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  TEACHER_TAXTOTAL_CREATE.ParamByName('WSTEP').Value := l_step;
  TEACHER_TAXTOTAL_CREATE.ParamByName('WMON').Value := mon;
  TEACHER_TAXTOTAL_CREATE.ExecProc;
  ds_TEACHER_TAXTOTAL_SEL.DataSet.Refresh;
end;

procedure TfmTeacherTaxtotal.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '¿¢¼¿ÆÄÀÏ (*.xls)|*.xls';
    saveDLG.FileName := '¼ö´ç°¨¸éº¸ÀüÇöÈ²_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, true, true, false, 'xls');
    ShowMessage('¿¢¼¿ÆÄÀÏ ÀúÀå¿Ï·á!');
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


procedure TfmTeacherTaxtotal.gridTaxtotalTEACHER_IDXGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
  AIndex: Integer;
begin
  AIndex := TcxGridTableView(Sender.GridView).DataController.GetRowIndexByRecordIndex(ARecordIndex, False);
  AText := IntToStr(AIndex);
end;

initialization RegisterClasses([TfmTeacherTaxtotal]);
end.
