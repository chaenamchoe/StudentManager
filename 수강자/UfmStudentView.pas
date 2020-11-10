unit UfmStudentView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, Buttons, ExtCtrls, cxDBLookupComboBox, cxTextEdit, MemDS,
  DBAccess, Uni, dxSkinOffice2013White, cxGridExportLink, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxPScxPivotGridLnk,
  cxImageComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxGridCustomPopupMenu,
  cxGridPopupMenu, XLSFile, XLSRects, cxCheckBox, Menus, cxButtons;

type
  TfmStudentView = class(TForm)
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    gridStudent: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridStudentS_NAME: TcxGridDBColumn;
    gridStudentS_TEL: TcxGridDBColumn;
    gridStudentS_ADDR: TcxGridDBColumn;
    gridStudentS_SEX: TcxGridDBColumn;
    gridStudentBIGO: TcxGridDBColumn;
    gridStudentS_KIND: TcxGridDBColumn;
    gridStudentREG_DATE: TcxGridDBColumn;
    Label1: TLabel;
    edtName: TEdit;
    btnRetrieve: TBitBtn;
    chkFilter: TCheckBox;
    chkGroup: TCheckBox;
    gridStudentS_EMAIL: TcxGridDBColumn;
    gridStudentS_DONG: TcxGridDBColumn;
    gridStudentS_BIRTH: TcxGridDBColumn;
    btnExport: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnPrint: TBitBtn;
    gridStudentID: TcxGridDBColumn;
    gridStudentDONG_ID: TcxGridDBColumn;
    gridStudentBANK_NAME: TcxGridDBColumn;
    gridStudentBANK_ID: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    btnExcelImport: TBitBtn;
    PanelMsg: TPanel;
    Label2: TLabel;
    LabelName: TLabel;
    gridStudentCASH_RECEIPT_NO: TcxGridDBColumn;
    gridStudentCASH_RECEIPT_YESNO: TcxGridDBColumn;
    btnAutoRemake: TBitBtn;
    q_student_update: TUniQuery;
    btnSMS: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridStudentCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure chkGroupClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcelImportClick(Sender: TObject);
    procedure gridStudentS_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnAutoRemakeClick(Sender: TObject);
    procedure btnSMSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStudentView: TfmStudentView;

implementation

uses GlobalVar, Udm, UfmStudentEdit, uCommonLogic, UfmExcelOpen2,
  UfmStudentUpdate, uSendingSMS;

{$R *.dfm}

procedure TfmStudentView.btnAddClick(Sender: TObject);
var
  n_sid : string;
  receipt_yesno : Integer;
begin
  fmStudentEdit := TfmStudentEdit.Create(Self);
  try
    fmStudentEdit.edtDCKind.EditValue := 1;
    fmStudentEdit.edtDong.EditValue := LoginUserDong;
    fmStudentEdit.ShowModal;
    if fmStudentEdit.ModalResult = mrOk then begin
      n_sid := FormatDateTime('yyyymmddhhnnsszzz', now);
      if fmStudentEdit.chkCashReceipt.Checked then
        receipt_yesno := 1
      else
        receipt_yesno := 0;
      dm.sp_students_iu.ParamByName('ID').AsString        := n_sid;
      dm.sp_students_iu.ParamByName('S_NAME').AsString    := fmStudentEdit.edtName.Text;
      dm.sp_students_iu.ParamByName('S_TEL').AsString     := fmStudentEdit.edtTel.Text;
      dm.sp_students_iu.ParamByName('S_ADDR').AsString    := fmStudentEdit.edtAddr.Text;
      dm.sp_students_iu.ParamByName('s_DONG').AsString    := fmStudentEdit.edtDong.EditValue;
      dm.sp_students_iu.ParamByName('BIGO').AsString      := fmStudentEdit.edtBigo.Text;
      dm.sp_students_iu.ParamByName('S_EMAIL').AsString   := fmStudentEdit.edtEmail.Text;
      dm.sp_students_iu.ParamByName('S_SEX').AsString     := fmStudentEdit.edtSex.EditValue;
      dm.sp_students_iu.ParamByName('S_BIRTH').AsString   := fmStudentEdit.edtBirth.Text;
      dm.sp_students_iu.ParamByName('S_KIND').AsInteger   := fmStudentEdit.edtDCKind.EditValue;
      dm.sp_students_iu.ParamByName('REG_DATE').AsDateTime := Date;
      dm.sp_students_iu.ParamByName('DONG_ID').AsString   := LoginUserDong;
      dm.sp_students_iu.ParamByName('CASH_RECEIPT_NO').AsString   := fmStudentEdit.edtCashReceiptNo.EditValue;
      dm.sp_students_iu.ParamByName('CASH_RECEIPT_YESNO').AsInteger   := receipt_yesno;
      dm.sp_students_iu.ExecProc;
      dm.d_STUDENTS_SEL.DataSet.Refresh;
    end;
  finally
    fmStudentEdit.Free;
  end;
