unit UfmBasicCode;

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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, cxTextEdit, cxContainer, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxCurrencyEdit, cxSpinEdit,
  dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, MemDS, DBAccess, Uni;

type
  TfmBasicCode = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    gridDongcode: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    gridOut: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    cxGrid3: TcxGrid;
    gridClassroom: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    btnAddRoom: TBitBtn;
    btnEditRoom: TBitBtn;
    btnDelRoom: TBitBtn;
    btnAddDC: TBitBtn;
    btnEditDC: TBitBtn;
    btnDelDC: TBitBtn;
    gridDongcodeID: TcxGridDBColumn;
    gridDongcodeDONG: TcxGridDBColumn;
    gridClassroomID: TcxGridDBColumn;
    gridClassroomDONG_ID: TcxGridDBColumn;
    gridClassroomC_NAME: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    gridDongcodeColumn1: TcxGridDBColumn;
    Panel7: TPanel;
    Panel8: TPanel;
    Label10: TLabel;
    btnAddOut: TBitBtn;
    btnEditOut: TBitBtn;
    btnDelOut: TBitBtn;
    cxGrid4: TcxGrid;
    gridDC: TcxGridDBTableView;
    cxGridDBID: TcxGridDBColumn;
    cxGridDBKIND_NAME: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    gridOutID: TcxGridDBColumn;
    gridOutREASON_NAME: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label11: TLabel;
    edtSIBI_PRICE: TcxCurrencyEdit;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cbSIBI_KIND: TcxImageComboBox;
    btnSAVE_SIBI: TBitBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtLECTURE_PRICE: TcxCurrencyEdit;
    cbLECTURE_KIND: TcxImageComboBox;
    btnSAVE_LECTURE: TBitBtn;
    edtSIBI_PERCENT: TcxSpinEdit;
    edtLECTURE_PERCENT: TcxSpinEdit;
    GroupBox3: TGroupBox;
    chkAutoMoney: TCheckBox;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    edtJigwi: TEdit;
    Label17: TLabel;
    edtName: TEdit;
    btnReport: TBitBtn;
    gridClassroomIDX: TcxGridDBColumn;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    edtContacts: TEdit;
    btnSaveContacts: TBitBtn;
    Panel9: TPanel;
    Panel10: TPanel;
    Label19: TLabel;
    btnLectureAdd: TBitBtn;
    btnLectureEdit: TBitBtn;
    btnLectureDel: TBitBtn;
    cxGrid5: TcxGrid;
    gridLecture: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel11: TPanel;
    Label20: TLabel;
    btnAddBank: TBitBtn;
    btnEditBank: TBitBtn;
    btnDelBank: TBitBtn;
    cxGrid6: TcxGrid;
    gridBank: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    gridBankID: TcxGridDBColumn;
    gridBankBANK_NAME: TcxGridDBColumn;
    Label21: TLabel;
    icbMoneyBackWay: TcxImageComboBox;
    btnSavePayback: TBitBtn;
    UniQuery1: TUniQuery;
    Label4: TLabel;
    edtChiefName: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddRoomClick(Sender: TObject);
    procedure btnEditRoomClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure gridClassroomCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridDongcodeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridDongcodeColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnAddDCClick(Sender: TObject);
    procedure btnEditDCClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDelRoomClick(Sender: TObject);
    procedure btnDelDCClick(Sender: TObject);
    procedure btnAddOutClick(Sender: TObject);
    procedure btnEditOutClick(Sender: TObject);
    procedure btnDelOutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSAVE_SIBIClick(Sender: TObject);
    procedure btnSAVE_LECTUREClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure btnSaveContactsClick(Sender: TObject);
    procedure btnLectureAddClick(Sender: TObject);
    procedure btnLectureEditClick(Sender: TObject);
    procedure btnLectureDelClick(Sender: TObject);
    procedure gridLectureCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddBankClick(Sender: TObject);
    procedure btnEditBankClick(Sender: TObject);
    procedure btnDelBankClick(Sender: TObject);
    procedure btnSavePaybackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBasicCode: TfmBasicCode;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmBasicCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmBasicCode.FormShow(Sender: TObject);
var
  auto_money : integer;
