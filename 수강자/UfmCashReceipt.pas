unit UfmCashReceipt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, Menus,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView, ShellAPI,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  dxmdaset, cxGridExportLink, Buttons, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmCashReceipt = class(TForm)
    Panel1: TPanel;
    gridCash: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label1: TLabel;
    btnReceipt: TcxButton;
    btnGotoSite1: TcxButton;
    btnSaveExcel: TcxButton;
    Label2: TLabel;
    cxButton3: TcxButton;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1s_mdate: TStringField;
    gridCashRecId: TcxGridDBColumn;
    dxMemData1s_mkind: TStringField;
    dxMemData1s_item: TStringField;
    dxMemData1s_price: TStringField;
    dxMemData1s_tax: TStringField;
    dxMemData1s_service: TStringField;
    dxMemData1s_purpose: TStringField;
    dxMemData1s_idno: TStringField;
    dxMemData1s_tel: TStringField;
    dxMemData1s_total: TStringField;
    gridCashs_mkind: TcxGridDBColumn;
    gridCashs_mdate: TcxGridDBColumn;
    gridCashs_item: TcxGridDBColumn;
    gridCashs_price: TcxGridDBColumn;
    gridCashs_tax: TcxGridDBColumn;
    gridCashs_service: TcxGridDBColumn;
    gridCashs_total: TcxGridDBColumn;
    gridCashs_purpose: TcxGridDBColumn;
    gridCashs_idno: TcxGridDBColumn;
    gridCashs_tel: TcxGridDBColumn;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure btnReceiptClick(Sender: TObject);
    procedure btnGotoSite1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnSaveExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCashReceipt: TfmCashReceipt;

implementation

uses GlobalVar;

{$R *.dfm}

procedure TfmCashReceipt.btnReceiptClick(Sender: TObject);
var
  surl : string;
begin
  surl := 'https://www.barobill.co.kr/join/join_step1.asp';
  ShowMessage('인터넷 탐색기(iexplore.exe)가 구동될 수 있어야 합니다.');
  ShellExecute(0,'open','iexplore.exe',PWideChar(surl),nil, SW_NORMAL);
end;

procedure TfmCashReceipt.btnSaveExcelClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
  strList : TStringList;
  s_mkind, mdate, mitem, mprice, mtex, mservice, mtotal, mpurpose,jumin, mcontact : string;
  i, cnt : integer;
begin
  if not (gridCash.DataController.RecordCount > 0) then
    Exit;
  saveDLG := TSaveDialog.Create(self);
  strList := TStringList.Create;
  try
    filename := '현금영수증발급_' + DateTimeToStr(Date) + '.txt';
    saveDLG.Filter := '텍스트파일 (*.txt)|*.txt';
    saveDLG.DefaultExt := 'txt';
    saveDLG.FileName := filename;
    if saveDLG.Execute then begin
       filename := saveDLG.FileName;
       nameonly := copy(filename, 1, length(filename) - 4);
    end else begin
       exit;
    end;
    //ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    strList.Add('H|거래일자|상품명|공급가액|부가세|봉사료|거래총액|거래자구분|주민번호/핸드폰/사업자번호|연락처');
    gridCash.DataController.GotoFirst;
    for i := 0 to gridCash.DataController.RecordCount - 1 do begin
      s_mkind := gridCashs_mkind.EditValue;
      mdate := gridCashs_mdate.EditValue;
      mitem := gridCashs_item.EditValue;
      mprice := gridCashs_price.EditValue;
      mtex := gridCashs_tax.EditValue;
      mservice := gridCashs_service.EditValue;
      mtotal := gridCashs_total.EditValue;
      mpurpose := gridCashs_purpose.EditValue;
      jumin := gridCashs_idno.EditValue;
      mcontact := gridCashs_tel.EditValue;
      strList.Add(s_mkind + '|' + mdate + '|' + mitem + '|' + mprice + '|' + mtex + '|' + mservice + '|' + mtotal + '|' + mpurpose + '|' + jumin + '|' + mcontact);
      gridCash.DataController.GotoNext;
    end;
    strList.SaveToFile(filename);
    ShowMessage('파일:' + filename + '(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmCashReceipt.BitBtn1Click(Sender: TObject);
var
  i, cnt : Integer;
begin
  if Edit1.Text = '' then begin
    ShowMessage('발급자 연락처를 입력하세요.');
    Exit;
  end else begin
    cnt := dxMemData1.RecordCount;
    dxMemData1.First;
    for i := 0 to cnt - 1 do begin
      dxMemData1.Edit;
      dxMemData1s_tel.Value := Edit1.Text;
      dxMemData1.Post;
      dxMemData1.Next;
    end;
  end;
end;

procedure TfmCashReceipt.btnGotoSite1Click(Sender: TObject);
var
  surl : string;
begin
  //surl := 'https://www.barobill.co.kr/join/login.asp'; //바로빌사이트
  surl := 'https://taxadmin.uplus.co.kr:8004/';
  ShowMessage('인터넷 탐색기(iexplore.exe)가 구동될 수 있어야 합니다.');
  ShellExecute(0,'open','iexplore.exe',PWideChar(surl),nil, SW_NORMAL);
end;

procedure TfmCashReceipt.cxButton3Click(Sender: TObject);
var
  surl : string;
begin
  surl := 'https://www.barobill.co.kr/cash/e_cash.asp';
  ShowMessage('인터넷 탐색기(iexplore.exe)가 구동될 수 있어야 합니다.');
  ShellExecute(0,'open','iexplore.exe',PWideChar(surl),nil, SW_NORMAL);
end;

procedure TfmCashReceipt.FormShow(Sender: TObject);
begin
  Edit1.Text := CASH_RECEIPT_CONTACTS;
end;

end.
