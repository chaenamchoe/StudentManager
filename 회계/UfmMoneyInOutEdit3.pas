unit UfmMoneyInOutEdit3;

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
  dxSkinOffice2013LightGray, MemDS, DBAccess;

type
  TfmMoneyInOutEdit3 = class(TForm)
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
    Label3: TLabel;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    cbBankKind: TcxLookupComboBox;
    procedure cbKindPropertiesEditValueChanged(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BANK_ID : Integer;
  end;

var
  fmMoneyInOutEdit3: TfmMoneyInOutEdit3;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmMoneyInOutEdit3.btnSaveClick(Sender: TObject);
begin
  dxTemp.Post;
  if cbBankKind.EditValue > 0 then
    ModalResult := mrOk
  else
    ShowMessage('통장을 선택하세요.');
end;

procedure TfmMoneyInOutEdit3.cbKindPropertiesEditValueChanged(Sender: TObject);
begin
  if dxTempm_kind.AsInteger = 1 then begin
    dxTempacc_item.AsInteger := 1;
  end else begin
    dxTempacc_item.AsInteger := 2;
  end;
end;

procedure TfmMoneyInOutEdit3.FormShow(Sender: TObject);
begin
  UniQuery1.Open;
  DataSource1.DataSet.Refresh;

end;

end.
