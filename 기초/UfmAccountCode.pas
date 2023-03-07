unit UfmAccountCode;

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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  ExtCtrls, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmAccountCode = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    cxGrid1: TcxGrid;
    gridItem: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    btnAdd3: TBitBtn;
    btnEdit3: TBitBtn;
    btnDelete3: TBitBtn;
    cxGrid2: TcxGrid;
    gridDetail: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    btnAdd2: TBitBtn;
    btnEdit2: TBitBtn;
    btnDelete2: TBitBtn;
    cxGrid3: TcxGrid;
    GridSub: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    gridItemID: TcxGridDBColumn;
    gridItemITEM_NAME: TcxGridDBColumn;
    GridSubID: TcxGridDBColumn;
    GridSubITEM_ID: TcxGridDBColumn;
    GridSubSUB_NAME: TcxGridDBColumn;
    gridDetailID: TcxGridDBColumn;
    gridDetailSUBITEM_ID: TcxGridDBColumn;
    gridDetailDETAIL_NAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDelete2Click(Sender: TObject);
    procedure btnDelete3Click(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure btnEdit3Click(Sender: TObject);
    procedure btnAdd3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAccountCode: TfmAccountCode;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmAccountCode.btnAdd2Click(Sender: TObject);
var
  sValue : string;
begin
  if InputQuery('세세항/편성목 등록', '세세항/편성목을 입력하세요.', sValue) then begin
    dm.t_account_subitem.Append;
    dm.t_account_subitemSUB_NAME.AsString := sValue;
    dm.t_account_subitem.Post;
    dm.d_account_subitem.DataSet.Refresh;
    dm.d_acc_sublook.DataSet.Refresh;
  end;
end;

procedure TfmAccountCode.btnAdd3Click(Sender: TObject);
var
  sValue : string;
begin
  if InputQuery('목/통계목 등록', '목/통계목을 입력하세요.', sValue) then begin
    dm.t_account_detail.Append;
    dm.t_account_detailDETAIL_NAME.AsString := sValue;
    dm.t_account_detail.Post;
    dm.d_account_detail.DataSet.Refresh;
    dm.d_acc_detaillook.DataSet.Refresh;
  end;
end;

procedure TfmAccountCode.btnAddClick(Sender: TObject);
var
  sValue : string;
begin
  if InputQuery('세항/세부 등록', '세항/세부를 입력하세요.', sValue) then begin
    dm.t_account_item.Append;
    dm.t_account_itemITEM_NAME.AsString := sValue;
    dm.t_account_item.Post;
    dm.d_account_item.DataSet.Refresh;
  end;
end;

procedure TfmAccountCode.btnDelete2Click(Sender: TObject);
begin
  if dm.t_account_subitemKIND.AsInteger = 1 then begin
    ShowMessage('선택한 항목은 필수항목입니다. 삭제할 수 없습니다.');
    Exit;
  end;
  if dm.d_account_subitem.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_account_subitem.DataSet.Delete;
    end;
  end;
end;

procedure TfmAccountCode.btnDelete3Click(Sender: TObject);
begin
  if dm.t_account_detailKIND.AsInteger = 1 then begin
    ShowMessage('선택한 항목은 필수항목입니다. 삭제할 수 없습니다.');
    Exit;
  end;
  if dm.d_account_detail.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_account_detail.DataSet.Delete;
    end;
  end;
end;

procedure TfmAccountCode.btnDeleteClick(Sender: TObject);
begin
  if dm.t_account_itemKIND.AsInteger = 1 then begin
    ShowMessage('선택한 항목은 필수항목입니다. 삭제할 수 없습니다.');
    Exit;
  end;
  if dm.d_account_item.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_account_item.DataSet.Delete;
    end;
  end;
end;

procedure TfmAccountCode.btnEdit2Click(Sender: TObject);
var
  sValue : string;
begin
  if dm.t_account_subitemKIND.AsInteger = 1 then begin
    ShowMessage('선택한 항목은 수정할 수 없습니다.');
    Exit;
  end;
  sValue := dm.t_account_subitemSUB_NAME.AsString;
  if InputQuery('세세항/편성목 수정', '세세항/편성목을 입력하세요.', sValue) then begin
    dm.t_account_subitem.Edit;
    dm.t_account_subitemSUB_NAME.AsString := sValue;
    dm.t_account_subitem.Post;
    dm.d_account_subitem.DataSet.Refresh;
    dm.d_acc_sublook.DataSet.Refresh;
  end;
end;

procedure TfmAccountCode.btnEdit3Click(Sender: TObject);
var
  sValue : string;
begin
  if dm.t_account_detailKIND.AsInteger = 1 then begin
    ShowMessage('선택한 항목은 수정할 수 없습니다.');
    Exit;
  end;
  sValue := dm.t_account_detailDETAIL_NAME.AsString;
  if InputQuery('목/통계목 수정', '목/통계목을 입력하세요.', sValue) then begin
    dm.t_account_detail.Edit;
    dm.t_account_detailDETAIL_NAME.AsString := sValue;
    dm.t_account_detail.Post;
    dm.d_account_detail.DataSet.Refresh;
    dm.d_acc_detaillook.DataSet.Refresh;
  end;
end;

procedure TfmAccountCode.btnEditClick(Sender: TObject);
var
  sValue : string;
begin
  if dm.t_account_itemKIND.AsInteger = 1 then begin
    ShowMessage('선택한 항목은 수정할 수 없습니다.');
    Exit;
  end;
  sValue := dm.t_account_itemITEM_NAME.AsString;
  if InputQuery('세항/세부 수정', '세항/세부를 입력하세요.', sValue) then begin
    dm.t_account_item.Edit;
    dm.t_account_itemITEM_NAME.AsString := sValue;
    dm.t_account_item.Post;
    dm.d_account_item.DataSet.Refresh;
  end;
end;

procedure TfmAccountCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmAccountCode]);

end.
