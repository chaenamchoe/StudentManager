unit UfmEmpPayroll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, DateUtils,
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
  cxGrid, ExtCtrls, cxContainer, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxImageComboBox, cxDBLookupComboBox,
  cxCurrencyEdit, dxmdaset, frxClass, frxDBSet;

type
  TfmEmpPayroll = class(TForm)
    Panel1: TPanel;
    gridPayroll: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    EMP_PAYROLL_SEL: TUniStoredProc;
    ds_EMP_PAYROLL_SEL: TDataSource;
    EMP_PAYROLL_SELID: TIntegerField;
    EMP_PAYROLL_SELWYEAR: TIntegerField;
    EMP_PAYROLL_SELWMONTH: TIntegerField;
    EMP_PAYROLL_SELE_ID: TIntegerField;
    EMP_PAYROLL_SELWORK_DAYS: TIntegerField;
    EMP_PAYROLL_SELWORK_HOURS: TIntegerField;
    EMP_PAYROLL_SELEXTEND_HOURS: TIntegerField;
    EMP_PAYROLL_SELHOLIDAY_HOURS: TIntegerField;
    EMP_PAYROLL_SELNIGHT_HOURS: TIntegerField;
    EMP_PAYROLL_SELBASIC_PRICE: TIntegerField;
    EMP_PAYROLL_SELFAMILY_PRICE: TIntegerField;
    EMP_PAYROLL_SELEXTEND_PRICE: TIntegerField;
    EMP_PAYROLL_SELHOLIDAY_PRICE: TIntegerField;
    EMP_PAYROLL_SELNIGHT_PRICE: TIntegerField;
    EMP_PAYROLL_SELCASH_PRICE: TIntegerField;
    EMP_PAYROLL_SELTOTAL_PRICE: TIntegerField;
    EMP_PAYROLL_SELGONGJE_PRICE: TIntegerField;
    EMP_PAYROLL_SELYOUNGSU_PRICE: TIntegerField;
    EMP_PAYROLL_SELCALC_NOTICE1: TStringField;
    EMP_PAYROLL_SELCALC_NOTICE2: TStringField;
    EMP_PAYROLL_SELCALC_NOTICE3: TStringField;
    EMP_PAYROLL_SELCALC_NOTICE4: TStringField;
    Label1: TLabel;
    spYear: TcxSpinEdit;
    btnRetrieve: TcxButton;
    gridPayrollID: TcxGridDBColumn;
    gridPayrollWYEAR: TcxGridDBColumn;
    gridPayrollWMONTH: TcxGridDBColumn;
    gridPayrollE_ID: TcxGridDBColumn;
    gridPayrollWORK_DAYS: TcxGridDBColumn;
    gridPayrollWORK_HOURS: TcxGridDBColumn;
    gridPayrollEXTEND_HOURS: TcxGridDBColumn;
    gridPayrollHOLIDAY_HOURS: TcxGridDBColumn;
    gridPayrollNIGHT_HOURS: TcxGridDBColumn;
    gridPayrollBASIC_PRICE: TcxGridDBColumn;
    gridPayrollFAMILY_PRICE: TcxGridDBColumn;
    gridPayrollEXTEND_PRICE: TcxGridDBColumn;
    gridPayrollHOLIDAY_PRICE: TcxGridDBColumn;
    gridPayrollNIGHT_PRICE: TcxGridDBColumn;
    gridPayrollCASH_PRICE: TcxGridDBColumn;
    gridPayrollTOTAL_PRICE: TcxGridDBColumn;
    gridPayrollGONGJE_PRICE: TcxGridDBColumn;
    gridPayrollYOUNGSU_PRICE: TcxGridDBColumn;
    gridPayrollCALC_NOTICE1: TcxGridDBColumn;
    gridPayrollCALC_NOTICE2: TcxGridDBColumn;
    gridPayrollCALC_NOTICE3: TcxGridDBColumn;
    gridPayrollCALC_NOTICE4: TcxGridDBColumn;
    btnAdd: TcxButton;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    icbMonth: TcxImageComboBox;
    Label2: TLabel;
    EMP_PAYROLL_INS: TUniStoredProc;
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
    EMP_ATTENDING_SEL: TUniStoredProc;
    ds_EMP_ATTENDING_SEL: TDataSource;
    EMP_ATTENDING_SELID: TIntegerField;
    EMP_ATTENDING_SELWDATE: TDateField;
    EMP_ATTENDING_SELIN_TIME: TTimeField;
    EMP_ATTENDING_SELOUT_TIME: TTimeField;
    EMP_ATTENDING_SELW_KIND: TIntegerField;
    EMP_ATTENDING_SELW_REASON: TStringField;
    EMP_ATTENDING_SELW_HOUR: TIntegerField;
    EMP_ATTENDING_SELW_WEEK: TIntegerField;
    EMP_BASIC_SEL_LOOKUP: TUniStoredProc;
    ds_EMP_BASIC_SEL_LOOKUP: TDataSource;
    EMP_BASIC_SEL_LOOKUPID: TIntegerField;
    EMP_BASIC_SEL_LOOKUPE_NAME: TStringField;
    EMP_BASIC_SEL_LOOKUPE_BIRTH: TDateField;
    EMP_BASIC_SEL_LOOKUPSTART_DATE: TDateField;
    EMP_BASIC_SEL_LOOKUPE_JOB: TStringField;
    EMP_BASIC_SEL_LOOKUPHOUR_PRICE: TIntegerField;
    EMP_BASIC_SEL_LOOKUPDAY_PRICE: TIntegerField;
    EMP_BASIC_SEL_LOOKUPMONTH_PRICE: TIntegerField;
    EMP_BASIC_SEL_LOOKUPFAMILY_CNT: TIntegerField;
    EMP_BASIC_SEL_LOOKUPFAMILY_PRICE: TIntegerField;
    EMP_BASIC_SEL_LOOKUPFAMILY_HOUR: TIntegerField;
    gridAttending: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridAttendingID: TcxGridDBColumn;
    gridAttendingWDATE: TcxGridDBColumn;
    gridAttendingIN_TIME: TcxGridDBColumn;
    gridAttendingOUT_TIME: TcxGridDBColumn;
    gridAttendingW_KIND: TcxGridDBColumn;
    gridAttendingW_REASON: TcxGridDBColumn;
    gridAttendingW_HOUR: TcxGridDBColumn;
    gridAttendingW_WEEK: TcxGridDBColumn;
    btnRecalc: TcxButton;
    EMP_PAYROLL_UPD: TUniStoredProc;
    EMP_PAYROLL_SELSODUKSE: TIntegerField;
    EMP_PAYROLL_SELJUMINSE: TIntegerField;
    gridPayrollSODUKSE: TcxGridDBColumn;
    gridPayrollJUMINSE: TcxGridDBColumn;
    btnPrint: TcxButton;
    frxReport1: TfrxReport;
    dxMemData1: TdxMemData;
    dxMemData1jigubil: TDateField;
    EMP_TAX_TABLE_SEL: TUniStoredProc;
    ds_EMP_TAX_TABLE_SEL: TDataSource;
    EMP_TAX_TABLE_SELID: TIntegerField;
    EMP_TAX_TABLE_SELSTART_PRICE: TIntegerField;
    EMP_TAX_TABLE_SELEND_RICE: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY1: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY2: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY3: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY4: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY5: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY6: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY7: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY8: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY9: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY10: TIntegerField;
    EMP_TAX_TABLE_SELFAMILY11: TIntegerField;
    dxMemData1ename: TStringField;
    dxMemData1ebirth: TStringField;
    dxMemData1busu: TStringField;
    dxMemData1jikgub: TStringField;
    dxMemData1basic_price: TIntegerField;
    dxMemData1ext_price: TIntegerField;
    dxMemData1bonus: TIntegerField;
    dxMemData1jigub_total: TIntegerField;
    dxMemData1sodukse: TIntegerField;
    dxMemData1juminse: TIntegerField;
    dxMemData1gongje_total: TIntegerField;
    dxMemData1net_price: TIntegerField;
    dxMemData1ext_hours: TIntegerField;
    dxMemData1yunga_days: TIntegerField;
    dxMemData1jotoi_hours: TIntegerField;
    dxMemData1calc_note1: TStringField;
    dxMemData1calc_note2: TStringField;
    dxMemData1calc_note3: TStringField;
    dxMemData1calc_note4: TStringField;
    dxMemData1calc_note5: TStringField;
    DataSource2: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    dxMemData1year_month: TIntegerField;
    dxMemData1family_price: TIntegerField;
    btnCalcDesc: TcxButton;
    btnDelete: TcxButton;
    EMP_PAYROLL_SELEXTRA_PRICE: TIntegerField;
    gridPayrollEXTRA_PRICE: TcxGridDBColumn;
    btnExtraPrice: TcxButton;
    EMP_PAYROLL_SELETC1_NAME: TStringField;
    EMP_PAYROLL_SELETC1_PRICE: TIntegerField;
    EMP_PAYROLL_SELETC2_NAME: TStringField;
    EMP_PAYROLL_SELETC2_PRICE: TIntegerField;
    EMP_PAYROLL_SELYUNGUM: TIntegerField;
    EMP_PAYROLL_SELGOYONG_BOHUM: TIntegerField;
    EMP_PAYROLL_SELGUNGANG_BOHUM: TIntegerField;
    EMP_PAYROLL_SELYOYANG_BOHUM: TIntegerField;
    EMP_PAYROLL_SELSANJAE_BOHUM: TIntegerField;
    gridPayrollETC1_NAME: TcxGridDBColumn;
    gridPayrollETC1_PRICE: TcxGridDBColumn;
    gridPayrollETC2_NAME: TcxGridDBColumn;
    gridPayrollETC2_PRICE: TcxGridDBColumn;
    gridPayrollYUNGUM: TcxGridDBColumn;
    gridPayrollGOYONG_BOHUM: TcxGridDBColumn;
    gridPayrollGUNGANG_BOHUM: TcxGridDBColumn;
    gridPayrollYOYANG_BOHUM: TcxGridDBColumn;
    gridPayrollSANJAE_BOHUM: TcxGridDBColumn;
    dxMemData1etc1_price: TIntegerField;
    dxMemData1etc1_name: TStringField;
    dxMemData1etc2_price: TIntegerField;
    dxMemData1etc2_name: TStringField;
    dxMemData1yungum: TIntegerField;
    dxMemData1goyong: TIntegerField;
    dxMemData1gungang: TIntegerField;
    dxMemData1yoyang: TIntegerField;
    dxMemData1sanjae: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRecalcClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnCalcDescClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExtraPriceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmpPayroll: TfmEmpPayroll;

