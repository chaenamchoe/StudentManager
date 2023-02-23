unit UfmEmpAttend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, DateUtils,
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
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, cxImageComboBox, cxContainer, ComCtrls,
  dxCore, cxDateUtils, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTimeEdit, cxSpinEdit, dxmdaset, frxClass,
  frxDBSet;

type
  TfmEmpAttend = class(TForm)
    Panel1: TPanel;
    gridAttend: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    EMP_ATTENDING_SEL: TUniStoredProc;
    ds_EMP_ATTENDING_SEL: TDataSource;
    EMP_ATTENDING_SELID: TIntegerField;
    EMP_ATTENDING_SELWDATE: TDateField;
    EMP_ATTENDING_SELIN_TIME: TTimeField;
    EMP_ATTENDING_SELOUT_TIME: TTimeField;
    EMP_ATTENDING_SELW_KIND: TIntegerField;
    EMP_ATTENDING_SELW_REASON: TStringField;
    gridAttendID: TcxGridDBColumn;
    gridAttendWDATE: TcxGridDBColumn;
    gridAttendIN_TIME: TcxGridDBColumn;
    gridAttendOUT_TIME: TcxGridDBColumn;
    gridAttendW_KIND: TcxGridDBColumn;
    gridAttendW_REASON: TcxGridDBColumn;
    Label1: TLabel;
    btnRetrieve: TcxButton;
    btnOut: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnIn2: TcxButton;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    icbKind: TcxImageComboBox;
    Label3: TLabel;
    Label4: TLabel;
    in_time: TcxTimeEdit;
    out_time: TcxTimeEdit;
    Label5: TLabel;
    Memo1: TMemo;
    btnSave: TcxButton;
    EMP_ATTENDING_UPD_ALL: TUniStoredProc;
    EMP_ATTENDING_SELW_HOUR: TIntegerField;
    EMP_ATTENDING_SELW_WEEK: TIntegerField;
    gridAttendW_HOUR: TcxGridDBColumn;
    gridAttendW_WEEK: TcxGridDBColumn;
    EMP_ATTENDING_INS: TUniStoredProc;
    Label6: TLabel;
    wdate: TcxDateEdit;
    btnNew: TcxButton;
    w_hour: TcxSpinEdit;
    Label7: TLabel;
    w_week: TcxImageComboBox;
    btnDefault: TcxButton;
    spYear: TcxSpinEdit;
    icbMonth: TcxImageComboBox;
    btnExtReport: TcxButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    dxMemData1: TdxMemData;
    dxMemData1assoc: TStringField;
    dxMemData1jikgub: TStringField;
    dxMemData1ename: TStringField;
    dxMemData1wdate: TDateField;
    dxMemData1in_time: TTimeField;
    dxMemData1out_time: TTimeField;
    dxMemData1w_hour: TIntegerField;
    dxMemData1w_reason: TStringField;
    dxMemData1total_hour: TIntegerField;
    dxMemData1confirmer: TStringField;
    dxMemData1year_month: TStringField;
    dxMemData1wdate2: TDateField;
    dxMemData1in_time2: TTimeField;
    dxMemData1out_time2: TTimeField;
    dxMemData1w_hour2: TIntegerField;
    dxMemData1w_reason2: TStringField;
    dxMemData1wdate3: TDateField;
    dxMemData1in_time3: TTimeField;
    dxMemData1out_time3: TTimeField;
    dxMemData1w_hour3: TIntegerField;
    dxMemData1w_reason3: TStringField;
    dxMemData1wdate4: TDateField;
    dxMemData1in_time4: TTimeField;
    dxMemData1out_time4: TTimeField;
    dxMemData1w_hour4: TIntegerField;
    dxMemData1w_reason4: TStringField;
    dxMemData1wdate5: TDateField;
    dxMemData1in_time5: TTimeField;
    dxMemData1out_time5: TTimeField;
    dxMemData1w_hour5: TIntegerField;
    dxMemData1w_reason5: TStringField;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnIn2Click(Sender: TObject);
    procedure btnOutClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure gridAttendFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnNewClick(Sender: TObject);
    procedure out_timePropertiesEditValueChanged(Sender: TObject);
    procedure in_timePropertiesEditValueChanged(Sender: TObject);
    procedure wdatePropertiesCloseUp(Sender: TObject);
    procedure btnDefaultClick(Sender: TObject);
    procedure btnExtReportClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    procedure EditData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmpAttend: TfmEmpAttend;