end;

procedure TfmStudentView.btnAutoRemakeClick(Sender: TObject);
var
  i, cnt, ckind, ucnt : Integer;
  birth, pdate, sname, id : string;
begin
  fmStudentUpdate := TfmStudentUpdate.Create(Self);
  try
    try
      fmStudentUpdate.cxDateEdit1.Date := Date;
      fmStudentUpdate.ShowModal;
      if fmStudentUpdate.ModalResult = mrOk then begin
        pdate := DateTimeToStr(fmStudentUpdate.cxDateEdit1.Date);
        pdate := Copy(pdate, 3);
        cnt := gridStudent.DataController.RecordCount;
        gridStudent.DataController.GotoFirst;
        ucnt := 0;
        PanelMsg.Visible := True;
        for i := 0 to cnt - 1 do begin
          id := gridStudentID.EditValue;
          birth := gridStudentS_BIRTH.EditValue;
          sname := gridStudentS_NAME.EditValue;
          ckind := gridStudentS_KIND.EditValue;
          if (birth <> '') and (birth > '20-12-31') and (birth < pdate) and (ckind = 1) then begin
            q_student_update.ParamByName('ID').Value := id;
            q_student_update.Execute;
            Inc(ucnt);
          end;
          gridStudent.DataController.GotoNext;
        end;
        PanelMsg.Visible := False;
        ShowMessage('총 ' + IntToStr(ucnt) + '명의 65세이상 감면자를 적용하였습니다.');
        dm.d_STUDENTS_SEL.DataSet.Refresh;
      end;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    fmStudentUpdate.Free;
  end;
end;

procedure TfmStudentView.btnDeleteClick(Sender: TObject);
var
  sid : string;
  i, cnt : Integer;
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    cnt := gridStudent.DataController.GetSelectedCount;
    for i := 0 to cnt -1 do begin
      sid := gridStudent.Controller.SelectedRecords[i].Values[0];
      dm.STUDENTS_DEL.ParamByName('ID').Value := sid;
      dm.STUDENTS_DEL.ExecProc;
    end;
    dm.d_STUDENTS_SEL.DataSet.Refresh;
  end;
end;

procedure TfmStudentView.btnEditClick(Sender: TObject);
var
  n_sid : string;
  reg_date : TDateTime;
  rec_no, receipt_yesno : Integer;
