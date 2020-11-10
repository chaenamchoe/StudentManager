unit UfmContacts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, Menus,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  StdCtrls, cxButtons, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, dxmdaset, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, MemDS, DBAccess, Uni;

type
  TfmContacts = class(TForm)
    pnl1: TPanel;
    gridContacts: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridPopupMenu1: TcxGridPopupMenu;
    btnView: TcxButton;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    gridContactsID: TcxGridDBColumn;
    gridContactsC_KIND: TcxGridDBColumn;
    gridContactsC_NAME: TcxGridDBColumn;
    gridContactsC_DAMDANG: TcxGridDBColumn;
    gridContactsC_TEL: TcxGridDBColumn;
    gridContactsC_TEL2: TcxGridDBColumn;
    gridContactsC_ADDR: TcxGridDBColumn;
    gridContactsC_EMAIL: TcxGridDBColumn;
    gridContactsC_BIGO: TcxGridDBColumn;
    lbl2: TLabel;
    edtSearch: TEdit;
    btnSearch: TcxButton;
    btnSearchCancel: TcxButton;
    btnExcelImport: TcxButton;
    dxMemData1: TdxMemData;
    btnSMS: TcxButton;
    COMPANY_CONTACTS_DEL: TUniStoredProc;
    COMPANY_CONTACTS_INS: TUniStoredProc;
    COMPANY_CONTACTS_SEL: TUniStoredProc;
    COMPANY_CONTACTS_SELID: TIntegerField;
    COMPANY_CONTACTS_SELC_KIND: TStringField;
    COMPANY_CONTACTS_SELC_NAME: TStringField;
    COMPANY_CONTACTS_SELC_DAMDANG: TStringField;
    COMPANY_CONTACTS_SELC_TEL: TStringField;
    COMPANY_CONTACTS_SELC_TEL2: TStringField;
    COMPANY_CONTACTS_SELC_ADDR: TStringField;
    COMPANY_CONTACTS_SELC_EMAIL: TStringField;
    COMPANY_CONTACTS_SELC_BIGO: TStringField;
    ds_COMPANY_CONTACTS_SEL: TDataSource;
    COMPANY_CONTACTS_UPD: TUniStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnViewClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSearchCancelClick(Sender: TObject);
    procedure gridContactsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton4Click(Sender: TObject);
    procedure btnSMSClick(Sender: TObject);
  private
    procedure AddSMS_List(var dxSMSData: TdxMemData);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContacts: TfmContacts;

implementation

uses GlobalVar, Udm, UfmContactsEdit, uSendingSMS;

{$R *.dfm}


procedure TfmContacts.btnAddClick(Sender: TObject);
begin
  fmContactsEdit := TfmContactsEdit.Create(Self);
  try
    fmContactsEdit.SAVE_MODE := 'INSERT';
    fmContactsEdit.ShowModal;
    if fmContactsEdit.ModalResult = mrOk then begin
      COMPANY_CONTACTS_INS.ParamByName('C_KIND').Value := fmContactsEdit.edtKind.Text;
      COMPANY_CONTACTS_INS.ParamByName('C_NAME').Value := fmContactsEdit.edtName.Text;
      COMPANY_CONTACTS_INS.ParamByName('C_DAMDANG').Value := fmContactsEdit.edtDamdang.Text;
      COMPANY_CONTACTS_INS.ParamByName('C_TEL').Value :=  fmContactsEdit.edtTel1.Text;
      COMPANY_CONTACTS_INS.ParamByName('C_TEL2').Value := fmContactsEdit.edtTEL2.Text;
      COMPANY_CONTACTS_INS.ParamByName('C_ADDR').Value := fmContactsEdit.edtADDR.Text;
      COMPANY_CONTACTS_INS.ParamByName('C_EMAIL').Value := fmContactsEdit.edtEMAIL.Text;
      COMPANY_CONTACTS_INS.ParamByName('C_BIGO').Value :=  fmContactsEdit.mmo1.Text;
      COMPANY_CONTACTS_INS.ExecProc;
      ds_COMPANY_CONTACTS_SEL.DataSet.Refresh;

      cxGrid1.SetFocus;
    end;
  finally
    fmContactsEdit.Free;
  end;
end;

