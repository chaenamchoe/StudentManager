unit UfmTeacherCompensation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxTextEdit, cxDBLookupComboBox, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSCore,
  dxPScxCommon, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, UfrmYearMonth,
  cxButtons, StdCtrls, Buttons, ExtCtrls, dxmdaset, MemDS, DBAccess, Uni,
  cxGridExportLink, DBClient, Provider, VirtualTable, dxSkinSevenClassic,
  dxSkinSharp, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmTeacherCompensation = class(TForm)
    Panel1: TPanel;
    btnSaveColumn: TcxButton;
    frmYearMonth1: TfrmYearMonth;
    cxGrid1: TcxGrid;
    gridCompensation: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1lecture_name: TStringField;
    dxMemData1lecture_id: TStringField;
    dxMemData1teacher_name: TStringField;
    dxMemData1reg_count: TIntegerField;
    dxMemData1dc_count: TIntegerField;
    dxMemData1kind1_cnt: TIntegerField;
    dxMemData1kind2_cnt: TIntegerField;
    dxMemData1kind3_cnt: TIntegerField;
    dxMemData1kind4_cnt: TIntegerField;
    dxMemData1kind5_cnt: TIntegerField;
    dxMemData1kind_cnt6: TIntegerField;
    dxMemData1compan_price: TFloatField;
    dxMemData1total_price: TFloatField;
    dxMemData1lecture_price: TFloatField;
    q_lecture_active: TUniQuery;
    d_lecture_active: TDataSource;
    q_lecture_activeID: TStringField;
    q_lecture_activeDONG_ID: TStringField;
    q_lecture_activeL_YEAR: TIntegerField;
    q_lecture_activeL_STEP: TIntegerField;
    q_lecture_activeL_NAME: TStringField;
    q_lecture_activeL_TIME_WEEK: TIntegerField;
    q_lecture_activeL_DAYS: TStringField;
    q_lecture_activeL_MONTH: TIntegerField;
    q_lecture_activeSTART_DATE: TStringField;
    q_lecture_activeTEACHER_ID: TStringField;
    q_lecture_activeL_PRICE: TFloatField;
    q_lecture_activeCLASSROOM_ID: TStringField;
    q_lecture_activeIS_ACTIVE: TIntegerField;
    q_lecture_activeL_DURATION: TStringField;
    q_lecture_activeL_TIME: TFloatField;
    q_lecture_activeL_TIME_START: TSmallintField;
    q_lecture_activeL_TIME_END: TSmallintField;
    q_lecture_activeEND_DATE: TStringField;
    q_lecture_activePLAN_MEN: TSmallintField;
    q_lecture_activeREGIST_MEN: TSmallintField;
    q_lecture_activeWAIT_MEN: TSmallintField;
    q_lecture_activeDROP_MEN: TSmallintField;
    q_lecture_activeTOTAL_DAY: TIntegerField;
    q_lecture_activeTOTAL_TIME: TFloatField;
    q_lecture_activeTEACHER_PERCENT: TSmallintField;
    SP_GET_COMPANSATION: TUniStoredProc;
    d_SP_GET_COMPANSATION: TDataSource;
    SP_GET_COMPANSATIONID: TStringField;
    SP_GET_COMPANSATIONL_NAME: TStringField;
    SP_GET_COMPANSATIONL_PRICE: TFloatField;
    SP_GET_COMPANSATIONTEACHER_ID: TStringField;
    SP_GET_COMPANSATIONTEACHER_PERCENT: TSmallintField;
    SP_GET_COMPANSATIONCOMMON_COUNT: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT1: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT2: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT3: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT4: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT5: TIntegerField;
    SP_GET_COMPANSATIONDC_COUNT6: TIntegerField;
    SP_GET_COMPANSATIONDC_TOTAL: TIntegerField;
    SP_GET_COMPANSATIONSUDANG: TFloatField;
    SP_GET_COMPANSATIONLEC_PRICE: TFloatField;
    SP_GET_COMPANSATIONTOTAL_PRICE: TFloatField;
    gridCompensationID: TcxGridDBColumn;
    gridCompensationL_NAME: TcxGridDBColumn;
    gridCompensationL_PRICE: TcxGridDBColumn;
    gridCompensationTEACHER_ID: TcxGridDBColumn;
    gridCompensationTEACHER_PERCENT: TcxGridDBColumn;
    gridCompensationCOMMON_COUNT: TcxGridDBColumn;
    gridCompensationDC_COUNT1: TcxGridDBColumn;
    gridCompensationDC_COUNT2: TcxGridDBColumn;
    gridCompensationDC_COUNT3: TcxGridDBColumn;
    gridCompensationDC_COUNT4: TcxGridDBColumn;
    gridCompensationDC_COUNT5: TcxGridDBColumn;
    gridCompensationDC_COUNT6: TcxGridDBColumn;
    gridCompensationDC_TOTAL: TcxGridDBColumn;
    gridCompensationSUDANG: TcxGridDBColumn;
    gridCompensationLEC_PRICE: TcxGridDBColumn;
    gridCompensationTOTAL_PRICE: TcxGridDBColumn;
    SP_GET_COMPANSATIONTEACHER_NAME: TStringField;
    gridCompensationTEACHER_NAME: TcxGridDBColumn;
    gridCompensationColumn1: TcxGridDBColumn;
    chkSudangFilter: TCheckBox;
    cdsCompansation: TClientDataSet;
    cdsCompansationID: TStringField;
    cdsCompansationL_NAME: TStringField;
    cdsCompansationL_PRICE: TFloatField;
    cdsCompansationTEACHER_ID: TStringField;
    cdsCompansationTEACHER_PERCENT: TSmallintField;
    cdsCompansationCOMMON_COUNT: TIntegerField;
    cdsCompansationDC_COUNT1: TIntegerField;
    cdsCompansationDC_COUNT2: TIntegerField;
    cdsCompansationDC_COUNT3: TIntegerField;
    cdsCompansationDC_COUNT4: TIntegerField;
    cdsCompansationDC_COUNT5: TIntegerField;
    cdsCompansationDC_COUNT6: TIntegerField;
    cdsCompansationDC_TOTAL: TIntegerField;
    cdsCompansationSUDANG: TFloatField;
    cdsCompansationLEC_PRICE: TFloatField;
    cdsCompansationTOTAL_PRICE: TFloatField;
    cdsCompansationTEACHER_NAME: TStringField;
    cdsCompansationrno: TIntegerField;
    VirtualTable1: TVirtualTable;
    VirtualTable1ID: TStringField;
    VirtualTable1L_NAME: TStringField;
    VirtualTable1L_PRICE: TFloatField;
    VirtualTable1TEACHER_ID: TStringField;
    VirtualTable1TEACHER_PERCENT: TSmallintField;
    VirtualTable1COMMON_COUNT: TIntegerField;
    VirtualTable1DC_COUNT1: TIntegerField;
    VirtualTable1DC_COUNT2: TIntegerField;
    VirtualTable1DC_COUNT3: TIntegerField;
    VirtualTable1DC_COUNT4: TIntegerField;
    VirtualTable1DC_COUNT5: TIntegerField;
    VirtualTable1DC_COUNT6: TIntegerField;
    VirtualTable1DC_TOTAL: TIntegerField;
    VirtualTable1SUDANG: TFloatField;
    VirtualTable1LEC_PRICE: TFloatField;
    VirtualTable1TOTAL_PRICE: TFloatField;
    VirtualTable1TEACHER_NAME: TStringField;
    VirtualTable1rno: TIntegerField;
    btnRetrieve: TcxButton;
    btnExport: TcxButton;
    btnAttendList: TcxButton;
    SP_GET_COMPANSATIONDC_PRICE: TFloatField;
    cdsCompansationdc_price: TFloatField;
    gridCompensationdc_price: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cdsCompansationp_month: TIntegerField;
    gridCompensationp_month: TcxGridDBColumn;
    SP_GET_COMPANSATIONL_IDX: TIntegerField;
    SP_GET_COMPANSATIONCOUNT_TOTAL: TIntegerField;
    cdsCompansationcount_total: TIntegerField;
    gridCompensationcount_total: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnAttendListClick(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkSudangFilterClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure gridCompensationStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure gridCompensationDC_TOTALCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    function GetTeacherName(teacher_id: string): string;
    function GetRegistedCount(lecture_id: string; calc_mon : Integer): Integer;
    function GetDCCount(lecture_id: string; dc_kind, calc_mon : Integer): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeacherCompensation: TfmTeacherCompensation;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmTeacherCompensation.btnAttendListClick(Sender: TObject);
var
  titleStr : string;
begin
  //gridCompensationColumn1.Visible := False;
  titleStr := '수당감면보전현황' + #13#10 +
              '===================' + #13#10 +
              '(' + IntToStr(frmYearMonth1.IYear) + '년' + frmYearMonth1.cbMonth.Text + '분)';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  //gridCompensationColumn1.Visible := True;
end;

procedure TfmTeacherCompensation.btnExportClick(Sender: TObject);
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

procedure TfmTeacherCompensation.btnRetrieveClick(Sender: TObject);
var
  i, cnt, mon, calc_mon, l_step : Integer;
  lecture_id : string;
  lPrice, SUDANG, LECTURE_PRICE : Double;
  count_total, comm_count, dc_total, dc_count1, dc_count2, dc_count3, dc_count4, dc_count5, dc_count6, dc_count7 : Integer;
  dc_price, total_price : Double;
begin
  Screen.Cursor := crHourGlass;
  mon := frmYearMonth1.cbMonth.ItemIndex + 1;
  case mon of
    1..3 : l_step := 1;
    4..6 : l_step := 2;
    7..9 : l_step := 3;
    10..12 : l_step := 4;
  end;
  if (mon = 1) or (mon = 4) or (mon = 7) or (mon = 10) then
    calc_mon := 1;
  if (mon = 2) or (mon = 5) or (mon = 8) or (mon = 11) then
    calc_mon := 2;
  if (mon = 3) or (mon = 6) or (mon = 9) or (mon = 12) then
    calc_mon := 3;

  cdsCompansation.Close;
  cdsCompansation.CreateDataSet;
  cdsCompansation.DisableControls;

  SP_GET_COMPANSATION.DisableControls;
  SP_GET_COMPANSATION.ParamByName('L_YEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  SP_GET_COMPANSATION.ParamByName('L_STEP').Value := l_step;
  SP_GET_COMPANSATION.ParamByName('L_MONTH').Value := calc_mon;
  SP_GET_COMPANSATION.Active := True;
  SP_GET_COMPANSATION.Refresh;
  SP_GET_COMPANSATION.EnableControls;
  cnt := SP_GET_COMPANSATION.RecordCount;
  SP_GET_COMPANSATION.First;
  count_total := 0;
  comm_count := 0;
  dc_total := 0;
  dc_count1 := 0;
  dc_count2 := 0;
  dc_count3 := 0;
  dc_count4 := 0;
  dc_count5 := 0;
  dc_count6 := 0;
  dc_price := 0;
  total_price := 0;
//
  for i := 0 to cnt - 1 do begin
    comm_count := comm_count + SP_GET_COMPANSATIONCOMMON_COUNT.Value;
    dc_total := dc_total + SP_GET_COMPANSATIONDC_TOTAL.Value;
    dc_count1 := dc_count1 + SP_GET_COMPANSATIONDC_COUNT1.Value;
    dc_count2 := dc_count2 + SP_GET_COMPANSATIONDC_COUNT2.Value;
    dc_count3 := dc_count3 + SP_GET_COMPANSATIONDC_COUNT3.Value;
    dc_count4 := dc_count4 + SP_GET_COMPANSATIONDC_COUNT4.Value;
    dc_count5 := dc_count5 + SP_GET_COMPANSATIONDC_COUNT5.Value;
    dc_count6 := dc_count6 + SP_GET_COMPANSATIONDC_COUNT6.Value;
    dc_price := dc_price + SP_GET_COMPANSATIONDC_PRICE.Value;
    total_price := total_price + SP_GET_COMPANSATIONTOTAL_PRICE.Value;

    cdsCompansation.Append;
    cdsCompansationID.Value := SP_GET_COMPANSATIONID.Value;
    cdsCompansationL_NAME.Value := SP_GET_COMPANSATIONL_NAME.Value;
    cdsCompansationL_PRICE.Value := SP_GET_COMPANSATIONL_PRICE.Value;
    cdsCompansationTEACHER_ID.Value := SP_GET_COMPANSATIONTEACHER_ID.Value;
    cdsCompansationTEACHER_PERCENT.Value := SP_GET_COMPANSATIONTEACHER_PERCENT.Value;
    cdsCompansationCOMMON_COUNT.Value := SP_GET_COMPANSATIONCOMMON_COUNT.Value;
    cdsCompansationDC_COUNT1.Value := SP_GET_COMPANSATIONDC_COUNT1.Value;
    cdsCompansationDC_COUNT2.Value := SP_GET_COMPANSATIONDC_COUNT2.Value;
    cdsCompansationDC_COUNT3.Value := SP_GET_COMPANSATIONDC_COUNT3.Value;
    cdsCompansationDC_COUNT4.Value := SP_GET_COMPANSATIONDC_COUNT4.Value;
    cdsCompansationDC_COUNT5.Value := SP_GET_COMPANSATIONDC_COUNT5.Value;
    cdsCompansationDC_COUNT6.Value := SP_GET_COMPANSATIONDC_COUNT6.Value;
    cdsCompansationDC_TOTAL.Value := SP_GET_COMPANSATIONDC_TOTAL.Value;
    cdsCompansationSUDANG.Value := SP_GET_COMPANSATIONSUDANG.Value;
    cdsCompansationLEC_PRICE.Value := SP_GET_COMPANSATIONLEC_PRICE.Value;
    cdsCompansationDC_PRICE.Value := SP_GET_COMPANSATIONDC_PRICE.Value;
    cdsCompansationTOTAL_PRICE.Value := SP_GET_COMPANSATIONTOTAL_PRICE.Value;
    cdsCompansationTEACHER_NAME.Value := SP_GET_COMPANSATIONTEACHER_NAME.Value;
    cdsCompansationCOUNT_TOTAL.Value := SP_GET_COMPANSATIONCOUNT_TOTAL.Value;
    cdsCompansationRNO.Value := i + 1;
    cdsCompansationp_month.Value := mon;
    cdsCompansation.Post;
    SP_GET_COMPANSATION.Next;
  end;
  cdsCompansation.First;
  cdsCompansation.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfmTeacherCompensation.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '감면보전현황.ini';
  gridCompensation.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmTeacherCompensation.chkSudangFilterClick(Sender: TObject);
begin
  if chkSudangFilter.Checked then begin
    d_SP_GET_COMPANSATION.DataSet.Filter := 'TOTAL_PRICE > 0';
    d_SP_GET_COMPANSATION.DataSet.Filtered := True;
  end else begin
    d_SP_GET_COMPANSATION.DataSet.Filter := '';
    d_SP_GET_COMPANSATION.DataSet.Filtered := True;
  end;
end;

procedure TfmTeacherCompensation.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmTeacherCompensation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTeacherCompensation.FormCreate(Sender: TObject);
begin
  frmYearMonth1.InitYearMonth;
  //btnRetrieve.Click;
end;

procedure TfmTeacherCompensation.frmYearMonth1cbMonthChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

function TfmTeacherCompensation.GetTeacherName(teacher_id : string) : string;
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(nil);
  with Query do begin
    Connection := dm.UniConnection1;
    SQL.Clear;
    SQL.Add('select t_name from teacher where id = :teacher_id ');
    ParamByName('teacher_id').Value := teacher_id;
    Active := True;
  end;
  if Query.RecordCount > 0 then
    Result := Query.FieldByName('t_name').AsString;
end;

procedure TfmTeacherCompensation.gridCompensationDC_TOTALCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_out : Integer;
begin
  col_out := AViewInfo.GridRecord.Values[gridCompensation.GetColumnByFieldName('DC_TOTAL').Index];
  if col_out > 0 then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlue;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmTeacherCompensation.gridCompensationStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
  col := gridCompensation.GetColumnByFieldName('rno').Index;
  if ARecord.Values[col] = 0 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleDefault;
end;

function TfmTeacherCompensation.GetRegistedCount(lecture_id : string; calc_mon : Integer) : Integer;
var
  Query : TUniQuery;
  pYear, pMonth, p_kind : Integer;
begin
  Query := TUniQuery.Create(nil);
  with Query do begin
    Connection := dm.UniConnection1;
    SQL.Clear;
    SQL.Add('select count(id) as cnt from REGISTED_LECTURE ');
    SQL.Add('where (lecture_id = :lecture_id) and (is_dc = 1) and ');
    if calc_mon = 1 then
      SQL.Add('(reg_month = 1) and (out_month = 0) ');
    if calc_mon = 2 then
      SQL.Add('(reg_month2 = 1) and (out_month2 = 0) ');
    if calc_mon = 3 then
      SQL.Add('(reg_month3 = 1) and (out_month3 = 0) ');

    ParamByName('lecture_id').Value := lecture_id;
    Active := True;
  end;
  if Query.RecordCount > 0 then
    Result := Query.FieldByName('cnt').AsInteger;

end;

function TfmTeacherCompensation.GetDCCount(lecture_id : string; dc_kind, calc_mon : Integer) : Integer;
var
  Query : TUniQuery;
  pYear, pMonth, p_kind : Integer;
  sdate : TDateTime;
  common3_fee, common2_fee, common1_fee, pay_amount : Double;
begin
  Query := TUniQuery.Create(nil);
  with Query do begin
    Connection := dm.UniConnection1;
    SQL.Clear;
    SQL.Add('select count(id) as cnt from REGISTED_LECTURE ');
    SQL.Add('where (lecture_id = :lecture_id) and (is_dc = :dc_kind) and ');
    if calc_mon = 1 then
      SQL.Add('(reg_month = 1) and (out_month = 0) ');
    if calc_mon = 2 then
      SQL.Add('(reg_month2 = 1) and (out_month2 = 0) ');
    if calc_mon = 3 then
      SQL.Add('(reg_month3 = 1) and (out_month3 = 0) ');

    ParamByName('lecture_id').Value := lecture_id;
    ParamByName('dc_kind').Value := dc_kind;
    Active := True;
  end;
  if Query.RecordCount > 0 then
    Result := Query.FieldByName('cnt').AsInteger;

end;

initialization RegisterClasses([TfmTeacherCompensation]);

end.
