unit UfmMoneyBackReport2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, DateUtils,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven,
  dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPSContainerLnk, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxmdaset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxContainer, ComCtrls,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, MemDS, DBAccess, Uni, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, IniFiles, dxSkinSharp, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmMoneyBackReport2 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    edtYear: TEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    edtOwener: TEdit;
    edtAddr: TEdit;
    edtBankName: TEdit;
    edtBankOwener: TEdit;
    edtBankID: TEdit;
    GroupBox3: TGroupBox;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1desc: TStringField;
    btnPrint: TBitBtn;
    btnSave: TBitBtn;
    PanelPreview: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxCustomContainerReportLink;
    ScrollBox1: TScrollBox;
    PanelClient: TPanel;
    Label14: TLabel;
    lblYear: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Shape14: TShape;
    Shape16: TShape;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    edtBalDate: TcxDateEdit;
    edtOutDate: TcxDateEdit;
    edtRegDate2: TcxDateEdit;
    lblBalDate: TLabel;
    lblOutDate: TLabel;
    lblRegDate2: TLabel;
    lblAmountText: TLabel;
    lblAmountNum: TLabel;
    lblName: TLabel;
    lblAddr: TLabel;
    lblBankName: TLabel;
    lblBankOwener: TLabel;
    lblBankID: TLabel;
    edtAmount: TcxCurrencyEdit;
    q_MONEY_BACK_REPORT: TUniQuery;
    Label15: TLabel;
    lblReceiptDate: TLabel;
    Label26: TLabel;
    Shape2: TShape;
    Shape13: TShape;
    Label24: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label28: TLabel;
    Label34: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Label44: TLabel;
    Label45: TLabel;
    lblDongName: TLabel;
    lblRequestDate: TLabel;
    Label48: TLabel;
    lblProgramName: TLabel;
    lblRequester: TLabel;
    lblPayDate: TLabel;
    lblPayAmount: TLabel;
    lblRequestPrice: TLabel;
    lblBackReason: TLabel;
    Label54: TLabel;
    edtPhone: TEdit;
    Label11: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    edtLectureName: TEdit;
    edtRequester: TEdit;
    edtPayDate: TEdit;
    edtPayAmount: TEdit;
    edtRequestPrice: TEdit;
    edtBackReason: TEdit;
    edtBigo: TEdit;
    Label61: TLabel;
    Label13: TLabel;
    procedure btnPrintClick(Sender: TObject);
    procedure edtYearChange(Sender: TObject);
    procedure edtBalDatePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtOutDatePropertiesEditValueChanged(Sender: TObject);
    procedure edtRegDate2PropertiesEditValueChanged(Sender: TObject);
    procedure edtAmountPropertiesEditValueChanged(Sender: TObject);
    procedure edtOwenerChange(Sender: TObject);
    procedure edtAddrChange(Sender: TObject);
    procedure edtBankNameChange(Sender: TObject);
    procedure edtBankOwenerChange(Sender: TObject);
    procedure edtBankIDChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtLectureNameChange(Sender: TObject);
    procedure edtRequesterChange(Sender: TObject);
    procedure edtPayDateChange(Sender: TObject);
    procedure edtPayAmountChange(Sender: TObject);
    procedure edtRequestPriceChange(Sender: TObject);
    procedure edtBackReasonChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyBackReport2: TfmMoneyBackReport2;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

function GetDayOfWeek(D : TDateTime) : string;
var
  WeekStr : string;
begin
  WeekStr := '';
  if DayOfWeek((D)) = 1 then WeekStr:='일';
  if DayOfWeek((D)) = 2 then WeekStr:='월';
  if DayOfWeek((D)) = 3 then WeekStr:='화';
  if DayOfWeek((D)) = 4 then WeekStr:='수';
  if DayOfWeek((D)) = 5 then WeekStr:='목';
  if DayOfWeek((D)) = 6 then WeekStr:='금';
  if DayOfWeek((D)) = 7 then WeekStr:='토';
  Result := WeekStr;
end;

function IntToHanguel(value : int64) : string;
const
  NumberChar: array['0'..'9'] of string = ('영', '일', '이', '삼', '사', '오', '육', '칠', '팔', '구');
  LevelChar : array[0..3] of String = ('', '십', '백', '천');
  DecimalChar : array[0..5] of String = ('', '만', '억', '조', '경', '현');
var
  S : String;
  UseDecimal : Boolean;
  i, Level : Integer;
begin
  Result := '';
  S := IntToStr(Value);
  UseDecimal := False;
  for i := 1 to Length(S) do begin
    Level := Length(S) - i;
    if S[i] <> '0' then begin
      UseDecimal := True;
      if Level mod 4 = 0 then begin
        Result := Result + NumberChar[S[i]] + DecimalChar[Level div 4];
        UseDecimal := False;
      end else
        Result := Result + NumberChar[S[i]] + LevelChar[Level mod 4];
    end else
    if (Level mod 4 = 0) and UseDecimal then begin
      Result := Result + DecimalChar[Level div 4];
      UseDecimal := False;
    end;
  end;
end;

