unit UfmRefundBatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinOffice2013White, dxSkinMetropolis,
  dxSkinMetropolisDark, DateUtils, cxRadioGroup, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, ExtCtrls;

type
  TfmRefundBatch = class(TForm)
    GroupBox1: TGroupBox;
    edtDate: TcxDateEdit;
    edtAmount: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    edtPayWay: TcxImageComboBox;
    Label6: TLabel;
    edtOutKind: TcxLookupComboBox;
    Label7: TLabel;
    chkMon1: TCheckBox;
    chkMon2: TCheckBox;
    chkMon3: TCheckBox;
    edtAmount2: TcxCurrencyEdit;
    edtAmount3: TcxCurrencyEdit;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    START_DATE_STR, END_DATE_STR : string;
    RECTURE_PRICE : Double;
    OutMonth, OutMonth2, OutMonth3 : Integer;
    RegMonth, RegMonth2, RegMonth3 : Integer;
    newMonth, newMonth2, newMonth3 : Integer;
    REG_MONTH_COUNT : Integer;
  end;

var
  fmRefundBatch: TfmRefundBatch;

implementation

uses Udm;

{$R *.dfm}

procedure TfmRefundBatch.btnSaveClick(Sender: TObject);
begin
  if (chkMon1.Checked = False) and (chkMon2.Checked = False) and (chkMon3.Checked = False) then begin
    ShowMessage('퇴강월을 체크하세요.');
    Exit;
  end else begin
    ModalResult := mrOk;
  end;
end;

end.
