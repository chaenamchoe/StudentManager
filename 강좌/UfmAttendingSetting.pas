unit UfmAttendingSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, StdCtrls, Buttons, cxRadioGroup;

type
  TfmAttendingSetting = class(TForm)
    GroupBox1: TGroupBox;
    chkOrderRegist: TcxRadioButton;
    chkOrderName: TcxRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAttendingSetting: TfmAttendingSetting;

implementation

{$R *.dfm}

end.