implementation

uses
  GlobalVar, Udm;

{$R *.dfm}

procedure TfmEmpAttend.btnOutClick(Sender: TObject);
var
  id, top_row : Integer;
begin
  id := gridAttendID.EditValue;
  top_row := gridAttend.Controller.TopRowIndex;
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('update emp_attending set out_time = :out_time where (id = :id);');
  UniQuery1.ParamByName('out_time').Value := Now;
  UniQuery1.ParamByName('id').Value := id;
  UniQuery1.ExecSQL;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
  EMP_ATTENDING_SEL.Locate('ID', id, []);
  gridAttend.Controller.TopRowIndex := top_row;
end;

procedure TfmEmpAttend.btnRetrieveClick(Sender: TObject);
begin
  EMP_ATTENDING_SEL.ParamByName('WYEAR').Value := spYear.EditValue;
  EMP_ATTENDING_SEL.ParamByName('WMONTH').Value := icbMonth.EditValue;
  EMP_ATTENDING_SEL.Open;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
end;

procedure TfmEmpAttend.btnSaveClick(Sender: TObject);
var
  id, toprow, w_hour : Integer;
begin
  id := gridAttendID.EditValue;
  toprow := gridAttend.Controller.TopRowIndex;
  gridAttend.DataController.SaveBookmark;
  if not VarIsNull(out_time.EditValue) then
    w_hour := HoursBetween(in_time.EditValue, out_time.EditValue)
  else
    w_hour := 0;
  EMP_ATTENDING_UPD_ALL.ParamByName('ID').Value := id;
  EMP_ATTENDING_UPD_ALL.ParamByName('WDATE').Value := wdate.Date;
  EMP_ATTENDING_UPD_ALL.ParamByName('IN_TIME').Value := in_time.EditValue;
  EMP_ATTENDING_UPD_ALL.ParamByName('OUT_TIME').Value := out_time.EditValue;
  EMP_ATTENDING_UPD_ALL.ParamByName('W_KIND').Value := icbKind.EditValue;
  EMP_ATTENDING_UPD_ALL.ParamByName('W_REASON').Value := Memo1.Text;
  EMP_ATTENDING_UPD_ALL.ParamByName('W_WEEK').Value := DayOfWeek(gridAttendWDATE.EditValue);
  EMP_ATTENDING_UPD_ALL.ParamByName('W_HOUR').Value := w_hour;
  EMP_ATTENDING_UPD_ALL.ExecProc;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
  ds_EMP_ATTENDING_SEL.DataSet.Locate('ID', id, []);
  gridAttend.DataController.GotoBookmark;
  gridAttend.Controller.TopRowIndex := toprow;
end;

procedure TfmEmpAttend.btnEditClick(Sender: TObject);
begin
  frxReport2.ShowReport;
end;

procedure TfmEmpAttend.btnExtReportClick(Sender: TObject);
var
  i, cnt, id : integer;
  wdate : array[0..4] of TDate;
  in_time, out_time : array[0..4] of TTime;
  w_hour : array[0..4] of Integer;
  w_reason : array[0..4] of string;
