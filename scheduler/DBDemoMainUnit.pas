unit DBDemoMainUnit;

interface

{$I cxVer.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, DemoBasicMain, cxStyles, cxGraphics, cxEdit,
  cxScheduler, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, DB, cxSchedulerStorage,
  cxSchedulerDBStorage, cxLookAndFeels, Menus, StdCtrls,
  ExtCtrls, cxControls, ComCtrls, cxSchedulerWeekView, Math, 
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerYearView,
  cxLookAndFeelPainters, cxContainer, cxCheckBox, cxButtons,
  cxSchedulerHolidays, cxSchedulerGanttView, cxGroupBox, dxmdaset, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxSchedulerPainter, Buttons,
  cxExportSchedulerLink, MemDS, DBAccess, Uni, cxSchedulerRecurrence,
  cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor,
  dxSkinMetropolis, dxSkinMetropolisDark, cxClasses, DateUtils, UfrmYearQuarter,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxSchedulerLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid;

type
  TDBScheduleForm = class(TDemoBasicMainForm)
    SchedulerDataSource: TDataSource;
    SchedulerDBStorage: TcxSchedulerDBStorage;
    cxCheckBox1: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    mdEvents: TdxMemData;
    mdEventsID: TAutoIncField;
    mdEventsParentID: TIntegerField;
    mdEventsType: TIntegerField;
    mdEventsStart: TDateTimeField;
    mdEventsFinish: TDateTimeField;
    mdEventsOptions: TIntegerField;
    mdEventsCaption: TStringField;
    mdEventsRecurrenceIndex: TIntegerField;
    mdEventsRecurrenceInfo: TBlobField;
    mdEventsResourceID: TBlobField;
    mdEventsLocation: TStringField;
    mdEventsMessage: TStringField;
    mdEventsReminderDate: TDateTimeField;
    mdEventsReminderMinutes: TIntegerField;
    mdEventsState: TIntegerField;
    mdEventsLabelColor: TIntegerField;
    mdEventsActualStart: TDateTimeField;
    mdEventsActualFinish: TDateTimeField;
    mdEventsSyncIDField: TStringField;
    Panel1: TPanel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    q_LECTURE_VIEW: TUniQuery;
    q_LECTURE_VIEWID: TStringField;
    q_LECTURE_VIEWDONG_ID: TStringField;
    q_LECTURE_VIEWL_YEAR: TIntegerField;
    q_LECTURE_VIEWL_STEP: TIntegerField;
    q_LECTURE_VIEWL_NAME: TStringField;
    q_LECTURE_VIEWL_TIME_WEEK: TIntegerField;
    q_LECTURE_VIEWL_DAYS: TStringField;
    q_LECTURE_VIEWL_MONTH: TIntegerField;
    q_LECTURE_VIEWTEACHER_ID: TStringField;
    q_LECTURE_VIEWL_PRICE: TFloatField;
    q_LECTURE_VIEWCLASSROOM_ID: TStringField;
    q_LECTURE_VIEWIS_ACTIVE: TIntegerField;
    q_LECTURE_VIEWL_DURATION: TStringField;
    q_LECTURE_VIEWT_NAME: TStringField;
    q_LECTURE_VIEWBANK_NAME: TStringField;
    q_LECTURE_VIEWBANK_NO: TStringField;
    q_LECTURE_VIEWL_TIME: TFloatField;
    q_LECTURE_VIEWL_TIME_START: TSmallintField;
    q_LECTURE_VIEWL_TIME_END: TSmallintField;
    q_LECTURE_VIEWC_NAME: TStringField;
    q_LECTURE_VIEWROOM_IDX: TIntegerField;
    q_LECTURE_VIEWSTART_DATE: TStringField;
    q_LECTURE_VIEWEND_DATE: TStringField;
    ds_LECTURE_VIEW: TDataSource;
    frmYearQuarter1: TfrmYearQuarter;
    btnRegenerate: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btnPrint: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxSchedulerReportLink;
    gridRoom: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridRoomID: TcxGridDBColumn;
    gridRoomDONG_ID: TcxGridDBColumn;
    gridRoomC_NAME: TcxGridDBColumn;
    gridRoomIDX: TcxGridDBColumn;
    pnl1: TPanel;
    chkAllRoom: TCheckBox;
    chkTeacher: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure chDataModeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Change(Sender: TObject);
    procedure btnRegenerateClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure gridRoomFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    FEventCount: Integer;
    FMaxID: Integer;
    function GetClassRoomColor(room_idx: Integer): Int64;
  public
    { Public declarations }
  end;

var
  DBScheduleForm: TDBScheduleForm;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TDBScheduleForm.FormCreate(Sender: TObject);
var
  ADate: TDateTime;
  I, mon: Integer;
begin
  inherited;
  frmYearQuarter1.InitYearMonth;
  mon := MonthOf(Date);
  case mon of
    1..3 : frmYearQuarter1.cbQuarter.ItemIndex := 0;
    4..6 : frmYearQuarter1.cbQuarter.ItemIndex := 1;
    7..9 : frmYearQuarter1.cbQuarter.ItemIndex := 2;
    10..12 : frmYearQuarter1.cbQuarter.ItemIndex := 3;
  end;
  ADate := Date; // EncodeDate(2005, 9, 30);
  Scheduler.GotoDate(ADate);
  ADate := ADate + Scheduler.OptionsView.WorkStart;
  Scheduler.SelectTime(ADate, ADate, nil);
  Scheduler.SelectWorkDays(ADate);
//  FMaxID := 0;
//  FEventCount := SchedulerDBStorage.EventCount;
//  for I := 0 to FEventCount - 1 do
//    FMaxID := Max(FMaxID, SchedulerDBStorage.Events[I].ID);
end;

procedure TDBScheduleForm.btnPrintClick(Sender: TObject);
begin
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TDBScheduleForm.btnRegenerateClick(Sender: TObject);
var
  i, ii, d, t, cnt, cnt2, col_no, row_no, WeekDayNo : integer;
  l_id, l_days, l_name, l_dur, teacher_name, room_name : string;
  time_start, time_count, room_idx : integer;
  l_hour, stime : Double;
  strList : TStringList;
  ClassDate, lStartDate, lEndDate : TDateTime;
  class_str : string;
  todayno : Integer;
begin
  Screen.Cursor := crHourGlass;
  mdEvents.Close;
  mdEvents.Open;
  q_LECTURE_VIEW.DisableControls;
  q_LECTURE_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
  q_LECTURE_VIEW.ParamByName('l_year').AsInteger := frmYearQuarter1.IYear;
  q_LECTURE_VIEW.ParamByName('l_step').AsInteger := frmYearQuarter1.IQuater;
  q_LECTURE_VIEW.Active := True;
  ds_LECTURE_VIEW.DataSet.Refresh;
  if chkAllRoom.Checked = False then begin
    q_LECTURE_VIEW.Filter := 'classroom_id = "' + gridRoomID.EditValue + '"';
    q_LECTURE_VIEW.Filtered := True;
  end else begin
    q_LECTURE_VIEW.Filter := '';
    q_LECTURE_VIEW.Filtered := True;
  end;
  cnt := q_LECTURE_VIEW.RecordCount;
  q_LECTURE_VIEW.First;
  lStartDate := StrToDate(Format('%.4d-%.2d-01', [YearOf(Date),MonthOf(Date)]));
  lEndDate := EndOfAMonth(YearOf(Date),MonthOf(Date));
  for i := 0 to cnt - 1 do begin
    //l_id          := q_LECTURE_VIEWID.AsString;                 //강좌ID
    l_name        := q_LECTURE_VIEWL_NAME.AsString;             //강좌명
    teacher_name  := q_LECTURE_VIEWT_NAME.AsString;             //강사명
    l_dur         := q_LECTURE_VIEWL_DURATION.AsString;      //시간(13:00 ~ 15:00)
    l_days        := q_LECTURE_VIEWL_DAYS.AsString;         //요일(월,목)
    l_hour        := q_LECTURE_VIEWL_TIME.AsFloat;          //강좌시간(2, 2.5)
    room_name     := q_LECTURE_VIEWC_NAME.AsString;         //강의실이름
    room_idx      := q_LECTURE_VIEWROOM_IDX.AsInteger;  //강의실index
    stime := StrToFloat(Copy(l_dur, 1, 2)) + StrToFloat(Copy(l_dur, 4, 2)) / 60;
    strList := TStringList.Create;
    strList.CommaText := l_days;
    d := 0;
    WeekDayNo := 1;
    for ii := Trunc(lStartDate) to Trunc(lEndDate) do begin
      for t := 0 to strList.Count - 1 do begin
        if strList[t] = '월' then WeekDayNo := 1;  //1=월, 2=화, 3=수, 4=목, 5=금, 6=토, 7=일
        if strList[t] = '화' then WeekDayNo := 2;
        if strList[t] = '수' then WeekDayNo := 3;
        if strList[t] = '목' then WeekDayNo := 4;
        if strList[t] = '금' then WeekDayNo := 5;
        if strList[t] = '토' then WeekDayNo := 6;
        if strList[t] = '일' then WeekDayNo := 7;

