unit UfmMoneyOutReport;

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
  TfmMoneyOutReport = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtYear: TEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtOwener: TEdit;
    edtComp: TEdit;
    edtAddr: TEdit;
    edtBankName: TEdit;
    edtBankOwener: TEdit;
    edtBankID: TEdit;
    GroupBox3: TGroupBox;
    gridOut: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GroupBox4: TGroupBox;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1desc: TStringField;
    gridOutRecId: TcxGridDBColumn;
    gridOutdesc: TcxGridDBColumn;
    edtBigo: TMemo;
    btnPrint: TBitBtn;
    btnSave: TBitBtn;
    PanelPreview: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxCustomContainerReportLink;
    ScrollBox1: TScrollBox;
    PanelClient: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    lblYear: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Shape1: TShape;
    Shape2: TShape;
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
    Label31: TLabel;
    Label32: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Shape17: TShape;
    edtBalDate: TcxDateEdit;
    edtOutDate: TcxDateEdit;
    edtRegDate1: TcxDateEdit;
    edtRegDate2: TcxDateEdit;
    lblBalDate: TLabel;
    lblOutDate: TLabel;
    lblRegDate1: TLabel;
    lblRegDate2: TLabel;
    lblAmountText: TLabel;
    lblAmountNum: TLabel;
    lblDesc1: TLabel;
    lblDesc2: TLabel;
    lblDesc3: TLabel;
    lblDesc4: TLabel;
    lblDesc5: TLabel;
    lblName: TLabel;
    lblComp: TLabel;
    lblAddr: TLabel;
    lblBankName: TLabel;
    lblBankOwener: TLabel;
    lblBankID: TLabel;
    lblBigo: TLabel;
    edtAmount: TcxCurrencyEdit;
    Panel2: TPanel;
    btnEditDesc: TBitBtn;
    q_MONEY_OUT_REPORT_INS: TUniQuery;
    shp1: TShape;
    lbl1: TLabel;
    chkAddSign: TCheckBox;
    procedure btnPrintClick(Sender: TObject);
    procedure edtYearChange(Sender: TObject);
    procedure edtBalDatePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtOutDatePropertiesEditValueChanged(Sender: TObject);
    procedure edtRegDate1PropertiesEditValueChanged(Sender: TObject);
    procedure edtRegDate2PropertiesEditValueChanged(Sender: TObject);
    procedure edtAmountPropertiesEditValueChanged(Sender: TObject);
    procedure edtOwenerChange(Sender: TObject);
    procedure edtCompChange(Sender: TObject);
    procedure edtAddrChange(Sender: TObject);
    procedure edtBankNameChange(Sender: TObject);
    procedure edtBankOwenerChange(Sender: TObject);
    procedure edtBankIDChange(Sender: TObject);
    procedure edtBigoChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditDescClick(Sender: TObject);
    procedure chkAddSignClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyOutReport: TfmMoneyOutReport;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

function GetDayOfWeek(D : TDateTime) : string;
var
  WeekStr : string;
begin
  WeekStr := '';
  if DayOfWeek((D)) = 1 then WeekStr:='��';
  if DayOfWeek((D)) = 2 then WeekStr:='��';
  if DayOfWeek((D)) = 3 then WeekStr:='ȭ';
  if DayOfWeek((D)) = 4 then WeekStr:='��';
  if DayOfWeek((D)) = 5 then WeekStr:='��';
  if DayOfWeek((D)) = 6 then WeekStr:='��';
  if DayOfWeek((D)) = 7 then WeekStr:='��';
  Result := WeekStr;
end;

function IntToHanguel(value : int64) : string;
const
  NumberChar: array['0'..'9'] of string = ('��', '��', '��', '��', '��', '��', '��', 'ĥ', '��', '��');
  LevelChar : array[0..3] of String = ('', '��', '��', 'õ');
  DecimalChar : array[0..5] of String = ('', '��', '��', '��', '��', '��');
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