begin
  dm.t_DONG_CODE.Locate('id', LoginUserDong, []);
  edtSIBI_PRICE.EditValue := dm.q_basic_valueCITY_BOJO_PRICE.AsFloat;
  edtSIBI_PERCENT.EditValue := dm.q_basic_valueCITY_BOJO_PERCENT.AsFloat;
  cbSIBI_KIND.EditValue := dm.q_basic_valueCITY_BOJO_KIND.AsInteger;
  edtLECTURE_PRICE.EditValue := dm.q_basic_valueLECTURE_PRICE.AsFloat;
  edtLECTURE_PERCENT.EditValue := dm.q_basic_valueLECTURE_PERCENT.AsFloat;
  cbLECTURE_KIND.EditValue := dm.q_basic_valueLECTURE_KIND.AsInteger;
  auto_money := dm.q_basic_valueREGIST_MONEY_AUTOADD.AsInteger;
  edtJigwi.Text := dm.q_basic_valueLECTURE_REPORT_JIGWI.AsString;
  edtName.Text  := dm.q_basic_valueLECTURE_REPORT_NAME.AsString;
  edtChiefName.Text  := dm.q_basic_valueCENTER_CHIEF_NAME.AsString;
  edtContacts.Text := dm.q_basic_valueCASH_RECEIPT_CONTACTS.AsString;
  MONEY_BACK_REPORT_WAY := dm.q_basic_valueMONEY_BACK_REPORT_WAY.AsInteger;
  icbMoneyBackWay.EditValue := MONEY_BACK_REPORT_WAY;
  if auto_money = 1 then begin
    chkAutoMoney.Checked := True;
    AUTO_MONEY_ADD := True;
  end else begin
    chkAutoMoney.Checked := False;
    AUTO_MONEY_ADD := False;
  end;
end;

procedure TfmBasicCode.gridClassroomCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditRoom.Click;
end;

procedure TfmBasicCode.gridDongcodeCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnAdd.Click;
end;

procedure TfmBasicCode.gridDongcodeColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmBasicCode.gridLectureCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnLectureEdit.Click;
end;

procedure TfmBasicCode.btnAddBankClick(Sender: TObject);
var
  sValue : string;
begin
  if InputQuery('관리통장 등록', '통장이름을 입력하세요.', sValue)
  then begin
    dm.q_bank_account.Append;
    dm.q_bank_accountBANK_NAME.Value := sValue;
    dm.q_bank_account.Post;
    dm.d_bank_account.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnAddClick(Sender: TObject);
var
  sValue : string;
  dong_id : Int64;
  dong_id_str : string;
begin
  gridDongcode.DataController.GotoLast;
  dong_id := StrToInt64(gridDongcodeID.EditValue);
  if InputQuery('주민자치단체 등록', '주민자치단체를 입력하세요.', sValue) then begin
    dm.t_DONG_CODE.Append;
    dm.t_DONG_CODEID.AsString := IntToStr(dong_id + 1);
    dm.t_DONG_CODEDONG.AsString := sValue;
    dm.t_DONG_CODEGUGUN_ID.AsInteger := 127;
    dm.t_DONG_CODESIDO_ID.AsInteger := 10;
    dm.t_DONG_CODE.Post;
    dm.d_DONG_CODE.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnEditBankClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := gridBankBANK_NAME.EditValue;
  if InputQuery('관리통장 등록', '통장이름을 입력하세요.', sValue)
  then begin
    dm.q_bank_account.Edit;
    dm.q_bank_accountBANK_NAME.Value := sValue;
    dm.q_bank_account.Post;
    dm.d_bank_account.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnEditClick(Sender: TObject);
var
  sValue : string;
begin
  if dm.t_DONG_CODEID.AsString <= '2013090100000016' then begin
    ShowMessage('필수등록항목은 수정할 수 없습니다.');
    Exit;
  end;
  sValue := dm.t_DONG_CODEDONG.AsString;
  if InputQuery('주민자치단체 수정', '주민자치단체를 입력하세요.', sValue) then begin
    dm.t_DONG_CODE.Edit;
    dm.t_DONG_CODEDONG.AsString := sValue;
    dm.t_DONG_CODE.Post;
    dm.d_DONG_CODE.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnAddDCClick(Sender: TObject);
var
  sValue : string;
