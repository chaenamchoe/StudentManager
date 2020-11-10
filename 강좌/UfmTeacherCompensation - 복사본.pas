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
  cxGridExportLink;

type
  TfmTeacherCompensation = class(TForm)
    Panel1: TPanel;
    btnRetrieve: TBitBtn;
    btnExport: TBitBtn;
    btnAttendList: TBitBtn;
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
    gridCompensationRecId: TcxGridDBColumn;
    gridCompensationlecture_id: TcxGridDBColumn;
    gridCompensationlecture_name: TcxGridDBColumn;
    gridCompensationteacher_name: TcxGridDBColumn;
    gridCompensationreg_count: TcxGridDBColumn;
    gridCompensationdc_count: TcxGridDBColumn;
    gridCompensationkind1_cnt: TcxGridDBColumn;
    gridCompensationkind2_cnt: TcxGridDBColumn;
    gridCompensationkind3_cnt: TcxGridDBColumn;
    gridCompensationkind4_cnt: TcxGridDBColumn;
    gridCompensationkind5_cnt: TcxGridDBColumn;
    gridCompensationkind_cnt6: TcxGridDBColumn;
    gridCompensationcompan_price: TcxGridDBColumn;
    gridCompensationtotal_price: TcxGridDBColumn;
    dxMemData1lecture_price: TFloatField;
    gridCompensationlecture_price: TcxGridDBColumn;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnAttendListClick(Sender: TObject);
    procedure frmYearMonth1cbMonthChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  //cxGrid1DBTableView1Column1.Visible := False;
  titleStr := '수당감면보전현황' + #13#10 +
              '===================' + #13#10 +
              '(' + IntToStr(frmYearMonth1.IYear) + '년' + IntToStr(frmYearMonth1.IMonth) + '월분)';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  //cxGrid1DBTableView1Column1.Visible := True;
end;

procedure TfmTeacherCompensation.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xlsx)|*.xlsx';
    saveDLG.FileName := '수당감면보전현황_' + DateTimeToStr(Date) + '.xlsx';
    saveDLG.DefaultExt := 'xlsx';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    //cxGrid1DBTableView1Column1.Visible := False;
    ExportGridToXLSX(nameonly, cxGrid1, false, true, true, 'xlsx');
    //cxGrid1DBTableView1Column1.Visible := True;
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
  comm_count, dc_total, dc_count1, dc_count2, dc_count3, dc_count4, dc_count5, dc_count6, dc_count7 : Integer;
begin
  //ShowMessage(IntToStr(frmYearMonth1.cbMonth.ItemIndex + 1));
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
  SP_GET_COMPANSATION.ParamByName('DONG_ID').Value := LoginUserDong;
  SP_GET_COMPANSATION.ParamByName('L_YEAR').Value := StrToInt(frmYearMonth1.cbYear.Text);
  SP_GET_COMPANSATION.ParamByName('L_STEP').Value := l_step;
  SP_GET_COMPANSATION.ParamByName('L_MONTH').Value := calc_mon;
  SP_GET_COMPANSATION.Active := True;
  d_SP_GET_COMPANSATION.DataSet.Refresh;

//  q_lecture_active.ParamByName('l_year').Value := StrToInt(frmYearMonth1.cbYear.Text);
//  q_lecture_active.ParamByName('l_step').Value := l_step;
//  q_lecture_active.Active := True;
//  d_lecture_active.DataSet.Refresh;
//  cnt := d_lecture_active.DataSet.RecordCount;
//  d_lecture_active.DataSet.First;
//  dxMemData1.Close;
//  dxMemData1.Open;
//  for i := 0 to cnt - 1 do begin
//    lecture_id := q_lecture_activeID.Value;
//    LECTURE_PRICE := q_lecture_activeL_PRICE.Value;
//    lPrice := LECTURE_PRICE / 3;
//    comm_count := GetRegistedCount(lecture_id, calc_mon);
//    dc_count1 := GetDCCount(lecture_id, 5, calc_mon); //수급자
//    dc_count2 := GetDCCount(lecture_id, 4, calc_mon); //유공자
//    dc_count3 := GetDCCount(lecture_id, 2, calc_mon); //노인
//    dc_count4 := GetDCCount(lecture_id, 3, calc_mon); //장애인
//    dc_count5 := GetDCCount(lecture_id, 6, calc_mon); //다자녀
//    dc_count6 := GetDCCount(lecture_id, 7, calc_mon); //의사자
//    dc_total := dc_count1 + dc_count2 + dc_count3 + dc_count4 + dc_count5 + dc_count6;
//    SUDANG := q_lecture_activeTEACHER_PERCENT.AsFloat / 100;
//    if dc_total > 0 then begin
//      dxMemData1.Append;
//      dxMemData1lecture_id.Value := q_lecture_activeID.Value;
//      dxMemData1lecture_name.Value := q_lecture_activeL_NAME.Value;
//      dxMemData1teacher_name.Value := GetTeacherName(q_lecture_activeTEACHER_ID.Value);  //강사명으로 변경할 것.
//      dxMemData1lecture_price.Value := lPrice;
//
//      dxMemData1compan_price.Value := (lPrice * SUDANG) / 2;
//      dxMemData1reg_count.Value := comm_count + dc_total;
//      dxMemData1dc_count.Value := dc_total;
//      dxMemData1kind1_cnt.Value := dc_count1;
//      dxMemData1kind2_cnt.Value := dc_count2;
//      dxMemData1kind3_cnt.Value := dc_count3;
//      dxMemData1kind4_cnt.Value := dc_count4;
//      dxMemData1kind5_cnt.Value := dc_count5;
//      dxMemData1total_price.Value := dc_total * ((lPrice * 0.7) / 2);
//      dxMemData1.Post;
//    end;
//
//    d_lecture_active.DataSet.Next;
//  end;
//  DataSource1.DataSet.Refresh;
//  DataSource1.DataSet.First;
  Screen.Cursor := crDefault;
end;

procedure TfmTeacherCompensation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTeacherCompensation.FormCreate(Sender: TObject);
begin
  frmYearMonth1.InitYearMonth;
  btnRetrieve.Click;
end;

procedure TfmTeacherCompensation.FormShow(Sender: TObject);
begin
  btnRetrieve.Click;
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
