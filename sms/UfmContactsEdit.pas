unit UfmContactsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, Menus, DB, dxmdaset, StdCtrls,
  cxButtons, cxMemo, cxDBEdit, cxDropDownEdit, cxImageComboBox, cxTextEdit,
  cxMaskEdit, cxCalendar, ExtCtrls, cxGroupBox, DBCtrls, Mask, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, MemDS, DBAccess, Uni;

type
  TfmContactsEdit = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl10: TPanel;
    pnl11: TPanel;
    pnl19: TPanel;
    pnl20: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    pnl12: TPanel;
    pnl13: TPanel;
    pnl14: TPanel;
    edtKind: TEdit;
    edtName: TEdit;
    edtDamdang: TEdit;
    edtTel1: TEdit;
    edtTel2: TEdit;
    edtEmail: TEdit;
    edtAddr: TEdit;
    mmo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    SAVE_MODE : string;
  end;

var
  fmContactsEdit: TfmContactsEdit;

implementation

uses GlobalVar;

{$R *.dfm}

end.