begin
  if InputQuery('감면구분 등록', '감면구분을 입력하세요.', sValue) then begin
    dm.t_DC_KIND.Append;
    dm.t_DC_KINDKIND_NAME.AsString := sValue;
    dm.t_DC_KIND.Post;
    dm.d_DC_KIND.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnEditDCClick(Sender: TObject);
var
  sValue : string;
  id : Integer;
begin
  id := cxGridDBID.EditValue;
  if (id > 0) and (id < 9) then begin
    ShowMessage('기본 감면자 자료는 수정할 수 없습니다.');
    Exit;
  end else begin
    sValue := dm.t_DC_KINDKIND_NAME.AsString;
    if InputQuery('감면구분 수정', '감면구분을 입력하세요.', sValue) then begin
      dm.t_DC_KIND.Edit;
      dm.t_DC_KINDKIND_NAME.AsString := sValue;
      dm.t_DC_KIND.Post;
      dm.d_DC_KIND.DataSet.Refresh;
    end;
  end;
end;

procedure TfmBasicCode.btnAddOutClick(Sender: TObject);
var
  sValue : string;
begin
  if InputQuery('퇴강/환불 등록', '퇴강/환불 사유를 입력하세요.', sValue) then begin
    dm.t_payback_reason.Append;
    dm.t_payback_reasonREASON_NAME.AsString := sValue;
    dm.t_payback_reason.Post;
    dm.d_payback_reason.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnEditOutClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := dm.t_payback_reasonREASON_NAME.AsString;
  if InputQuery('퇴강/환불 수정', '퇴강/환불 사유를 입력하세요.', sValue) then begin
    dm.t_payback_reason.Edit;
    dm.t_payback_reasonREASON_NAME.AsString := sValue;
    dm.t_payback_reason.Post;
    dm.d_payback_reason.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnAddRoomClick(Sender: TObject);
var
  sValue : string;
  cnt : Integer;
begin
  if InputQuery('강의실 등록', '강의실을 입력하세요.', sValue) then begin
    cnt := dm.q_CLASSROOM.RecordCount;
    dm.q_CLASSROOM.Append;
    dm.q_CLASSROOMDONG_ID.AsString := LoginUserDong;
    dm.q_CLASSROOMC_NAME.AsString := sValue;
    dm.q_CLASSROOMIDX.AsInteger := cnt + 1;
    dm.q_CLASSROOM.Post;
    dm.d_CLASSROOM.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnEditRoomClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := dm.q_CLASSROOMC_NAME.AsString;
  if InputQuery('강의실 수정', '강의실을 입력하세요.', sValue) then begin
    dm.q_CLASSROOM.Edit;
    dm.q_CLASSROOMC_NAME.AsString := sValue;
    dm.q_CLASSROOM.Post;
    dm.d_CLASSROOM.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnLectureAddClick(Sender: TObject);
var
  sValue : string;
begin
  if InputQuery('강좌명 등록', '강좌명을 입력하세요.', sValue) then begin
    dm.t_lecture_list.Append;
    dm.t_lecture_listLECTURE_NAME.AsString := sValue;
    dm.t_lecture_listL_DESCRIPT.AsString := '';
    dm.t_lecture_listL_KIND_CODE.AsString := '';
    dm.t_lecture_listL_AREA_CODE.AsString := '';
    dm.t_lecture_listL_QTY.AsInteger := 0;
    dm.t_lecture_listREG_SDATE.AsString := '';
    dm.t_lecture_listREG_EDATE.AsString := '';
    dm.t_lecture_list.Post;
    dm.d_lecture_list.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnLectureDelClick(Sender: TObject);
begin
  if dm.d_lecture_list.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_lecture_list.DataSet.Delete;
    end;
  end;
end;

procedure TfmBasicCode.btnLectureEditClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := dm.t_lecture_listLECTURE_NAME.AsString;
  if InputQuery('강좌명 수정', '강좌명을 입력하세요.', sValue) then begin
    dm.t_lecture_list.Edit;
    dm.t_lecture_listLECTURE_NAME.AsString := sValue;
    dm.t_lecture_list.Post;
    dm.d_lecture_list.DataSet.Refresh;
  end;
end;

