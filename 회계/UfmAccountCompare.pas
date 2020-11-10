unit UfmAccountCompare;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, DateUtils,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, Buttons, Spin, ExtCtrls, dxmdaset, Uni, UniProvider,
  cxDBLookupComboBox, cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfmAccountCompare = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    btnRetrieve: TBitBtn;
    btnExport: TBitBtn;
    cbKind: TcxImageComboBox;
    gridView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1item_id: TIntegerField;
    dxMemData1item_name: TStringField;
    dxMemData1yesan: TFloatField;
    dxMemData1used: TFloatField;
    gridViewRecId: TcxGridDBColumn;
    gridViewitem_id: TcxGridDBColumn;
    gridViewitem_name: TcxGridDBColumn;
    gridViewyesan: TcxGridDBColumn;
    gridViewused: TcxGridDBColumn;
    gridViewrest: TcxGridDBColumn;
    dxMemData1rest: TFloatField;
    btnPrint: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cbBankKind: TcxImageComboBox;
    lbl1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    function GetItemTotalAmount(item_id: integer): double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAccountCompare: TfmAccountCompare;

implementation

uses GlobalVar, Udm, uCommonLogic;

{$R *.dfm}



procedure TfmAccountCompare.btnExportClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    filename := Caption + '_' + DateTimeToStr(Date) + '.xls';
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.DefaultExt := 'xls';
    saveDLG.FileName := filename;
    if saveDLG.Execute then begin
       filename := saveDLG.FileName;
       nameonly := copy(filename, 1, length(filename) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmAccountCompare.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmAccountCompare.btnRetrieveClick(Sender: TObject);
var
  Query : TUniQuery;
  cnt, i, id : integer;
  yesan, used, rest : double;
begin
  Query := TUniQuery.Create(Self);
  try
    dxMemData1.Active := False;
    dxMemData1.Active := True;
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT ACC_DETAIL, SUM(ACC_EXPENSE) as ACC_EXPENSE FROM ACCOUNT_EXPENSE_BUDGET ');
      SQL.Add('WHERE ACC_DONG_ID = :DONG_ID and ACC_YEAR = :ACC_YEAR and ACC_KIND = :ACC_KIND ');
      SQL.Add('group by acc_detail');
      ParamByName('dong_id').AsString := LoginUserDong;
      ParamByName('acc_year').AsInteger := speYear.Value;
      ParamByName('acc_kind').AsInteger := cbKind.EditValue;
      Active := True;
    end;
    cnt := Query.RecordCount;
    Query.First;
    while not Query.Eof do begin
      id := Query.FieldByName('acc_detail').AsInteger;
      yesan := Query.FieldByName('acc_expense').AsFloat;
      used := GetItemTotalAmount(id);
      dxMemData1.Append;
      dxMemData1item_id.AsInteger := id;
      dxMemData1yesan.AsFloat := yesan;
      dxMemData1used.AsFloat := used;
      dxMemData1rest.AsFloat := yesan - used;
      dxMemData1.Post;
      Query.Next;
    end;
    DataSource1.DataSet.Refresh;
  finally
    Query.Free;
  end;
end;

function TfmAccountCompare.GetItemTotalAmount(item_id : integer) : double;
var
  Query : TUniQuery;
  cnt, i : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT SUM(IO_IN + IO_OUT) as T_AMOUNT FROM MONEY_INOUT ');
      SQL.Add('WHERE (IO_DONG_ID = :DONG_ID) and (extract(year from IO_DATE) = :ACC_YEAR and IO_DETAIL_ID = :IO_DETAIL_ID) and ');
      SQL.Add('(bank_id = :bank_id) ');
      SQL.Add('group by IO_DETAIL_ID');
      ParamByName('dong_id').AsString := LoginUserDong;
      ParamByName('acc_year').AsInteger := speYear.Value;
      ParamByName('IO_DETAIL_ID').AsInteger := item_id;
      ParamByName('bank_id').AsInteger := cbBankKind.EditValue;
      Active := True;
    end;
    if Query.RecordCount > 0 then
      Result := Query.FieldByName('T_AMOUNT').AsFloat
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;
procedure TfmAccountCompare.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmAccountCompare.FormCreate(Sender: TObject);
begin
  speYear.Value := YearOf(Date);
end;

initialization RegisterClasses([TfmAccountCompare]);

end.