begin
  fmStudentEdit := TfmStudentEdit.Create(Self);
  try
    rec_no := dm.d_STUDENTS_SEL.DataSet.RecNo;
    n_sid := dm.d_STUDENTS_SEL.DataSet.FieldByName('ID').AsString;
    reg_date := dm.d_STUDENTS_SEL.DataSet.FieldByName('REG_DATE').AsDateTime;
    dm.d_STUDENTS_SEL.DataSet.DisableControls;
    fmStudentEdit.edtName.Text        :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('S_NAME').AsString;
    fmStudentEdit.edtTel.Text         :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('S_TEL').AsString;
    fmStudentEdit.edtAddr.Text        :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('S_ADDR').AsString;
    fmStudentEdit.edtDong.EditValue   :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('s_DONG').AsString;
    fmStudentEdit.edtBigo.Text        :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('BIGO').AsString;
    fmStudentEdit.edtEmail.Text       :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('S_EMAIL').AsString;
    fmStudentEdit.edtSex.EditValue    :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('S_SEX').AsString;
    fmStudentEdit.edtBirth.Text   :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('S_BIRTH').AsString;
    fmStudentEdit.edtDCKind.EditValue :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('S_KIND').AsInteger;
    fmStudentEdit.edtCashReceiptNo.EditValue :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('CASH_RECEIPT_NO').AsString;
    fmStudentEdit.chkCashReceipt.Checked :=  dm.d_STUDENTS_SEL.DataSet.FieldByName('CASH_RECEIPT_YESNO').AsInteger = 1;
    fmStudentEdit.ShowModal;
    if fmStudentEdit.ModalResult = mrOk then begin
      if fmStudentEdit.chkCashReceipt.Checked then
        receipt_yesno := 1
      else
        receipt_yesno := 0;
      dm.sp_students_iu.ParamByName('ID').AsString        := n_sid;
      dm.sp_students_iu.ParamByName('S_NAME').AsString    := fmStudentEdit.edtName.Text;
      dm.sp_students_iu.ParamByName('S_TEL').AsString     := fmStudentEdit.edtTel.Text;
      dm.sp_students_iu.ParamByName('S_ADDR').AsString    := fmStudentEdit.edtAddr.Text;
      dm.sp_students_iu.ParamByName('s_DONG').AsString    := fmStudentEdit.edtDong.EditValue;
      dm.sp_students_iu.ParamByName('BIGO').AsString      := fmStudentEdit.edtBigo.Text;
      dm.sp_students_iu.ParamByName('S_EMAIL').AsString   := fmStudentEdit.edtEmail.Text;
      dm.sp_students_iu.ParamByName('S_SEX').AsString     := fmStudentEdit.edtSex.EditValue;
      dm.sp_students_iu.ParamByName('S_BIRTH').AsString   := fmStudentEdit.edtBirth.Text;
      dm.sp_students_iu.ParamByName('S_KIND').AsInteger   := fmStudentEdit.edtDCKind.EditValue;
      dm.sp_students_iu.ParamByName('REG_DATE').AsDateTime := reg_date;
      dm.sp_students_iu.ParamByName('DONG_ID').AsString   := LoginUserDong;
      dm.sp_students_iu.ParamByName('CASH_RECEIPT_NO').AsString   := fmStudentEdit.edtCashReceiptNo.EditValue;
      dm.sp_students_iu.ParamByName('CASH_RECEIPT_YESNO').AsInteger   := receipt_yesno;
      dm.sp_students_iu.ExecProc;
      dm.d_STUDENTS_SEL.DataSet.Refresh;
      dm.d_STUDENTS_SEL.DataSet.RecNo := rec_no;
    end;
  finally
    fmStudentEdit.Free;
    dm.d_STUDENTS_SEL.DataSet.EnableControls;
  end;
end;

procedure TfmStudentView.btnExcelImportClick(Sender: TObject);
var
  xf: TXLSFile;
  I, J, cnt: Integer;
  Rect: TRangeRect;
  Msg, msg2: String;
  CellValue: Variant;
  xls_name, n_sid : string;
  S_NAME, S_BIRTH,S_TEL,S_ADDR,S_SEX,S_EMAIL,BIGO, S_DONG : string;
