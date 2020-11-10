unit UfmMoneyOutReportList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, MemDS, DBAccess, Uni, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSevenClassic, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmMoneyOutReportList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnRetrieve: TBitBtn;
    edtStartDate: TDateTimePicker;
    edtEndDate: TDateTimePicker;
    btnPrint: TBitBtn;
    gridMoneyOut: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_money_out_report: TUniQuery;
    d_money_out_report: TDataSource;
    q_money_out_reportID: TIntegerField;
    q_money_out_reportM_YEAR: TIntegerField;
    q_money_out_reportBALUI_DATE: TDateField;
    q_money_out_reportOUT_DATE: TDateField;
    q_money_out_reportREG_DATE1: TDateField;
    q_money_out_reportREG_DATE2: TDateField;
    q_money_out_reportOUT_AMOUNT: TFloatField;
    q_money_out_reportBANK_NAME: TStringField;
    q_money_out_reportBANK_ID: TStringField;
    q_money_out_reportBANK_OWENER: TStringField;
    q_money_out_reportOWENER_ADDR: TStringField;
    q_money_out_reportAWENER_COMP: TStringField;
    q_money_out_reportBIGO: TStringField;
    q_money_out_reportDONG_ID: TStringField;
    q_money_out_reportUNIQ_ID: TStringField;
    q_money_out_reportM_DATE: TDateField;
    q_money_out_reportOUT_LIST: TStringField;
    gridMoneyOutID: TcxGridDBColumn;
    gridMoneyOutM_YEAR: TcxGridDBColumn;
    gridMoneyOutBALUI_DATE: TcxGridDBColumn;
    gridMoneyOutOUT_DATE: TcxGridDBColumn;
    gridMoneyOutREG_DATE1: TcxGridDBColumn;
    gridMoneyOutREG_DATE2: TcxGridDBColumn;
    gridMoneyOutOUT_AMOUNT: TcxGridDBColumn;
    gridMoneyOutBANK_NAME: TcxGridDBColumn;
    gridMoneyOutBANK_ID: TcxGridDBColumn;
    gridMoneyOutBANK_OWENER: TcxGridDBColumn;
    gridMoneyOutOWENER_ADDR: TcxGridDBColumn;
    gridMoneyOutAWENER_COMP: TcxGridDBColumn;
    gridMoneyOutBIGO: TcxGridDBColumn;
    gridMoneyOutDONG_ID: TcxGridDBColumn;
    gridMoneyOutUNIQ_ID: TcxGridDBColumn;
    gridMoneyOutM_DATE: TcxGridDBColumn;
    gridMoneyOutOUT_LIST: TcxGridDBColumn;
    btnDelete: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure edtStartDateChange(Sender: TObject);
    procedure edtEndDateChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyOutReportList: TfmMoneyOutReportList;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmMoneyOutReportList.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    gridMoneyOut.DataController.DeleteSelection;
  end;
end;

procedure TfmMoneyOutReportList.btnPrintClick(Sender: TObject);
begin
  ShowMessage('출력기능은 아직 구현되지 않았습니다. 다음 업데이트에 반영됩니다.');
end;

procedure TfmMoneyOutReportList.btnRetrieveClick(Sender: TObject);
begin
  q_money_out_report.ParamByName('sdate').Value := edtStartDate.Date;
  q_money_out_report.ParamByName('edate').Value := edtEndDate.Date;
  q_money_out_report.Active := True;
  d_money_out_report.DataSet.Refresh;
end;

procedure TfmMoneyOutReportList.edtEndDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyOutReportList.edtStartDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyOutReportList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMoneyOutReportList.FormCreate(Sender: TObject);
begin
  edtStartDate.Date := Date;
  edtEndDate.Date := Date;
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmMoneyOutReportList]);

end.
