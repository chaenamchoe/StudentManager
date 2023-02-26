program StudentManager;

uses
  MidasLib,
  Forms,
  Controls,
  uMain in 'uMain.pas' {fmMain},
  uCommonLogic in 'uCommonLogic.pas',
  GlobalVar in 'GlobalVar.pas',
  uLogin in 'uLogin.pas' {fmLogin},
  Udm in 'Udm.pas' {dm: TDataModule},
  UfmLectureView in '강좌\UfmLectureView.pas' {fmLectureView},
  UfmTeacherView in '강좌\UfmTeacherView.pas' {fmTeacherView},
  UfmStudentView in '수강자\UfmStudentView.pas' {fmStudentView},
  UfmTeacherEdit in '강좌\UfmTeacherEdit.pas' {fmTeacherEdit},
  UfmStudentEdit in '수강자\UfmStudentEdit.pas' {fmStudentEdit},
  UfmLectureEdit in '강좌\UfmLectureEdit.pas' {fmLectureEdit},
  UfmBasicCode in '기초\UfmBasicCode.pas' {fmBasicCode},
  UfmUserManager in '기초\UfmUserManager.pas' {fmUserManager},
  UfmRequestManager in '수강자\UfmRequestManager.pas' {fmRequestManager},
  UfmRequestEdit in '수강자\UfmRequestEdit.pas' {fmRequestEdit},
  UfmSelectStudent in '수강자\UfmSelectStudent.pas' {fmSelectStudent},
  UfmUserEdit in '기초\UfmUserEdit.pas' {fmUserEdit},
  UfmLectureCopy in '강좌\UfmLectureCopy.pas' {fmLectureCopy},
  UfmTeacherPay in '강좌\UfmTeacherPay.pas' {fmTeacherPay},
  UfmRefundPayment in '수강자\UfmRefundPayment.pas' {fmRefundPayment},
  uAbout in '기초\uAbout.pas' {fmAbout},
  UfmUserRegistration in '기초\UfmUserRegistration.pas' {fmUserRegistration},
  UfmRegistWait in '수강자\UfmRegistWait.pas' {fmRegistWait},
  UfmReportTeacherPay in '보고서\UfmReportTeacherPay.pas' {fmReportTeacherPay},
  UfmLectureAnalyse in '보고서\UfmLectureAnalyse.pas' {fmLectureAnalyse},
  UfmStudentByLecture in '수강자\UfmStudentByLecture.pas' {fmStudentByLecture},
  UfmTimeTableEdit in '강좌\UfmTimeTableEdit.pas' {fmTimeTableEdit},
  UfmExpenseBudget in '회계\UfmExpenseBudget.pas' {fmExpenseBudget},
  UfmExpenseBudgetEdit in '회계\UfmExpenseBudgetEdit.pas' {fmExpenseBudgetEdit},
  UfmMoneyInOut in '회계\UfmMoneyInOut.pas' {fmMoneyInOut},
  UfmMoneyInOutEdit in '회계\UfmMoneyInOutEdit.pas' {fmMoneyInOutEdit},
  UfmMoneyInOutEdit2 in '회계\UfmMoneyInOutEdit2.pas' {fmMoneyInOutEdit2},
  UfmMoneyByItem in '회계\UfmMoneyByItem.pas' {fmMoneyByItem},
  UfmAccountCompare in '회계\UfmAccountCompare.pas' {fmAccountCompare},
  UfmExpenseBudgetEdit2 in '회계\UfmExpenseBudgetEdit2.pas' {fmExpenseBudgetEdit2},
  UfmUpdate in 'UfmUpdate.pas' {fmUpdate},
  UfmLecturePivot in '보고서\UfmLecturePivot.pas' {fmLecturePivot},
  UfmDongTotal in '동별현황\UfmDongTotal.pas' {fmDongTotal},
  UfmDongLectureList in '동별현황\UfmDongLectureList.pas' {fmDongLectureList},
  UfmDongExpenseBudget in '동별현황\UfmDongExpenseBudget.pas' {fmDongExpenseBudget},
  UfmReportIncome in '수강자\UfmReportIncome.pas' {fmReportIncome},
  UfmRegistedByLecture in '보고서\UfmRegistedByLecture.pas' {fmRegistedByLecture},
  UfmLectureGraph in '보고서\UfmLectureGraph.pas' {fmLectureGraph},
  UfmAccountCode in '기초\UfmAccountCode.pas' {fmAccountCode},
  UfrmYearMonth in 'UfrmYearMonth.pas' {frmYearMonth: TFrame},
  UfmTeacherImportMap in '강좌\UfmTeacherImportMap.pas' {fmTeacherImportMap},
  UfmExcelOpen in '강좌\UfmExcelOpen.pas' {fmExcelOpen},
  UfmExcelOpen2 in '수강자\UfmExcelOpen2.pas' {fmExcelOpen2},
  UfmLectureReport in '강좌\UfmLectureReport.pas' {fmLectureReport},
  UfmRegistedStudent in '수강자\UfmRegistedStudent.pas' {fmRegistedStudent},
  UfmRequestEdit2 in '수강자\UfmRequestEdit2.pas' {fmRequestEdit2},
  UfrmYearQuarter in 'UfrmYearQuarter.pas' {frmYearQuarter: TFrame},
  UfmMoneyOutReport in '회계\UfmMoneyOutReport.pas' {fmMoneyOutReport},
  UfmMoneyOutReportList in '회계\UfmMoneyOutReportList.pas' {fmMoneyOutReportList},
  UfmMoneyBackReport in '회계\UfmMoneyBackReport.pas' {fmMoneyBackReport},
  UfmMoneyBackReportList in '회계\UfmMoneyBackReportList.pas' {fmMoneyBackReportList},
  UfmMoneyInReport in '회계\UfmMoneyInReport.pas' {fmMoneyInReport},
  UfmMoneyInReportList in '회계\UfmMoneyInReportList.pas' {fmMoneyInReportList},
  UfmMoneyInOutMonth in '회계\UfmMoneyInOutMonth.pas' {fmMoneyInOutMonth},
  UfmCashReceipt in '수강자\UfmCashReceipt.pas' {fmCashReceipt},
  UfmDataBackupRestore in 'UfmDataBackupRestore.pas' {fmDataBackupRestore},
  UfmDCList in '수강자\UfmDCList.pas' {fmDCList},
  UfmTeacherCompensation in '강좌\UfmTeacherCompensation.pas' {fmTeacherCompensation},
  UfmAttendingSetting in '강좌\UfmAttendingSetting.pas' {fmAttendingSetting},
  USQLExecuter in 'USQLExecuter.pas' {fmSQLExecuter},
  UfmRegistedStudentByLecture in '수강자\UfmRegistedStudentByLecture.pas' {fmRegistedStudentByLecture},
  UfmOutList2 in '수강자\UfmOutList2.pas' {fmOutList2},
  UfmRequestMonthly in '수강자\UfmRequestMonthly.pas' {fmRequestMonthly},
  UfmRequestChange in '수강자\UfmRequestChange.pas' {fmRequestChange},
  UfmOutlistMonthly in '수강자\UfmOutlistMonthly.pas' {fmOutlistMonthly},
  UfmMoneyInOutEdit3 in '회계\UfmMoneyInOutEdit3.pas' {fmMoneyInOutEdit3},
  UfmLectureOrder in '강좌\UfmLectureOrder.pas' {fmLectureOrder},
  DemoBasicMain in 'scheduler\DemoBasicMain.pas' {DemoBasicMainForm},
  DBDemoMainUnit in 'scheduler\DBDemoMainUnit.pas' {DBScheduleForm},
  UfmClosingBackup in 'UfmClosingBackup.pas' {fmClosingBackup},
  UfmRegistedStudentByQuarter in '수강자\UfmRegistedStudentByQuarter.pas' {fmRegistedStudentByQuarter},
  UfmTotalByLecture in '보고서\UfmTotalByLecture.pas' {fmTotalByLecture},
  UfmBatchPayback in '수강자\UfmBatchPayback.pas' {fmBatchPayback},
  UfmRefundBatch in '수강자\UfmRefundBatch.pas' {fmRefundBatch},
  UfmRefundPerson in '수강자\UfmRefundPerson.pas' {fmRefundPerson},
  UfmLectureCopyDialog in '강좌\UfmLectureCopyDialog.pas' {fmLectureCopyDialog},
  UfmLectureChange in '강좌\UfmLectureChange.pas' {fmLectureChange},
  UfmMoneyInoutMove in '회계\UfmMoneyInoutMove.pas' {fmMoneyInoutMove},
  UfmStudentUpdate in '수강자\UfmStudentUpdate.pas' {fmStudentUpdate},
  UfmTotalReport in '수강자\UfmTotalReport.pas' {fmTotalReport},
  UfmLectureAnalyseMonthly in '보고서\UfmLectureAnalyseMonthly.pas' {fmLectureAnalyseMonthly},
  UfmTotalReportOut in '수강자\UfmTotalReportOut.pas' {fmTotalReportOut},
  UfmStudentExists in '수강자\UfmStudentExists.pas' {fmStudentExists},
  UfmLectureAnalyseAge in '보고서\UfmLectureAnalyseAge.pas' {fmLectureAnalyseAge},
  UfmContacts in 'sms\UfmContacts.pas' {fmContacts},
  BaroService_CASHBILL in 'sms\BaroService_CASHBILL.pas',
  BaroService_SMS in 'sms\BaroService_SMS.pas',
  UfmContactsEdit in 'sms\UfmContactsEdit.pas' {fmContactsEdit},
  UfmSenderTelEdit in 'sms\UfmSenderTelEdit.pas' {fmSenderTelEdit},
  UfmSMSMember in 'sms\UfmSMSMember.pas' {fmSMSMember},
  UfmSMSOption in 'sms\UfmSMSOption.pas' {fmSMSOption},
  UfmSMSSetting in 'sms\UfmSMSSetting.pas' {fmSMSSetting},
  uSendingSMS in 'sms\uSendingSMS.pas' {fmSendingSMS},
  UfmCashBill in '수강자\UfmCashBill.pas' {fmCashBill},
  UfmAddTempTel in 'sms\UfmAddTempTel.pas' {fmAddTempTel},
  UfmRegistedCashbill in '수강자\UfmRegistedCashbill.pas' {fmRegistedCashbill},
  UfmLectureOnline in '강좌\UfmLectureOnline.pas' {fmLectureOnline},
  UfmMoneyBackReport2 in '회계\UfmMoneyBackReport2.pas' {fmMoneyBackReport2},
  UfmEmpList in '인사급여\UfmEmpList.pas' {fmEmpList},
  UfmEmpAttend in '인사급여\UfmEmpAttend.pas' {fmEmpAttend},
  UfmEmpPayroll in '인사급여\UfmEmpPayroll.pas' {fmEmpPayroll},
  UfmCalcDesc in '인사급여\UfmCalcDesc.pas' {fmCalcDesc},
  UfmExtraPrice in '인사급여\UfmExtraPrice.pas' {fmExtraPrice};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '강좌/수강관리';
  Application.HelpFile := 'D:\Delphi2010\StudentManager\CenterManager\강좌관리.chm';
  fmLogin := TfmLogin.Create(Application);
  try
    fmLogin.ShowModal;
    if fmLogin.ModalResult = mrOk then begin
      Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfmCalcDesc, fmCalcDesc);
  Application.CreateForm(TfmExtraPrice, fmExtraPrice);
  Application.Run;
    end else begin
      fmLogin.Hide;
      fmLogin.Close;
    end;
  finally
    fmLogin.Free;
  end;
end.
