unit UfmTeacherView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGridCustomPopupMenu, cxGridPopupMenu, XLSFile, XLSRects, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxImageComboBox, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  ExtCtrls, Uni, cxGridExportLink, cxLabel, Menus, cxButtons,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharp, MemDS, DBAccess, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxContainer, cxCheckBox;

type
  TfmTeacherView = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    gridTeacher: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    gridTeacherID: TcxGridDBColumn;
    gridTeacherDONG_ID: TcxGridDBColumn;
    gridTeacherT_NAME: TcxGridDBColumn;
    gridTeacherT_IDNO: TcxGridDBColumn;
    gridTeacherT_SEX: TcxGridDBColumn;
    gridTeacherT_TEL: TcxGridDBColumn;
    gridTeacherT_ADDR: TcxGridDBColumn;
    gridTeacherT_EMAIL: TcxGridDBColumn;
    gridTeacherBANK_NAME: TcxGridDBColumn;
    gridTeacherBANK_NO: TcxGridDBColumn;
    gridTeacherT_BIGO: TcxGridDBColumn;
    gridTeacherIS_ACTIVE: TcxGridDBColumn;
    Label1: TLabel;
    edtName: TEdit;
    gridTeacherREG_DATE: TcxGridDBColumn;
    gridTeacherT_BIRTH: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    PanelMsg: TPanel;
    Label2: TLabel;
    LabelName: TLabel;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnExport: TcxButton;
    btnPrint: TcxButton;
    btnSaveColumn: TcxButton;
    btnRetrieve: TcxButton;
    btnExcelImport: TcxButton;
    gridTeacherIDX: TcxGridDBColumn;
    SP_CHANGE_TEACHER_IDX: TUniStoredProc;
    UniQuery1: TUniQuery;
    UniQuery1IDX: TIntegerField;
    btnSMS: TcxButton;
    btnReorder: TcxButton;
    q_update_index: TUniQuery;
    chkActiveOnly: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridTeacherCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnExcelImportClick(Sender: TObject);
    procedure gridTeacherStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure gridTeacherDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridTeacherDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnSMSClick(Sender: TObject);
    procedure btnReorderClick(Sender: TObject);
    procedure chkActiveOnlyClick(Sender: TObject);
  private
    procedure SaveData(teacher_id: string; idx : Integer);
    function GetTeacherIDX: Integer;
    { Private declarations }
  public
    { Public declarations }
    DragIDX : Integer;
    DragID : string;
  end;

var
  fmTeacherView: TfmTeacherView;

implementation

uses GlobalVar, Udm, UfmTeacherEdit, uCommonLogic, UfmTeacherImportMap,
  UfmExcelOpen, uSendingSMS;

{$R *.dfm}

procedure TfmTeacherView.SaveData(teacher_id : string; idx : Integer);
begin
  dm.d_teacher_dong.DataSet.DisableControls;
  try
    dm.sp_teacher_iu.ParamByName('id').AsString         := teacher_id;
    dm.sp_teacher_iu.ParamByName('T_NAME').AsString     := fmTeacherEdit.edtName.Text;
    dm.sp_teacher_iu.ParamByName('T_BIRTH').AsString    := fmTeacherEdit.edtBirth.Text;
    dm.sp_teacher_iu.ParamByName('T_TEL').AsString      := fmTeacherEdit.edtTel.Text;
    dm.sp_teacher_iu.ParamByName('T_ADDR').AsString     := fmTeacherEdit.edtAddr.Text;
    dm.sp_teacher_iu.ParamByName('T_SEX').AsString      := fmTeacherEdit.edtSex.EditValue;
    dm.sp_teacher_iu.ParamByName('T_EMAIL').AsString    := '';
    dm.sp_teacher_iu.ParamByName('BANK_NAME').AsString  := fmTeacherEdit.edtBank.Text;
    dm.sp_teacher_iu.ParamByName('BANK_NO').AsString    := fmTeacherEdit.edtBankNo.Text;
    dm.sp_teacher_iu.ParamByName('T_BIGO').AsString     := fmTeacherEdit.edtBigo.Text;
    dm.sp_teacher_iu.ParamByName('IS_ACTIVE').AsInteger := fmTeacherEdit.edtIsActive.EditValue;
    dm.sp_teacher_iu.ParamByName('REG_DATE').AsDateTime := StrToDate(fmTeacherEdit.edtRegDate.Text);
    dm.sp_teacher_iu.ParamByName('DONG_ID').AsString    := fmTeacherEdit.edtDongID.Text;
    dm.sp_teacher_iu.ParamByName('IDX').AsInteger       := idx;
    dm.sp_teacher_iu.ExecProc;

    dm.d_teacher_dong.DataSet.Refresh;
    dm.d_teacher_dong.DataSet.Locate('id', teacher_id, []);
    dm.d_TEACHER_LOOK.DataSet.Refresh;
  finally
    dm.d_teacher_dong.DataSet.EnableControls;
  end;