procedure TfmMoneyBackReport2.FormShow(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName, addsign : string;
begin
  lblDongName.Caption := LoginUserDongName + ' 주민자치회장 귀하';

end;

procedure TfmMoneyBackReport2.btnSaveClick(Sender: TObject);
var
  i, cnt : Integer;
  jukyo_list : string;
begin
  q_MONEY_BACK_REPORT.ParamByName('M_YEAR').Value := StrToInt(edtYear.Text);
  q_MONEY_BACK_REPORT.ParamByName('BALUI_DATE').Value := edtBalDate.Date;
  q_MONEY_BACK_REPORT.ParamByName('OUT_DATE').Value := edtOutDate.Date;
//  q_MONEY_BACK_REPORT.ParamByName('REG_DATE1').Value := edtRegDate1.Date;
  q_MONEY_BACK_REPORT.ParamByName('REG_DATE2').Value := edtRegDate2.Date;
  q_MONEY_BACK_REPORT.ParamByName('OUT_AMOUNT').AsFloat := edtAmount.EditValue;

  q_MONEY_BACK_REPORT.ParamByName('LECTURE_NAME').Value := edtLectureName.Text;
  q_MONEY_BACK_REPORT.ParamByName('LECTURE_SNAME').Value := edtRequester.Text;
  q_MONEY_BACK_REPORT.ParamByName('PAY_DATE').Value := edtPayDate.Text;
  q_MONEY_BACK_REPORT.ParamByName('PAY_AMOUNT').Value := edtPayAmount.Text;
  q_MONEY_BACK_REPORT.ParamByName('BACK_REASON').Value := edtBackReason.Text;

  q_MONEY_BACK_REPORT.ParamByName('REQ_ADDR').Value := edtAddr.Text;
  q_MONEY_BACK_REPORT.ParamByName('REQ_TEL').Value := edtPhone.Text;
  q_MONEY_BACK_REPORT.ParamByName('REQ_NAME').Value := edtBankOwener.Text;
  q_MONEY_BACK_REPORT.ParamByName('REQ_BANK').Value := edtBankName.Text;
  q_MONEY_BACK_REPORT.ParamByName('REQ_BANKID').Value := edtBankID.Text;

  q_MONEY_BACK_REPORT.ParamByName('DONG_ID').Value := LoginUserDong;
  q_MONEY_BACK_REPORT.ParamByName('UNIQ_ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
  q_MONEY_BACK_REPORT.ParamByName('M_DATE').Value := Date;
  q_MONEY_BACK_REPORT.Execute;
  ShowMessage('반환결의서 저장완료!');
end;

procedure TfmMoneyBackReport2.btnPrintClick(Sender: TObject);
begin
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmMoneyBackReport2.edtAddrChange(Sender: TObject);
begin
  lblAddr.Caption := edtAddr.Text;
end;

procedure TfmMoneyBackReport2.edtAmountPropertiesEditValueChanged(
  Sender: TObject);
var
  nAmount : Int64;
begin
  nAmount := edtAmount.EditValue;
  lblAmountText.Caption := '일금 ' + IntToHanguel(nAmount) + '원정';
  lblAmountNum.Caption := FormatFloat('\#,0', edtAmount.EditValue);
end;

procedure TfmMoneyBackReport2.edtBackReasonChange(Sender: TObject);
begin
  lblBackReason.Caption := edtBackReason.Text;
end;

procedure TfmMoneyBackReport2.edtBalDatePropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtBalDate.Date;
  lblBalDate.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
  lblRequestDate.Caption := FormatDateTime('yyyy년 mm월 dd일', sDate);
  lblReceiptDate.Caption := FormatDateTime('yyyy년 mm월 dd일', sDate);
end;

procedure TfmMoneyBackReport2.edtBankIDChange(Sender: TObject);
begin
  lblBankID.Caption := edtBankID.Text;
end;

procedure TfmMoneyBackReport2.edtBankNameChange(Sender: TObject);
begin
  lblBankName.Caption := edtBankName.Text;
end;

procedure TfmMoneyBackReport2.edtBankOwenerChange(Sender: TObject);
begin
  lblBankOwener.Caption := edtBankOwener.Text;
end;

procedure TfmMoneyBackReport2.edtLectureNameChange(Sender: TObject);
begin
  lblProgramName.Caption := edtLectureName.Text;
end;

procedure TfmMoneyBackReport2.edtOutDatePropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtOutDate.Date;
  lblOutDate.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyBackReport2.edtOwenerChange(Sender: TObject);
begin
  lblProgramName.Caption := edtOwener.Text;
  lblName.Caption := edtOwener.Text;
end;

procedure TfmMoneyBackReport2.edtPayAmountChange(Sender: TObject);
begin
  lblPayAmount.Caption := edtPayAmount.Text;
end;

procedure TfmMoneyBackReport2.edtPayDateChange(Sender: TObject);
begin
  lblPayDate.Caption := edtPayDate.Text;
end;

procedure TfmMoneyBackReport2.edtRegDate2PropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtRegDate2.Date;
  lblRegDate2.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyBackReport2.edtRequesterChange(Sender: TObject);
begin
  lblRequester.Caption := edtRequester.Text;
end;

procedure TfmMoneyBackReport2.edtRequestPriceChange(Sender: TObject);
begin
  lblRequestPrice.Caption := edtRequestPrice.Text;
end;

procedure TfmMoneyBackReport2.edtYearChange(Sender: TObject);
begin
  lblYear.Caption := edtYear.Text + '년도';
end;

end.