implementation

uses
  GlobalVar, Udm, UfmCalcDesc, UfmExtraPrice;

{$R *.dfm}

procedure TfmEmpPayroll.btnAddClick(Sender: TObject);
var
  i, cnt, e_id, rowid, toprow  : Integer;
  work_days, work_hours, ext_hours, ext_days, ext_price, family_cnt : Integer;
  TOTAL_AMOUNT, SODUK_FEE, SODUK, JUMIN_FEE, JUMIN, NET_AMOUNT : Integer;
begin
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('select id from emp_payroll where wyear = :wyear and wmonth = :wmonth;');
  UniQuery1.ParamByName('wyear').Value := spYear.EditValue;
  UniQuery1.ParamByName('wmonth').Value := icbMonth.EditValue;
  UniQuery1.Open;
  DataSource1.DataSet.Refresh;
  if UniQuery1.RecordCount > 0 then begin
    if Application.MessageBox('기존에 생성된 자료가 있습니다. ' + #13#10 +
      '명령을 실행하면 이전의 자료는 삭제됩니다.' + #13#10 + '정말 실행할까요?', 'Application.Title',
      MB_YESNO + MB_ICONWARNING) = IDNO then
    begin
      Exit;
    end;
  end;
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('delete from emp_payroll where wyear = :wyear and wmonth = :wmonth;');
  UniQuery1.ParamByName('wyear').Value := spYear.EditValue;
  UniQuery1.ParamByName('wmonth').Value := icbMonth.EditValue;
  UniQuery1.ExecSQL;

  rowid := gridPayrollID.EditValue;
  toprow := gridPayroll.Controller.TopRowIndex;
  gridPayroll.DataController.SaveBookmark;

  EMP_BASIC_SEL.Open;
  ds_EMP_BASIC_SEL.DataSet.Refresh;
  EMP_BASIC_SEL.First;
  e_id := EMP_BASIC_SELID.Value;

  EMP_ATTENDING_SEL.ParamByName('WYEAR').Value := spYear.EditValue;
  EMP_ATTENDING_SEL.ParamByName('WMONTH').Value := icbMonth.EditValue;
  EMP_ATTENDING_SEL.Open;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
  if EMP_ATTENDING_SEL.RecordCount > 0 then begin
    work_days := gridAttending.DataController.RecordCount;
    work_hours := gridAttending.DataController.Summary.FooterSummaryValues[0];
    //ext_price...
    EMP_ATTENDING_SEL.Filter := 'W_KIND = 4';
    EMP_ATTENDING_SEL.Filtered := True;
    ext_days := gridAttending.DataController.RecordCount;
    ext_hours := gridAttending.DataController.Summary.FooterSummaryValues[0];
    ext_hours := ext_hours - (ext_days * 8);
    ext_price := 15870 * ext_hours;
    EMP_ATTENDING_SEL.Filtered := False;
  end else begin
    work_days := 0;
    work_hours := 0;
    ext_days := 0;
    ext_hours := 0;
    ext_price := 0;
  end;
  //total and suduk jumin
  TOTAL_AMOUNT := EMP_BASIC_SELMONTH_PRICE.Value + ext_price;
  EMP_TAX_TABLE_SEL.ParamByName('IN_PRICE').Value := TOTAL_AMOUNT;
  EMP_TAX_TABLE_SEL.Open;
  ds_EMP_TAX_TABLE_SEL.DataSet.Refresh;
  family_cnt := EMP_BASIC_SELFAMILY_CNT.Value;
  case family_cnt of
    0, 1: SODUK := EMP_TAX_TABLE_SELFAMILY1.Value;
    2: SODUK := EMP_TAX_TABLE_SELFAMILY2.Value;
    3: SODUK := EMP_TAX_TABLE_SELFAMILY3.Value;
    4: SODUK := EMP_TAX_TABLE_SELFAMILY4.Value;
    5: SODUK := EMP_TAX_TABLE_SELFAMILY5.Value;
    6: SODUK := EMP_TAX_TABLE_SELFAMILY6.Value;
    7: SODUK := EMP_TAX_TABLE_SELFAMILY7.Value;
    8: SODUK := EMP_TAX_TABLE_SELFAMILY8.Value;
    9: SODUK := EMP_TAX_TABLE_SELFAMILY9.Value;
    10: SODUK := EMP_TAX_TABLE_SELFAMILY10.Value;
    11: SODUK := EMP_TAX_TABLE_SELFAMILY11.Value;
  end;
  JUMIN_FEE := Trunc(SODUK * 0.1);
  JUMIN     := Trunc(JUMIN_FEE * 0.1) * 10;

  EMP_PAYROLL_INS.ParamByName('WYEAR').Value := spYear.EditValue;
  EMP_PAYROLL_INS.ParamByName('WMONTH').Value := icbMonth.EditValue;
  EMP_PAYROLL_INS.ParamByName('E_ID').Value := e_id;
  EMP_PAYROLL_INS.ParamByName('WORK_DAYS').Value := work_days;
  EMP_PAYROLL_INS.ParamByName('WORK_HOURS').Value := work_hours;
  EMP_PAYROLL_INS.ParamByName('EXTEND_HOURS').Value := ext_hours;
  EMP_PAYROLL_INS.ParamByName('HOLIDAY_HOURS').Value := 0;
  EMP_PAYROLL_INS.ParamByName('NIGHT_HOURS').Value := 0;
  EMP_PAYROLL_INS.ParamByName('BASIC_PRICE').Value := TOTAL_AMOUNT;
  EMP_PAYROLL_INS.ParamByName('FAMILY_PRICE').Value := 0;
  EMP_PAYROLL_INS.ParamByName('EXTEND_PRICE').Value := ext_price;
  EMP_PAYROLL_INS.ParamByName('HOLIDAY_PRICE').Value := 0;
  EMP_PAYROLL_INS.ParamByName('NIGHT_PRICE').Value := 0;
  EMP_PAYROLL_INS.ParamByName('CASH_PRICE').Value := TOTAL_AMOUNT;
  EMP_PAYROLL_INS.ParamByName('TOTAL_PRICE').Value := TOTAL_AMOUNT;
  EMP_PAYROLL_INS.ParamByName('SODUKSE').Value := SODUK;
  EMP_PAYROLL_INS.ParamByName('JUMINSE').Value := JUMIN;
  EMP_PAYROLL_INS.ParamByName('GONGJE_PRICE').Value := SODUK + JUMIN;
  EMP_PAYROLL_INS.ParamByName('YOUNGSU_PRICE').Value := TOTAL_AMOUNT - (SODUK + JUMIN);
  EMP_PAYROLL_INS.ParamByName('ETC1_NAME').Value := '';
  EMP_PAYROLL_INS.ParamByName('ETC2_NAME').Value := '';
  EMP_PAYROLL_INS.ParamByName('ETC1_PRICE').Value := 0;
  EMP_PAYROLL_INS.ParamByName('ETC2_PRICE').Value := 0;
  EMP_PAYROLL_INS.ParamByName('YUNGUM').Value := 0;
  EMP_PAYROLL_INS.ParamByName('GOYONG_BOHUM').Value := 0;
  EMP_PAYROLL_INS.ParamByName('GUNGANG_BOHUM').Value := 0;
  EMP_PAYROLL_INS.ParamByName('YOYANG_BOHUM').Value := 0;
  EMP_PAYROLL_INS.ParamByName('SANJAE_BOHUM').Value := 0;
  EMP_PAYROLL_INS.ParamByName('CALC_NOTICE1').Value := '';
  EMP_PAYROLL_INS.ParamByName('CALC_NOTICE2').Value := '';
  EMP_PAYROLL_INS.ParamByName('CALC_NOTICE3').Value := '';
  EMP_PAYROLL_INS.ParamByName('CALC_NOTICE4').Value := '';
  EMP_PAYROLL_INS.ExecProc;
  ds_EMP_PAYROLL_SEL.DataSet.Refresh;
  ds_EMP_PAYROLL_SEL.DataSet.Locate('ID', rowid, []);
  gridPayroll.DataController.GotoBookmark;
  gridPayroll.Controller.TopRowIndex := toprow;
