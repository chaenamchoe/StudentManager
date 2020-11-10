unit UfmMoneyInOutEdit;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxImageComboBox, cxDBEdit, DB,
  cxCalendar, dxmdaset, StdCtrls, Buttons, cxDropDownEdit, cxCalc, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Uni, UniProvider,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmMoneyInOutEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbItem: TcxDBLookupComboBox;
    cbSubitem: TcxDBLookupComboBox;
    cdDetail: TcxDBLookupComboBox;
    edtJukyo: TcxDBTextEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    dxTemp: TdxMemData;
    d_temp: TDataSource;
    dxTempm_date: TStringField;
    dxTempacc_item: TIntegerField;
    dxTempacc_subitem: TIntegerField;
    dxTempacc_detail: TIntegerField;
    dxTempm_jukyo: TStringField;
    dxTempm_in: TFloatField;
    dxTempm_out: TFloatField;
    edtDate: TcxDBDateEdit;
    dxTempm_kind: TSmallintField;
    edtOut: TcxDBCalcEdit;
    Label7: TLabel;
    cbKind: TcxDBImageComboBox;
    Label8: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure cbKindPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsEditMode : boolean;
    BANK_ID : Integer;
  end;

var
  fmMoneyInOutEdit: TfmMoneyInOutEdit;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmMoneyInOutEdit.btnSaveClick(Sender: TObject);
var
  ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
  IO_DATE: TDateTime;
  JUKYO, DONG_ID, REG_LECTURE_ID: string;
  IO_IN, IO_OUT, IO_REST: double;
begin
  IO_DATE := dxTempm_date.AsDateTime;
  ITEM_ID := dxTempacc_item.AsInteger;
  SUBITEM_ID := dxTempacc_subitem.AsInteger;
  DETAIL_ID := dxTempacc_detail.AsInteger;
  JUKYO := dxTempm_jukyo.AsString;
  KIND := dxTempm_kind.AsInteger;
  IO_REST := 0;
  DONG_ID := LoginUserDong;
  REG_LECTURE_ID := '';
  if dxTempm_kind.AsInteger = 1 then begin
    IO_IN := dxTempm_out.AsFloat;
    IO_OUT := 0;
  end else begin
    IO_IN := 0;
    IO_OUT := dxTempm_out.AsFloat;
  end;

  dm.InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND, IO_DATE,
      JUKYO, DONG_ID, REG_LECTURE_ID, IO_IN, IO_OUT, IO_REST);
  ModalResult := mrOk;
//  dm.d_money_inout.DataSet.Refresh;
//  dxTempm_jukyo.AsString := '';
//  dxTempm_out.AsFloat := 0;
//  edtJukyo.SetFocus;
end;

procedure TfmMoneyInOutEdit.cbKindPropertiesEditValueChanged(Sender: TObject);
begin
  if dxTempm_kind.AsInteger = 1 then begin
    dxTempacc_item.AsInteger := 1;
  end else begin
    dxTempacc_item.AsInteger := 2;
  end;
end;

procedure TfmMoneyInOutEdit.FormShow(Sender: TObject);
begin
  dxTempm_date.AsDateTime := Date;
  dxTempm_kind.AsInteger := 2;
  dxTempacc_item.AsInteger := 2;
end;

end.
