unit UfmMoneyInReport;

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
  dxSkinOffice2013White, dxSkinSevenClassic, IniFiles, dxSkinSharp,
  dxPScxSchedulerLnk, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfmMoneyInReport = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtYear: TEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    gridOut: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1desc: TStringField;
    gridOutRecId: TcxGridDBColumn;
    gridOutdesc: TcxGridDBColumn;
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
    lblBigo: TLabel;
    edtAmount: TcxCurrencyEdit;
    Panel2: TPanel;
    btnEditDesc: TBitBtn;
    q_MONEY_IN_REPORT_INS: TUniQuery;
    lblDesc1: TLabel;
    lblDesc2: TLabel;
    lblDesc3: TLabel;
    lblDesc4: TLabel;
    lblDesc5: TLabel;
    Shape15: TShape;
    Label12: TLabel;
    GroupBox4: TGroupBox;
    edtBigo: TMemo;
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
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditDescClick(Sender: TObject);
    procedure edtBigoChange(Sender: TObject);
    procedure chkAddSignClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyInReport: TfmMoneyInReport;

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

procedure TfmMoneyInReport.FormShow(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName, addsign : string;
begin
//  lblDongName.Caption := LoginUserDongName + ' 주민자치위원장 귀하';
  iniFileName := gsDefaultFolder + 'ReportSetting.ini';
  FIni := TIniFile.Create(iniFileName);
  addsign := FIni.ReadString('Report', 'MoneyIn', '0');
  if addsign = '0' then
    chkAddSign.Checked := False
  else
    chkAddSign.Checked := True;
end;

procedure TfmMoneyInReport.btnSaveClick(Sender: TObject);
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
  q_MONEY_IN_REPORT_INS.ParamByName('M_YEAR').Value := StrToInt(edtYear.Text);
  q_MONEY_IN_REPORT_INS.ParamByName('BALUI_DATE').Value := edtBalDate.Date;
  q_MONEY_IN_REPORT_INS.ParamByName('IN_DATE').Value := edtOutDate.Date;
  q_MONEY_IN_REPORT_INS.ParamByName('REG_DATE1').Value := edtRegDate1.Date;
  q_MONEY_IN_REPORT_INS.ParamByName('REG_DATE2').Value := edtRegDate2.Date;
  q_MONEY_IN_REPORT_INS.ParamByName('IN_AMOUNT').Value := edtAmount.Value;
  q_MONEY_IN_REPORT_INS.ParamByName('BIGO').Value := edtBigo.Text;
  q_MONEY_IN_REPORT_INS.ParamByName('DONG_ID').Value := LoginUserDong;
  q_MONEY_IN_REPORT_INS.ParamByName('UNIQ_ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
  q_MONEY_IN_REPORT_INS.ParamByName('M_DATE').Value := Date;
  q_MONEY_IN_REPORT_INS.ParamByName('IN_LIST').Value := jukyo_list;
  q_MONEY_IN_REPORT_INS.Execute;
  ShowMessage('수입결의서 저장완료!');
end;

procedure TfmMoneyInReport.chkAddSignClick(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName : string;
begin
  if chkAddSign.Checked = True then begin
    Label16.Left := 175;
    Label17.Left := 411;
    Label18.Left := 537;
    lbl1.Left :=   294;
    lbl1.Visible := True;
    Shape5.Left := 267;
    shp1.Left := 388;
    shp1.Visible := True;
    Shape6.Left := 505;
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
    FIni.WriteString('Report', 'MoneyIn', '1')
  else
    FIni.WriteString('Report', 'MoneyIn', '0');
end;

procedure TfmMoneyInReport.btnEditDescClick(Sender: TObject);
var
  desc : string;
begin
  if dxMemData1.RecordCount > 5 then begin
    ShowMessage('수입내역 항목은 최대 5개 까지입니다.');
    Exit;
  end;
  desc := gridOutdesc.EditValue;
  if InputQuery('수입내역수정', '수입내역을 입력하세요', desc) then begin
    dxMemData1.Edit;
    dxMemData1desc.Value := desc;
    dxMemData1.Post;
    DataSource1.DataSet.Refresh;
  end;
end;

procedure TfmMoneyInReport.btnPrintClick(Sender: TObject);
begin
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmMoneyInReport.edtAmountPropertiesEditValueChanged(
  Sender: TObject);
var
  nAmount : Int64;
begin
  nAmount := edtAmount.EditValue;
  lblAmountText.Caption := '일금 ' + IntToHanguel(nAmount) + '원정';
  lblAmountNum.Caption := FormatFloat('\#,0', edtAmount.EditValue);
end;

procedure TfmMoneyInReport.edtBalDatePropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtBalDate.Date;
  lblBalDate.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyInReport.edtBigoChange(Sender: TObject);
begin
  lblBigo.Caption := edtBigo.Text;
end;

procedure TfmMoneyInReport.edtOutDatePropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtOutDate.Date;
  lblOutDate.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyInReport.edtRegDate1PropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtRegDate1.Date;
  lblRegDate1.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyInReport.edtRegDate2PropertiesEditValueChanged(
  Sender: TObject);
var
  sDate : TDate;
begin
  sDate := edtRegDate2.Date;
  lblRegDate2.Caption := DateToStr(sDate) + '(' + GetDayOfWeek(sDate) + ')';
end;

procedure TfmMoneyInReport.edtYearChange(Sender: TObject);
begin
  lblYear.Caption := edtYear.Text + '년도';
end;

end.
