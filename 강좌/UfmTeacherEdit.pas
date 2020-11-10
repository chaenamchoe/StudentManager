unit UfmTeacherEdit;

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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, ComCtrls, dxCore, cxDateUtils, cxCalendar,
  dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmTeacherEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtName: TcxTextEdit;
    edtSex: TcxImageComboBox;
    edtTel: TcxTextEdit;
    edtAddr: TcxTextEdit;
    edtBank: TcxTextEdit;
    edtBankNo: TcxTextEdit;
    edtBigo: TcxTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtIsActive: TcxImageComboBox;
    edtRegDate: TEdit;
    edtID: TEdit;
    edtDongID: TEdit;
    edtBirth: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeacherEdit: TfmTeacherEdit;

implementation

uses Udm;

{$R *.dfm}

end.