end;

procedure TfmEmpPayroll.btnCalcDescClick(Sender: TObject);
var
  basic_calc, ext_calc, bonus_calc, family_calc : string;
  id, toprow : Integer;
begin
  fmCalcDesc := TfmCalcDesc.Create(Self);
  try
    id := gridPayrollID.EditValue;
    toprow := gridPayroll.Controller.TopRowIndex;
    gridPayroll.DataController.SaveBookmark;
    fmCalcDesc.Edit1.Text := VarToStrDef(gridPayrollCALC_NOTICE1.EditValue, '');
    fmCalcDesc.Edit2.Text := VarToStrDef(gridPayrollCALC_NOTICE2.EditValue, '');
    fmCalcDesc.Edit3.Text := VarToStrDef(gridPayrollCALC_NOTICE3.EditValue, '');
    fmCalcDesc.Edit4.Text := VarToStrDef(gridPayrollCALC_NOTICE4.EditValue, '');

    fmCalcDesc.ShowModal;
    if fmCalcDesc.ModalResult = mrOk then begin
      basic_calc := fmCalcDesc.Edit1.Text;
      ext_calc := fmCalcDesc.Edit2.Text;
      bonus_calc := fmCalcDesc.Edit3.Text;
      family_calc := fmCalcDesc.Edit4.Text;
      UniQuery1.SQL.Clear;
      UniQuery1.SQL.Add('update emp_payroll set calc_notice1 = :note1, calc_notice2 = :note2, calc_notice3 = :note3, calc_notice4 = :note4 ');
      UniQuery1.SQL.Add('where id = :id;');
      UniQuery1.ParamByName('note1').Value := basic_calc;
      UniQuery1.ParamByName('note2').Value := ext_calc;
      UniQuery1.ParamByName('note3').Value := bonus_calc;
      UniQuery1.ParamByName('note4').Value := family_calc;
      UniQuery1.ParamByName('id').Value := id;
      UniQuery1.ExecSQL;
      ds_EMP_PAYROLL_SEL.DataSet.Refresh;
      ds_EMP_PAYROLL_SEL.DataSet.Locate('ID', id, []);
      gridPayroll.DataController.GotoBookmark;
      gridPayroll.Controller.TopRowIndex := toprow;
    end;
  finally
    fmCalcDesc.Free;
  end;

