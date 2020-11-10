unit UfmLectureCopyDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DB, MemDS, DBAccess, Uni, DateUtils;

type
  TfmLectureCopyDialog = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    speYear2: TSpinEdit;
    speStep2: TSpinEdit;
    btnCopy: TBitBtn;
    Label3: TLabel;
    UniQuery1: TUniQuery;
    LECTURE_ACTIVE_DEL_MONTH: TUniStoredProc;
    SP_LECTURE_COPY: TUniStoredProc;
    LECTURE_ACTIVE_SEL: TUniStoredProc;
    LECTURE_ACTIVE_SELID: TStringField;
    LECTURE_ACTIVE_SELL_YEAR: TIntegerField;
    LECTURE_ACTIVE_SELL_STEP: TIntegerField;
    LECTURE_ACTIVE_SELL_NAME: TStringField;
    LECTURE_ACTIVE_SELL_TIME_WEEK: TIntegerField;
    LECTURE_ACTIVE_SELL_DAYS: TStringField;
    LECTURE_ACTIVE_SELL_MONTH: TIntegerField;
    LECTURE_ACTIVE_SELSTART_DATE: TStringField;
    LECTURE_ACTIVE_SELTEACHER_ID: TStringField;
    LECTURE_ACTIVE_SELL_PRICE: TFloatField;
    LECTURE_ACTIVE_SELCLASSROOM_ID: TStringField;
    LECTURE_ACTIVE_SELIS_ACTIVE: TIntegerField;
    LECTURE_ACTIVE_SELL_DURATION: TStringField;
    LECTURE_ACTIVE_SELL_TIME: TFloatField;
    LECTURE_ACTIVE_SELL_TIME_START: TSmallintField;
    LECTURE_ACTIVE_SELL_TIME_END: TSmallintField;
    LECTURE_ACTIVE_SELEND_DATE: TStringField;
    LECTURE_ACTIVE_SELPLAN_MEN: TSmallintField;
    LECTURE_ACTIVE_SELREGIST_MEN: TSmallintField;
    LECTURE_ACTIVE_SELWAIT_MEN: TSmallintField;
    LECTURE_ACTIVE_SELDROP_MEN: TSmallintField;
    LECTURE_ACTIVE_SELTOTAL_DAY: TIntegerField;
    LECTURE_ACTIVE_SELTOTAL_TIME: TFloatField;
    LECTURE_ACTIVE_SELTEACHER_PERCENT: TSmallintField;
    LECTURE_ACTIVE_SELCALC_KIND: TSmallintField;
    LECTURE_ACTIVE_SELMONTH1_DAYS: TSmallintField;
    LECTURE_ACTIVE_SELMONTH2_DAYS: TSmallintField;
    LECTURE_ACTIVE_SELMONTH3_DAYS: TSmallintField;
    LECTURE_ACTIVE_SELL_IDX: TSmallintField;
    LECTURE_ACTIVE_SELL_UID: TIntegerField;
    LECTURE_ACTIVE_SELMONTH1_PRICE: TFloatField;
    LECTURE_ACTIVE_SELMONTH2_PRICE: TFloatField;
    LECTURE_ACTIVE_SELMONTH3_PRICE: TFloatField;
    procedure btnCopyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function CheckLectureExists(l_year, l_step: Integer): Boolean;
    procedure RunLectureCopy;
    procedure UpdateLectureDays;
    function CountWeek(StartDate, EndDate: TDate; CheckWeek: Integer): Integer;
    procedure UpdateLectureDayTime(lecture_id: string; TOTAL_DAY: INTEGER;
      TOTAL_TIME: DOUBLE);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureCopyDialog: TfmLectureCopyDialog;

implementation

uses Udm;

{$R *.dfm}

procedure TfmLectureCopyDialog.btnCopyClick(Sender: TObject);
begin
  if (speYear.Value = speYear2.Value) and (speStep.Value = speStep2.Value) then begin
    ShowMessage('원본 리스트의 월분과 대상 리스트의 월분이 동일합니다.');
    Exit;
  end;
  if CheckLectureExists(speYear.Value, speStep.Value) = False then begin
    ShowMessage('원본 데이터가 없습니다.');
    Exit;
  end;
  if CheckLectureExists(speYear2.Value, speStep2.Value) = True then begin
    if Application.MessageBox('대상월분에 이미 데이터가 있습니다. ' + #13#10 +
      '대상월분의 자료를 삭제한 후에 복사할까요?', '자료삭제', MB_OKCANCEL)
      = IDOK then
    begin
      LECTURE_ACTIVE_DEL_MONTH.ParamByName('L_YEAR').Value := speYear2.Value;
      LECTURE_ACTIVE_DEL_MONTH.ParamByName('L_STEP').Value := speStep2.Value;
      LECTURE_ACTIVE_DEL_MONTH.ExecProc;
      RunLectureCopy;
      UpdateLectureDays;
      ShowMessage('대상분기의 강좌를 복사했습니다.');
      ModalResult := mrOk;
    end;
  end else begin
    RunLectureCopy;
    UpdateLectureDays;
    ShowMessage('대상분기의 강좌를 복사했습니다.');
    ModalResult := mrOk;
  end;
end;

procedure TfmLectureCopyDialog.UpdateLectureDays;
var
  i, cnt : Integer;
  t, tcnt, WeekDayNo : Integer;
  strList : TStringList;
  WeekDays, LectureID : string;
  StartDate, EndDate : TDateTime;
  lecture_time, total_time : Double;