begin
  fmExcelOpen2 := TfmExcelOpen2.Create(Self);
  try
    fmExcelOpen2.ShowModal;
    if fmExcelOpen2.ModalResult = mrOk then begin
      Screen.Cursor := crHourGlass;
      PanelMsg.Visible := True;
      PanelMsg.Refresh;
      n_sid := FormatDateTime('yyyymmddhhnnsszzz', now);
      cnt := fmExcelOpen2.DataSource1.DataSet.RecordCount;
      fmExcelOpen2.DataSource1.DataSet.First;
      for i := 0 to cnt - 1 do begin
        S_NAME    := Trim(fmExcelOpen2.dxMemData1col1.Value);
        S_BIRTH   := Trim(fmExcelOpen2.dxMemData1col2.Value);
        S_SEX     := Trim(fmExcelOpen2.dxMemData1col3.Value);
        S_TEL     := Trim(fmExcelOpen2.dxMemData1col4.Value);
        S_DONG    := Trim(fmExcelOpen2.dxMemData1col5.Value);
        S_ADDR    := Trim(fmExcelOpen2.dxMemData1col6.Value);
        S_EMAIL   := Trim(fmExcelOpen2.dxMemData1col7.Value);
        BIGO      := Trim(fmExcelOpen2.dxMemData1col8.Value);
        if S_NAME <> '' then begin
          LabelName.Caption := '수강자명:' + S_NAME + '자료 읽음...';
          LabelName.Refresh;
          dm.sp_students_iu.ParamByName('ID').AsString        := IntToStr(StrToInt64(n_sid) + i);
          dm.sp_students_iu.ParamByName('S_NAME').AsString    := S_NAME;
          dm.sp_students_iu.ParamByName('S_TEL').AsString     := S_TEL;
          dm.sp_students_iu.ParamByName('S_ADDR').AsString    := S_ADDR;
          dm.sp_students_iu.ParamByName('s_DONG').AsString    := S_DONG;
          dm.sp_students_iu.ParamByName('BIGO').AsString      := BIGO;
          dm.sp_students_iu.ParamByName('S_EMAIL').AsString   := S_EMAIL;
          dm.sp_students_iu.ParamByName('S_SEX').AsString     := S_SEX;
          dm.sp_students_iu.ParamByName('S_BIRTH').AsString   := S_BIRTH;
          dm.sp_students_iu.ParamByName('S_KIND').AsInteger   := 1;
          dm.sp_students_iu.ParamByName('REG_DATE').AsDateTime := Date;
          dm.sp_students_iu.ParamByName('DONG_ID').AsString   := LoginUserDong;
          dm.sp_students_iu.ExecProc;
        end;
        fmExcelOpen2.DataSource1.DataSet.Next;
      end;
      dm.d_STUDENTS_SEL.DataSet.Refresh;
    end;
  finally
    PanelMsg.Visible := False;
    fmExcelOpen2.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmStudentView.btnExportClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    filename := '수강자현황_' + DateTimeToStr(Date) + '.xls';
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.DefaultExt := 'xls';
    saveDLG.FileName := filename;
    if saveDLG.Execute then begin
       filename := saveDLG.FileName;
       nameonly := copy(filename, 1, length(filename) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmStudentView.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmStudentView.btnRetrieveClick(Sender: TObject);
begin
  if edtName.Text <> '' then
    if dm.d_STUDENTS_SEL.DataSet.Locate('s_name', edtName.Text, []) = False then
      ShowMessage('해당자료 없음.')
    else
      cxGrid1.SetFocus;
end;

procedure TfmStudentView.btnSMSClick(Sender: TObject);
var
  c_name, c_tel : string;
  i, cnt : Integer;
begin
  fmSendingSMS := TfmSendingSMS.Create(Self);
  try
    fmSendingSMS.mdSMS.Close;
    fmSendingSMS.mdSMS.Open;
    with gridStudent do begin
      cnt := Controller.SelectedRecordCount;
      for i := 0 to cnt - 1 do begin
        c_name := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('S_NAME').Index);
        c_tel := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('S_TEL').Index);
        if c_tel <> '' then begin
          fmSendingSMS.mdSMS.Append;
          fmSendingSMS.mdSMS.FieldByName('cname').Value := c_name;
          fmSendingSMS.mdSMS.FieldByName('ctel').Value := c_tel;
          fmSendingSMS.mdSMS.FieldByName('check_send').Value := 1;
          fmSendingSMS.mdSMS.Post;
        end;
      end;
      fmSendingSMS.mdSMS.First;
    end;
    fmSendingSMS.ShowModal;
  finally
    fmSendingSMS.Free;
  end;
end;

procedure TfmStudentView.chkFilterClick(Sender: TObject);
begin
  gridStudent.FilterRow.Visible := chkFilter.Checked;
end;

procedure TfmStudentView.chkGroupClick(Sender: TObject);
begin
  gridStudent.OptionsView.GroupByBox := chkGroup.Checked;
end;

procedure TfmStudentView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmStudentView.FormShow(Sender: TObject);
var
  cnt : integer;
begin
//  q_STUDENTS.ParamByName('dong_id').Value := LoginUserDong;
//  q_STUDENTS.Active := True;
//  d_STUDENTS.DataSet.Refresh;
  dm.STUDENTS_SEL.ParamByName('student_dong_id').AsString := LoginUserDong;
  dm.STUDENTS_SEL.Active := True;
  dm.d_STUDENTS_SEL.DataSet.Refresh;
  cnt := dm.STUDENTS_SEL.RecordCount;
  ShowMessage(IntToStr(cnt));

end;

procedure TfmStudentView.gridStudentCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmStudentView.gridStudentS_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind : Integer;
begin
//  col_kind := AViewInfo.GridRecord.Values[gridStudent.GetColumnByFieldName('S_KIND').Index];
//  if(col_kind > 1) then begin
//    ACanvas.Brush.Color := clGreen; //연한그린색
//    ACanvas.Font.Color := clWhite;
//  end;
end;

initialization RegisterClasses([TfmStudentView]);

end.