end;

procedure TfmEmpPayroll.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    gridPayroll.DataController.SaveBookmark;
    UniQuery1.SQL.Clear;
    UniQuery1.SQL.Add('delete from emp_payroll where wyear = :wyear and wmonth = :wmonth;');
    UniQuery1.ParamByName('wyear').Value := gridPayrollWYEAR.EditValue;
    UniQuery1.ParamByName('wmonth').Value := gridPayrollWMONTH.EditValue;
    UniQuery1.ExecSQL;
    ds_EMP_PAYROLL_SEL.DataSet.Refresh;
    gridPayroll.DataController.GotoBookmark;
  end;
end;

procedure TfmEmpPayroll.btnPrintClick(Sender: TObject);
begin
  EMP_BASIC_SEL.Open;
  ds_EMP_BASIC_SEL.DataSet.Refresh;
  EMP_BASIC_SEL.First;

  dxMemData1.Close;
  dxMemData1.Open;
  dxMemData1.Append;
  dxMemData1busu.Value := LoginUserDongName;
  dxMemData1jikgub.Value := LoginUserJikgub;
  dxMemData1year_month.Value := gridPayrollWMONTH.EditValue;
  dxMemData1jigubil.Value := Date;
  dxMemData1ename.Value := gridPayroll.DataController.GetDisplayText(gridPayroll.DataController.GetFocusedRecordIndex,
                                                                     gridPayrollE_ID.Index);
  dxMemData1ebirth.Value := DateToStr(EMP_BASIC_SELE_BIRTH.Value);
  dxMemData1basic_price.Value := gridPayrollBASIC_PRICE.EditValue;
  dxMemData1ext_price.Value := gridPayrollEXTEND_PRICE.EditValue;
  dxMemData1bonus.Value := gridPayrollEXTRA_PRICE.EditValue;
  dxMemData1jigub_total.Value := gridPayrollTOTAL_PRICE.EditValue;
  dxMemData1sodukse.Value := gridPayrollSODUKSE.EditValue;
  dxMemData1juminse.Value := gridPayrollJUMINSE.EditValue;
  dxMemData1jigub_total.Value := gridPayrollTOTAL_PRICE.EditValue;
  dxMemData1gongje_total.Value := gridPayrollGONGJE_PRICE.EditValue;
  dxMemData1net_price.Value := gridPayrollYOUNGSU_PRICE.EditValue;
  dxMemData1ext_hours.Value := gridPayrollEXTEND_HOURS.EditValue;
  dxMemData1yunga_days.Value := 0;
  dxMemData1jotoi_hours.Value := 0;
  dxMemData1family_price.Value := gridPayrollFAMILY_PRICE.EditValue;
  dxMemData1etc1_name.Value := gridPayrollETC1_NAME.EditValue;
  dxMemData1etc1_price.Value := gridPayrollETC1_PRICE.EditValue;
  dxMemData1etc2_name.Value := gridPayrollETC2_NAME.EditValue;
  dxMemData1etc2_price.Value := gridPayrollETC2_PRICE.EditValue;
  dxMemData1yungum.Value := gridPayrollYUNGUM.EditValue;
  dxMemData1goyong.Value := gridPayrollGOYONG_BOHUM.EditValue;
  dxMemData1gungang.Value := gridPayrollGUNGANG_BOHUM.EditValue;
  dxMemData1yoyang.Value := gridPayrollYOYANG_BOHUM.EditValue;
  dxMemData1sanjae.Value := gridPayrollSANJAE_BOHUM.EditValue;
  dxMemData1calc_note1.Value := VarToStrDef(gridPayrollCALC_NOTICE1.EditValue, '');
  dxMemData1calc_note2.Value := VarToStrDef(gridPayrollCALC_NOTICE2.EditValue, '');
  dxMemData1calc_note3.Value := VarToStrDef(gridPayrollCALC_NOTICE3.EditValue, '');
  dxMemData1calc_note4.Value := VarToStrDef(gridPayrollCALC_NOTICE4.EditValue, '');
  dxMemData1.Post;
  DataSource2.DataSet.Refresh;
  frxReport1.ShowReport;
