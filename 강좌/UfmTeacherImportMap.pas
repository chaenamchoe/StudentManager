unit UfmTeacherImportMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, dxmdaset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, Uni,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, Buttons,
  cxSpinEdit;

type
  TfmTeacherImportMap = class(TForm)
    dxMemMapping: TdxMemData;
    dxMemMappingno: TAutoIncField;
    dxMemMappingis_check: TSmallintField;
    dxMemMappingfield_name: TStringField;
    dxMemMappingexcel_column: TIntegerField;
    Panel1: TPanel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    rbYes: TRadioButton;
    rbNo: TRadioButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridMap: TcxGridDBTableView;
    dsMap: TDataSource;
    gridMapRecId: TcxGridDBColumn;
    gridMapno: TcxGridDBColumn;
    gridMapis_check: TcxGridDBColumn;
    gridMapfield_name: TcxGridDBColumn;
    gridMapexcel_column: TcxGridDBColumn;
    dxMemMappingfield_caption: TStringField;
    dxMemMappingfield_type: TStringField;
    gridMapfield_caption: TcxGridDBColumn;
    gridMapfield_type: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CurrentDataSource : TDataSource;
    CurrentGrid : TcxGridDBTableView;
  end;

var
  fmTeacherImportMap: TfmTeacherImportMap;

implementation

{$R *.dfm}

procedure TfmTeacherImportMap.FormActivate(Sender: TObject);
var
  i, cnt : Integer;
  cap_str, f_name, v_Type, f_Type : string;
begin
  dxMemMapping.Close;
  dxMemMapping.Open;
  cnt := CurrentGrid.ColumnCount;
  for i := 0 to cnt - 1 do begin
    cap_str := CurrentGrid.Columns[i].Caption;
    f_name := CurrentGrid.Columns[i].DataBinding.FieldName;
    v_type := CurrentGrid.Columns[i].DataBinding.ValueType;
    f_Type := CurrentGrid.Columns[i].PropertiesClassName;
    dxMemMapping.Append;
    dxMemMappingfield_name.Value := f_name;
    dxMemMappingfield_caption.Value := cap_str;
    dxMemMappingfield_type.Value := v_type;
    dxMemMappingis_check.Value := 1;
    dxMemMappingexcel_column.Value := i+1;
    dxMemMapping.Post;
  end;
  dsMap.DataSet.First;
end;

end.
