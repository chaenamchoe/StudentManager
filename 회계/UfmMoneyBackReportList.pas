unit UfmMoneyBackReportList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, MemDS,
  DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ComCtrls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfmMoneyBackReportList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnRetrieve: TBitBtn;
    edtStartDate: TDateTimePicker;
    edtEndDate: TDateTimePicker;
    btnPrint: TBitBtn;
    btnDelete: TBitBtn;
    cxGrid1: TcxGrid;
    gridMoneyBack: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    q_money_back_report: TUniQuery;
    d_money_back_report: TDataSource;
    q_money_back_reportID: TIntegerField;
    q_money_back_reportM_YEAR: TIntegerField;
    q_money_back_reportBALUI_DATE: TDateField;
    q_money_back_reportOUT_DATE: TDateField;
    q_money_back_reportREG_DATE1: TDateField;
    q_money_back_reportREG_DATE2: TDateField;
    q_money_back_reportOUT_AMOUNT: TFloatField;
    q_money_back_reportLECTURE_NAME: TStringField;
    q_money_back_reportLECTURE_SNAME: TStringField;
    q_money_back_reportPAY_DATE: TDateField;
    q_money_back_reportPAY_AMOUNT: TFloatField;
    q_money_back_reportBACK_REASON: TStringField;
    q_money_back_reportREQ_ADDR: TStringField;
    q_money_back_reportREQ_TEL: TStringField;
    q_money_back_reportREQ_NAME: TStringField;
    q_money_back_reportREQ_BANK: TStringField;
    q_money_back_reportREQ_BANKID: TStringField;
    q_money_back_reportDONG_ID: TStringField;
    q_money_back_reportUNIQ_ID: TStringField;
    q_money_back_reportM_DATE: TDateField;
    gridMoneyBackID: TcxGridDBColumn;
    gridMoneyBackM_YEAR: TcxGridDBColumn;
    gridMoneyBackBALUI_DATE: TcxGridDBColumn;
    gridMoneyBackOUT_DATE: TcxGridDBColumn;
    gridMoneyBackREG_DATE1: TcxGridDBColumn;
    gridMoneyBackREG_DATE2: TcxGridDBColumn;
    gridMoneyBackOUT_AMOUNT: TcxGridDBColumn;
    gridMoneyBackLECTURE_NAME: TcxGridDBColumn;
    gridMoneyBackLECTURE_SNAME: TcxGridDBColumn;
    gridMoneyBackPAY_DATE: TcxGridDBColumn;
    gridMoneyBackPAY_AMOUNT: TcxGridDBColumn;
    gridMoneyBackBACK_REASON: TcxGridDBColumn;
    gridMoneyBackREQ_ADDR: TcxGridDBColumn;
    gridMoneyBackREQ_TEL: TcxGridDBColumn;
    gridMoneyBackREQ_NAME: TcxGridDBColumn;
    gridMoneyBackREQ_BANK: TcxGridDBColumn;
    gridMoneyBackREQ_BANKID: TcxGridDBColumn;
    gridMoneyBackDONG_ID: TcxGridDBColumn;
    gridMoneyBackUNIQ_ID: TcxGridDBColumn;
    gridMoneyBackM_DATE: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtStartDateChange(Sender: TObject);
    procedure edtEndDateChange(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyBackReportList: TfmMoneyBackReportList;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmMoneyBackReportList.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    gridMoneyBack.DataController.DeleteSelection;
  end;
end;

procedure TfmMoneyBackReportList.btnPrintClick(Sender: TObject);
begin
  ShowMessage('출력기능은 아직 구현되지 않았습니다. 다음 업데이트에 반영됩니다.');
end;

procedure TfmMoneyBackReportList.btnRetrieveClick(Sender: TObject);
begin
  q_money_back_report.ParamByName('sdate').Value := edtStartDate.Date;
  q_money_back_report.ParamByName('edate').Value := edtEndDate.Date;
  q_money_back_report.Active := True;
  d_money_back_report.DataSet.Refresh;
end;

procedure TfmMoneyBackReportList.edtEndDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyBackReportList.edtStartDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyBackReportList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMoneyBackReportList.FormCreate(Sender: TObject);
begin
  edtStartDate.Date := Date;
  edtEndDate.Date := Date;
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmMoneyBackReportList]);

end.
