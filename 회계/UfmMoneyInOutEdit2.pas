unit UfmMoneyInOutEdit2;

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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, DB, dxmdaset, cxImageComboBox, cxDBEdit,
  cxCalc, cxDropDownEdit, cxCalendar, StdCtrls, Buttons, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Uni, UniProvider,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmMoneyInOutEdit2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cbItem: TcxDBLookupComboBox;
    cbSubitem: TcxDBLookupComboBox;
    cdDetail: TcxDBLookupComboBox;
    edtJukyo: TcxDBTextEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    edtDate: TcxDBDateEdit;
    edtOut: TcxDBCalcEdit;
    cbKind: TcxDBImageComboBox;
    dxTemp: TdxMemData;
    dxTempm_date: TStringField;
    dxTempacc_item: TIntegerField;
    dxTempacc_subitem: TIntegerField;
    dxTempacc_detail: TIntegerField;
    dxTempm_jukyo: TStringField;
    dxTempm_in: TFloatField;
    dxTempm_out: TFloatField;
    dxTempm_kind: TSmallintField;
    d_temp: TDataSource;
    dxTempid: TIntegerField;
    dxTempreg_lecture_id: TStringField;
    procedure cbKindPropertiesEditValueChanged(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BANK_ID : Integer;
  end;

var
  fmMoneyInOutEdit2: TfmMoneyInOutEdit2;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmMoneyInOutEdit2.btnSaveClick(Sender: TObject);
var
  IN_Price, OUT_Price : Double;
  ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  ID := dxTempid.AsInteger;
  IO_DATE := dxTempm_date.AsDateTime;
  ITEM_ID := dxTempacc_item.AsInteger;
  SUBITEM_ID := dxTempacc_subitem.AsInteger;
  DETAIL_ID := dxTempacc_detail.AsInteger;
  JUKYO := dxTempm_jukyo.AsString;
  IO_REST := 0;
  KIND := dxTempm_kind.AsInteger;
  DONG_ID := LoginUserDong;
  REG_LECTURE_ID := dxTempreg_lecture_id.AsString;
  if dxTempm_kind.AsInteger = 1 then begin
    IO_IN := dxTempm_out.AsFloat;
    IO_OUT := 0;
  end else begin
    IO_IN := 0;
    IO_OUT := dxTempm_out.AsFloat;
  end;

  dm.UpdateMoneyINOUT(BANK_ID, ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND, IO_DATE,
     JUKYO, DONG_ID, REG_LECTURE_ID, IO_IN, IO_OUT, IO_REST);

  ModalResult := mrOk;
end;

procedure TfmMoneyInOutEdit2.cbKindPropertiesEditValueChanged(Sender: TObject);
begin
  if dxTempm_kind.AsInteger = 1 then begin
    dxTempacc_item.AsInteger := 1;
  end else begin
    dxTempacc_item.AsInteger := 2;
  end;
end;

end.
