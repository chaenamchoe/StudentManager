unit UfmEmpList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, MemDS, DBAccess, Uni, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, cxContainer, ComCtrls, dxCore, cxDateUtils, Menus, StdCtrls,
  cxButtons, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfmEmpList = class(TForm)
    Panel1: TPanel;
    gridEmp: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    EMP_BASIC_SEL: TUniStoredProc;
    ds_EMP_BASIC_SEL: TDataSource;
    EMP_BASIC_SELID: TIntegerField;
    EMP_BASIC_SELE_NAME: TStringField;
    EMP_BASIC_SELE_BIRTH: TDateField;
    EMP_BASIC_SELSTART_DATE: TDateField;
    EMP_BASIC_SELE_JOB: TStringField;
    EMP_BASIC_SELHOUR_PRICE: TIntegerField;
    EMP_BASIC_SELDAY_PRICE: TIntegerField;
    EMP_BASIC_SELMONTH_PRICE: TIntegerField;
    EMP_BASIC_SELFAMILY_CNT: TIntegerField;
    EMP_BASIC_SELFAMILY_PRICE: TIntegerField;
    EMP_BASIC_SELFAMILY_HOUR: TIntegerField;
    gridEmpID: TcxGridDBColumn;
    gridEmpE_NAME: TcxGridDBColumn;
    gridEmpE_BIRTH: TcxGridDBColumn;
    gridEmpSTART_DATE: TcxGridDBColumn;
    gridEmpE_JOB: TcxGridDBColumn;
    gridEmpHOUR_PRICE: TcxGridDBColumn;
    gridEmpDAY_PRICE: TcxGridDBColumn;
    gridEmpMONTH_PRICE: TcxGridDBColumn;
    gridEmpFAMILY_CNT: TcxGridDBColumn;
    gridEmpFAMILY_PRICE: TcxGridDBColumn;
    gridEmpFAMILY_HOUR: TcxGridDBColumn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    E_NAME: TEdit;
    E_JOB: TEdit;
    E_BIRTH: TcxDateEdit;
    START_DATE: TcxDateEdit;
    HOUR_PRICE: TcxCurrencyEdit;
    DAY_PRICE: TcxCurrencyEdit;
    MONTH_PRICE: TcxCurrencyEdit;
    FAMILY_CNT: TcxCurrencyEdit;
    FAMILY_PRICE: TcxCurrencyEdit;
    FAMILY_HOUR: TcxCurrencyEdit;
    btnRetrieve: TcxButton;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    EMP_BASIC_INS: TUniStoredProc;
    EMP_BASIC_UPD: TUniStoredProc;
    EMP_BASIC_DEL: TUniStoredProc;
    btnDelete: TcxButton;
    Label3: TLabel;
    Label12: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure gridEmpFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmpList: TfmEmpList;

implementation

uses
  GlobalVar, Udm;

{$R *.dfm}



procedure TfmEmpList.btnAddClick(Sender: TObject);
begin
  EMP_BASIC_INS.ParamByName('E_NAME').Value       := E_NAME.Text;
  EMP_BASIC_INS.ParamByName('E_BIRTH').Value      := E_BIRTH.EditValue;
  EMP_BASIC_INS.ParamByName('START_DATE').Value   := START_DATE.EditValue;
  EMP_BASIC_INS.ParamByName('E_JOB').Value        := E_JOB.Text;
  EMP_BASIC_INS.ParamByName('HOUR_PRICE').Value   := HOUR_PRICE.EditValue;
  EMP_BASIC_INS.ParamByName('DAY_PRICE').Value    := DAY_PRICE.EditValue;
  EMP_BASIC_INS.ParamByName('MONTH_PRICE').Value  := MONTH_PRICE.EditValue;
  EMP_BASIC_INS.ParamByName('FAMILY_CNT').Value   := FAMILY_CNT.EditValue;
  EMP_BASIC_INS.ParamByName('FAMILY_PRICE').Value := FAMILY_PRICE.EditValue;
  EMP_BASIC_INS.ParamByName('FAMILY_HOUR').Value  := FAMILY_HOUR.EditValue;
  EMP_BASIC_INS.ExecProc;
  ds_EMP_BASIC_SEL.DataSet.Refresh;
end;

procedure TfmEmpList.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    EMP_BASIC_DEL.ParamByName('ID').Value := gridEmpID.EditValue;
    EMP_BASIC_DEL.ExecProc;
    ds_EMP_BASIC_SEL.DataSet.Refresh;
  end;

end;

procedure TfmEmpList.btnEditClick(Sender: TObject);
begin
  EMP_BASIC_UPD.ParamByName('ID').Value           := gridEmpID.EditValue;
  EMP_BASIC_UPD.ParamByName('E_NAME').Value       := E_NAME.Text;
  EMP_BASIC_UPD.ParamByName('E_BIRTH').Value      := E_BIRTH.EditValue;
  EMP_BASIC_UPD.ParamByName('START_DATE').Value   := START_DATE.EditValue;
  EMP_BASIC_UPD.ParamByName('E_JOB').Value        := E_JOB.Text;
  EMP_BASIC_UPD.ParamByName('HOUR_PRICE').Value   := HOUR_PRICE.EditValue;
  EMP_BASIC_UPD.ParamByName('DAY_PRICE').Value    := DAY_PRICE.EditValue;
  EMP_BASIC_UPD.ParamByName('MONTH_PRICE').Value  := MONTH_PRICE.EditValue;
  EMP_BASIC_UPD.ParamByName('FAMILY_CNT').Value   := FAMILY_CNT.EditValue;
  EMP_BASIC_UPD.ParamByName('FAMILY_PRICE').Value := FAMILY_PRICE.EditValue;
  EMP_BASIC_UPD.ParamByName('FAMILY_HOUR').Value  := FAMILY_HOUR.EditValue;
  EMP_BASIC_UPD.ExecProc;
  ds_EMP_BASIC_SEL.DataSet.Refresh;
end;

procedure TfmEmpList.btnRetrieveClick(Sender: TObject);
begin
  EMP_BASIC_SEL.Open;
  ds_EMP_BASIC_SEL.DataSet.Refresh;
end;

procedure TfmEmpList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEmpList.FormShow(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmEmpList.gridEmpFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  E_NAME.Text := gridEmpE_NAME.EditValue;
  E_BIRTH.EditValue := gridEmpE_BIRTH.EditValue;
  START_DATE.EditValue := gridEmpSTART_DATE.EditValue;
  E_JOB.Text := gridEmpE_JOB.EditValue;
  HOUR_PRICE.EditValue := gridEmpHOUR_PRICE.EditValue;
  DAY_PRICE.EditValue := gridEmpDAY_PRICE.EditValue;
  MONTH_PRICE.EditValue := gridEmpMONTH_PRICE.EditValue;
  FAMILY_CNT.EditValue := gridEmpFAMILY_CNT.EditValue;
  FAMILY_PRICE.EditValue := gridEmpFAMILY_PRICE.EditValue;
  FAMILY_HOUR.EditValue := gridEmpFAMILY_HOUR.EditValue;
end;

initialization RegisterClasses([TfmEmpList]);
end.
