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
  cxDropDownEdit, cxCalendar, cxTimeEdit, cxSpinEdit;

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
    sdate: TcxDateEdit;
    edate: TcxDateEdit;
    btnRetrieve: TcxButton;
    btnOut: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnIn: TcxButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnInClick(Sender: TObject);
    procedure btnOutClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure gridAttendFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
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
  EMP_ATTENDING_SEL.ParamByName('SDATE').Value := sdate.Date;
  EMP_ATTENDING_SEL.ParamByName('EDATE').Value := edate.Date;
  EMP_ATTENDING_SEL.Open;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
end;

procedure TfmEmpAttend.btnSaveClick(Sender: TObject);
begin
  EMP_ATTENDING_UPD_ALL.ParamByName('ID').Value := gridAttendID.EditValue;
  EMP_ATTENDING_UPD_ALL.ParamByName('IN_TIME').Value := in_time.EditValue;
  EMP_ATTENDING_UPD_ALL.ParamByName('OUT_TIME').Value := out_time.EditValue;
  EMP_ATTENDING_UPD_ALL.ParamByName('W_KIND').Value := icbKind.EditValue;
  EMP_ATTENDING_UPD_ALL.ParamByName('W_REASON').Value := Memo1.Text;
  EMP_ATTENDING_UPD_ALL.ParamByName('W_WEEK').Value := DayOfWeek(gridAttendWDATE.EditValue);
  EMP_ATTENDING_UPD_ALL.ParamByName('W_HOUR').Value := 0;
  EMP_ATTENDING_UPD_ALL.ExecProc;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
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

procedure TfmEmpAttend.btnEditClick(Sender: TObject);
var
  week_name : array[0..6] of string;
  dw : Integer;
begin
  week_name[0] := '일';
  week_name[1] := '월';
  week_name[2] := '화';
  week_name[3] := '수';
  week_name[4] := '목';
  week_name[5] := '금';
  week_name[6] := '토';
  dw := DayOfWeek(gridAttendWDATE.EditValue)-1;
  ShowMessage(week_name[dw]);
end;

procedure TfmEmpAttend.btnInClick(Sender: TObject);
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
    //EMP_ATTENDING_INS(:WDATE, :IN_TIME, :OUT_TIME, :W_KIND, :W_REASON, :W_WEEK)
    EMP_ATTENDING_INS.ParamByName('WDATE').Value := Date;
    EMP_ATTENDING_INS.ParamByName('IN_TIME').Value := Now;
    EMP_ATTENDING_INS.ParamByName('OUT_TIME').Clear;
    EMP_ATTENDING_INS.ParamByName('W_KIND').Value := 0;
    EMP_ATTENDING_INS.ParamByName('W_REASON').Value := '';
    EMP_ATTENDING_INS.ParamByName('W_WEEK').Value := WeekOf(Date);
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
  sdate.Date := StartOfTheMonth(Date);
  edate.Date := Date;
  btnRetrieve.Click;
end;

procedure TfmEmpAttend.EditData;
begin
  in_time.EditValue := gridAttendIN_TIME.EditValue;
  out_time.EditValue := gridAttendOUT_TIME.EditValue;
  icbKind.EditValue := gridAttendW_KIND.EditValue;
  Memo1.Text := VarToStrDef(gridAttendW_REASON.EditValue, '');
end;

procedure TfmEmpAttend.gridAttendFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  EditData;
end;

initialization RegisterClasses([TfmEmpAttend]);
end.