end;

procedure TfmEmpPayroll.btnRecalcClick(Sender: TObject);
var
  i, cnt, e_id, toprow, rowid : Integer;
  work_days, work_hours, ext_hours, ext_days, ext_price, family_cnt, family_price : Integer;
  TOTAL_AMOUNT, TOTAL_GONGJE, SODUK_FEE, SODUK, JUMIN_FEE, JUMIN, NET_AMOUNT, BASIC_PRICE : Integer;
  EXTRA_PRICE, YUNGUM, GOYONG, GUNGANG, YOYANG, SANJAE, ETC1_PRICE, ETC2_PRICE : Integer;
begin
  rowid := gridPayrollID.EditValue;
  toprow := gridPayroll.Controller.TopRowIndex;
  gridPayroll.DataController.SaveBookmark;

  EMP_BASIC_SEL.Open;
  ds_EMP_BASIC_SEL.DataSet.Refresh;
  EMP_BASIC_SEL.First;
  e_id := gridPayrollE_ID.EditValue;

  EMP_ATTENDING_SEL.ParamByName('WYEAR').Value := gridPayrollWYEAR.EditValue;
  EMP_ATTENDING_SEL.ParamByName('WMONTH').Value := gridPayrollWMONTH.EditValue;
  EMP_ATTENDING_SEL.Open;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
  if EMP_ATTENDING_SEL.RecordCount > 0 then begin
    work_days := gridAttending.DataController.RecordCount;
    work_hours := gridAttending.DataController.Summary.FooterSummaryValues[0];
    //ext_price...
    EMP_ATTENDING_SEL.Filter := 'W_KIND = 4';
    EMP_ATTENDING_SEL.Filtered := True;
    ext_days := gridAttending.DataController.RecordCount;
    ext_hours := gridAttending.DataController.Summary.FooterSummaryValues[0];
    ext_hours := ext_hours - (ext_days * 8);
    ext_price := 15870 * ext_hours;
    EMP_ATTENDING_SEL.Filtered := False;
  end else begin
    work_days := 0;
    work_hours := 0;
    ext_days := 0;
    ext_hours := 0;
    ext_price := 0;
  end;
  //total and suduk jumin
  if VarIsNull(gridPayrollEXTRA_PRICE.EditValue) then EXTRA_PRICE := 0
  else EXTRA_PRICE := gridPayrollEXTRA_PRICE.EditValue;
  if VarIsNull(gridPayrollETC1_PRICE.EditValue) then ETC1_PRICE := 0
  else  ETC1_PRICE := gridPayrollETC1_PRICE.EditValue;
  if VarIsNull(gridPayrollETC2_PRICE.EditValue) then ETC2_PRICE := 0
  else  ETC2_PRICE := gridPayrollETC2_PRICE.EditValue;

  BASIC_PRICE := EMP_BASIC_SELMONTH_PRICE.Value;
  family_cnt := EMP_BASIC_SELFAMILY_CNT.Value;
  family_price := EMP_BASIC_SELFAMILY_PRICE.Value * family_cnt;
  TOTAL_AMOUNT := BASIC_PRICE + ext_price + family_price + EXTRA_PRICE + ETC1_PRICE + ETC2_PRICE;

  EMP_TAX_TABLE_SEL.ParamByName('IN_PRICE').Value := TOTAL_AMOUNT;
  EMP_TAX_TABLE_SEL.Open;
  ds_EMP_TAX_TABLE_SEL.DataSet.Refresh;
  case family_cnt of
    0, 1: SODUK := EMP_TAX_TABLE_SELFAMILY1.Value;
    2: SODUK := EMP_TAX_TABLE_SELFAMILY2.Value;
    3: SODUK := EMP_TAX_TABLE_SELFAMILY3.Value;
    4: SODUK := EMP_TAX_TABLE_SELFAMILY4.Value;
    5: SODUK := EMP_TAX_TABLE_SELFAMILY5.Value;
    6: SODUK := EMP_TAX_TABLE_SELFAMILY6.Value;
    7: SODUK := EMP_TAX_TABLE_SELFAMILY7.Value;
    8: SODUK := EMP_TAX_TABLE_SELFAMILY8.Value;
    9: SODUK := EMP_TAX_TABLE_SELFAMILY9.Value;
    10: SODUK := EMP_TAX_TABLE_SELFAMILY10.Value;
    11: SODUK := EMP_TAX_TABLE_SELFAMILY11.Value;
  end;
  JUMIN_FEE := Trunc(SODUK * 0.1);
  JUMIN     := Trunc(JUMIN_FEE * 0.1) * 10;
  YUNGUM := gridPayrollYUNGUM.EditValue;
  GOYONG := gridPayrollGOYONG_BOHUM.EditValue;
  GUNGANG := gridPayrollGUNGANG_BOHUM.EditValue;
  YOYANG := gridPayrollYOYANG_BOHUM.EditValue;
  SANJAE := gridPayrollSANJAE_BOHUM.EditValue;
  TOTAL_GONGJE := SODUK + JUMIN + YUNGUM + GOYONG + GUNGANG + YOYANG + SANJAE;

  EMP_PAYROLL_UPD.ParamByName('ID').Value := rowid;
  EMP_PAYROLL_UPD.ParamByName('WYEAR').Value := gridPayrollWYEAR.EditValue;
  EMP_PAYROLL_UPD.ParamByName('WMONTH').Value := gridPayrollWMONTH.EditValue;
  EMP_PAYROLL_UPD.ParamByName('E_ID').Value := e_id;
  EMP_PAYROLL_UPD.ParamByName('WORK_DAYS').Value := work_days;
  EMP_PAYROLL_UPD.ParamByName('WORK_HOURS').Value := work_hours;
  EMP_PAYROLL_UPD.ParamByName('EXTEND_HOURS').Value := ext_hours;
  EMP_PAYROLL_UPD.ParamByName('HOLIDAY_HOURS').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('NIGHT_HOURS').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('BASIC_PRICE').Value := BASIC_PRICE;
  EMP_PAYROLL_UPD.ParamByName('FAMILY_PRICE').Value := family_price;
  EMP_PAYROLL_UPD.ParamByName('EXTEND_PRICE').Value := ext_price;
  EMP_PAYROLL_UPD.ParamByName('HOLIDAY_PRICE').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('NIGHT_PRICE').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('SODUKSE').Value := SODUK;
  EMP_PAYROLL_UPD.ParamByName('JUMINSE').Value := JUMIN;
  EMP_PAYROLL_UPD.ParamByName('EXTRA_PRICE').Value := EXTRA_PRICE;
  EMP_PAYROLL_UPD.ParamByName('ETC1_NAME').Value := '';
  EMP_PAYROLL_UPD.ParamByName('ETC2_NAME').Value := '';
  EMP_PAYROLL_UPD.ParamByName('ETC1_PRICE').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('ETC2_PRICE').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('YUNGUM').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('GOYONG_BOHUM').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('GUNGANG_BOHUM').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('YOYANG_BOHUM').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('SANJAE_BOHUM').Value := 0;
  EMP_PAYROLL_UPD.ParamByName('CALC_NOTICE1').Value := '';
  EMP_PAYROLL_UPD.ParamByName('CALC_NOTICE2').Value := '';
  EMP_PAYROLL_UPD.ParamByName('CALC_NOTICE3').Value := '';
  EMP_PAYROLL_UPD.ParamByName('CALC_NOTICE4').Value := '';
  EMP_PAYROLL_UPD.ParamByName('CASH_PRICE').Value := TOTAL_AMOUNT;
  EMP_PAYROLL_UPD.ParamByName('TOTAL_PRICE').Value := TOTAL_AMOUNT;
  EMP_PAYROLL_UPD.ParamByName('GONGJE_PRICE').Value := TOTAL_GONGJE;
  EMP_PAYROLL_UPD.ParamByName('YOUNGSU_PRICE').Value := TOTAL_AMOUNT - TOTAL_GONGJE;
  EMP_PAYROLL_UPD.ExecProc;
  ds_EMP_PAYROLL_SEL.DataSet.Refresh;
  ds_EMP_PAYROLL_SEL.DataSet.Locate('ID', rowid, []);
  gridPayroll.DataController.GotoBookmark;
  gridPayroll.Controller.TopRowIndex := toprow;