end;

procedure TfmTeacherView.btnAddClick(Sender: TObject);
var
  teacher_id : string;
  idx : Integer;
begin
  fmTeacherEdit := TfmTeacherEdit.Create(Self);
  try
    fmTeacherEdit.edtDongID.Text := LoginUserDong;
    fmTeacherEdit.edtRegDate.Text := DateToStr(Date);
    fmTeacherEdit.edtSex.EditValue := '남자';
    fmTeacherEdit.ShowModal;
    if fmTeacherEdit.ModalResult = mrOk then begin
      teacher_id := FormatDateTime('yyyymmddhhnnsszzz', now);
      idx := GetTeacherIDX;
      SaveData(teacher_id, idx+1);
    end;
  finally
    fmTeacherEdit.Free;
  end;
end;

function TfmTeacherView.GetTeacherIDX : Integer;
begin
  UniQuery1.ExecSQL;
  UniQuery1.Refresh;
  Result := UniQuery1IDX.Value;
end;

procedure TfmTeacherView.btnDeleteClick(Sender: TObject);
var
  sp : TUniStoredProc;
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    gridTeacher.DataController.SaveBookmark;
    sp := TUniStoredProc.Create(self);
    sp.Connection := dm.UniConnection1;
    sp.StoredProcName := 'teacher_del';
    sp.PrepareSQL(False);
    sp.ParamByName('id').AsString := dm.d_teacher_dong.DataSet.FieldByName('id').AsString;
    sp.ExecProc;
    dm.d_teacher_dong.DataSet.Refresh;
    dm.d_TEACHER_LOOK.DataSet.Refresh;
    gridTeacher.DataController.GotoBookmark;
  end;
end;

procedure TfmTeacherView.btnEditClick(Sender: TObject);
var
  teacher_id : string;
  idx : integer;
begin
  fmTeacherEdit := TfmTeacherEdit.Create(Self);
  try
    teacher_id := dm.d_teacher_dong.DataSet.FieldByName('id').AsString;
    idx := dm.d_teacher_dong.DataSet.FieldByName('idx').AsInteger;
    fmTeacherEdit.edtIdx.EditValue  := idx;
    fmTeacherEdit.edtDongId.Text    := dm.d_teacher_dong.DataSet.FieldByName('dong_id').AsString;
    fmTeacherEdit.edtRegDate.Text   := DateToStr(dm.d_teacher_dong.DataSet.FieldByName('reg_date').AsDateTime);
    fmTeacherEdit.edtName.Text      :=  dm.d_teacher_dong.DataSet.FieldByName('T_NAME').AsString;
    fmTeacherEdit.edtBirth.Text :=  dm.d_teacher_dong.DataSet.FieldByName('T_BIRTH').AsString;
    fmTeacherEdit.edtTel.Text       :=  dm.d_teacher_dong.DataSet.FieldByName('T_TEL').AsString;
    fmTeacherEdit.edtAddr.Text      :=  dm.d_teacher_dong.DataSet.FieldByName('T_ADDR').AsString;
    fmTeacherEdit.edtSex.EditValue  :=  dm.d_teacher_dong.DataSet.FieldByName('T_SEX').AsString;
    fmTeacherEdit.edtBank.Text      :=  dm.d_teacher_dong.DataSet.FieldByName('BANK_NAME').AsString;
    fmTeacherEdit.edtBankNo.Text    :=  dm.d_teacher_dong.DataSet.FieldByName('BANK_NO').AsString;
    fmTeacherEdit.edtBigo.Text      :=  dm.d_teacher_dong.DataSet.FieldByName('T_BIGO').AsString;
    fmTeacherEdit.edtIsActive.EditValue := dm.d_teacher_dong.DataSet.FieldByName('IS_ACTIVE').AsInteger;
    fmTeacherEdit.ShowModal;
    if fmTeacherEdit.ModalResult = mrOk then begin
      SaveData(teacher_id, idx);
    end;
  finally
    fmTeacherEdit.Free;
  end;
