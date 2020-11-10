unit UfmMoneyInoutMove;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons;

type
  TfmMoneyInoutMove = class(TForm)
    GroupBox1: TGroupBox;
    gridAccount: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridAccountID: TcxGridDBColumn;
    gridAccountBANK_NAME: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CurrentBankID : Integer;
  end;

var
  fmMoneyInoutMove: TfmMoneyInoutMove;

implementation

uses Udm;

{$R *.dfm}

procedure TfmMoneyInoutMove.BitBtn1Click(Sender: TObject);
var
  b_id : Integer;
begin
  b_id := gridAccountID.EditValue;
  if b_id = CurrentBankID then begin
    ShowMessage('선택한 통장은 같은 통장입니다. 이동하려면 다른 통장을 선택하세요.');
    Exit;
  end else begin
    ModalResult := mrOk;
  end;
end;

end.