procedure TfmContacts.btnEditClick(Sender: TObject);
begin
  fmContactsEdit := TfmContactsEdit.Create(Self);
  try
    //SavePosition(gridContacts);
    fmContactsEdit.edtKind.Text := COMPANY_CONTACTS_SELC_KIND.Value;
    fmContactsEdit.edtName.Text := COMPANY_CONTACTS_SELC_NAME.Value;
    fmContactsEdit.edtDamdang.Text := COMPANY_CONTACTS_SELC_DAMDANG.Value;
    fmContactsEdit.edtTel1.Text := COMPANY_CONTACTS_SELC_TEL.Value;
    fmContactsEdit.edtTEL2.Text := COMPANY_CONTACTS_SELC_TEL2.Value;
    fmContactsEdit.edtADDR.Text := COMPANY_CONTACTS_SELC_ADDR.Value;
    fmContactsEdit.edtEMAIL.Text := COMPANY_CONTACTS_SELC_EMAIL.Value;
    fmContactsEdit.mmo1.Text := COMPANY_CONTACTS_SELC_BIGO.Value;

    fmContactsEdit.SAVE_MODE := 'EDIT';
    fmContactsEdit.ShowModal;
    if fmContactsEdit.ModalResult = mrOk then begin
      COMPANY_CONTACTS_UPD.ParamByName('ID').Value := COMPANY_CONTACTS_SELID.Value;
      COMPANY_CONTACTS_UPD.ParamByName('C_KIND').Value := fmContactsEdit.edtKind.Text;
      COMPANY_CONTACTS_UPD.ParamByName('C_NAME').Value := fmContactsEdit.edtName.Text;
      COMPANY_CONTACTS_UPD.ParamByName('C_DAMDANG').Value := fmContactsEdit.edtDamdang.Text;
      COMPANY_CONTACTS_UPD.ParamByName('C_TEL').Value :=  fmContactsEdit.edtTel1.Text;
      COMPANY_CONTACTS_UPD.ParamByName('C_TEL2').Value := fmContactsEdit.edtTEL2.Text;
      COMPANY_CONTACTS_UPD.ParamByName('C_ADDR').Value := fmContactsEdit.edtADDR.Text;
      COMPANY_CONTACTS_UPD.ParamByName('C_EMAIL').Value := fmContactsEdit.edtEMAIL.Text;
      COMPANY_CONTACTS_UPD.ParamByName('C_BIGO').Value :=  fmContactsEdit.mmo1.Text;
      COMPANY_CONTACTS_UPD.ExecProc;
      //GotoPosition(gridContacts);
      ds_COMPANY_CONTACTS_SEL.DataSet.Refresh;
      cxGrid1.SetFocus;
    end;
  finally
    fmContactsEdit.Free;
  end;
end;

procedure TfmContacts.btnSearchCancelClick(Sender: TObject);
begin
  edtSearch.Text := '';
  COMPANY_CONTACTS_SEL.Filter := '';
  COMPANY_CONTACTS_SEL.Filtered := True;
  edtSearch.SetFocus;
end;

procedure TfmContacts.btnSearchClick(Sender: TObject);
var
  search_str : string;
begin
  if Length(edtSearch.Text) > 0 then begin
    search_str := 'c_name like "%' + edtSearch.Text + '%" or ' +
                  'c_damdang like "%' + edtSearch.Text + '%" or ' +
                  'c_tel like "%' + edtSearch.Text + '%" or ' +
                  'c_tel2 like "%' + edtSearch.Text + '%" or ' +
                  'c_email like "%' + edtSearch.Text + '%" or ' +
                  'c_addr like "%' + edtSearch.Text + '%" or ' +
                  'c_bigo like "%' + edtSearch.Text + '%"'
  end else begin
    search_str := '';
  end;
  COMPANY_CONTACTS_SEL.Filter := search_str;
  COMPANY_CONTACTS_SEL.Filtered := True;
end;

procedure TfmContacts.btnSMSClick(Sender: TObject);
var
  c_name, c_tel : string;
  i, cnt : Integer;
begin
  fmSendingSMS := TfmSendingSMS.Create(Self);
  try
    fmSendingSMS.mdSMS.Close;
    fmSendingSMS.mdSMS.Open;
    with gridContacts do begin
      cnt := Controller.SelectedRecordCount;
      for i := 0 to cnt - 1 do begin
        c_name := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('C_DAMDANG').Index);
        c_tel := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('C_TEL').Index);
        if c_tel <> '' then begin
          fmSendingSMS.mdSMS.Append;
          fmSendingSMS.mdSMS.FieldByName('cname').Value := c_name;
          fmSendingSMS.mdSMS.FieldByName('ctel').Value := c_tel;
          fmSendingSMS.mdSMS.FieldByName('check_send').Value := 1;
          fmSendingSMS.mdSMS.Post;
        end;
      end;
      fmSendingSMS.mdSMS.First;
    end;
//    AddSMS_List(fmSendingSMS.mdSMS);
    fmSendingSMS.ShowModal;
  finally
    fmSendingSMS.Free;
  end;
end;

procedure TfmContacts.AddSMS_List(var dxSMSData : TdxMemData);
var
  c_name, c_tel : string;
  i, cnt : Integer;
begin
  dxSMSData.Close;
  dxSMSData.Open;
  with gridContacts do begin
    cnt := Controller.SelectedRecordCount;
    for i := 0 to cnt - 1 do begin
      c_name := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('C_DAMDANG').Index);
      c_tel := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('C_TEL').Index);
      if c_tel <> '' then begin
        dxSMSData.Append;
        dxSMSData.FieldByName('cname').Value := c_name;
        dxSMSData.FieldByName('ctel').Value := c_tel;
        dxSMSData.FieldByName('check_send').Value := 1;
        dxSMSData.Post;
      end;
    end;
    dxSMSData.First;
  end;
end;

procedure TfmContacts.btnViewClick(Sender: TObject);
begin
  COMPANY_CONTACTS_SEL.Active := True;
  ds_COMPANY_CONTACTS_SEL.DataSet.Refresh;
  cxGrid1.SetFocus;
end;

procedure TfmContacts.cxButton4Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    COMPANY_CONTACTS_DEL.ParamByName('ID').Value := gridContactsID.EditValue;
    COMPANY_CONTACTS_DEL.ExecProc;

    //SavePosition(gridContacts);
    ds_COMPANY_CONTACTS_SEL.DataSet.Refresh;
    //GotoPosition(gridContacts);
  end;
end;

procedure TfmContacts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmContacts.FormShow(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmContacts.gridContactsCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

initialization RegisterClasses([TfmContacts]);
end.
