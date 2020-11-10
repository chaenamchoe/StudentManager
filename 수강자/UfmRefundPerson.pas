unit UfmRefundPerson;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinOffice2013White, dxSkinMetropolis, Clipbrd,
  dxSkinMetropolisDark, DateUtils, cxRadioGroup, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, MemDS, DBAccess,
  Uni, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxLabel, cxCheckBox;

type
  TfmRefundPerson = class(TForm)
    q_REQUEST_VIEW: TUniQuery;
    q_REQUEST_VIEWL_YEAR: TIntegerField;
    q_REQUEST_VIEWL_STEP: TIntegerField;
    q_REQUEST_VIEWL_NAME: TStringField;
    q_REQUEST_VIEWLECTURE_ID: TStringField;
    q_REQUEST_VIEWSTUDENT_ID: TStringField;
    q_REQUEST_VIEWPAY_AMOUNT: TFloatField;
    q_REQUEST_VIEWS_NAME: TStringField;
    q_REQUEST_VIEWS_TEL: TStringField;
    q_REQUEST_VIEWS_KIND: TSmallintField;
    q_REQUEST_VIEWS_SEX: TStringField;
    q_REQUEST_VIEWID: TStringField;
    q_REQUEST_VIEWDONG_ID: TStringField;
    q_REQUEST_VIEWPAY_KIND: TSmallintField;
    q_REQUEST_VIEWOUT_AMOUNT: TFloatField;
    q_REQUEST_VIEWREG_KIND: TSmallintField;
    q_REQUEST_VIEWS_BIRTH: TStringField;
    q_REQUEST_VIEWPAY_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_BANK: TStringField;
    q_REQUEST_VIEWPAYBACK_BANKID: TStringField;
    q_REQUEST_VIEWOUT_KIND: TSmallintField;
    q_REQUEST_VIEWS_ADDR: TStringField;
    q_REQUEST_VIEWP_DATE: TStringField;
    q_REQUEST_VIEWR_DATE: TStringField;
    q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField;
    q_REQUEST_VIEWIS_DC: TSmallintField;
    q_REQUEST_VIEWCASH_RECEIPT_NO: TStringField;
    q_REQUEST_VIEWCASH_RECEIPT_YESNO: TSmallintField;
    q_REQUEST_VIEWREG_MONTH: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH: TSmallintField;
    q_REQUEST_VIEWREG_MONTH2: TSmallintField;
    q_REQUEST_VIEWREG_MONTH3: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH2: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH3: TSmallintField;
    q_REQUEST_VIEWS_DONG: TStringField;
    q_REQUEST_VIEWOUT_PRICE1: TFloatField;
    q_REQUEST_VIEWOUT_PRICE2: TFloatField;
    q_REQUEST_VIEWOUT_PRICE3: TFloatField;
    q_REQUEST_VIEWSELECTED: TSmallintField;
    q_REQUEST_VIEWREG_PRICE1: TFloatField;
    q_REQUEST_VIEWREG_PRICE2: TFloatField;
    q_REQUEST_VIEWREG_PRICE3: TFloatField;
    d_REQUEST_VIEW: TDataSource;
    cxGrid1: TcxGrid;
    gridRequest: TcxGridDBTableView;
    gridRequestColumn1: TcxGridDBColumn;
    gridRequestL_YEAR: TcxGridDBColumn;
    gridRequestL_STEP: TcxGridDBColumn;
    gridRequestL_NAME: TcxGridDBColumn;
    gridRequestSTUDENT_ID: TcxGridDBColumn;
    gridRequestSELECTED: TcxGridDBColumn;
    gridRequestS_NAME: TcxGridDBColumn;
    gridRequestS_BIRTH: TcxGridDBColumn;
    gridRequestS_SEX: TcxGridDBColumn;
    gridRequestIS_DC: TcxGridDBColumn;
    gridRequestPAY_KIND: TcxGridDBColumn;
    gridRequestREG_MONTH: TcxGridDBColumn;
    gridRequestREG_MONTH2: TcxGridDBColumn;
    gridRequestREG_MONTH3: TcxGridDBColumn;
    gridRequestPAY_WAY: TcxGridDBColumn;
    gridRequestOUT_MONTH: TcxGridDBColumn;
    gridRequestOUT_MONTH2: TcxGridDBColumn;
    gridRequestOUT_MONTH3: TcxGridDBColumn;
    gridRequestID: TcxGridDBColumn;
    gridRequestDONG_ID: TcxGridDBColumn;
    gridRequestPAYBACK_WAY: TcxGridDBColumn;
    gridRequestPAYBACK_BANK: TcxGridDBColumn;
    gridRequestPAYBACK_BANKOWNER: TcxGridDBColumn;
    gridRequestPAYBACK_BANKID: TcxGridDBColumn;
    gridRequestS_ADDR: TcxGridDBColumn;
    gridRequestS_TEL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleGreen: TcxStyle;
    Panel1: TPanel;
    btnPaste: TBitBtn;
    BitBtn2: TBitBtn;
    btnSave: TBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure gridRequestColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure BitBtn2Click(Sender: TObject);
    procedure q_REQUEST_VIEWAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure gridRequestFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure gridRequestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    START_DATE_STR, END_DATE_STR : string;
    RECTURE_PRICE : Double;
    OutMonth, OutMonth2, OutMonth3 : Integer;
    RegMonth, RegMonth2, RegMonth3 : Integer;
    newMonth, newMonth2, newMonth3 : Integer;
    REG_MONTH_COUNT : Integer;
    DATA_MODIFIED : Boolean;
    ColumnName : string;
    ColumnID : Integer;
  end;