procedure TfmBasicCode.btnReportClick(Sender: TObject);
begin
  dm.q_basic_value.Edit;
  dm.q_basic_valueLECTURE_REPORT_JIGWI.AsString := edtJigwi.Text;
  dm.q_basic_valueLECTURE_REPORT_NAME.AsString := edtName.Text;
  dm.q_basic_valueCENTER_CHIEF_NAME.AsString := edtChiefName.Text;
  dm.q_basic_value.Post;
  dm.d_basic_value.DataSet.Refresh;
  CenterChiefName := edtChiefName.Text;
end;

procedure TfmBasicCode.btnSaveContactsClick(Sender: TObject);
begin
  CASH_RECEIPT_CONTACTS := edtContacts.Text;
  dm.q_basic_value.Edit;
  dm.q_basic_valueCASH_RECEIPT_CONTACTS.AsString := CASH_RECEIPT_CONTACTS;
  dm.q_basic_value.Post;
  dm.d_basic_value.DataSet.Refresh;
end;

procedure TfmBasicCode.btnSavePaybackClick(Sender: TObject);
var
  automoney : Integer;
begin
  if chkAutoMoney.Checked then
    automoney := 1
  else
    automoney := 0;

  MONEY_BACK_REPORT_WAY := icbMoneyBackWay.EditValue;
  try
    UniQuery1.SQL.Clear;
    UniQuery1.SQL.Add('update basic_value set regist_money_autoadd = :automoney, money_back_report_way = :pway where id = 1');
    UniQuery1.ParamByName('automoney').Value := automoney;
    UniQuery1.ParamByName('pway').Value := MONEY_BACK_REPORT_WAY;
    UniQuery1.ExecSQL;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfmBasicCode.btnSAVE_LECTUREClick(Sender: TObject);
begin
  dm.q_basic_value.Edit;
  dm.q_basic_valueLECTURE_PRICE.AsFloat := edtLECTURE_PRICE.EditValue;
  dm.q_basic_valueLECTURE_PERCENT.AsFloat := edtLECTURE_PERCENT.EditValue;
  dm.q_basic_valueLECTURE_KIND.AsInteger := cbLECTURE_KIND.EditValue;
  dm.q_basic_value.Post;
  dm.d_basic_value.DataSet.Refresh;
end;

procedure TfmBasicCode.btnSAVE_SIBIClick(Sender: TObject);
begin
  dm.q_basic_value.Edit;
  dm.q_basic_valueCITY_BOJO_PRICE.AsFloat := edtSIBI_PRICE.EditValue;
  dm.q_basic_valueCITY_BOJO_PERCENT.AsFloat := edtSIBI_PERCENT.EditValue;
  dm.q_basic_valueCITY_BOJO_KIND.AsInteger := cbSIBI_KIND.EditValue;
  dm.q_basic_value.Post;
  dm.d_basic_value.DataSet.Refresh;
end;

procedure TfmBasicCode.btnDelBankClick(Sender: TObject);
begin
  if dm.d_bank_account.DataSet.RecordCount > 0 then begin
    if Application.MessageBox(
      '선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' + #13#10 +
      '삭제하려는 통장으로 등록한 자료가 있을 경우에는 삭제하지 마세요.' + #13#10 +
      '삭제 할까요?', '자료삭제',
      MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_bank_account.DataSet.Delete;
    end;
  end;
end;

procedure TfmBasicCode.btnDelDCClick(Sender: TObject);
begin
  if dm.d_DC_KIND.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_DC_KIND.DataSet.Delete;
    end;
  end;
end;

procedure TfmBasicCode.btnDeleteClick(Sender: TObject);
begin
  if dm.t_DONG_CODEID.AsString <= '2013090100000016' then begin
    ShowMessage('필수등록항목은 삭제할 수 없습니다.');
    Exit;
  end;
  if dm.d_DONG_CODE.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_DONG_CODE.DataSet.Delete;
    end;
  end;
end;

procedure TfmBasicCode.btnDelOutClick(Sender: TObject);
begin
  if dm.d_payback_reason.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_payback_reason.DataSet.Delete;
    end;
  end;
end;

procedure TfmBasicCode.btnDelRoomClick(Sender: TObject);
begin
  if dm.d_CLASSROOM.DataSet.RecordCount > 0 then begin
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
      #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      dm.d_CLASSROOM.DataSet.Delete;
    end;
  end;
end;

initialization RegisterClasses([TfmBasicCode]);

end.
