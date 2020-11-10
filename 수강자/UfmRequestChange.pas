unit UfmRequestChange;

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
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmRequestChange = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    edtPayDate: TcxDateEdit;
    edtStudentID: TcxTextEdit;
    Label3: TLabel;
    cbLectureName: TcxLookupComboBox;
    StatusBar1: TStatusBar;
    Label9: TLabel;
    chkMon1: TCheckBox;
    chkMon2: TCheckBox;
    chkMon3: TCheckBox;
    Label1: TLabel;
    cbLectureNameNew: TcxLookupComboBox;
    edtStudentName: TEdit;
    Label4: TLabel;
    edtRequestID: TEdit;
    q_update_lectureid: TUniQuery;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure UpdateRegistedLecture(request_id : string; npay_amount, OMONTH1_PRICE, OMONTH2_PRICE, OMONTH3_PRICE : Double; MONTH1, MONTH2, MONTH3 : Integer);
    { Private declarations }
  public
    { Public declarations }
    EditMode : boolean;
    LectureID : string;
    LecturePrice : Double;
    LectureYEAR, LectureSTEP : Integer;
    IS_DC, PAY_KIND, PAY_WAY : Integer;
    PAY_AMOUNT : Double;
    NMONTH1_PRICE, NMONTH2_PRICE, NMONTH3_PRICE : Double;
    OMONTH1_PRICE, OMONTH2_PRICE, OMONTH3_PRICE : Double;
  end;

var
  fmRequestChange: TfmRequestChange;

implementation

uses Udm, UfmSelectStudent, GlobalVar, UfmRequestManager;

{$R *.dfm}

procedure TfmRequestChange.FormShow(Sender: TObject);
begin
  cbLectureName.SetFocus;
  edtPayDate.Date := Date;
end;

procedure TfmRequestChange.btnSaveClick(Sender: TObject);
var
  JUKYO, STUDENT_ID, R_DATE, P_DATE, PAYBACK_BANK, PAYBACK_BANKID : string;
  OUT_AMOUNT, OldPayAmount, NewPayAmount : Double;
  NewLectureID, lecture_name, request_id : string;
  omonth1, omonth2, omonth3, month_total : Integer;
  nmonth1, nmonth2, nmonth3, nmonth_total : Integer;
  PAYBACK_WAY, OUT_KIND, REG_KIND : Integer;
  RECORD_UID : string;
begin
  RECORD_UID := FormatDateTime('yyyymmddhhnnsszzz', now);
  STUDENT_ID := edtStudentID.Text;
  NewLectureID := fmRequestChange.cbLectureNameNew.EditValue;
  if (chkMon1.Checked = True) and (chkMon2.Checked = True) and (chkMon3.Checked = True) then begin
    q_update_lectureid.ParamByName('nlecture_id').Value := NewLectureID;
    q_update_lectureid.ParamByName('id').Value := edtRequestID.Text;
    q_update_lectureid.Execute;
    ModalResult := mrOk;
  end else begin
    if chkMon1.Checked then begin
      omonth1 := 0;
      nmonth1 := 1;
      NMONTH1_PRICE := OMONTH1_PRICE;
      OMONTH1_PRICE := 0;
    end else begin
      omonth1 := 1;
      nmonth1 := 0;
      NMONTH1_PRICE := 0;
    end;
    if chkMon2.Checked then begin
      omonth2 := 0;
      nmonth2 := 1;
      NMONTH2_PRICE := OMONTH2_PRICE;
      OMONTH2_PRICE := 0;
    end else begin
      omonth2 := 1;
      nmonth2 := 0;
      NMONTH2_PRICE := 0;
    end;
    if chkMon3.Checked then begin
      omonth3 := 0;
      nmonth3 := 1;
      NMONTH3_PRICE := OMONTH3_PRICE;
      OMONTH3_PRICE := 0;
    end else begin
      omonth3 := 1;
      nmonth3 := 0;
      NMONTH3_PRICE := 0;
    end;

    P_DATE := DateTimeToStr(edtPayDate.Date);
    R_DATE := '';
    PAYBACK_BANK := '';
    PAYBACK_BANKID := '';
    OUT_AMOUNT := 0;
    PAYBACK_WAY := -1;
    OUT_KIND := -1;
    REG_KIND := 1;
    OldPayAmount := OMONTH1_PRICE + OMONTH2_PRICE + OMONTH3_PRICE;
    NewPayAmount := NMONTH1_PRICE + NMONTH2_PRICE + NMONTH3_PRICE;
    dm.InsertRegistedLecture(RECORD_UID, NewLectureID, STUDENT_ID, R_DATE, P_DATE, PAYBACK_BANK, PAYBACK_BANKID, '', NewPayAmount,
    OUT_AMOUNT, NMONTH1_PRICE, NMONTH2_PRICE, NMONTH3_PRICE, IS_DC, PAY_KIND, REG_KIND, PAY_WAY, PAYBACK_WAY,
      OUT_KIND, nmonth1, nmonth2, nmonth3, 0, 0, 0, 0);

    request_id := edtRequestID.Text;
    UpdateRegistedLecture(request_id, OldPayAmount, OMONTH1_PRICE, OMONTH2_PRICE, OMONTH3_PRICE, omonth1, omonth2, omonth3);
    ModalResult := mrOk;
  end;
end;

procedure TfmRequestChange.UpdateRegistedLecture(request_id : string;
  npay_amount, OMONTH1_PRICE, OMONTH2_PRICE, OMONTH3_PRICE : Double; MONTH1, MONTH2, MONTH3 : Integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('UPDATE REGISTED_LECTURE ');
      SQL.Add('SET REG_KIND = 1, PAY_AMOUNT = :npay_amount, reg_month = :month1, reg_month2 = :month2, reg_month3 = :month3, ');
      SQL.Add('reg_price1 = :month1_price, reg_price2 = :month2_price, reg_price3 = :month3_price ');
      SQL.Add('where id = :id');
      ParamByName('npay_amount').AsFloat := npay_amount;
      ParamByName('MONTH1').AsInteger := MONTH1;
      ParamByName('MONTH2').AsInteger := MONTH2;
      ParamByName('MONTH3').AsInteger := MONTH3;
      ParamByName('MONTH1_price').AsFloat := OMONTH1_PRICE;
      ParamByName('MONTH2_price').AsFloat := OMONTH2_PRICE;
      ParamByName('MONTH3_price').AsFloat := OMONTH3_PRICE;
      ParamByName('ID').AsString := request_id;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

end.