end;

procedure TfmEmpPayroll.btnRetrieveClick(Sender: TObject);
begin
  EMP_PAYROLL_SEL.ParamByName('CYEAR').Value := spYear.EditValue;
  EMP_PAYROLL_SEL.Open;
  ds_EMP_PAYROLL_SEL.DataSet.Refresh;
end;

procedure TfmEmpPayroll.btnExtraPriceClick(Sender: TObject);
var
  extra_price, etc1, etc2, yungum, goyong, gungang, yoyang, sanjae : Integer;
  etc1_name, etc2_name : string;
  rowid, toprow : Integer;
begin
  gridPayroll.DataController.SaveBookmark;
  toprow := gridPayroll.Controller.TopRowIndex;
  rowid := gridPayrollID.EditValue;
  fmExtraPrice := TfmExtraPrice.Create(Self);
  try
    fmExtraPrice.ETC1_NAME.Text := VarToStrDef(gridPayrollETC1_NAME.EditValue, '');
    fmExtraPrice.ETC2_NAME.Text := VarToStrDef(gridPayrollETC2_NAME.EditValue, '');
    if VarIsNull(gridPayrollEXTRA_PRICE.EditValue) then fmExtraPrice.EXTRA_PRICE.EditValue := 0
    else fmExtraPrice.EXTRA_PRICE.EditValue := gridPayrollEXTRA_PRICE.EditValue;

    if VarIsNull(gridPayrollETC1_PRICE.EditValue) then fmExtraPrice.ETC1_PRICE.EditValue := 0
    else fmExtraPrice.ETC1_PRICE.EditValue := gridPayrollETC1_PRICE.EditValue;

    if VarIsNull(gridPayrollETC2_PRICE.EditValue) then fmExtraPrice.ETC2_PRICE.EditValue := 0
    else fmExtraPrice.ETC2_PRICE.EditValue := gridPayrollETC2_PRICE.EditValue;

    if VarIsNull(gridPayrollYUNGUM.EditValue) then fmExtraPrice.YUNGUM.EditValue := 0
    else fmExtraPrice.YUNGUM.EditValue := gridPayrollYUNGUM.EditValue;

    if VarIsNull(gridPayrollGOYONG_BOHUM.EditValue) then fmExtraPrice.GOYONG_BOHUM.EditValue := 0
    else fmExtraPrice.GOYONG_BOHUM.EditValue := gridPayrollGOYONG_BOHUM.EditValue;

    if VarIsNull(gridPayrollGUNGANG_BOHUM.EditValue) then fmExtraPrice.GUNGANG_BOHUM.EditValue := 0
    else fmExtraPrice.GUNGANG_BOHUM.EditValue := gridPayrollGUNGANG_BOHUM.EditValue;

    if VarIsNull(gridPayrollYOYANG_BOHUM.EditValue) then fmExtraPrice.YOYANG_BOHUM.EditValue := 0
    else fmExtraPrice.YOYANG_BOHUM.EditValue := gridPayrollYOYANG_BOHUM.EditValue;

    if VarIsNull(gridPayrollSANJAE_BOHUM.EditValue) then fmExtraPrice.SANJAE_BOHUM.EditValue := 0
    else fmExtraPrice.SANJAE_BOHUM.EditValue := gridPayrollSANJAE_BOHUM.EditValue;

    fmExtraPrice.ShowModal;
    if fmExtraPrice.ModalResult = mrOk then begin
      extra_price := fmExtraPrice.EXTRA_PRICE.EditValue;
      etc1 := fmExtraPrice.ETC1_PRICE.EditValue;
      etc2 := fmExtraPrice.ETC2_PRICE.EditValue;
      yungum := fmExtraPrice.YUNGUM.EditValue;
      goyong := fmExtraPrice.GOYONG_BOHUM.EditValue;
      gungang := fmExtraPrice.GUNGANG_BOHUM.EditValue;
      yoyang := fmExtraPrice.YOYANG_BOHUM.EditValue;
      sanjae := fmExtraPrice.SANJAE_BOHUM.EditValue;
      if etc1 > 0 then etc1_name := fmExtraPrice.ETC1_NAME.Text else etc1_name := '';
      if etc2 > 0 then etc2_name := fmExtraPrice.ETC2_NAME.Text else etc2_name := '';

      UniQuery1.SQL.Clear;
      UniQuery1.SQL.Add('update emp_payroll set ');
      UniQuery1.SQL.Add('extra_price = :extra_price, ');
      UniQuery1.SQL.Add('etc1_price = :etc1_price, ');
      UniQuery1.SQL.Add('etc1_name = :etc1_name, ');
      UniQuery1.SQL.Add('etc2_price = :etc2_price, ');
      UniQuery1.SQL.Add('etc2_name = :etc2_name, ');
      UniQuery1.SQL.Add('yungum = :yungum, ');
      UniQuery1.SQL.Add('goyong_bohum = :goyong, ');
      UniQuery1.SQL.Add('gungang_bohum = :gungang, ');
      UniQuery1.SQL.Add('yoyang_bohum = :yoyang, ');
      UniQuery1.SQL.Add('sanjae_bohum = :sanjae ');
      UniQuery1.SQL.Add('where id = :id; ');
      UniQuery1.ParamByName('id').Value := rowid;
      UniQuery1.ParamByName('extra_price').Value := extra_price;
      UniQuery1.ParamByName('etc1_price').Value := etc1;
      UniQuery1.ParamByName('etc1_name').Value := etc1_name;
      UniQuery1.ParamByName('etc2_price').Value := etc2;
      UniQuery1.ParamByName('etc2_name').Value := etc2_name;
      UniQuery1.ParamByName('yungum').Value := yungum;
      UniQuery1.ParamByName('goyong').Value := goyong;
      UniQuery1.ParamByName('gungang').Value := gungang;
      UniQuery1.ParamByName('yoyang').Value := yoyang;
      UniQuery1.ParamByName('sanjae').Value := sanjae;
      UniQuery1.ExecSQL;
      ds_EMP_PAYROLL_SEL.DataSet.Refresh;
      ds_EMP_PAYROLL_SEL.DataSet.Locate('ID', rowid, []);
      gridPayroll.DataController.GotoBookmark;
      gridPayroll.Controller.TopRowIndex := toprow;
      btnRecalc.Click;
    end;
  finally
    fmExtraPrice.Free;
  end;
end;

procedure TfmEmpPayroll.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEmpPayroll.FormShow(Sender: TObject);
begin
  spYear.EditValue := YearOf(Date);
  icbMonth.EditValue := MonthOf(Date);
  EMP_BASIC_SEL_LOOKUP.Open;
  ds_EMP_BASIC_SEL_LOOKUP.DataSet.Refresh;

  EMP_ATTENDING_SEL.ParamByName('WYEAR').Value := spYear.EditValue;
  EMP_ATTENDING_SEL.ParamByName('WMONTH').Value := icbMonth.EditValue;
  EMP_ATTENDING_SEL.Open;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;

  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmEmpPayroll]);

end.
