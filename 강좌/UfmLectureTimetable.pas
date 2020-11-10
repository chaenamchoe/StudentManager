unit UfmLectureTimetable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, dxmdaset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Buttons, Spin, ExtCtrls, Math, cxVariants,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDBLookupComboBox, cxTextEdit,
  Grids, AdvObj, BaseGrid, AdvGrid, PlannerMonthView;

type
  TfmLectureTimetable = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnMakeTable: TBitBtn;
    dxMemData1: TdxMemData;
    dxMemData1id: TSmallintField;
    dxMemData1w1c1: TStringField;
    dxMemData1w1c2: TStringField;
    dxMemData1w1c3: TStringField;
    dxMemData1w1c4: TStringField;
    dxMemData1w1c5: TStringField;
    dxMemData1w1c6: TStringField;
    dxMemData1w1c7: TStringField;
    dxMemData1w1c8: TStringField;
    dxMemData1w1c9: TStringField;
    dxMemData1w1c10: TStringField;
    dxMemData1w2c1: TStringField;
    dxMemData1w2c2: TStringField;
    dxMemData1w2c3: TStringField;
    dxMemData1w2c4: TStringField;
    dxMemData1w2c5: TStringField;
    dxMemData1w2c6: TStringField;
    dxMemData1w2c7: TStringField;
    dxMemData1w2c8: TStringField;
    dxMemData1w2c9: TStringField;
    dxMemData1w2c10: TStringField;
    dxMemData1w3c1: TStringField;
    dxMemData1w3c2: TStringField;
    dxMemData1w3c3: TStringField;
    dxMemData1w3c4: TStringField;
    dxMemData1w3c5: TStringField;
    dxMemData1w3c6: TStringField;
    dxMemData1w3c7: TStringField;
    dxMemData1w3c8: TStringField;
    dxMemData1w3c9: TStringField;
    dxMemData1w3c10: TStringField;
    dxMemData1w4c1: TStringField;
    dxMemData1w4c2: TStringField;
    dxMemData1w4c3: TStringField;
    dxMemData1w4c4: TStringField;
    dxMemData1w4c5: TStringField;
    dxMemData1w4c6: TStringField;
    dxMemData1w4c7: TStringField;
    dxMemData1w4c8: TStringField;
    dxMemData1w4c9: TStringField;
    dxMemData1w4c10: TStringField;
    dxMemData1w5c1: TStringField;
    dxMemData1w5c2: TStringField;
    dxMemData1w5c3: TStringField;
    dxMemData1w5c4: TStringField;
    dxMemData1w5c5: TStringField;
    dxMemData1w5c6: TStringField;
    dxMemData1w5c7: TStringField;
    dxMemData1w5c8: TStringField;
    dxMemData1w5c9: TStringField;
    dxMemData1w5c10: TStringField;
    dxMemData1w6c1: TStringField;
    dxMemData1w6c2: TStringField;
    dxMemData1w6c3: TStringField;
    dxMemData1w6c4: TStringField;
    dxMemData1w6c5: TStringField;
    dxMemData1w6c6: TStringField;
    dxMemData1w6c7: TStringField;
    dxMemData1w6c8: TStringField;
    dxMemData1w6c9: TStringField;
    dxMemData1w6c10: TStringField;
    PlannerMonthView1: TPlannerMonthView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureTimetable: TfmLectureTimetable;

implementation

uses Udm, GlobalVar;

{$R *.dfm}


procedure TfmLectureTimetable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmLectureTimetable]);

end.
