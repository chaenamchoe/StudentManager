unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxTabbedMDI, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Buttons, ActnList, StdCtrls, UniProvider, TLHelp32,
  InterBaseUniProvider, DB, DBAccess, Uni, cxLocalization, ShellAPI,
  AppEvnts, dxGDIPlusClasses, jpeg, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxStatusBarPainter, dxStatusBar,
  dxSkinOffice2013White, cxContainer, cxEdit, cxImage, cxCalendar, dxPSEngn,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxBarBuiltInMenu, cxClasses, IniFiles, BMDThread,
  MemDS;

type
  TfmMain = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    MainMenu1: TMainMenu;
    mnuCustomerManager: TMenuItem;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    Panel1: TPanel;
    ActionList1: TActionList;
    ImageAction: TImageList;
    mnuWindow: TMenuItem;
    ImageList3: TImageList;
    mnuLecture: TMenuItem;
    N13: TMenuItem;
    mnuUserManager: TMenuItem;
    cxLocalizer1: TcxLocalizer;
    N14: TMenuItem;
    mnuSetup: TMenuItem;
    ToolBar1: TToolBar;
    tool_btn07: TToolButton;
    tool_btn02: TToolButton;
    tool_btn01: TToolButton;
    tbsSeparator1: TToolButton;
    tool_btn06: TToolButton;
    tool_btn03: TToolButton;
    tool_btn20: TToolButton;
    tool_btn18: TToolButton;
    tbsSeparator2: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    N1: TMenuItem;
    ActionLectureRegist: TAction;
    ActionTeacherView: TAction;
    ActionStudentView: TAction;
    N2: TMenuItem;
    ActionBasicCode: TAction;
    N3: TMenuItem;
    ActionUserManager: TAction;
    N4: TMenuItem;
    ActionRequestManager: TAction;
    N5: TMenuItem;
    ActionTeacherPay: TAction;
    N6: TMenuItem;
    ActionTimeTable: TAction;
    ActionRegistByLecture: TAction;
    N8: TMenuItem;
    ActionLectureGraph: TAction;
    tbsSeparator5: TToolButton;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    lblTimer: TLabel;
    tool_btn04: TToolButton;
    tool_btn11: TToolButton;
    tool_btn12: TToolButton;
    ActionProgramInfo: TAction;
    ActionCloseChild: TAction;
    tool_btn05: TToolButton;
    ActionStudentAttendance: TAction;
    ActionReportIncome: TAction;
    mnuReport: TMenuItem;
    N16: TMenuItem;
    ActionReportTeacherPay: TAction;
    N17: TMenuItem;
    ActionLectureAnalysis: TAction;
    N18: TMenuItem;
    ActionStudentByLecture: TAction;
    N19: TMenuItem;
    ActionCheckUpdate: TAction;
    SDI_Mode: TMenuItem;
    N12: TMenuItem;
    ToolButton4: TToolButton;
    tool_btn09: TToolButton;
    tool_btn08: TToolButton;
    tool_btn10: TToolButton;
    tool_btn13: TToolButton;
    tbsSeparator3: TToolButton;
    mnuCloseWindow: TMenuItem;
    ActionAccountCode: TAction;
    N15: TMenuItem;
    ActionExpenseBudget: TAction;
    mnuAccount: TMenuItem;
    N21: TMenuItem;
    ActionMoneyInOut: TAction;
    N22: TMenuItem;
    ActionMoneyInoutByItem: TAction;
    N23: TMenuItem;
    ActionAccountCompare: TAction;
    N24: TMenuItem;
    ActionLecturePivot: TAction;
    N25: TMenuItem;
    dxPSEngineController1: TdxPSEngineController;
    tbsSeparator4: TToolButton;
    tool_btn14: TToolButton;
    tool_btn17: TToolButton;
    tool_btn15: TToolButton;
    tool_btn16: TToolButton;
    tool_btn19: TToolButton;
    mnuDong: TMenuItem;
    ActionDongTotal: TAction;
    ActionDongLectureList: TAction;
    N26: TMenuItem;
    N27: TMenuItem;
    tool_btn21: TToolButton;
    tool_btn22: TToolButton;
    tbsSeparator6: TToolButton;
    ActionDongExpendBudget: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    tool_btn26: TToolButton;
    ActionLectureReport: TAction;
    N7: TMenuItem;
    ActionRegistedStudents: TAction;
    N20: TMenuItem;
    StatusBar1: TStatusBar;
    ActionMoneyOutReport: TAction;
    N28: TMenuItem;
    N29: TMenuItem;
    ActionMoneyBackReport: TAction;
    N30: TMenuItem;
    ActionMoneyInReport: TAction;
    N31: TMenuItem;
    ActionMoneyInOutMonth: TAction;
    N32: TMenuItem;
    N33: TMenuItem;
    ActionDCList: TAction;
    N34: TMenuItem;
    ActionCompansation: TAction;
    N35: TMenuItem;
    SQL1: TMenuItem;
    ActionRegistedStudentsByLecture: TAction;
    N37: TMenuItem;
    ActionOutList2: TAction;
    N38: TMenuItem;
    ActionRequestMonthly: TAction;
    N36: TMenuItem;
    ActionOutlistMonthly: TAction;
    N39: TMenuItem;
    actRegistedStudentQuarter: TAction;
    N40: TMenuItem;
    actTotalByLecture: TAction;
    N41: TMenuItem;
    actBatchPayback: TAction;
    N42: TMenuItem;
    ActLectureAnalysisMonthly: TAction;
    N43: TMenuItem;
    N_Multiwindow: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    ActionLectureAnalyseAge: TAction;
    N48: TMenuItem;
    N49: TMenuItem;
    ActionContacts: TAction;
    N50: TMenuItem;
    N51: TMenuItem;
    ActionCashbill: TAction;
    N52: TMenuItem;
    ActionRegistCashbill: TAction;
    N53: TMenuItem;
    N54: TMenuItem;
    BMDThread1: TBMDThread;
    N11: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    EMP_ATTENDING_INS: TUniStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure ActionLectureRegistExecute(Sender: TObject);
    procedure ActionTeacherViewExecute(Sender: TObject);
    procedure ActionStudentViewExecute(Sender: TObject);
    procedure ActionBasicCodeExecute(Sender: TObject);
    procedure ActionUserManagerExecute(Sender: TObject);
    procedure ActionRequestManagerExecute(Sender: TObject);
    procedure ActionTeacherPayExecute(Sender: TObject);
    procedure ActionTimeTableExecute(Sender: TObject);
    procedure ActionRegistByLectureExecute(Sender: TObject);
    procedure ActionLectureGraphExecute(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure ActionProgramInfoExecute(Sender: TObject);
    procedure ActionStudentAttendanceExecute(Sender: TObject);
    procedure ActionReportIncomeExecute(Sender: TObject);
    procedure ActionReportTeacherPayExecute(Sender: TObject);
    procedure ActionLectureAnalysisExecute(Sender: TObject);
    procedure ActionStudentByLectureExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SDI_ModeClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure mnuCloseWindowClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ActionAccountCodeExecute(Sender: TObject);
    procedure ActionExpenseBudgetExecute(Sender: TObject);
    procedure ActionMoneyInOutExecute(Sender: TObject);
    procedure ActionMoneyInoutByItemExecute(Sender: TObject);
    procedure ActionAccountCompareExecute(Sender: TObject);
    procedure ActionLecturePivotExecute(Sender: TObject);
    procedure ActionDongTotalExecute(Sender: TObject);
    procedure ActionDongLectureListExecute(Sender: TObject);
    procedure ActionDongExpendBudgetExecute(Sender: TObject);
    procedure ActionLectureReportExecute(Sender: TObject);
    procedure ActionRegistedStudentsExecute(Sender: TObject);
    procedure ActionMoneyOutReportExecute(Sender: TObject);
    procedure ActionMoneyBackReportExecute(Sender: TObject);
    procedure ActionMoneyInReportExecute(Sender: TObject);
    procedure ActionMoneyInOutMonthExecute(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure ActionDCListExecute(Sender: TObject);
    procedure ActionCompansationExecute(Sender: TObject);
    procedure SQL1Click(Sender: TObject);
    procedure ActionRegistedStudentsByLectureExecute(Sender: TObject);
    procedure ActionOutList2Execute(Sender: TObject);
    procedure ActionRequestMonthlyExecute(Sender: TObject);
    procedure ActionOutlistMonthlyExecute(Sender: TObject);
    procedure actRegistedStudentQuarterExecute(Sender: TObject);
    procedure actTotalByLectureExecute(Sender: TObject);
    procedure actBatchPaybackExecute(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ActLectureAnalysisMonthlyExecute(Sender: TObject);
    procedure N_MultiwindowClick(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure ActionLectureAnalyseAgeExecute(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure ActionContactsExecute(Sender: TObject);
    procedure ActionCashbillExecute(Sender: TObject);
    procedure ActionRegistCashbillExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
  private
    procedure CloseAllWindows;
    { Private declarations }
  public
    { Public declarations }
    appmgr : IInterface;
    gsDefaultFolder : string;
    FStartIdle: Cardinal;
  end;

var
  fmMain: TfmMain;

implementation


uses jjsApp, GlobalVar, uAbout, Udm, UfmStudentView,
  UfmUserManager, UfmUpdate, UfmDataBackupRestore, USQLExecuter,
  UfmClosingBackup, UfmSMSSetting;

  {$R *.dfm}

function CreateChild(sClass, winCaption : string):Boolean;
var
  MyFormClass : TFormClass;
  WorkForm : TForm;
  H : THandle;
  I : Integer;
begin
  fmMain.dxTabbedMDIManager1.BeginUpdate;
  fmMain.dxTabbedMDIManager1.TabProperties.BeginUpdate;
  try
    Result := True; H := 0;
    for I := 0 to Screen.CustomFormCount - 1 do begin
      if UpperCase('T' + Screen.CustomForms[I].Name) = UpperCase(sClass) then begin
        H := Screen.CustomForms[I].Handle;
        Break;
      end;
    end;
    if H = 0 then begin
      MyFormClass := TFormClass(GetClass(sClass));
      if MyFormClass <> nil then begin
        WorkForm := MyFormClass.Create(Application.MainForm);
        WorkForm.Caption := winCaption;
      end else Result := False;
    end else begin
      if IsIconic(H) then ShowWindow(H, SW_SHOWNORMAL)
      else BringWindowToTop(H);
    end;
  finally
    fmMain.dxTabbedMDIManager1.TabProperties.EndUpdate;
    fmMain.dxTabbedMDIManager1.EndUpdate(True);
  end;
end;

procedure TfmMain.CloseAllWindows;
var i : integer;
begin
  for i := 0 to MDIChildCount-1 do
    MDIChildren[i].Close;
end;

procedure TfmMain.ActionDCListExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmDCList', ActionDCList.Caption);
end;

procedure TfmMain.ActionDongExpendBudgetExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmDongExpenseBudget', ActionDongExpendBudget.Caption);
end;

procedure TfmMain.ActionDongLectureListExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmDongLectureList', ActionDongLectureList.Caption);
end;

procedure TfmMain.ActionDongTotalExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmDongTotal', ActionDongTotal.Caption);
end;

procedure TfmMain.ActionExpenseBudgetExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmExpenseBudget', ActionExpenseBudget.Caption);
end;

procedure TfmMain.actBatchPaybackExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmBatchPayback', actBatchPayback.Caption);
end;

procedure TfmMain.ActionAccountCodeExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmAccountCode', ActionAccountCode.Caption);
end;

procedure TfmMain.ActionAccountCompareExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmAccountCompare', ActionAccountCompare.Caption);
end;

procedure TfmMain.ActionBasicCodeExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmBasicCode', ActionBasicCode.Caption);
end;

procedure TfmMain.ActionCashbillExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmCashBill', ActionCashbill.Caption);
end;

procedure TfmMain.ActionCompansationExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmTeacherCompensation', ActionCompansation.Caption);
end;

procedure TfmMain.ActionContactsExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmContacts', ActionContacts.Caption);
end;

procedure TfmMain.ActionLectureAnalyseAgeExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmLectureAnalyseAge', ActionLectureAnalyseAge.Caption);
end;

procedure TfmMain.ActionLectureAnalysisExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmLectureAnalyse', ActionLectureAnalysis.Caption);
end;

procedure TfmMain.ActionLectureGraphExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmLectureGraph', ActionLectureGraph.Caption);
end;

procedure TfmMain.ActionLecturePivotExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmLecturePivot', ActionLecturePivot.Caption);
end;

procedure TfmMain.ActionLectureRegistExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmLectureView', ActionLectureRegist.Caption);
end;

procedure TfmMain.ActionLectureReportExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmLectureReport', ActionLectureReport.Caption);
end;

procedure TfmMain.ActionMoneyBackReportExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmMoneyBackReportList', ActionMoneyBackReport.Caption);
end;

procedure TfmMain.ActionMoneyInoutByItemExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmMoneyByItem', ActionMoneyInoutByItem.Caption);
end;

procedure TfmMain.ActionMoneyInOutExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmMoneyInOut', ActionMoneyInOut.Caption);
end;

procedure TfmMain.ActionMoneyInOutMonthExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmMoneyInOutMonth', ActionMoneyInOutMonth.Caption);
end;

procedure TfmMain.ActionMoneyInReportExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmMoneyInReportList', ActionMoneyInReport.Caption);
end;

procedure TfmMain.ActionMoneyOutReportExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmMoneyOutReportList', ActionMoneyOutReport.Caption);
end;

procedure TfmMain.ActionOutList2Execute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmOutList2', ActionOutList2.Caption);
end;

procedure TfmMain.ActionOutlistMonthlyExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmOutlistMonthly', ActionOutlistMonthly.Caption);
end;

procedure TfmMain.ActionProgramInfoExecute(Sender: TObject);
begin
  fmAbout := TfmAbout.Create(Self);
  try
    fmAbout.ShowModal;
  finally
    fmAbout.Free;
  end;
end;

procedure TfmMain.ActionRegistByLectureExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmRegistedByLecture', ActionRegistByLecture.Caption);
end;

procedure TfmMain.ActionRegistCashbillExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmRegistedCashbill', ActionRegistCashbill.Caption);
end;

procedure TfmMain.ActionRegistedStudentsByLectureExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmRegistedStudentByLecture', ActionRegistedStudentsByLecture.Caption);
end;

procedure TfmMain.ActionRegistedStudentsExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmRegistedStudent', ActionRegistedStudents.Caption);
end;

procedure TfmMain.ActionReportIncomeExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmReportIncome', ActionReportIncome.Caption);
end;

procedure TfmMain.ActionReportTeacherPayExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmReportTeacherPay', ActionReportTeacherPay.Caption);
end;

procedure TfmMain.ActionRequestManagerExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmRequestManager', ActionRequestManager.Caption);
end;

procedure TfmMain.ActionRequestMonthlyExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmRequestMonthly', ActionRequestMonthly.Caption);
end;

procedure TfmMain.ActionStudentAttendanceExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmAttendanceView', ActionStudentAttendance.Caption);
end;

procedure TfmMain.ActionStudentByLectureExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmStudentByLecture', ActionStudentByLecture.Caption);
end;

procedure TfmMain.ActionStudentViewExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmStudentView', ActionStudentView.Caption);
end;

procedure TfmMain.ActionTeacherPayExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmTeacherPay', ActionTeacherPay.Caption);
end;

procedure TfmMain.ActionTeacherViewExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmTeacherView', ActionTeacherView.Caption);
end;

procedure TfmMain.ActionTimeTableExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TDBScheduleForm', ActionTimeTable.Caption);
end;

procedure TfmMain.ActionUserManagerExecute(Sender: TObject);
begin
  fmUserManager := TfmUserManager.Create(Self);
  try
    fmUserManager.ShowModal;
  finally
    fmUserManager.Free;
  end;
  //CreateChild('TfmUserManager');
end;

procedure TfmMain.ActLectureAnalysisMonthlyExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmLectureAnalyseMonthly', ActLectureAnalysisMonthly.Caption);
end;

procedure TfmMain.actRegistedStudentQuarterExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmRegistedStudentByQuarter', actRegistedStudentQuarter.Caption);
end;

procedure TfmMain.actTotalByLectureExecute(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmTotalByLecture', actTotalByLecture.Caption);
end;

procedure TfmMain.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  ShowMessage(E.Message);
end;

procedure TfmMain.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  if Timer1.Enabled then Exit;
  FStartIdle := GetTickCount;
  Timer1.Enabled := True;
end;

procedure TfmMain.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  Handled := False;
  case Msg.message of
    WM_KEYDOWN
    , WM_MOUSEMOVE
    , WM_MOUSEWHEEL
    , WM_LBUTTONDOWN
    , WM_RBUTTONDOWN
    , WM_MBUTTONDOWN : Timer1.Enabled := False;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName, modeStr : string;
begin
  appmgr := TAppManager.Create;
  gsDefaultFolder := ExtractFilePath(Application.ExeName);
  StatusBar1.Panels[1].Text := '滚傈:' + LocalAppVersion;
  StatusBar1.Panels[2].Text := LoginUserDongName;
  StatusBar1.Panels[3].Text := LoginUserName + '/' + LoginUserID;

  cxLocalizer1.FileName := gsDefaultFolder + 'ccnkorean.ini';
  cxLocalizer1.StorageType := lstIni;
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := $0412;

  iniFileName := gsDefaultFolder + 'SMGSetting.ini';
  //FIni.WriteString('MDI Mode', 'DefaultMode', modeStr);
  if FileExists(iniFileName) then begin
    FIni := TIniFile.Create(iniFileName);
    modeStr := FIni.ReadString('MDI Mode', 'DefaultMode', modeStr);
    if modeStr = 'MDI' then begin
      SDI_Mode.Checked := False;
      dxTabbedMDIManager1.TabProperties.HideTabs := False;
    end else begin
      SDI_Mode.Checked := True;
      dxTabbedMDIManager1.TabProperties.HideTabs := True;
    end;
  end;

  mnuDong.Visible := IS_ADMIN;
  mnuLecture.Visible := not IS_ADMIN;
  mnuCustomerManager.Visible := not IS_ADMIN;
  mnuReport.Visible := not IS_ADMIN;
  mnuAccount.Visible := not IS_ADMIN;
  mnuUserManager.Visible := not IS_ADMIN;
  tool_btn01.Visible := not IS_ADMIN;
  tool_btn02.Visible := not IS_ADMIN;
  tool_btn03.Visible := not IS_ADMIN;
  tool_btn04.Visible := not IS_ADMIN;
  tool_btn05.Visible := not IS_ADMIN;
  tool_btn06.Visible := not IS_ADMIN;
  tool_btn07.Visible := not IS_ADMIN;
  tool_btn08.Visible := not IS_ADMIN;
  tool_btn09.Visible := not IS_ADMIN;
  tool_btn10.Visible := not IS_ADMIN;
  tool_btn11.Visible := not IS_ADMIN;
  tool_btn12.Visible := not IS_ADMIN;
  tool_btn13.Visible := not IS_ADMIN;
  tool_btn14.Visible := not IS_ADMIN;
  tool_btn15.Visible := not IS_ADMIN;
  tool_btn16.Visible := not IS_ADMIN;
  tool_btn17.Visible := not IS_ADMIN;
  tool_btn18.Visible := not IS_ADMIN;
  tool_btn19.Visible := not IS_ADMIN;
  tool_btn20.Visible := not IS_ADMIN;
  tool_btn21.Visible := IS_ADMIN;
  tool_btn22.Visible := IS_ADMIN;
  tool_btn26.Visible := IS_ADMIN;
  tbsSeparator1.Visible := not IS_ADMIN;
  tbsSeparator2.Visible := not IS_ADMIN;
  tbsSeparator3.Visible := not IS_ADMIN;
  tbsSeparator4.Visible := not IS_ADMIN;
  tbsSeparator5.Visible := not IS_ADMIN;
  tbsSeparator6.Visible := IS_ADMIN;
end;

procedure TfmMain.FormShow(Sender: TObject);
var
  auto_money : integer;
begin
  dm.ActivateDatebase;
  auto_money := dm.q_basic_valueREGIST_MONEY_AUTOADD.AsInteger;
  LoginUserJikgub := dm.q_basic_valueLECTURE_REPORT_JIGWI.AsString;
  AUTO_MONEY_ADD := auto_money = 1;
  CASH_RECEIPT_CONTACTS := dm.q_basic_valueCASH_RECEIPT_CONTACTS.AsString;
  MONEY_BACK_REPORT_WAY := dm.q_basic_valueMONEY_BACK_REPORT_WAY.AsInteger;
  CenterChiefName := dm.q_basic_valueCENTER_CHIEF_NAME.AsString;
end;

procedure TfmMain.mnuCloseWindowClick(Sender: TObject);
begin
  CloseAllWindows;
end;

procedure TfmMain.N11Click(Sender: TObject);
begin
  ShellExecute(0,'open','0114-1.exe',nil,nil, SW_NORMAL);
end;

procedure TfmMain.N1Click(Sender: TObject);
begin
  HtmlHelp(0, Application.HelpFile, HH_DISPLAY_INDEX, 0);
  //ShellExecute(0,'open','碍谅包府.chm',nil,nil, SW_NORMAL);
end;

procedure TfmMain.N33Click(Sender: TObject);
begin
  fmDataBackupRestore := TfmDataBackupRestore.Create(Self);
  try
    fmDataBackupRestore.ShowModal;
  finally
    fmDataBackupRestore.Free;
  end;
end;

procedure TfmMain.N44Click(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure TfmMain.N45Click(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

procedure TfmMain.N46Click(Sender: TObject);
begin
  Cascade;
end;

procedure TfmMain.N49Click(Sender: TObject);
begin
  fmSMSSetting := TfmSMSSetting.Create(Self);
  try
    fmSMSSetting.ShowModal;
  finally
    fmSMSSetting.Free;
  end;
end;

procedure TfmMain.N56Click(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmEmpList', '流盔包府');
end;

procedure TfmMain.N57Click(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmEmpAttend', '辟公惑炔何');
end;

procedure TfmMain.N58Click(Sender: TObject);
begin
  if SDI_Mode.Checked then
    CloseAllWindows;
  CreateChild('TfmEmpPayroll', '鞭咯包府');
end;

procedure TfmMain.N_MultiwindowClick(Sender: TObject);
begin
  N_Multiwindow.Checked := not N_Multiwindow.Checked;
  if N_Multiwindow.Checked then begin
    SDI_Mode.Checked := False;
    dxTabbedMDIManager1.TabProperties.HideTabs := False;
    dxTabbedMDIManager1.Active := False;
  end else begin
    SDI_Mode.Checked := False;
    dxTabbedMDIManager1.TabProperties.HideTabs := False;
    dxTabbedMDIManager1.Active := True;
  end;
end;

procedure TfmMain.SDI_ModeClick(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName, modeStr : string;
begin
  SDI_Mode.Checked := not SDI_Mode.Checked;
  dxTabbedMDIManager1.TabProperties.HideTabs := SDI_Mode.Checked;
  if SDI_Mode.Checked then begin
    modeStr := 'SDI';
    N_Multiwindow.Checked := False;
  end else begin
    modeStr := 'MDI';
    N_Multiwindow.Checked := False;
  end;
  iniFileName := gsDefaultFolder + 'SMGSetting.ini';
  FIni := TIniFile.Create(iniFileName);
  FIni.WriteString('MDI Mode', 'DefaultMode', modeStr);

end;

procedure TfmMain.SQL1Click(Sender: TObject);
begin
  fmSQLExecuter := TfmSQLExecuter.Create(Self);
  try
    fmSQLExecuter.ShowModal;
  finally
    fmSQLExecuter.Free;
  end;
end;

procedure TfmMain.Timer1Timer(Sender: TObject);
var
  vIdleTime : Cardinal;
  vSeconds  : Cardinal;
begin
  vIdleTime := GetTickCount - FStartIdle;
  vSeconds := vIdleTime div 1000;
  lblTimer.Caption := Format('%.d', [vSeconds]);
  if vSeconds > 120 then begin
    dm.UniSQL.Execute;
    FStartIdle := GetTickCount;
  end;
end;

procedure TfmMain.ToolButton4Click(Sender: TObject);
begin
  CloseAllWindows;
end;


end.