var
  fmRefundPerson: TfmRefundPerson;

implementation

uses Udm;

{$R *.dfm}

//function Split(const s: string; Separator: char): TStringDynArray;
//var
//  i, ItemIndex: Integer;
//  len: Integer;
//  SeparatorCount: Integer;
//  Start: Integer;
//begin
//  len := Length(s);
//  if len=0 then begin
//    Result := nil;
//    exit;
//  end;
//
//  SeparatorCount := 0;
//  for i := 1 to len do begin
//    if s[i]=Separator then begin
//      inc(SeparatorCount);
//    end;
//  end;
//
//  SetLength(Result, SeparatorCount+1);
//  ItemIndex := 0;
//  Start := 1;
//  for i := 1 to len do begin
//    if s[i]=Separator then begin
//      Result[ItemIndex] := Copy(s, Start, i-Start);
//      inc(ItemIndex);
//      Start := i+1;
//    end;
//  end;
//  Result[ItemIndex] := Copy(s, Start, len-Start+1);
//end;

procedure TfmRefundPerson.BitBtn2Click(Sender: TObject);
begin
  if q_REQUEST_VIEW.Modified then
    q_REQUEST_VIEW.Cancel;
  ModalResult := mrCancel;
end;

procedure TfmRefundPerson.btnPasteClick(Sender: TObject);
var
  StringList : TStringList;
  i, icnt : Integer;
begin
  StringList := TStringList.Create;
  if Clipboard.HasFormat(CF_TEXT) then begin
    StringList.Text := Clipboard.AsText;
  end;
  icnt := StringList.Count;
  for i := 0 to icnt - 1 do begin
    //ColumnName is set on grid's FocusedItemChanged event
    //ColumnName := TcxGridDBColumn(AFocusedItem).DataBinding.FieldName;
    q_REQUEST_VIEW.Edit;
    q_REQUEST_VIEW.FieldByName(ColumnName).Value := StringList[i];
    q_REQUEST_VIEW.Post;

    gridRequest.DataController.GotoNext;
  end;
  d_REQUEST_VIEW.DataSet.Refresh;
  StringList.Free;
  //cxGrid1.SetFocus;
end;

procedure TfmRefundPerson.btnSaveClick(Sender: TObject);
begin
  if q_REQUEST_VIEW.Modified then
    q_REQUEST_VIEW.Post;
  ModalResult := mrOk;
end;

procedure TfmRefundPerson.FormCreate(Sender: TObject);
begin
  DATA_MODIFIED := False;
end;

procedure TfmRefundPerson.gridRequestColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex+1);
end;

procedure TfmRefundPerson.gridRequestFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  ColumnName := TcxGridDBColumn(AFocusedItem).DataBinding.FieldName;
  //ColumnID := AFocusedItem.ID;
  //ShowMessage(ColumnName);
end;

procedure TfmRefundPerson.gridRequestKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = Ord('V')) and (Clipboard.AsText <> '') then
  begin
    btnPaste.Click;
  end;
end;

procedure TfmRefundPerson.q_REQUEST_VIEWAfterPost(DataSet: TDataSet);
begin
  DATA_MODIFIED := True;
end;

end.
