unit UfmExcelOpen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSpreadSheetCore,
  dxSpreadSheetFormulas, dxSpreadSheetFunctions, dxSpreadSheetGraphics,
  dxSpreadSheetClasses, dxSpreadSheetTypes, dxSkinscxPCPainter,
  dxBarBuiltInMenu, dxSpreadSheet, ExtCtrls, StdCtrls, Buttons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxmdaset, XLSFile, XLSRects,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfmExcelOpen = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    FileOpenDialog1: TFileOpenDialog;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1col1: TStringField;
    dxMemData1col2: TStringField;
    dxMemData1col3: TStringField;
    dxMemData1col4: TStringField;
    dxMemData1col5: TStringField;
    dxMemData1col6: TStringField;
    dxMemData1col7: TStringField;
    dxMemData1col8: TStringField;
    dxMemData1col9: TStringField;
    dxMemData1col10: TStringField;
    gridExcel: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridExcelRecId: TcxGridDBColumn;
    gridExcelcol1: TcxGridDBColumn;
    gridExcelcol2: TcxGridDBColumn;
    gridExcelcol3: TcxGridDBColumn;
    gridExcelcol4: TcxGridDBColumn;
    gridExcelcol5: TcxGridDBColumn;
    gridExcelcol6: TcxGridDBColumn;
    gridExcelcol7: TcxGridDBColumn;
    gridExcelcol8: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxMemData1col11: TStringField;
    dxMemData1col12: TStringField;
    dxMemData1col13: TStringField;
    dxMemData1col14: TStringField;
    dxMemData1col15: TStringField;
    dxMemData1col16: TStringField;
    dxMemData1col17: TStringField;
    dxMemData1col18: TStringField;
    dxMemData1col19: TStringField;
    dxMemData1col20: TStringField;
    btnSave: TBitBtn;
    btnDelLine: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnDelLineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmExcelOpen: TfmExcelOpen;

implementation

{$R *.dfm}

procedure TfmExcelOpen.BitBtn1Click(Sender: TObject);
var
  ID : string;
  xf: TXLSFile;
  I, J, cnt: Integer;
  Rect: TRangeRect;
  Msg, msg2: String;
  CellValue: Variant;
  xls_name, teacher_id : string;
  col1, col2, col3, col4, col5, col6,col7,col8,col9,col10 : string;
begin
  if FileOpenDialog1.Execute then begin
    xls_name := FileOpenDialog1.FileName;
    xf:= TXLSFile.Create;
    xf.OpenFile(xls_name);
    xf.Workbook.Sheets[0].GetUsedRect(Rect);
    dxMemData1.Close;
    dxMemData1.Open;
    for i := 0 to Rect.RowTo do begin
      col1 := xf.Workbook.Sheets[0].Cells[i, 0].Value;
      col2 := xf.Workbook.Sheets[0].Cells[i, 1].Value;
      col3 := xf.Workbook.Sheets[0].Cells[i, 2].Value;
      col4 := xf.Workbook.Sheets[0].Cells[i, 3].Value;
      col5 := xf.Workbook.Sheets[0].Cells[i, 4].Value;
      col6 := xf.Workbook.Sheets[0].Cells[i, 5].Value;
      col7 := xf.Workbook.Sheets[0].Cells[i, 6].Value;
      col8 := xf.Workbook.Sheets[0].Cells[i, 7].Value;
      col9 := xf.Workbook.Sheets[0].Cells[i, 8].Value;
      if col1 <> '' then begin
        dxMemData1.Append;
        dxMemData1col1.Value := Trim(col1);
        dxMemData1col2.Value := Trim(col2);
        dxMemData1col3.Value := Trim(col3);
        dxMemData1col4.Value := Trim(col4);
        dxMemData1col5.Value := Trim(col5);
        dxMemData1col6.Value := Trim(col6);
        dxMemData1col7.Value := Trim(col7);
        dxMemData1col8.Value := Trim(col8);
        dxMemData1col9.Value := Trim(col9);
        dxMemData1.Post;
      end;
    end;
    DataSource1.DataSet.Refresh;
  end;
end;

procedure TfmExcelOpen.btnDelLineClick(Sender: TObject);
begin
  DataSource1.DataSet.Delete;
end;

end.