end;

procedure TfmTeacherView.btnExcelImportClick(Sender: TObject);
var
  xf: TXLSFile;
  I, J, cnt: Integer;
  Rect: TRangeRect;
  Msg, msg2: String;
  CellValue: Variant;
  xls_name, teacher_id : string;
  T_NAME, T_BIRTH,T_TEL,T_ADDR,T_SEX,T_EMAIL,BANK_NAME,BANK_NO,T_BIGO,IS_ACTIVE : string;
begin
  fmExcelOpen := TfmExcelOpen.Create(Self);
  try
    fmExcelOpen.ShowModal;
    if fmExcelOpen.ModalResult = mrOk then begin
      Screen.Cursor := crHourGlass;
      PanelMsg.Visible := True;
      PanelMsg.Refresh;
      teacher_id := FormatDateTime('yyyymmddhhnnsszzz', now);
      cnt := fmExcelOpen.DataSource1.DataSet.RecordCount;
      fmExcelOpen.DataSource1.DataSet.First;
      for i := 0 to cnt - 1 do begin
        T_NAME    := Trim(fmExcelOpen.dxMemData1col1.Value);
        T_BIRTH   := Trim(fmExcelOpen.dxMemData1col2.Value);
        T_SEX     := Trim(fmExcelOpen.dxMemData1col3.Value);
        T_TEL     := Trim(fmExcelOpen.dxMemData1col4.Value);
        BANK_NAME := Trim(fmExcelOpen.dxMemData1col5.Value);
        BANK_NO   := Trim(fmExcelOpen.dxMemData1col6.Value);
        T_ADDR    := Trim(fmExcelOpen.dxMemData1col7.Value);
        T_BIGO    := Trim(fmExcelOpen.dxMemData1col8.Value);
        if T_NAME <> '' then begin
          LabelName.Caption := '강사명:' + T_NAME + '자료 읽음...';
          LabelName.Refresh;
          //TEACHER_IU(:ID, :DONG_ID, :T_NAME, :T_IDNO, :T_SEX, :T_TEL, :T_ADDR,
          //:T_EMAIL, :BANK_NAME, :BANK_NO, :T_BIGO, :IS_ACTIVE, :REG_DATE, :T_BIRTH)

          dm.sp_teacher_iu.ParamByName('id').AsString         := IntToStr(StrToInt64(teacher_id) + i);
          dm.sp_teacher_iu.ParamByName('T_NAME').AsString     := T_NAME;
          dm.sp_teacher_iu.ParamByName('T_IDNO').AsString     := '';
          dm.sp_teacher_iu.ParamByName('T_BIRTH').AsString    := T_BIRTH;
          dm.sp_teacher_iu.ParamByName('T_TEL').AsString      := T_TEL;
          dm.sp_teacher_iu.ParamByName('T_ADDR').AsString     := T_ADDR;
          dm.sp_teacher_iu.ParamByName('T_SEX').AsString      := T_SEX;
          dm.sp_teacher_iu.ParamByName('BANK_NAME').AsString  := BANK_NAME;
          dm.sp_teacher_iu.ParamByName('BANK_NO').AsString    := BANK_NO;
          dm.sp_teacher_iu.ParamByName('T_BIGO').AsString     := T_BIGO;
          dm.sp_teacher_iu.ParamByName('IS_ACTIVE').AsInteger := 1;
          dm.sp_teacher_iu.ParamByName('T_EMAIL').AsString    := '';
          dm.sp_teacher_iu.ParamByName('REG_DATE').AsDateTime := DATE;
          dm.sp_teacher_iu.ParamByName('DONG_ID').AsString    := LoginUserDong;
          dm.sp_teacher_iu.ExecProc;
        end;
        fmExcelOpen.DataSource1.DataSet.Next;
      end;
      dm.d_teacher_dong.DataSet.Refresh;
      dm.d_TEACHER_LOOK.DataSet.Refresh;
    end;
  finally
    PanelMsg.Visible := False;
    fmExcelOpen.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmTeacherView.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '강사등록현황_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, false, 'xls');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmTeacherView.btnPrintClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmTeacherView.btnReorderClick(Sender: TObject);