begin
  EMP_ATTENDING_SEL.Filter := 'W_KIND = 4';
  EMP_ATTENDING_SEL.Filtered := True;
  cnt := EMP_ATTENDING_SEL.RecordCount;
  gridAttend.DataController.GotoFirst;
  dxMemData1.Close;
  dxMemData1.Open;
  if cnt > 5 then cnt := 5;

  for i := 0 to cnt - 1 do begin
    wdate[i] := gridAttendWDATE.EditValue;
    in_time[i] := gridAttendIN_TIME.EditValue;
    out_time[i] := gridAttendOUT_TIME.EditValue;
    w_hour[i] := gridAttendW_HOUR.EditValue;
    w_reason[i] := gridAttendW_REASON.EditValue;
    gridAttend.DataController.GotoNext;
  end;
  EMP_ATTENDING_SEL.Filtered := False;
  dxMemData1.Append;
  dxMemData1year_month.Value := IntToStr(spYear.EditValue) + '. ' + IntToStr(icbMonth.EditValue);
  dxMemData1assoc.Value := '';
  dxMemData1jikgub.Value := '자치사무원';
  dxMemData1ename.Value := '';

  dxMemData1wdate.Value := wdate[0];
  dxMemData1in_time.Value := in_time[0];
  dxMemData1out_time.Value := out_time[0];
  dxMemData1w_hour.Value := w_hour[0];
  dxMemData1w_reason.Value := w_reason[0];
  if cnt > 1 then begin
    dxMemData1wdate2.Value := wdate[1];
    dxMemData1in_time2.Value := in_time[1];
    dxMemData1out_time2.Value := out_time[1];
    dxMemData1w_hour2.Value := w_hour[1];
    dxMemData1w_reason2.Value := w_reason[1];
  end;
  if cnt > 2 then begin
    dxMemData1wdate3.Value := wdate[2];
    dxMemData1in_time3.Value := in_time[2];
    dxMemData1out_time3.Value := out_time[2];
    dxMemData1w_hour3.Value := w_hour[2];
    dxMemData1w_reason3.Value := w_reason[2];
  end;
  if cnt > 3 then begin
    dxMemData1wdate4.Value := wdate[3];
    dxMemData1in_time4.Value := in_time[3];
    dxMemData1out_time4.Value := out_time[3];
    dxMemData1w_hour4.Value := w_hour[3];
    dxMemData1w_reason4.Value := w_reason[3];
  end;
  if cnt > 4 then begin
    dxMemData1wdate5.Value := wdate[4];
    dxMemData1in_time5.Value := in_time[4];
    dxMemData1out_time5.Value := out_time[4];
    dxMemData1w_hour5.Value := w_hour[4];
    dxMemData1w_reason5.Value := w_reason[4];
  end;

  dxMemData1total_hour.Value := gridAttend.DataController.Summary.FooterSummaryValues[0];
  dxMemData1confirmer.Value := '이 상 붕';
  dxMemData1.Post;

  frxReport1.ShowReport;

end;

procedure TfmEmpAttend.btnNewClick(Sender: TObject);
var
  w_hour : Integer;
begin
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('select id from emp_attending where wdate = :wdate;');
  UniQuery1.ParamByName('wdate').Value := wdate.Date;
  UniQuery1.Open;
  DataSource1.DataSet.Refresh;
  if UniQuery1.RecordCount > 0 then begin
    ShowMessage('오늘의 출석자료가 이미 있습니다.');
    Exit;
  end else begin
    if not VarIsNull(out_time.EditValue) then
      w_hour := HoursBetween(in_time.EditValue, out_time.EditValue)
    else
      w_hour := 0;
    EMP_ATTENDING_INS.ParamByName('WDATE').Value := wdate.Date;
    EMP_ATTENDING_INS.ParamByName('IN_TIME').Value := Now;
    EMP_ATTENDING_INS.ParamByName('OUT_TIME').Clear;
    EMP_ATTENDING_INS.ParamByName('W_KIND').Value := 0;
    EMP_ATTENDING_INS.ParamByName('W_REASON').Value := '';
    EMP_ATTENDING_INS.ParamByName('W_WEEK').Value := DayOfWeek(wdate.Date);
    EMP_ATTENDING_INS.ParamByName('W_HOUR').Value := w_hour;
    EMP_ATTENDING_INS.ExecProc;
    ds_EMP_ATTENDING_SEL.DataSet.Refresh;
  end;
  btnRetrieve.Click;
end;

