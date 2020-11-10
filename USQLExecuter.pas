unit USQLExecuter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DAScript, UniScript, StdCtrls, Buttons, fs_synmemo, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, cxTextEdit, cxMemo, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmSQLExecuter = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    cxMemo1: TcxMemo;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSQLExecuter: TfmSQLExecuter;

implementation

uses Udm;

{$R *.dfm}

procedure TfmSQLExecuter.BitBtn1Click(Sender: TObject);
var
  UniScript : TUniScript;
begin
  try
    UniScript := TUniScript.Create(nil);
    UniScript.Connection := dm.UniConnection1;
    UniScript.SQL.Clear;
    UniScript.SQL.Add(cxMemo1.Text);
    UniScript.Execute;
    ShowMessage('명령이 실행되었습니다.');
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfmSQLExecuter.BitBtn2Click(Sender: TObject);
var
  openDialog : TOpenDialog;
  fname : string;
  strList : TStringList;
begin
  openDialog := TOpenDialog.Create(Self);
  strList := TStringList.Create;
  try
    if openDialog.Execute then begin
      fname := openDialog.FileName;
      strList.LoadFromFile(fname);
      cxMemo1.Text := strList.Text;
    end;
  finally
    openDialog.Free;
    strList.Free;
  end;
end;

procedure TfmSQLExecuter.BitBtn3Click(Sender: TObject);
begin
  cxMemo1.Clear;
end;

end.