var
  i, cnt : Integer;
  id : string;
begin
  dm.d_teacher_dong.DataSet.DisableControls;
  cnt := dm.d_teacher_dong.DataSet.RecordCount;
  dm.d_teacher_dong.DataSet.First;
  for i := 0 to cnt - 1 do begin
    id := dm.d_teacher_dong.DataSet.FieldByName('id').AsString;
    q_update_index.ParamByName('idx').Value := i+1;
    q_update_index.ParamByName('id').Value := id;
    q_update_index.ExecSQL;
    dm.d_teacher_dong.DataSet.Next;
  end;
  dm.d_teacher_dong.DataSet.Refresh;
  dm.d_teacher_dong.DataSet.First;
  dm.d_teacher_dong.DataSet.EnableControls;
end;

procedure TfmTeacherView.btnRetrieveClick(Sender: TObject);
begin
  if edtName.Text <> '' then
    if dm.d_teacher_dong.DataSet.Locate('t_name', edtName.Text, []) = False then
      ShowMessage('해당자료 없음.')
    else
      cxGrid1.SetFocus;
end;

procedure TfmTeacherView.btnSMSClick(Sender: TObject);
var
  c_name, c_tel : string;
  i, cnt : Integer;
begin
  fmSendingSMS := TfmSendingSMS.Create(Self);
  try
    fmSendingSMS.mdSMS.Close;
    fmSendingSMS.mdSMS.Open;
    with gridTeacher do begin
      cnt := Controller.SelectedRecordCount;
      for i := 0 to cnt - 1 do begin
        c_name := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('T_NAME').Index);
        c_tel := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('T_TEL').Index);
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

procedure TfmTeacherView.chkActiveOnlyClick(Sender: TObject);
begin
  dm.d_teacher_dong.DataSet.Filtered := chkActiveOnly.Checked;
end;

procedure TfmTeacherView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTeacherView.FormCreate(Sender: TObject);
begin
  dm.sp_teacher_dong.ParamByName('teacher_dong_id').AsString := LoginUserDong;
  dm.sp_teacher_dong.Active := True;
  dm.d_teacher_dong.DataSet.Filter := 'IS_ACTIVE = 1';
  dm.d_teacher_dong.DataSet.Filtered := True;
  dm.d_teacher_dong.DataSet.Refresh;
end;

procedure TfmTeacherView.gridTeacherCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmTeacherView.gridTeacherDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  new_idx : Integer;
begin
  new_idx := gridTeacherIDX.EditValue;
  SP_CHANGE_TEACHER_IDX.ParamByName('SOURCE_ID').Value := DragID;
  SP_CHANGE_TEACHER_IDX.ParamByName('SOURCE_IDX').Value := DragIDX;
  SP_CHANGE_TEACHER_IDX.ParamByName('DEST_IDX').Value := new_idx;
  SP_CHANGE_TEACHER_IDX.ExecProc;
  dm.d_teacher_dong.DataSet.Refresh;
  dm.d_teacher_dong.DataSet.Locate('idx', new_idx, []);
end;

procedure TfmTeacherView.gridTeacherDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TcxDragControlObject);
end;

procedure TfmTeacherView.gridTeacherStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragIDX := gridTeacherIDX.EditValue;
  DragID := gridTeacherID.EditValue;
end;

initialization RegisterClasses([TfmTeacherView]);

end.