begin
  LECTURE_ACTIVE_SEL.ParamByName('IL_YEAR').Value := speYear2.Value;
  LECTURE_ACTIVE_SEL.ParamByName('IL_STEP').Value := speStep2.Value;
  LECTURE_ACTIVE_SEL.Active := True;
  LECTURE_ACTIVE_SEL.Refresh;
  LECTURE_ACTIVE_SEL.First;
  for i := 0 to LECTURE_ACTIVE_SEL.RecordCount - 1 do begin
    LectureID := LECTURE_ACTIVE_SELID.AsString;
    StartDate := LECTURE_ACTIVE_SELSTART_DATE.AsDateTime;
    EndDate   := LECTURE_ACTIVE_SELEND_DATE.AsDateTime;
    WeekDays  := LECTURE_ACTIVE_SELL_DAYS.AsString;
    lecture_time := LECTURE_ACTIVE_SELL_TIME.AsFloat;

    strList := TStringList.Create;
    strList.CommaText := WeekDays;
    tcnt := 0;
    for t := 0 to strList.Count - 1 do begin
      if strList[t] = '월' then WeekDayNo := 1;  //1=월, 2=화, 3=수, 4=목, 5=금, 6=토, 7=일
      if strList[t] = '화' then WeekDayNo := 2;
      if strList[t] = '수' then WeekDayNo := 3;
      if strList[t] = '목' then WeekDayNo := 4;
      if strList[t] = '금' then WeekDayNo := 5;
      if strList[t] = '토' then WeekDayNo := 6;
      if strList[t] = '일' then WeekDayNo := 7;
      cnt := CountWeek(StartDate, EndDate, WeekDayNo);
      tcnt := tcnt + cnt;
    end;
    total_time := tcnt * lecture_time;
    UpdateLectureDayTime(LectureID, tcnt, total_time);

    LECTURE_ACTIVE_SEL.Next;
  end;
end;

procedure TfmLectureCopyDialog.UpdateLectureDayTime(lecture_id : string; TOTAL_DAY : INTEGER; TOTAL_TIME : DOUBLE);
var
  SP : TUniStoredProc;
begin
  SP := TUniStoredProc.Create(self);
  try
    SP.Connection := dm.UniConnection1;
    SP.StoredProcName := 'SP_UPDATE_LECTURE_DAYTIME';
    SP.PrepareSQL(False);
    SP.ParamByName('LECTURE_ID').AsString := lecture_id;
    SP.ParamByName('TOTAL_DAY').AsInteger := TOTAL_DAY;
    SP.ParamByName('TOTAL_TIME').AsFloat := TOTAL_TIME;
    SP.ExecProc;
  finally
    SP.Free;
  end;
end;

function TfmLectureCopyDialog.CountWeek(StartDate, EndDate : TDate; CheckWeek : Integer) : Integer;
var
  DayNum, StartWeek : Integer;
  i : Integer;
  dno : Integer;
begin
  dno := 0;
  for i := Trunc(Int(StartDate)) to Trunc(Int(EndDate)) do begin
    if DayOfTheWeek(i) = CheckWeek then
      inc(dno);
  end;
  Result := dno;
end;

procedure TfmLectureCopyDialog.RunLectureCopy;
var
  intID : Int64;
  sdate, edate : TDateTime;
begin
  case speStep2.Value of
    1: begin
      sdate := EncodeDate(speYear2.Value, 1, 1);
      edate := EndOfAMonth(speYear2.Value, 3);
    end;
    2: begin
      sdate := EncodeDate(speYear2.Value, 4, 1);
      edate := EndOfAMonth(speYear2.Value, 6);
    end;
    3: begin
      sdate := EncodeDate(speYear2.Value, 7, 1);
      edate := EndOfAMonth(speYear2.Value, 9);
    end;
    4: begin
      sdate := EncodeDate(speYear2.Value, 10, 1);
      edate := EndOfAMonth(speYear2.Value, 12);
    end;
  end;
  intID := StrToInt64(FormatDateTime('yyyymmddhhnnsszzz', now));

  SP_LECTURE_COPY.ParamByName('L_YEAR').Value := speYear.Value;
  SP_LECTURE_COPY.ParamByName('L_STEP').Value := speStep.Value;
  SP_LECTURE_COPY.ParamByName('N_YEAR').Value := speYear2.Value;
  SP_LECTURE_COPY.ParamByName('N_STEP').Value := speStep2.Value;
  SP_LECTURE_COPY.ParamByName('NEW_ID').Value := intID;
  SP_LECTURE_COPY.ParamByName('START_DATE').Value := DateToStr(sdate);
  SP_LECTURE_COPY.ParamByName('END_DATE').Value := DateToStr(edate);
  SP_LECTURE_COPY.ExecProc;
end;

function TfmLectureCopyDialog.CheckLectureExists(l_year, l_step : Integer) : Boolean;
begin
  UniQuery1.ParamByName('l_year').Value := l_year;
  UniQuery1.ParamByName('l_step').Value := l_step;
  UniQuery1.Active := True;
  UniQuery1.Refresh;
  if UniQuery1.FieldByName('cnt').Value > 0 then
    Result := True
  else
    Result := False;
end;
procedure TfmLectureCopyDialog.FormShow(Sender: TObject);
begin
  speYear.Value := YearOf(Date);
  speYear2.Value := YearOf(Date);
end;

end.