procedure TfmMoneyOutReport.FormShow(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName, addsign : string;
begin
  //lblDongName.Caption := LoginUserDongName + ' �ֹ���ġ������ ����';
  iniFileName := gsDefaultFolder + 'ReportSetting.ini';
  FIni := TIniFile.Create(iniFileName);
  addsign := FIni.ReadString('Report', 'MoneyOut', '0');
  if addsign = '0' then
    chkAddSign.Checked := False
  else
    chkAddSign.Checked := True;
end;

procedure TfmMoneyOutReport.btnSaveClick(Sender: TObject);
var
  i, cnt : Integer;
  jukyo_list : string;
begin
  cnt := gridOut.DataController.RecordCount;
  jukyo_list := '';
  gridOut.DataController.GotoFirst;
  for i := 0 to cnt - 1 do begin
    jukyo_list := jukyo_list + gridOutdesc.EditValue + #10#13;
    gridOut.DataController.GotoNext;
  end;

  q_MONEY_OUT_REPORT_INS.ParamByName('M_YEAR').Value := StrToInt(edtYear.Text);
  q_MONEY_OUT_REPORT_INS.ParamByName('BALUI_DATE').Value := edtBalDate.Date;
  q_MONEY_OUT_REPORT_INS.ParamByName('OUT_DATE').Value := edtOutDate.Date;
  q_MONEY_OUT_REPORT_INS.ParamByName('REG_DATE1').Value := edtRegDate1.Date;
  q_MONEY_OUT_REPORT_INS.ParamByName('REG_DATE2').Value := edtRegDate2.Date;
  q_MONEY_OUT_REPORT_INS.ParamByName('OUT_AMOUNT').Value := edtAmount.Value;
  q_MONEY_OUT_REPORT_INS.ParamByName('BANK_NAME').Value := edtBankName.Text;
  q_MONEY_OUT_REPORT_INS.ParamByName('BANK_ID').Value := edtBankID.Text;
  q_MONEY_OUT_REPORT_INS.ParamByName('BANK_OWENER').Value := edtBankOwener.Text;
  q_MONEY_OUT_REPORT_INS.ParamByName('OWENER_ADDR').Value := edtAddr.Text;
  q_MONEY_OUT_REPORT_INS.ParamByName('AWENER_COMP').Value := edtComp.Text;
  q_MONEY_OUT_REPORT_INS.ParamByName('BIGO').Value := edtBigo.Text;
  q_MONEY_OUT_REPORT_INS.ParamByName('DONG_ID').Value := LoginUserDong;
  q_MONEY_OUT_REPORT_INS.ParamByName('UNIQ_ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
  q_MONEY_OUT_REPORT_INS.ParamByName('M_DATE').Value := Date;
  q_MONEY_OUT_REPORT_INS.ParamByName('OUT_LIST').Value := jukyo_list;
  q_MONEY_OUT_REPORT_INS.Execute;
  ShowMessage('������Ǽ� ����Ϸ�!');
end;

procedure TfmMoneyOutReport.chkAddSignClick(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName : string;
begin
  if chkAddSign.Checked = True then begin
    Label16.Left := 177;
    Label17.Left := 413;
    Label18.Left := 538;
    lbl1.Left :=   294;
    lbl1.Visible := True;
    Shape5.Left := 270;
    shp1.Left := 388;
    shp1.Visible := True;
    Shape6.Left := 506;
  end else begin
    Label16.Left := 195;
    Label17.Left := 343;
    Label18.Left := 508;
    lbl1.Left :=   292;
    lbl1.Visible := False;
    Shape5.Left := 301;
    shp1.Left := 387;
    shp1.Visible := False;
    Shape6.Left := 467;
  end;

  iniFileName := gsDefaultFolder + 'ReportSetting.ini';
  FIni := TIniFile.Create(iniFileName);
  if chkAddSign.Checked then
    FIni.WriteString('Report', 'MoneyOut', '1')
  else
    FIni.WriteString('Report', 'MoneyOut', '0');
end;

procedure TfmMoneyOutReport.btnEditDescClick(Sender: TObject);
var
  desc : string;
begin
  if dxMemData1.RecordCount > 5 then begin
    ShowMessage('���⳻�� �׸��� �ִ� 5�� �����Դϴ�.');
    Exit;
  end;
  desc := gridOutdesc.EditValue;
  if InputQuery('���⳻������', '���⳻���� �Է��ϼ���', desc) then begin
    dxMemData1.Edit;
    dxMemData1desc.Value := desc;
    dxMemData1.Post;
    DataSource1.DataSet.Refresh;
  end;
end;

procedure TfmMoneyOutReport.btnPrintClick(Sender: TObject);
begin
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '����';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmMoneyOutReport.edtAddrChange(Sender: TObject);
begin
  lblAddr.Caption := edtAddr.Text;
end;

procedure TfmMoneyOutReport.edtAmountPropertiesEditValueChanged(
  Sender: TObject);
var
  nAmount : Int64;
begin
  nAmount := edtAmount.EditValue;
  lblAmountText.Caption := '�ϱ� ' + IntToHanguel(nAmount) + '����';
  lblAmountNum.Caption := FormatFloat('\#,0', edtAmount.EditValue);
end;

procedure TfmMoneyOutReport.edtBalDatePropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtBalDate.Date;
  lblBalDate.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyOutReport.edtBankIDChange(Sender: TObject);
begin
  lblBankID.Caption := edtBankID.Text;
end;

procedure TfmMoneyOutReport.edtBankNameChange(Sender: TObject);
begin
  lblBankName.Caption := edtBankName.Text;
end;

procedure TfmMoneyOutReport.edtBankOwenerChange(Sender: TObject);
begin
  lblBankOwener.Caption := edtBankOwener.Text;
end;

procedure TfmMoneyOutReport.edtBigoChange(Sender: TObject);
begin
  lblBigo.Caption := edtBigo.Text;
end;

procedure TfmMoneyOutReport.edtCompChange(Sender: TObject);
begin
  lblComp.Caption := edtComp.Text;
end;

procedure TfmMoneyOutReport.edtOutDatePropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtOutDate.Date;
  lblOutDate.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyOutReport.edtOwenerChange(Sender: TObject);
begin
  lblName.Caption := edtOwener.Text;
end;

procedure TfmMoneyOutReport.edtRegDate1PropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtRegDate1.Date;
  lblRegDate1.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyOutReport.edtRegDate2PropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtRegDate2.Date;
  lblRegDate2.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyOutReport.edtYearChange(Sender: TObject);
begin
  lblYear.Caption := edtYear.Text + '�⵵';
end;

end.
