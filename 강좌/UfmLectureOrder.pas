unit UfmLectureOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxDBLookupComboBox,
  MemDS, DBAccess, Uni, dxmdaset, Menus, StdCtrls, cxButtons,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmLectureOrder = class(TForm)
    pnl1: TPanel;
    gridLecture: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridLectureL_NAME: TcxGridDBColumn;
    gridLectureTEACHER_ID: TcxGridDBColumn;
    gridLectureL_IDX: TcxGridDBColumn;
    dxMemData1: TdxMemData;
    dxMemData1l_name: TStringField;
    dxMemData1l_teacher_id: TStringField;
    dxMemData1l_idx: TSmallintField;
    ds1: TDataSource;
    dxMemData1id: TIntegerField;
    gridLectureid: TcxGridDBColumn;
    dxMemData1lecture_id: TStringField;
    gridLecturelecture_id: TcxGridDBColumn;
    btnCancelChange: TcxButton;
    lbl1: TLabel;
    btnSave: TcxButton;
    LECTURE_ACTIVE_CHANGE_IDX: TUniStoredProc;
    btnReGenerate: TcxButton;
    procedure gridLectureDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridLectureStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure gridLectureDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnCancelChangeClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnReGenerateClick(Sender: TObject);
  private
    { Private declarations }
    AKeys: Variant;
  public
    { Public declarations }
    DragContentID : Integer;
  end;

var
  fmLectureOrder: TfmLectureOrder;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmLectureOrder.btnCancelChangeClick(Sender: TObject);
begin
  with dxMemData1 do begin
    DisableControls;
    try
      First;
      while not Eof do begin
        Edit;
        FieldValues['l_idx'] := FieldValues['ID'];
        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TfmLectureOrder.btnReGenerateClick(Sender: TObject);
var
  nid : Integer;
begin
  nid := 1;
  with dxMemData1 do begin
    DisableControls;
    try
      First;
      while not Eof do begin
        Edit;
        FieldValues['l_idx'] := nid;
        Inc(nid);
        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TfmLectureOrder.btnSaveClick(Sender: TObject);
var
  lid : string;
  idx : Integer;
begin
  dxMemData1.First;
  while not dxMemData1.Eof do begin
    lid := dxMemData1lecture_id.Value;
    idx := dxMemData1l_idx.Value;
    LECTURE_ACTIVE_CHANGE_IDX.ParamByName('ID').Value := lid;
    LECTURE_ACTIVE_CHANGE_IDX.ParamByName('IDX').Value := idx;
    LECTURE_ACTIVE_CHANGE_IDX.ExecProc;
    dxMemData1.Next;
  end;
  ShowMessage('강좌번호 변경작업이 완료되었습니다.' + #10#13 +
              '이미 열려져 있는 다른 창의 경우 ' + #13#10 +
              '변경된 강좌번호가 반영되지 않았을 수 있습니다.' + #13#10 +
              '해당 창을 다시열면 변경된 강좌번호가 반영됩니다.');
  ModalResult := mrOk;
end;

procedure TfmLectureOrder.FormShow(Sender: TObject);
begin
  gridLecture.DataController.GotoFirst;
end;

procedure TfmLectureOrder.gridLectureDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  HT: TcxCustomGridHitTest;
  ASourceMinOrderValue,ASourceMaxOrderValue,ADestOrderValue: Variant;
  I: Integer;
  AController : TcxGridTableController;
  AOrderIndex : Integer;
  ADataSet : TDataset;
  AField : TField;
  IsUp : boolean;
  ADataController :  TcxDBDataController;
begin
  AOrderIndex := gridLectureL_IDX.Index;
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    ADestOrderValue := TcxGridRecordCellHitTest(HT).GridRecord.Values[AOrderIndex];
    AController := TcxGridTableController(GridView.Controller);
    ADataController :=  TcxDBDataController(GridView.DataController);
    ASourceMinOrderValue := AController.SelectedRows[0].Values[AOrderIndex];
    ASourceMaxOrderValue := AController.SelectedRows[AController.SelectedRowCount-1].Values[AOrderIndex];
    ADataSet :=  ADataController.DataSet;
    AField := ADataSet.FieldByName('l_idx');
    IsUp := (ADestOrderValue < ASourceMinOrderValue);

    ADataSet.First;
    for I := 0 to ADataSet.RecordCount - 1 do
    begin
      ADataSet.Edit;
      if IsUp and (AField.AsInteger >= ADestOrderValue) and (AField.AsInteger < ASourceMinOrderValue) then
        AField.AsInteger := AField.AsInteger + AController.SelectedRowCount;
      if not IsUp and (AField.AsInteger <= ADestOrderValue) and (AField.AsInteger > ASourceMaxOrderValue) then
          AField.AsInteger := AField.AsInteger - AController.SelectedRowCount;
      ADataSet.Post;
      ADataSet.Next;
    end;

    if Not IsUp then
      ADestOrderValue := ADestOrderValue - AController.SelectedRowCount + 1;

    for I := 0 to AController.SelectedRowCount - 1 do
    begin
      TcxDBDataController(GridView.DataController).LocateByKey(AKeys[I]);
      ADataset.Edit;
      AField.Value := ADestOrderValue + I;
      ADataset.Post;
    end;

  end;
end;

procedure TfmLectureOrder.gridLectureDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
begin
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex)
  end;
end;

procedure TfmLectureOrder.gridLectureStartDrag(Sender: TObject;
  var DragObject: TDragObject);
var
  I: Integer;
begin
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
  begin
    AKeys := VarArrayCreate([0, Controller.SelectedRecordCount - 1], varVariant);
    for I := 0 to Controller.SelectedRecordCount - 1 do
      AKeys[I] := Controller.SelectedRecords[I].Values[gridLectureid.Index];
  end;
end;

end.
