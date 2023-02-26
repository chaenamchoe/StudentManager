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
  UfmLectureView in '����\UfmLectureView.pas' {fmLectureView},
  UfmTeacherView in '����\UfmTeacherView.pas' {fmTeacherView},
  UfmStudentView in '������\UfmStudentView.pas' {fmStudentView},
  UfmTeacherEdit in '����\UfmTeacherEdit.pas' {fmTeacherEdit},
  UfmStudentEdit in '������\UfmStudentEdit.pas' {fmStudentEdit},
  UfmLectureEdit in '����\UfmLectureEdit.pas' {fmLectureEdit},
  UfmBasicCode in '����\UfmBasicCode.pas' {fmBasicCode},
  UfmUserManager in '����\UfmUserManager.pas' {fmUserManager},
  UfmRequestManager in '������\UfmRequestManager.pas' {fmRequestManager},
  UfmRequestEdit in '������\UfmRequestEdit.pas' {fmRequestEdit},
  UfmSelectStudent in '������\UfmSelectStudent.pas' {fmSelectStudent},
  UfmUserEdit in '����\UfmUserEdit.pas' {fmUserEdit},
  UfmLectureCopy in '����\UfmLectureCopy.pas' {fmLectureCopy},
  UfmTeacherPay in '����\UfmTeacherPay.pas' {fmTeacherPay},
  UfmRefundPayment in '������\UfmRefundPayment.pas' {fmRefundPayment},
  uAbout in '����\uAbout.pas' {fmAbout},
  UfmUserRegistration in '����\UfmUserRegistration.pas' {fmUserRegistration},
  UfmRegistWait in '������\UfmRegistWait.pas' {fmRegistWait},
  UfmReportTeacherPay in '����\UfmReportTeacherPay.pas' {fmReportTeacherPay},
  UfmLectureAnalyse in '����\UfmLectureAnalyse.pas' {fmLectureAnalyse},
  UfmStudentByLecture in '������\UfmStudentByLecture.pas' {fmStudentByLecture},
  UfmTimeTableEdit in '����\UfmTimeTableEdit.pas' {fmTimeTableEdit},
  UfmExpenseBudget in 'ȸ��\UfmExpenseBudget.pas' {fmExpenseBudget},
  UfmExpenseBudgetEdit in 'ȸ��\UfmExpenseBudgetEdit.pas' {fmExpenseBudgetEdit},
  UfmMoneyInOut in 'ȸ��\UfmMoneyInOut.pas' {fmMoneyInOut},
  UfmMoneyInOutEdit in 'ȸ��\UfmMoneyInOutEdit.pas' {fmMoneyInOutEdit},
  UfmMoneyInOutEdit2 in 'ȸ��\UfmMoneyInOutEdit2.pas' {fmMoneyInOutEdit2},
  UfmMoneyByItem in 'ȸ��\UfmMoneyByItem.pas' {fmMoneyByItem},
  UfmAccountCompare in 'ȸ��\UfmAccountCompare.pas' {fmAccountCompare},
  UfmExpenseBudgetEdit2 in 'ȸ��\UfmExpenseBudgetEdit2.pas' {fmExpenseBudgetEdit2},
  UfmUpdate in 'UfmUpdate.pas' {fmUpdate},
  UfmLecturePivot in '����\UfmLecturePivot.pas' {fmLecturePivot},
  UfmDongTotal in '������Ȳ\UfmDongTotal.pas' {fmDongTotal},
  UfmDongLectureList in '������Ȳ\UfmDongLectureList.pas' {fmDongLectureList},
  UfmDongExpenseBudget in '������Ȳ\UfmDongExpenseBudget.pas' {fmDongExpenseBudget},
  UfmReportIncome in '������\UfmReportIncome.pas' {fmReportIncome},
  UfmRegistedByLecture in '����\UfmRegistedByLecture.pas' {fmRegistedByLecture},
  UfmLectureGraph in '����\UfmLectureGraph.pas' {fmLectureGraph},
  UfmAccountCode in '����\UfmAccountCode.pas' {fmAccountCode},
  UfrmYearMonth in 'UfrmYearMonth.pas' {frmYearMonth: TFrame},
  UfmTeacherImportMap in '����\UfmTeacherImportMap.pas' {fmTeacherImportMap},
  UfmExcelOpen in '����\UfmExcelOpen.pas' {fmExcelOpen},
  UfmExcelOpen2 in '������\UfmExcelOpen2.pas' {fmExcelOpen2},
  UfmLectureReport in '����\UfmLectureReport.pas' {fmLectureReport},
  UfmRegistedStudent in '������\UfmRegistedStudent.pas' {fmRegistedStudent},
  UfmRequestEdit2 in '������\UfmRequestEdit2.pas' {fmRequestEdit2},
  UfrmYearQuarter in 'UfrmYearQuarter.pas' {frmYearQuarter: TFrame},
  UfmMoneyOutReport in 'ȸ��\UfmMoneyOutReport.pas' {fmMoneyOutReport},
  UfmMoneyOutReportList in 'ȸ��\UfmMoneyOutReportList.pas' {fmMoneyOutReportList},
  UfmMoneyBackReport in 'ȸ��\UfmMoneyBackReport.pas' {fmMoneyBackReport},
  UfmMoneyBackReportList in 'ȸ��\UfmMoneyBackReportList.pas' {fmMoneyBackReportList},
  UfmMoneyInReport in 'ȸ��\UfmMoneyInReport.pas' {fmMoneyInReport},
  UfmMoneyInReportList in 'ȸ��\UfmMoneyInReportList.pas' {fmMoneyInReportList},
  UfmMoneyInOutMonth in 'ȸ��\UfmMoneyInOutMonth.pas' {fmMoneyInOutMonth},
  UfmCashReceipt in '������\UfmCashReceipt.pas' {fmCashReceipt},
  UfmDataBackupRestore in 'UfmDataBackupRestore.pas' {fmDataBackupRestore},
  UfmDCList in '������\UfmDCList.pas' {fmDCList},
  UfmTeacherCompensation in '����\UfmTeacherCompensation.pas' {fmTeacherCompensation},
  UfmAttendingSetting in '����\UfmAttendingSetting.pas' {fmAttendingSetting},
  USQLExecuter in 'USQLExecuter.pas' {fmSQLExecuter},
  UfmRegistedStudentByLecture in '������\UfmRegistedStudentByLecture.pas' {fmRegistedStudentByLecture},
  UfmOutList2 in '������\UfmOutList2.pas' {fmOutList2},
  UfmRequestMonthly in '������\UfmRequestMonthly.pas' {fmRequestMonthly},
  UfmRequestChange in '������\UfmRequestChange.pas' {fmRequestChange},
  UfmOutlistMonthly in '������\UfmOutlistMonthly.pas' {fmOutlistMonthly},
  UfmMoneyInOutEdit3 in 'ȸ��\UfmMoneyInOutEdit3.pas' {fmMoneyInOutEdit3},
  UfmLectureOrder in '����\UfmLectureOrder.pas' {fmLectureOrder},
  DemoBasicMain in 'scheduler\DemoBasicMain.pas' {DemoBasicMainForm},
  DBDemoMainUnit in 'scheduler\DBDemoMainUnit.pas' {DBScheduleForm},
  UfmClosingBackup in 'UfmClosingBackup.pas' {fmClosingBackup},
  UfmRegistedStudentByQuarter in '������\UfmRegistedStudentByQuarter.pas' {fmRegistedStudentByQuarter},
  UfmTotalByLecture in '����\UfmTotalByLecture.pas' {fmTotalByLecture},
  UfmBatchPayback in '������\UfmBatchPayback.pas' {fmBatchPayback},
  UfmRefundBatch in '������\UfmRefundBatch.pas' {fmRefundBatch},
  UfmRefundPerson in '������\UfmRefundPerson.pas' {fmRefundPerson},
  UfmLectureCopyDialog in '����\UfmLectureCopyDialog.pas' {fmLectureCopyDialog},
  UfmLectureChange in '����\UfmLectureChange.pas' {fmLectureChange},
  UfmMoneyInoutMove in 'ȸ��\UfmMoneyInoutMove.pas' {fmMoneyInoutMove},
  UfmStudentUpdate in '������\UfmStudentUpdate.pas' {fmStudentUpdate},
  UfmTotalReport in '������\UfmTotalReport.pas' {fmTotalReport},
  UfmLectureAnalyseMonthly in '����\UfmLectureAnalyseMonthly.pas' {fmLectureAnalyseMonthly},
  UfmTotalReportOut in '������\UfmTotalReportOut.pas' {fmTotalReportOut},
  UfmStudentExists in '������\UfmStudentExists.pas' {fmStudentExists},
  UfmLectureAnalyseAge in '����\UfmLectureAnalyseAge.pas' {fmLectureAnalyseAge},
  UfmContacts in 'sms\UfmContacts.pas' {fmContacts},
  BaroService_CASHBILL in 'sms\BaroService_CASHBILL.pas',
  BaroService_SMS in 'sms\BaroService_SMS.pas',
  UfmContactsEdit in 'sms\UfmContactsEdit.pas' {fmContactsEdit},
  UfmSenderTelEdit in 'sms\UfmSenderTelEdit.pas' {fmSenderTelEdit},
  UfmSMSMember in 'sms\UfmSMSMember.pas' {fmSMSMember},
  UfmSMSOption in 'sms\UfmSMSOption.pas' {fmSMSOption},
  UfmSMSSetting in 'sms\UfmSMSSetting.pas' {fmSMSSetting},
  uSendingSMS in 'sms\uSendingSMS.pas' {fmSendingSMS},
  UfmCashBill in '������\UfmCashBill.pas' {fmCashBill},
  UfmAddTempTel in 'sms\UfmAddTempTel.pas' {fmAddTempTel},
  UfmRegistedCashbill in '������\UfmRegistedCashbill.pas' {fmRegistedCashbill},
  UfmLectureOnline in '����\UfmLectureOnline.pas' {fmLectureOnline},
  UfmMoneyBackReport2 in 'ȸ��\UfmMoneyBackReport2.pas' {fmMoneyBackReport2},
  UfmEmpList in '�λ�޿�\UfmEmpList.pas' {fmEmpList},
  UfmEmpAttend in '�λ�޿�\UfmEmpAttend.pas' {fmEmpAttend},
  UfmEmpPayroll in '�λ�޿�\UfmEmpPayroll.pas' {fmEmpPayroll},
  UfmCalcDesc in '�λ�޿�\UfmCalcDesc.pas' {fmCalcDesc},
  UfmExtraPrice in '�λ�޿�\UfmExtraPrice.pas' {fmExtraPrice};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '����/��������';
  Application.HelpFile := 'D:\Delphi2010\StudentManager\CenterManager\���°���.chm';
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
