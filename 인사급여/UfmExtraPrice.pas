unit UfmExtraPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxCurrencyEdit;

type
  TfmExtraPrice = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EXTRA_PRICE: TcxCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    YUNGUM: TcxCurrencyEdit;
    GOYONG_BOHUM: TcxCurrencyEdit;
    GUNGANG_BOHUM: TcxCurrencyEdit;
    YOYANG_BOHUM: TcxCurrencyEdit;
    SANJAE_BOHUM: TcxCurrencyEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label7: TLabel;
    ETC1_NAME: TEdit;
    ETC1_PRICE: TcxCurrencyEdit;
    Label8: TLabel;
    Label9: TLabel;
    ETC2_PRICE: TcxCurrencyEdit;
    Label10: TLabel;
    ETC2_NAME: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmExtraPrice: TfmExtraPrice;

implementation

{$R *.dfm}

end.