procedure TfmEmpAttend.btnDefaultClick(Sender: TObject);
begin
  in_time.EditValue := StrToTime('09:00');
  out_time.EditValue := StrToTime('17:00');
  w_hour.EditValue := 8;
  icbKind.EditValue := 0;
  btnSave.Click;
end;

procedure TfmEmpAttend.btnDeleteClick(Sender: TObject);
var
  id, top_row : Integer;
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    id := gridAttendID.EditValue;
    top_row := gridAttend.Controller.TopRowIndex;
    UniQuery1.SQL.Clear;
    UniQuery1.SQL.Add('delete from emp_attending where (id = :id);');
    UniQuery1.ParamByName('id').Value := id;
    UniQuery1.ExecSQL;
    ds_EMP_ATTENDING_SEL.DataSet.Refresh;
  end;
end;

procedure TfmEmpAttend.btnIn2Click(Sender: TObject);
var
  w_hour : Integer;
begin
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('select id from emp_attending where wdate = :wdate;');
  UniQuery1.ParamByName('wdate').Value := Date;
  UniQuery1.Open;
  DataSource1.DataSet.Refresh;
  if UniQuery1.RecordCount > 0 then begin
    ShowMessage('오늘의 출석자료가 이미 있습니다.');
    Exit;
  end else begin
    if not VarIsNull(out_time.EditValue) then
      w_hour := HoursBetween(in_time.EditValue, out_time.EditValue)
    else
      w_hour := 0;
    EMP_ATTENDING_INS.ParamByName('WDATE').Value := Date;
    EMP_ATTENDING_INS.ParamByName('IN_TIME').Value := Now;
    EMP_ATTENDING_INS.ParamByName('OUT_TIME').Clear;
    EMP_ATTENDING_INS.ParamByName('W_KIND').Value := 0;
    EMP_ATTENDING_INS.ParamByName('W_REASON').Value := '';
    EMP_ATTENDING_INS.ParamByName('W_WEEK').Value := DayOfWeek(Date);
    EMP_ATTENDING_INS.ParamByName('W_HOUR').Value := 0;
    EMP_ATTENDING_INS.ExecProc;
    ds_EMP_ATTENDING_SEL.DataSet.Refresh;
  end;
  btnRetrieve.Click;
end;

procedure TfmEmpAttend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEmpAttend.FormShow(Sender: TObject);
begin
  spYear.EditValue := YearOf(Date);
  icbMonth.EditValue := MonthOf(Date);
  btnRetrieve.Click;
end;

procedure TfmEmpAttend.EditData;
begin
  wdate.Date := gridAttendWDATE.EditValue;
  in_time.EditValue := gridAttendIN_TIME.EditValue;
  out_time.EditValue := gridAttendOUT_TIME.EditValue;
  w_hour.EditValue := gridAttendW_HOUR.EditValue;
  w_week.EditValue := gridAttendW_WEEK.EditValue;
  icbKind.EditValue := gridAttendW_KIND.EditValue;
  Memo1.Text := VarToStrDef(gridAttendW_REASON.EditValue, '');
end;

procedure TfmEmpAttend.gridAttendFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  EditData;
end;

procedure TfmEmpAttend.in_timePropertiesEditValueChanged(Sender: TObject);
begin
  if not VarIsNull(in_time.EditValue) and not VarIsNull(out_time.EditValue) then
    w_hour.EditValue := HoursBetween(in_time.EditValue, out_time.EditValue);
end;

procedure TfmEmpAttend.out_timePropertiesEditValueChanged(Sender: TObject);
begin
  if not VarIsNull(out_time.EditValue) then begin
    w_hour.EditValue := HoursBetween(in_time.EditValue, out_time.EditValue);
    if w_hour.EditValue = 8 then
      icbKind.EditValue := 0
    else if w_hour.EditValue > 8 then
      icbKind.EditValue := 4
    else if w_hour.EditValue < 8 then
      icbKind.EditValue := 5;
  end;
end;

procedure TfmEmpAttend.wdatePropertiesCloseUp(Sender: TObject);
begin
  w_week.EditValue := DayOfWeek(wdate.Date);
end;

initialization RegisterClasses([TfmEmpAttend]);
end.