        if DayOfTheWeek(ii) = WeekDayNo then begin
          ClassDate := IncDay(lStartDate, d);
          with SchedulerDBStorage.createEvent do begin
            Caption := l_name;
            Start := ClassDate + stime * HourToTime;
            Duration := l_hour * 60 * MinuteToTime;
            State := tlsBusy;
            if chkTeacher.Checked = True then
              Location := teacher_name;
            //Message := teacher_name;
            LabelColor := GetClassRoomColor(room_idx);
            Post;
          end;
        end;
      end;
      Inc(d);
    end;
    q_LECTURE_VIEW.Next;
  end;
  q_LECTURE_VIEW.EnableControls;
  Screen.Cursor := crDefault;
end;

function TDBScheduleForm.GetClassRoomColor(room_idx : Integer) : Int64;
var
  color_value : Int64;
begin
  case room_idx of
    1: color_value := 8689404;
    2: color_value := 14982788;
    3: color_value := 6610596;
    4: color_value := 13952740;
    5: color_value := 7649020;
    6: color_value := 16051844;
    7: color_value := 8703700;
    8: color_value := 16033476;
    9: color_value := 12897956;
    10: color_value := 7661308;
  end;
  Result := color_value;
end;

procedure TDBScheduleForm.gridRoomFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if chkAllRoom.Checked = False then
    btnRegenerate.Click;
end;

procedure TDBScheduleForm.chDataModeClick(Sender: TObject);
begin
  SchedulerDBStorage.SmartRefresh := (Sender as TcxCheckBox).Checked;
end;

procedure TDBScheduleForm.ComboBox2Change(Sender: TObject);
begin
  if not Scheduler.ViewWeek.Active then
    AnchorDate := Scheduler.SelectedDays[0];
  Scheduler.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
  case ComboBox2.ItemIndex of
    0:
      Scheduler.ViewDay.Active := True;
    1:
      Scheduler.SelectWorkDays(Date);
    2:
      Scheduler.ViewWeek.Active := True;
    3:
      Scheduler.GoToDate(Scheduler.SelectedDays[0], vmMonth);
    4:
      Scheduler.ViewTimeGrid.Active := True;
    5:
      Scheduler.ViewYear.Active := True;
  end;
end;

procedure TDBScheduleForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
initialization RegisterClasses([TDBScheduleForm]);

end.
