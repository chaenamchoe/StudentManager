unit UfmMoneyInReportList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS, DBAccess,
  Uni, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ComCtrls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfmMoneyInReportList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnRetrieve: TBitBtn;
    edtStartDate: TDateTimePicker;
    edtEndDate: TDateTimePicker;
    btnPrint: TBitBtn;
    btnDelete: TBitBtn;
    cxGrid1: TcxGrid;
    gridMoneyIn: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    q_money_in_report: TUniQuery;
    d_money_in_report: TDataSource;
    q_money_in_reportID: TIntegerField;
    q_money_in_reportM_YEAR: TIntegerField;
    q_money_in_reportBALUI_DATE: TDateField;
    q_money_in_reportIN_DATE: TDateField;
    q_money_in_reportREG_DATE1: TDateField;
    q_money_in_reportREG_DATE2: TDateField;
    q_money_in_reportIN_AMOUNT: TFloatField;
    q_money_in_reportUNIQ_ID: TStringField;
    q_money_in_reportDONG_ID: TStringField;
    q_money_in_reportBIGO: TStringField;
    q_money_in_reportM_DATE: TDateField;
    q_money_in_reportIN_LIST: TStringField;
    gridMoneyInID: TcxGridDBColumn;
    gridMoneyInM_YEAR: TcxGridDBColumn;
    gridMoneyInBALUI_DATE: TcxGridDBColumn;
    gridMoneyInIN_DATE: TcxGridDBColumn;
    gridMoneyInREG_DATE1: TcxGridDBColumn;
    gridMoneyInREG_DATE2: TcxGridDBColumn;
    gridMoneyInIN_AMOUNT: TcxGridDBColumn;
    gridMoneyInUNIQ_ID: TcxGridDBColumn;
    gridMoneyInDONG_ID: TcxGridDBColumn;
    gridMoneyInBIGO: TcxGridDBColumn;
    gridMoneyInM_DATE: TcxGridDBColumn;
    gridMoneyInIN_LIST: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyInReportList: TfmMoneyInReportList;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmMoneyInReportList.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    gridMoneyIn.DataController.DeleteSelection;
  end;
end;

procedure TfmMoneyInReportList.btnPrintClick(Sender: TObject);
begin
  ShowMessage('출력기능은 아직 구현되지 않았습니다. 다음 업데이트에 반영됩니다.');
end;

procedure TfmMoneyInReportList.btnRetrieveClick(Sender: TObject);
begin
  q_money_in_report.ParamByName('sdate').Value := edtStartDate.Date;
  q_money_in_report.ParamByName('edate').Value := edtEndDate.Date;
  q_money_in_report.Active := True;
  d_money_in_report.DataSet.Refresh;
end;

procedure TfmMoneyInReportList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMoneyInReportList.FormCreate(Sender: TObject);
begin
  edtStartDate.Date := Date;
  edtEndDate.Date := Date;
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmMoneyInReportList]);
end.
