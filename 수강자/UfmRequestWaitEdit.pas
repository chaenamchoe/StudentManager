unit UfmRequestWaitEdit;

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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxCalc, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, ComCtrls, dxCore, cxDateUtils,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxImageComboBox, DB, MemDS, DBAccess, Uni, dxSkinOffice2013White;

type
  TfmRequestWaitEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    edtPayDate: TcxDateEdit;
    edtStudentName: TcxTextEdit;
    Label4: TLabel;
    ddlb_dckind: TcxLookupComboBox;
    edtStudentID: TcxTextEdit;
    Label5: TLabel;
    edtBirthDate: TcxDateEdit;
    Label6: TLabel;
    edtSex: TcxImageComboBox;
    Label7: TLabel;
    edtTel: TcxTextEdit;
    Label8: TLabel;
    edtAddr: TcxTextEdit;
    btnEditStudent: TBitBtn;
    edtPrice: TcxCurrencyEdit;
    lblStudentKind: TLabel;
    Label9: TLabel;
    edtEmail: TcxTextEdit;
    Label10: TLabel;
    cxImageComboBox1: TcxImageComboBox;
    Label11: TLabel;
    edtDong: TcxLookupComboBox;
    btnSelect: TBitBtn;
    procedure btnEditStudentClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtStudentNamePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ddlb_dckindPropertiesEditValueChanged(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
  private
    procedure SaveStudentData;
    procedure DisableInputControls;
    procedure EnableInputControls;
    procedure UpdateStudentData;
    { Private declarations }
  public
    { Public declarations }
    EditMode : boolean;
    LectureID : string;
    LecturePrice : Double;
  end;

var
  fmRequestWaitEdit: TfmRequestWaitEdit;

implementation

uses Udm, UfmSelectStudent, GlobalVar, UfmRequestManager;

{$R *.dfm}

procedure TfmRequestWaitEdit.FormShow(Sender: TObject);
begin
  EditMode := False;
  lblStudentKind.Caption := '등록구분';
  DisableInputControls;

  edtBirthDate.Clear;
  edtTel.EditValue := '';
  edtAddr.EditValue := '';
  edtEmail.EditValue := '';
  ddlb_dckind.ItemIndex := 0;
  edtPrice.EditValue := 0;

  edtStudentName.SetFocus;
  edtPayDate.Date := Date;
end;

procedure TfmRequestWaitEdit.btnSaveClick(Sender: TObject);
var
  is_new : integer;
  STUDENT_ID, R_DATE, P_DATE, PAYBACK_BANK, PAYBACK_BANKID : string;
  PAY_AMOUNT, OUT_AMOUNT : Double;
  IS_DC, PAY_KIND, REG_KIND, PAY_WAY,PAYBACK_WAY, OUT_KIND : Integer;
begin
  if lblStudentKind.Caption = '신규등록' then begin
    is_new := 1;
    edtStudentID.Text := FormatDateTime('yyyymmddhhnnsszzz', now);
    SaveStudentData;
  end else begin
    is_new := 0;
  end;
  if EditMode = True then begin
    UpdateStudentData;
    EditMode := False;
  end;
  P_DATE := '';
  R_DATE := DateTimeToStr(Date);
  PAY_AMOUNT := 0;
  STUDENT_ID := edtStudentID.Text;
  if ddlb_dckind.EditValue > 1 then
    IS_DC := 1
  else
    IS_DC := 0;
  PAY_KIND := 2;
  OUT_AMOUNT := 0;
  REG_KIND := is_new;
  PAY_WAY := -1;
  PAYBACK_BANK := '';
  PAYBACK_BANKID := '';

  dm.InsertRegistedLecture(LectureID, STUDENT_ID, R_DATE, P_DATE, PAYBACK_BANK, PAYBACK_BANKID,
      PAY_AMOUNT, OUT_AMOUNT, IS_DC, PAY_KIND, REG_KIND, PAY_WAY, PAYBACK_WAY, OUT_KIND);

  fmRequestManager.RefreshAllData(LectureID);

  lblStudentKind.Caption := '등록구분';
  edtStudentName.EditValue := '';
  DisableInputControls;

  edtBirthDate.Clear;
  edtTel.EditValue := '';
  edtAddr.EditValue := '';
  edtEmail.EditValue := '';
  ddlb_dckind.ItemIndex := 0;
  edtPrice.EditValue := 0;
  edtStudentName.SetFocus;
end;

procedure TfmRequestWaitEdit.SaveStudentData;
begin
  dm.q_STUDENTS.Append;
  dm.q_STUDENTSID.AsString := edtStudentID.Text;
  dm.q_STUDENTSS_NAME.AsString := edtStudentName.Text;
  dm.q_STUDENTSS_BIRTH.AsString := edtBirthDate.EditText;
  dm.q_STUDENTSS_TEL.AsString := edtTel.Text;
  dm.q_STUDENTSS_ADDR.AsString := edtAddr.Text;
  dm.q_STUDENTSS_EMAIL.AsString := edtEmail.Text;
  dm.q_STUDENTSS_SEX.AsString := edtSex.EditText;
  dm.q_STUDENTSS_KIND.AsInteger := ddlb_dckind.EditValue;
  dm.q_STUDENTSREG_DATE.AsDateTime := edtPayDate.Date;
  dm.q_STUDENTSDONG_ID.AsString := LoginUserDong;
  dm.q_STUDENTS.Post;
  dm.d_STUDENTS.DataSet.Refresh;
end;

procedure TfmRequestWaitEdit.UpdateStudentData;
begin
  dm.q_STUDENTS.Edit;
  dm.q_STUDENTSS_BIRTH.AsString := edtBirthDate.EditText;
  dm.q_STUDENTSS_TEL.AsString := edtTel.Text;
  dm.q_STUDENTSS_ADDR.AsString := edtAddr.Text;
  dm.q_STUDENTSS_EMAIL.AsString := edtEmail.Text;
  dm.q_STUDENTSS_SEX.AsString := edtSex.EditText;
  dm.q_STUDENTSS_KIND.AsInteger := ddlb_dckind.EditValue;
  dm.q_STUDENTS.Post;
  dm.d_STUDENTS.DataSet.Refresh;
end;

procedure TfmRequestWaitEdit.btnSelectClick(Sender: TObject);
var
  student_id : string;
begin
  if edtStudentName.Text = '' then begin
    ShowMessage('이름을 입력하세요.');
    Exit;
  end;
  fmSelectStudent := TfmSelectStudent.Create(Self);
  try
    fmSelectStudent.q_STUDENTS_SELECT.ParamByName('dong_id').AsString := LoginUserDong;
    fmSelectStudent.q_STUDENTS_SELECT.ParamByName('s_name').AsString := edtStudentName.Text;
    fmSelectStudent.q_STUDENTS_SELECT.Active := True;
    fmSelectStudent.d_STUDENTS_SELECT.DataSet.Refresh;
    fmSelectStudent.ShowModal;
    if fmSelectStudent.ModalResult = mrOk then begin
      lblStudentKind.Caption := '재등록';
      DisableInputControls;

      student_id := fmSelectStudent.q_STUDENTS_SELECTID.AsString;
      dm.SaveStudentInfoToStructure(student_id);

      edtStudentName.Text := dm.StudentInfo.S_NAME;
      edtStudentID.Text := dm.StudentInfo.ID;
      edtBirthDate.EditText := dm.StudentInfo.S_BIRTH;
      edtSex.EditValue := dm.StudentInfo.S_SEX;
      edtTel.Text := dm.StudentInfo.S_TEL;
      edtAddr.Text := dm.StudentInfo.S_ADDR;
      edtDong.EditValue := dm.StudentInfo.S_DONG;
      edtEmail.Text := dm.StudentInfo.S_EMAIL;
      ddlb_dckind.EditValue := dm.StudentInfo.S_KIND;

      btnEditStudent.Enabled := True;
      edtPrice.Enabled := True;
      btnSave.SetFocus;
    end else begin
      lblStudentKind.Caption := '신규등록';
      EnableInputControls;
      btnEditStudent.Enabled := False;

      edtBirthDate.Clear;
      edtTel.EditValue := '';
      edtAddr.EditValue := '';
      edtEmail.EditValue := '';
      edtDong.EditValue := LoginUserDong;
      ddlb_dckind.ItemIndex := 0;
      edtPrice.EditValue := 30000;

      edtBirthDate.SetFocus;
    end;
  finally
    fmSelectStudent.Free;
  end;
end;

procedure TfmRequestWaitEdit.btnEditStudentClick(Sender: TObject);
var
  dc_kind : Integer;
  amount : Double;
begin
  EditMode := True;
  EnableInputControls;
  edtBirthDate.SetFocus;
end;

procedure TfmRequestWaitEdit.ddlb_dckindPropertiesEditValueChanged(Sender: TObject);
var
  dc_kind : integer;
  amount : Double;
begin
  dc_kind := ddlb_dckind.EditValue;
  if dc_kind > 1 then begin
    amount := LecturePrice / 2;
  end else
    amount := LecturePrice;
  edtPrice.EditValue := amount;
end;

procedure TfmRequestWaitEdit.edtStudentNamePropertiesEditValueChanged(
  Sender: TObject);
var
  sname : string;
  cnt : integer;
begin
  sname := edtStudentName.Text;
  cnt := fmRequestManager.CountStudent(sname, LoginUserDong);
  if cnt > 0 then begin
    btnSelect.Click;
  end else begin
    lblStudentKind.Caption := '신규등록';
    EnableInputControls;
    btnEditStudent.Enabled := False;

    edtBirthDate.Clear;
    edtTel.EditValue := '';
    edtAddr.EditValue := '';
    edtEmail.EditValue := '';
    edtDong.EditValue := LoginUserDong;
    ddlb_dckind.ItemIndex := 0;
    edtPrice.EditValue := 0;

    edtBirthDate.SetFocus;
  end;
end;

procedure TfmRequestWaitEdit.DisableInputControls;
begin
  edtBirthDate.Enabled := False;
  edtSex.Enabled := False;
  edtTel.Enabled := False;
  edtAddr.Enabled := False;
  edtEmail.Enabled := False;
  edtDong.Enabled := False;
  ddlb_dckind.Enabled := False;
  edtPrice.Enabled := False;
end;

procedure TfmRequestWaitEdit.EnableInputControls;
begin
  edtBirthDate.Enabled := True;
  edtSex.Enabled := True;
  edtTel.Enabled := True;
  edtAddr.Enabled := True;
  edtEmail.Enabled := True;
  edtDong.Enabled := True;
  ddlb_dckind.Enabled := True;
  edtPrice.Enabled := True;
end;

end.
