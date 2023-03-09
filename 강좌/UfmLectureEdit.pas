unit UfmLectureEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxSpinEdit, StdCtrls, Buttons, cxImageComboBox, ComCtrls, dxCore,
  cxDateUtils, DateUtils, dxSkinOffice2013White, Uni, UniProvider,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, ExtCtrls;

type
  TfmLectureEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    edtWeekTemp: TcxTextEdit;
    edtWeekCount: TcxTextEdit;
    edtYear: TcxSpinEdit;
    edtKisu: TcxSpinEdit;
    edtName: TcxTextEdit;
    edtStartTime: TcxLookupComboBox;
    edtEndTime: TcxLookupComboBox;
    edtMonth: TcxSpinEdit;
    edtStartDate: TcxDateEdit;
    edtTeacher: TcxLookupComboBox;
    edtClassroom: TcxLookupComboBox;
    edtTime: TcxTextEdit;
    edtTimeStr: TcxTextEdit;
    edtEndDate: TcxDateEdit;
    Label4: TLabel;
    edtPrice: TcxCurrencyEdit;
    Label5: TLabel;
    edtMen: TcxSpinEdit;
    Label11: TLabel;
    edtSudangPercent: TEdit;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    cbChangeMonth: TcxImageComboBox;
    PanelMonthDays: TPanel;
    lblMonth1: TLabel;
    lblMonth2: TLabel;
    lblMonth3: TLabel;
    edtThirdMonth: TcxSpinEdit;
    cbChangeKind: TcxImageComboBox;
    lblMonthDays: TLabel;
    edtSecondMonth: TcxSpinEdit;
    edtIDX: TcxSpinEdit;
    Label13: TLabel;
    lcbLecture: TcxLookupComboBox;
    lblMon1: TLabel;
    edtMonth1Price: TcxCurrencyEdit;
    edtMonth2Price: TcxCurrencyEdit;
    lblMon2: TLabel;
    edtMonth3Price: TcxCurrencyEdit;
    lblMon3: TLabel;
    Label16: TLabel;
    edtTeacher2: TcxLookupComboBox;
    Label17: TLabel;
    edtTeacher3: TcxLookupComboBox;
    Label18: TLabel;
    IS_ACTIVE: TcxImageComboBox;
    Label19: TLabel;
    edtMonth1Days: TcxCurrencyEdit;
    Label20: TLabel;
    edtMonth2Days: TcxCurrencyEdit;
    Label21: TLabel;
    edtMonth3Days: TcxCurrencyEdit;
    Label22: TLabel;
    edtMonthTotalDays: TcxCurrencyEdit;
    procedure CheckBox1Click(Sender: TObject);
    procedure edtStartTimePropertiesEditValueChanged(Sender: TObject);
    procedure edtEndTimePropertiesEditValueChanged(Sender: TObject);
    procedure edtStartDatePropertiesEditValueChanged(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtEndDatePropertiesEditValueChanged(Sender: TObject);
    procedure cbChangeMonthPropertiesEditValueChanged(Sender: TObject);
    procedure cbChangeKindPropertiesEditValueChanged(Sender: TObject);
    procedure lcbLecturePropertiesEditValueChanged(Sender: TObject);
    procedure edtMonth1PricePropertiesEditValueChanged(Sender: TObject);
    procedure edtKisuPropertiesEditValueChanged(Sender: TObject);
    procedure edtTeacherPropertiesEditValueChanged(Sender: TObject);
    procedure edtMonth1DaysPropertiesEditValueChanged(Sender: TObject);
  private
    procedure GetTimeDuration;
    function GetWorkingDaysBetween(const StartDate, EndDate: TDateTime;
      dayweek: integer): Integer;
    { Private declarations }
  public
    { Public declarations }
    IsEditMode : boolean;
    curr_lecture_id : string;
    month1_daycount, month2_daycount, month3_daycount : Integer;
    procedure GetMonthDuration;
  end;

var
  fmLectureEdit: TfmLectureEdit;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmLectureEdit.btnSaveClick(Sender: TObject);
var
  t, i, cnt, day_cnt, check_cnt, cYear, cKisu, stime, etime : integer;
  roomid, teacher_id, weekday, lname : string;
  query : TUniQuery;
  strList:TStringList;
begin
  if edtName.Text = '' then begin
    ShowMessage('강좌명을 선택하세요.');
    lcbLecture.SetFocus;
    Exit;
  end;
  if edtWeekTemp.Text = '' then begin
    ShowMessage('요일을 선택하세요.');
    GroupBox2.SetFocus;
    Exit;
  end;
  if edtStartTime.Text = '' then begin
    ShowMessage('시작시간을 선택하세요.');
    edtStartTime.SetFocus;
    Exit;
  end;
  if edtEndTime.Text = '' then begin
    ShowMessage('종료시간을 선택하세요.');
    edtEndTime.SetFocus;
    Exit;
  end;
  if edtStartDate.Text = '' then begin
    ShowMessage('개강일자를 선택하세요.');
    edtStartDate.SetFocus;
    Exit;
  end;
  if edtEndDate.Text = '' then begin
    ShowMessage('종강일자를 선택하세요.');
    edtEndDate.SetFocus;
    Exit;
  end;
//  if edtTeacher.Text = '' then begin
//    ShowMessage('강사를 선택하세요.');
//    edtTeacher.SetFocus;
//    Exit;
//  end;
  if edtClassroom.Text = '' then begin
    ShowMessage('강의실을 선택하세요.');
    edtClassroom.SetFocus;
    Exit;
  end;
  strList := TStringList.Create;
  query := TUniQuery.Create(self);
  try
    cYear := edtYear.Value;
    cKisu := edtKisu.Value;
    stime := edtStartTime.EditValue;
    etime := edtEndTime.EditValue;
    roomid := edtClassroom.EditValue;
//    teacher_id := edtTeacher.EditValue;
    weekday := edtWeekTemp.Text;
    strList.CommaText := weekday;
    day_cnt := strList.Count;
    ModalResult := mrOk;
  finally
    query.Free;
    strList.Free;
  end;
end;

procedure TfmLectureEdit.cbChangeKindPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cbChangeKind.EditValue = 0 then begin
    lblMonthDays.Caption := '0일';
    edtSecondMonth.Text := '0';
    edtThirdMonth.EditValue := 0;
  end else begin
    GetMonthDuration;
  end;
end;

procedure TfmLectureEdit.cbChangeMonthPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cbChangeMonth.EditValue = 0 then begin
    lblMonthDays.Caption := '0일';
    edtSecondMonth.Text := '0';
    edtThirdMonth.EditValue := 0;
    PanelMonthDays.Visible := False;
  end else begin
    PanelMonthDays.Visible := True;
  end;
end;

procedure TfmLectureEdit.CheckBox1Click(Sender: TObject);
var
  Week : string;
  strList:TStringList;
begin
  strList := TStringList.Create;
  try
    if CheckBox1.Checked then
      Week := '월,';
    if CheckBox2.Checked then
      Week := Week + '화,';
    if CheckBox3.Checked then
      Week := Week + '수,';
    if CheckBox4.Checked then
      Week := Week + '목,';
    if CheckBox5.Checked then
      Week := Week + '금,';
    if CheckBox6.Checked then
      Week := Week + '토,';
    if CheckBox7.Checked then
      Week := Week + '일,';
    Week := Copy(Week, 0, Length(Week) - 1);
    edtWeekTemp.Text := Week;
    strList.CommaText := Week;
    edtWeekCount.Text := IntToStr(strList.Count);
  finally
    strList.Free;
  end;

end;

procedure TfmLectureEdit.edtEndDatePropertiesEditValueChanged(Sender: TObject);
begin
  if edtEndDate.Date < edtStartDate.Date then
    edtEndDate.Date := EndOfTheMonth(edtStartDate.Date);
end;

procedure TfmLectureEdit.edtEndTimePropertiesEditValueChanged(Sender: TObject);
begin
  GetTimeDuration;
end;

procedure TfmLectureEdit.edtKisuPropertiesEditValueChanged(Sender: TObject);
begin
  case edtKisu.EditValue of
    1: begin
      lblMon1.Caption := '1월분';
      lblMon2.Caption := '2월분';
      lblMon3.Caption := '3월분';
    end;
    2: begin
      lblMon1.Caption := '4월분';
      lblMon2.Caption := '5월분';
      lblMon3.Caption := '6월분';
    end;
    3: begin
      lblMon1.Caption := '7월분';
      lblMon2.Caption := '8월분';
      lblMon3.Caption := '9월분';
    end;
    4: begin
      lblMon1.Caption := '10월분';
      lblMon2.Caption := '11월분';
      lblMon3.Caption := '12월분';
    end;
  end;
end;

procedure TfmLectureEdit.edtMonth1DaysPropertiesEditValueChanged(
  Sender: TObject);
begin
  edtMonthTotalDays.EditValue := edtMonth1Days.EditValue + edtMonth2Days.EditValue + edtMonth3Days.EditValue;
end;

procedure TfmLectureEdit.edtMonth1PricePropertiesEditValueChanged(
  Sender: TObject);
begin
  edtPrice.EditValue := edtMonth1Price.EditValue + edtMonth2Price.EditValue + edtMonth3Price.EditValue;
end;

procedure TfmLectureEdit.edtStartDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtEndDate.Date < edtStartDate.Date then
    edtEndDate.Date := EndOfTheMonth(edtStartDate.Date);
end;

procedure TfmLectureEdit.GetMonthDuration;
var
  i, mon_cnt : Integer;
  start_date, end_date : TDateTime;
  month_days, work_days : Integer;
begin
  if edtEndDate.Date >= edtStartDate.Date then begin
    mon_cnt := MonthOf(edtEndDate.Date) - MonthOf(edtStartDate.Date) + 1;
    edtMonth.EditValue := mon_cnt;
  end;
  case cbChangeMonth.EditValue of
    1, 4, 7, 10: begin
      start_date := edtStartDate.Date;
      end_date := EndOfTheMonth(start_date);
    end;
    2, 5, 8, 11: begin
      start_date := StartOfTheMonth(IncMonth(edtStartDate.Date, 1));
      end_date := EndOfTheMonth(start_date);
    end;
    3, 6, 9, 12: begin
      start_date := StartOfTheMonth(edtEndDate.Date);
      end_date := edtEndDate.Date;
    end;
  end;
  month_days := 0;
  if CheckBox1.Checked then begin
    month_days := month_days + GetWorkingDaysBetween(start_date, end_date, 1);
  end;
  if CheckBox2.Checked then begin
    month_days := month_days + GetWorkingDaysBetween(start_date, end_date, 2);
  end;
  if CheckBox3.Checked then begin
    month_days := month_days + GetWorkingDaysBetween(start_date, end_date, 3);
  end;
  if CheckBox4.Checked then begin
    month_days := month_days + GetWorkingDaysBetween(start_date, end_date, 4);
  end;
  if CheckBox5.Checked then begin
    month_days := month_days + GetWorkingDaysBetween(start_date, end_date, 5);
  end;
  if CheckBox6.Checked then begin
    month_days := month_days + GetWorkingDaysBetween(start_date, end_date, 6);
  end;
  if CheckBox7.Checked then begin
    month_days := month_days + GetWorkingDaysBetween(start_date, end_date, 7);
  end;
  lblMonthDays.Caption := IntToStr(month_days)+'일';
  edtSecondMonth.EditValue := month_days;
  edtThirdMonth.EditValue := month_days;
end;

function TfmLectureEdit.GetWorkingDaysBetween(const StartDate, EndDate: TDateTime; dayweek : integer): Integer;
var
  CurrDate : TDateTime;
begin
  CurrDate := StartDate;
  Result := 0;
  while (CurrDate <= EndDate) do begin
    if DayOfTheWeek(CurrDate) = dayweek then
      Inc(Result);
    CurrDate := CurrDate + 1;
  end;
end;

procedure TfmLectureEdit.lcbLecturePropertiesEditValueChanged(Sender: TObject);
begin
  edtName.Text := lcbLecture.EditText;
end;

procedure TfmLectureEdit.edtStartTimePropertiesEditValueChanged(
  Sender: TObject);
begin
  GetTimeDuration;
end;

procedure TfmLectureEdit.edtTeacherPropertiesEditValueChanged(Sender: TObject);
begin
  if Length(edtTeacher.EditValue) > 0 then begin
    edtTeacher2.EditValue := edtTeacher.EditValue;
    edtTeacher3.EditValue := edtTeacher.EditValue;
  end;
end;

procedure TfmLectureEdit.GetTimeDuration;
var
  n_time : integer;
  fTime : Double;
begin
  fTime := 0;
  if (edtStartTime.EditValue > 0) and (edtEndTime.EditValue > 0) then begin
    n_time := edtEndTime.EditValue - edtStartTime.EditValue;
    fTime := (n_time * 5) / 60;
    edtTime.Text := Format('%f', [fTime]);
    edtTimeStr.Text := edtStartTime.EditText + ' ~ ' + edtEndTime.EditText;
  end;
end;
end.
