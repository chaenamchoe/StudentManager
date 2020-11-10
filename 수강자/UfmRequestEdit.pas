unit UfmRequestEdit;

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
  cxImageComboBox, DB, MemDS, DBAccess, Uni, dxSkinOffice2013White,
  dxSkinMetropolis, dxSkinMetropolisDark, cxRadioGroup,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, ExtCtrls;

type
  TfmRequestEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lblPrice: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    edtPayDate: TcxDateEdit;
    Label4: TLabel;
    ddlb_dckind: TcxLookupComboBox;
    edtStudentID: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtSex: TcxImageComboBox;
    Label7: TLabel;
    Label8: TLabel;
    btnEditStudent: TBitBtn;
    lblpayway: TLabel;
    edtPayWay: TcxImageComboBox;
    Label11: TLabel;
    edtDong: TcxLookupComboBox;
    cbRegKind: TcxImageComboBox;
    Label12: TLabel;
    btnSelect: TBitBtn;
    cbPayKind: TcxImageComboBox;
    Label3: TLabel;
    cbLectureName: TcxLookupComboBox;
    Label13: TLabel;
    edtTel: TEdit;
    edtStudentName: TEdit;
    edtBirthDate: TEdit;
    edtAddr: TEdit;
    StatusBar1: TStatusBar;
    Label10: TLabel;
    edtCashReceiptNo: TcxTextEdit;
    chkCashReceipt: TCheckBox;
    Label9: TLabel;
    chkMon1: TCheckBox;
    chkMon2: TCheckBox;
    chkMon3: TCheckBox;
    edtMon1: TcxCurrencyEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    edtMon2: TcxCurrencyEdit;
    edtMon3: TcxCurrencyEdit;
    edtPrice: TcxCurrencyEdit;
    SP_CHECK_STUDENT_EXISTS: TUniStoredProc;
    SP_CHECK_STUDENT_EXISTSRECORD_CNT: TIntegerField;
    d_REQUEST_VIEW: TDataSource;
    SP_STUDENT_EXISTS_INQUATER: TUniStoredProc;
    SP_STUDENT_EXISTS_INQUATERL_YEAR: TIntegerField;
    SP_STUDENT_EXISTS_INQUATERL_STEP: TIntegerField;
    SP_STUDENT_EXISTS_INQUATERL_NAME: TStringField;
    SP_STUDENT_EXISTS_INQUATERS_NAME: TStringField;
    SP_STUDENT_EXISTS_INQUATERS_TEL: TStringField;
    SP_STUDENT_EXISTS_INQUATERS_BIRTH: TStringField;
    SP_STUDENT_EXISTS_INQUATERP_DATE: TStringField;
    SP_STUDENT_EXISTS_INQUATERREG_PRICE1: TFloatField;
    SP_STUDENT_EXISTS_INQUATERREG_PRICE2: TFloatField;
    SP_STUDENT_EXISTS_INQUATERREG_PRICE3: TFloatField;
    procedure btnEditStudentClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ddlb_dckindPropertiesEditValueChanged(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure cbPayKindPropertiesEditValueChanged(Sender: TObject);
    procedure edtStudentNamePropertiesEditValueChanged(Sender: TObject);
    procedure edtTelChange(Sender: TObject);
    procedure edtBirthDateChange(Sender: TObject);
    procedure edtStudentNameExit(Sender: TObject);
    procedure edtStudentNameEnter(Sender: TObject);
    procedure edtBirthDateEnter(Sender: TObject);
    procedure edtTelEnter(Sender: TObject);
    procedure cbLectureNamePropertiesEditValueChanged(Sender: TObject);
    procedure chkMon1Click(Sender: TObject);
    procedure edtMon1PropertiesEditValueChanged(Sender: TObject);
    procedure chkCashReceiptClick(Sender: TObject);
  private
    procedure SaveStudentData;
    procedure DisableInputControls;
    procedure EnableInputControls;
    procedure UpdateStudentData;
    procedure InsertStudent(ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, BIGO,
      S_DONG, S_BIRTH, RECEIPT_NO : string; S_KIND, RECEIPT_YESNO : Integer; REG_DATE: TDateTime);
    procedure UpdateStudent(ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG,
      S_BIRTH, RECEIPT_NO : string; S_KIND, RECEIPT_YESNO: Integer);
    function FormatPhone(Value: String): String;
    function FormatBirth(Value: String): String;
    procedure CalculatePrice;
    function CheckIfSameStudentExists(StudentID: string) : Boolean;
    { Private declarations }
  public
    { Public declarations }
    EditMode : boolean;
    LectureID : string;
    LecturePrice : Double;
    Month1Price, Month2Price, Month3Price : Double;
    LectureYEAR, LectureSTEP : Integer;
  end;

var
  fmRequestEdit: TfmRequestEdit;

implementation

uses Udm, UfmSelectStudent, GlobalVar, UfmRequestManager, UfmStudentExists;

{$R *.dfm}

procedure TfmRequestEdit.FormShow(Sender: TObject);
begin
  EditMode := False;
  DisableInputControls;

  edtBirthDate.Clear;
  edtTel.Text := '';
  edtAddr.Text := '';
  cbRegKind.EditValue := 0;
  ddlb_dckind.ItemIndex := 0;
  edtPrice.EditValue := LecturePrice;

  cbLectureName.SetFocus;
  edtPayDate.Date := Date;

  dm.SMS_USER_SEL.Active := True;
  dm.ds_SMS_USER_SEL.DataSet.Refresh;

  dm.STUDENTS_SEL.ParamByName('STUDENT_DONG_ID').Value := LoginUserDong;
  dm.STUDENTS_SEL.Active := True;
  dm.d_STUDENTS_SEL.DataSet.Refresh;
end;

procedure TfmRequestEdit.btnSaveClick(Sender: TObject);
var
  JUKYO, STUDENT_ID, R_DATE, P_DATE, PAYBACK_BANK, PAYBACK_BANKID : string;
  PAY_AMOUNT, OUT_AMOUNT, ONE_MONTH_PRICE : Double;
  IS_DC, PAY_KIND, REG_KIND, PAY_WAY,PAYBACK_WAY, OUT_KIND, REG_MONTH : Integer;
  SelectedLecture, lecture_name, cash_receipt : string;
  month1, month2, month3 : Integer;
  MON_PRICE1, MON_PRICE2, MON_PRICE3 : Double;
  result, cash_reg_code : Integer;
  RECORD_UID : string;
begin
  RECORD_UID := FormatDateTime('yyyymmddhhnnsszzz', now);
  if cbRegKind.EditValue = 0 then begin
    edtStudentID.Text := FormatDateTime('yyyymmddhhnnsszzz', now);
    SaveStudentData;
  end;
  if EditMode = True then begin
    UpdateStudentData;
    EditMode := False;
  end;
  if chkMon1.Checked then month1 := 1;
  if chkMon2.Checked then month2 := 1;
  if chkMon3.Checked then month3 := 1;

  MON_PRICE1 := edtMon1.EditValue;
  MON_PRICE2 := edtMon2.EditValue;
  MON_PRICE3 := edtMon3.EditValue;

  STUDENT_ID := edtStudentID.Text;
  IS_DC := ddlb_dckind.EditValue;
  PAY_KIND := 0;
  PAYBACK_WAY := -1;
  OUT_KIND := -1;
  P_DATE := edtPayDate.EditText;
  R_DATE := '';
  PAY_AMOUNT := edtPrice.EditValue;
  OUT_AMOUNT := 0;
  REG_KIND := 0;
  PAY_WAY := edtPayWay.EditValue;
  PAYBACK_BANK := '';
  PAYBACK_BANKID := '';
  CASH_RECEIPT := edtCashReceiptNo.Text;

  SelectedLecture := cbLectureName.EditValue;
  SP_CHECK_STUDENT_EXISTS.ParamByName('LEC_ID').Value := SelectedLecture;
  SP_CHECK_STUDENT_EXISTS.ParamByName('STD_ID').Value := STUDENT_ID;
  SP_CHECK_STUDENT_EXISTS.Active := True;
  SP_CHECK_STUDENT_EXISTS.Refresh;
  if SP_CHECK_STUDENT_EXISTSRECORD_CNT.Value > 0 then begin
    ShowMessage('중복 수강자 등록입니다. 확인하세요.');
    Exit;
  end else begin
    if chkCashReceipt.Checked then
      cash_reg_code := 1
    else
      cash_reg_code := 0;

    dm.InsertRegistedLecture(RECORD_UID, SelectedLecture, STUDENT_ID, R_DATE, P_DATE, PAYBACK_BANK, PAYBACK_BANKID, CASH_RECEIPT,
      PAY_AMOUNT, OUT_AMOUNT, MON_PRICE1, MON_PRICE2, MON_PRICE3, IS_DC, PAY_KIND, REG_KIND, PAY_WAY,
      PAYBACK_WAY, OUT_KIND, month1, month2, month3, 0, 0, 0, cash_reg_code);

    //현금영수증 등록처리
    if chkCashReceipt.Checked = True then begin
      result := dm.RegistCashBill(edtCashReceiptNo.Text, STUDENT_ID, RECORD_UID, STUDENT_ID, PAY_AMOUNT);
      if result = 1 then begin
        dm.InsertCashBill(1, edtCashReceiptNo.Text, edtStudentName.Text, RECORD_UID, PAY_AMOUNT);
      end;
    end;
    lecture_name := cbLectureName.Text;

    fmRequestManager.RefreshAllData(SelectedLecture);

    edtStudentName.Text := '';
    DisableInputControls;

    edtBirthDate.Clear;
    edtTel.Text := '';
    edtAddr.Text := '';
    edtCashReceiptNo.Text := '';
    chkCashReceipt.Checked := False;
    chkMon1.Checked := True;
    chkMon2.Checked := True;
    chkMon3.Checked := True;
    ddlb_dckind.EditValue := 1;
    edtPrice.EditValue := LecturePrice;
    btnSave.Enabled := False;
    edtStudentName.SetFocus;
  end;
end;

procedure TfmRequestEdit.SaveStudentData;
var
  ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, BIGO, S_EMAIL, S_DONG, S_BIRTH, RECEIPT_NO : string;
  S_KIND, RECEIPT_YESNO : Integer;
  REG_DATE : TDateTime;
begin
  ID        := edtStudentID.Text;
  S_NAME    := edtStudentName.Text;
  S_BIRTH   := edtBirthDate.Text;
  S_TEL     := edtTel.Text;
  S_ADDR    := edtAddr.Text;
  S_SEX     := edtSex.EditValue;
  S_KIND    := ddlb_dckind.EditValue;
  REG_DATE  := edtPayDate.Date;
  DONG_ID   := LoginUserDong;
  //S_DONG    := edtDong.EditValue;
  BIGO      := '';
  RECEIPT_NO := edtCashReceiptNo.Text;
  if chkCashReceipt.Checked then
    RECEIPT_YESNO := 1
  else
    RECEIPT_YESNO := 0;
  InsertStudent(ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, BIGO, S_DONG, S_BIRTH, RECEIPT_NO, S_KIND, RECEIPT_YESNO, REG_DATE);
  dm.d_STUDENTS_SEL.DataSet.Refresh;
end;

procedure TfmRequestEdit.UpdateStudentData;
var
  ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_EMAIL, S_DONG, RECEIPT_NO, S_BIRTH: string;
  S_KIND, RECEIPT_YESNO : Integer;
begin
  ID      := edtStudentID.Text;
  S_NAME  := edtStudentName.Text;
  S_BIRTH := edtBirthDate.Text;
  S_TEL   := edtTel.Text;
  S_ADDR  := edtAddr.Text;
  S_SEX   := edtSex.EditValue;
  S_KIND  := ddlb_dckind.EditValue;
  //S_DONG  := edtDong.EditValue;
  RECEIPT_NO := edtCashReceiptNo.Text;
  if chkCashReceipt.Checked then
    RECEIPT_YESNO := 1
  else
    RECEIPT_YESNO := 0;

  UpdateStudent(ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO, S_KIND, RECEIPT_YESNO);
  dm.d_STUDENTS_SEL.DataSet.Refresh;
end;
procedure TfmRequestEdit.UpdateStudent(ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_DONG, S_BIRTH, RECEIPT_NO : string; S_KIND, RECEIPT_YESNO: Integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('UPDATE STUDENTS SET ');
      SQL.Add('S_NAME = :S_NAME, S_TEL = :S_TEL, S_ADDR = :S_ADDR, S_SEX = :S_SEX, ');
      SQL.Add('S_KIND = :S_KIND, S_DONG = :S_DONG, S_BIRTH = :S_BIRTH, ');
      SQL.Add('CASH_RECEIPT_NO = :RECEIPT_NO, CASH_RECEIPT_YESNO = :RECEIPT_YESNO ');
      SQL.Add('WHERE ID = :ID');

      ParamByName('ID').AsString := ID;
      ParamByName('S_NAME').AsString := S_NAME;
      ParamByName('S_TEL').AsString := S_TEL;
      ParamByName('S_ADDR').AsString := S_ADDR;
      ParamByName('S_SEX').AsString := S_SEX;
      ParamByName('S_KIND').AsInteger := S_KIND;
      ParamByName('S_DONG').AsString := '';
      ParamByName('S_BIRTH').AsString := S_BIRTH;
      ParamByName('RECEIPT_NO').AsString := RECEIPT_NO;
      ParamByName('RECEIPT_YESNO').AsInteger := RECEIPT_YESNO;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmRequestEdit.InsertStudent(ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, BIGO, S_DONG, S_BIRTH, RECEIPT_NO : string;
                  S_KIND, RECEIPT_YESNO : Integer; REG_DATE : TDateTime);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('INSERT INTO STUDENTS ');
      SQL.Add('(ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_KIND, BIGO, REG_DATE, S_DONG, S_BIRTH, CASH_RECEIPT_NO, CASH_RECEIPT_YESNO) ');
      SQL.Add('VALUES (:ID, :DONG_ID, :S_NAME, :S_TEL, :S_ADDR, :S_SEX, ');
      SQL.Add(':S_KIND, :BIGO, :REG_DATE, :S_DONG, :S_BIRTH, :RECEIPT_NO, :RECEIPT_YESNO) ');

      ParamByName('ID').AsString := ID;
      ParamByName('DONG_ID').AsString := DONG_ID;
      ParamByName('S_NAME').AsString := S_NAME;
      ParamByName('S_TEL').AsString := S_TEL;
      ParamByName('S_ADDR').AsString := S_ADDR;
      ParamByName('S_SEX').AsString := S_SEX;
      ParamByName('S_KIND').AsInteger := S_KIND;
      ParamByName('BIGO').AsString := BIGO;
      ParamByName('S_DONG').AsString := '';
      ParamByName('S_BIRTH').AsString := S_BIRTH;
      ParamByName('REG_DATE').AsDateTime := REG_DATE;
      ParamByName('RECEIPT_NO').AsString := RECEIPT_NO;
      ParamByName('RECEIPT_YESNO').AsInteger := RECEIPT_YESNO;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmRequestEdit.btnSelectClick(Sender: TObject);
var
  student_id : string;
begin
  fmSelectStudent := TfmSelectStudent.Create(Self);
  try
    fmSelectStudent.q_STUDENTS_SELECT.ParamByName('dong_id').AsString := LoginUserDong;
    fmSelectStudent.q_STUDENTS_SELECT.ParamByName('s_name').AsString := edtStudentName.Text;
    fmSelectStudent.q_STUDENTS_SELECT.Active := True;
    fmSelectStudent.d_STUDENTS_SELECT.DataSet.Refresh;
    fmSelectStudent.ShowModal;
    if fmSelectStudent.ModalResult = mrOk then begin
      cbRegKind.EditValue := 1;
      DisableInputControls;

      student_id := fmSelectStudent.q_STUDENTS_SELECTID.AsString;
      dm.SaveStudentInfoToStructure(student_id);
      edtStudentName.Text := dm.StudentInfo.S_NAME;
      edtStudentID.Text := dm.StudentInfo.ID;
      edtBirthDate.Text := dm.StudentInfo.S_BIRTH;
      edtSex.EditValue := dm.StudentInfo.S_SEX;
      edtTel.Text := dm.StudentInfo.S_TEL;
      edtAddr.Text := dm.StudentInfo.S_ADDR;
      //edtDong.EditValue := dm.StudentInfo.S_DONG;
      ddlb_dckind.EditValue := dm.StudentInfo.S_KIND;
      edtCashReceiptNo.Text := dm.StudentInfo.CASH_RECEIPT_NO;
      chkCashReceipt.Checked := dm.StudentInfo.CASH_RECEIPT_YESNO = 1;

      btnEditStudent.Enabled := True;
      edtPrice.Enabled := True;
      edtPayWay.Enabled := True;
      btnSave.Enabled := True;
      btnSave.SetFocus;
    end else begin
      cbRegKind.EditValue := 0;
      EnableInputControls;
      btnEditStudent.Enabled := False;
      btnSave.Enabled := True;

      edtBirthDate.Text := '';
      edtTel.Text := '';
      edtAddr.Text := '';
      //edtDong.EditValue := LoginUserDong;
      ddlb_dckind.ItemIndex := 0;
      edtPrice.EditValue := LecturePrice;
      edtCashReceiptNo.Text := '';
      chkCashReceipt.Checked := False;

      edtBirthDate.SetFocus;
    end;
  finally
    fmSelectStudent.Free;
  end;
end;

procedure TfmRequestEdit.cbLectureNamePropertiesEditValueChanged(
  Sender: TObject);
var
  l_id : string;
begin
  l_id := cbLectureName.EditValue;
  dm.d_lecture_select.DataSet.Locate('ID', l_id, []);
  LecturePrice := dm.d_lecture_select.DataSet.FieldByName('L_PRICE').AsFloat;
  Month1Price := dm.d_lecture_select.DataSet.FieldByName('MONTH1_PRICE').AsFloat;
  Month2Price := dm.d_lecture_select.DataSet.FieldByName('MONTH2_PRICE').AsFloat;
  Month3Price := dm.d_lecture_select.DataSet.FieldByName('MONTH3_PRICE').AsFloat;
  edtMon1.EditValue := Month1Price;
  edtMon2.EditValue := Month2Price;
  edtMon3.EditValue := Month3Price;
  edtPrice.EditValue := LecturePrice;
end;

procedure TfmRequestEdit.cbPayKindPropertiesEditValueChanged(Sender: TObject);
begin
  edtPrice.Visible := cbPayKind.EditValue = 0;
  edtPayWay.Visible := cbPayKind.EditValue = 0;
  lblPrice.Visible := cbPayKind.EditValue = 0;
  lblpayway.Visible := cbPayKind.EditValue = 0;
end;

procedure TfmRequestEdit.chkCashReceiptClick(Sender: TObject);
begin
  if chkCashReceipt.Checked then begin
    if not dm.SMS_USER_SEL.RecordCount > 0 then begin
      ShowMessage('현금영수증 발급서비스 회원사 등록을 하셔야 합니다.');
      chkCashReceipt.Checked := False;
    end;

    if edtCashReceiptNo.Text = '' then begin
      ShowMessage('현금영수증번호 또는 전화번호를 입력하세요.');
      chkCashReceipt.Checked := False;
    end;
    edtCashReceiptNo.SetFocus;
  end;
end;

procedure TfmRequestEdit.chkMon1Click(Sender: TObject);
begin
  CalculatePrice;
end;

procedure TfmRequestEdit.btnEditStudentClick(Sender: TObject);
begin
  EditMode := True;
  EnableInputControls;
  edtBirthDate.SetFocus;
end;

procedure TfmRequestEdit.CalculatePrice;
var
  dc_kind, mon1, mon2, mon3 : integer;
  m1_price, m2_price, m3_price : Double;
begin
  dc_kind := ddlb_dckind.EditValue;
  case dc_kind of
    1: begin
      m1_price := Month1Price;
      m2_price := Month2Price;
      m3_price := Month3Price;
    end;
    2..7: begin
      m1_price := Month1Price / 2;
      m2_price := Month2Price / 2;
      m3_price := Month3Price / 2;
    end;
    8: begin
      m1_price := 0;
      m2_price := 0;
      m3_price := 0;
    end;
  end;
  if chkMon1.Checked then begin
    mon1 := 1;
    edtMon1.EditValue := m1_price;
  end else begin
    mon1 := 0;
    edtMon1.EditValue := 0;
  end;
  if chkMon2.Checked then begin
    mon2 := 1;
    edtMon2.EditValue := m2_price;
  end else begin
    mon2 := 0;
    edtMon2.EditValue := 0;
  end;
  if chkMon3.Checked then begin
    mon3 := 1;
    edtMon3.EditValue := m3_price;
  end else begin
    mon3 := 0;
    edtMon3.EditValue := 0;
  end;
  edtPrice.EditValue := edtMon1.EditValue + edtMon2.EditValue + edtMon3.EditValue;
end;

procedure TfmRequestEdit.ddlb_dckindPropertiesEditValueChanged(Sender: TObject);
begin
  CalculatePrice;
end;

procedure TfmRequestEdit.edtStudentNamePropertiesEditValueChanged(
  Sender: TObject);
var
  sname : string;
  cnt : integer;
begin
  sname := edtStudentName.Text;
  cnt := fmRequestManager.CountStudent(sname);
  if cnt > 0 then begin
    btnSelect.Click;
  end else begin
    cbRegKind.EditValue := 0;
    EnableInputControls;
    btnEditStudent.Enabled := False;

    edtBirthDate.Text := '';
    edtTel.Text := '';
    edtAddr.Text := '';
    //edtDong.EditValue := LoginUserDong;
    ddlb_dckind.ItemIndex := 0;

    edtBirthDate.SetFocus;
  end;
end;

function TfmRequestEdit.FormatPhone(Value: String): String;
var
  ac, pref, num: String;
begin
  // comes in like 3334449999
  case Length(Value) of
    7: begin
      AC   := Copy(Value,1,3);
      Pref := Copy(Value,4,4);
      Result := ac + '-' + Pref;
    end;
    8: begin
      AC   := Copy(Value,1,4);
      Pref := Copy(Value,5,4);
      Result := ac + '-' + Pref;
    end;
    9: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,3);
      Num  := Copy(Value,6,4);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    10: begin
      AC   := Copy(Value,1,3);
      Pref := Copy(Value,4,3);
      Num  := Copy(Value,7,4);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    11: begin
      AC   := Copy(Value,1,3);
      Pref := Copy(Value,4,4);
      Num  := Copy(Value,8,4);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    else begin
      Result := Value;
    end;
  end;
end;

function TfmRequestEdit.FormatBirth(Value: String): String;
var
  ac, pref, num: String;
begin
  case Length(Value) of
    3: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Result := ac + '-' + Pref;
    end;
    4: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Result := ac + '-' + Pref;
    end;
    5: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Num  := Copy(Value,5,2);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    6: begin
      AC   := Copy(Value,1,2);
      Pref := Copy(Value,3,2);
      Num  := Copy(Value,5,2);
      Result := ac + '-' + Pref + '-' + Num;
    end;
    else begin
      Result := Value;
    end;
  end;
end;

procedure TfmRequestEdit.DisableInputControls;
begin
  edtBirthDate.Enabled := False;
  edtSex.Enabled := False;
  edtTel.Enabled := False;
  edtAddr.Enabled := False;
  //edtDong.Enabled := False;
  ddlb_dckind.Enabled := False;
  edtPrice.Enabled := False;
  edtPayWay.Enabled := False;
end;

procedure TfmRequestEdit.edtBirthDateChange(Sender: TObject);
var
  BirthStr : String;
begin
  BirthStr := StringReplace(edtBirthDate.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
  edtBirthDate.Text := FormatBirth(BirthStr);
  edtBirthDate.SelStart := Length(edtBirthDate.Text);
end;

procedure TfmRequestEdit.edtBirthDateEnter(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'yymmdd 형태로 숫자만 입력하세요.';
end;

procedure TfmRequestEdit.edtMon1PropertiesEditValueChanged(Sender: TObject);
begin
  edtPrice.EditValue := edtMon1.EditValue + edtMon2.EditValue + edtMon3.EditValue;
end;

procedure TfmRequestEdit.edtStudentNameEnter(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := '성명을 입력한 후 엔터키를 치세요.';
end;

procedure TfmRequestEdit.edtStudentNameExit(Sender: TObject);
var
  sname : string;
  cnt : integer;
begin
  sname := edtStudentName.Text;
  if Length(sname) > 0 then begin
    cnt := fmRequestManager.CountStudent(sname);
    if cnt > 0 then begin
      btnSelect.Click;
      if CheckIfSameStudentExists(edtStudentID.Text) = True then begin
        fmStudentExists := TfmStudentExists.Create(self);
        try
          fmStudentExists.ShowModal;
        finally
          fmStudentExists.Free;
        end;
      end;
    end else begin
      cbRegKind.EditValue := 0;
      EnableInputControls;
      btnEditStudent.Enabled := False;
      btnSave.Enabled := True;

      edtBirthDate.Text := '';
      edtTel.Text := '';
      edtAddr.Text := '';
      //edtDong.EditValue := LoginUserDong;
      ddlb_dckind.EditValue := 1;

      edtBirthDate.SetFocus;
    end;
  end else begin
    btnSave.Enabled := False;
  end;
end;

function TfmRequestEdit.CheckIfSameStudentExists(StudentID : string) : Boolean;
begin
  SP_STUDENT_EXISTS_INQUATER.ParamByName('jo_year').Value := LectureYEAR;
  SP_STUDENT_EXISTS_INQUATER.ParamByName('jo_step').Value := LectureSTEP;
  SP_STUDENT_EXISTS_INQUATER.ParamByName('jo_student').Value := StudentID;
  SP_STUDENT_EXISTS_INQUATER.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
  if d_REQUEST_VIEW.DataSet.RecordCount > 0 then
    Result := True
  else
    Result := False;
end;

procedure TfmRequestEdit.edtTelChange(Sender: TObject);
var
  PhoneStr : String;
begin
  PhoneStr := StringReplace(edtTel.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
  edtTel.Text := FormatPhone(PhoneStr);
  edtTel.SelStart := Length(edtTel.Text);
end;

procedure TfmRequestEdit.edtTelEnter(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := '하이픈(-)을 빼고 숫자만 입력하세요.';
end;

procedure TfmRequestEdit.EnableInputControls;
begin
  edtBirthDate.Enabled := True;
  edtSex.Enabled := True;
  edtTel.Enabled := True;
  edtAddr.Enabled := True;
  //edtDong.Enabled := True;
  ddlb_dckind.Enabled := True;
  edtPrice.Enabled := True;
  edtPayWay.Enabled := True;
end;

end.
