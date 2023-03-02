unit UfmOutList2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxTextEdit, cxDBLookupComboBox, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSCore,
  dxPScxCommon, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  UfrmYearMonth, cxButtons, StdCtrls, Buttons, ExtCtrls, cxGridExportLink,
  cxImageComboBox, ComCtrls, cxRadioGroup, cxCheckBox, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharp, cxCalendar,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Gauges;

type
  TfmOutList2 = class(TForm)
    Panel1: TPanel;
    btnSaveColumn: TcxButton;
    cxGrid1: TcxGrid;
    gridOutList: TcxGridDBTableView;
    gridOutListL_NAME: TcxGridDBColumn;
    gridOutListP_DATE: TcxGridDBColumn;
    gridOutListPAY_KIND: TcxGridDBColumn;
    gridOutListR_DATE: TcxGridDBColumn;
    gridOutListOUT_AMOUNT: TcxGridDBColumn;
    gridOutListPAYBACK_WAY: TcxGridDBColumn;
    gridOutListPAYBACK_BANK: TcxGridDBColumn;
    gridOutListPAYBACK_BANKID: TcxGridDBColumn;
    gridOutListOUT_KIND: TcxGridDBColumn;
    gridOutListS_NAME: TcxGridDBColumn;
    gridOutListS_BIRTH: TcxGridDBColumn;
    gridOutListS_ADDR: TcxGridDBColumn;
    gridOutListS_TEL: TcxGridDBColumn;
    gridOutListS_KIND: TcxGridDBColumn;
    gridOutListID: TcxGridDBColumn;
    gridOutListPAY_AMOUNT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    d_REQUEST_VIEW: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    gridOutListPAYBACK_BANKOWNER: TcxGridDBColumn;
    gridOutListL_YEAR: TcxGridDBColumn;
    gridOutListL_STEP: TcxGridDBColumn;
    gridOutListR_NO: TcxGridDBColumn;
    btnRetrieve: TcxButton;
    btnExport: TcxButton;
    btnAttendList: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleDefault: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleGreen: TcxStyle;
    btnRefund: TcxButton;
    btnRefundMulti: TcxButton;
    rbSelect: TcxRadioButton;
    rbAll: TcxRadioButton;
    gridOutListCASH_RECEIPT_NO: TcxGridDBColumn;
    gridOutListOUT_WHEN: TcxGridDBColumn;
    q_request_view: TUniQuery;
    q_request_viewL_YEAR: TIntegerField;
    q_request_viewL_STEP: TIntegerField;
    q_request_viewL_NAME: TStringField;
    q_request_viewIS_ACTIVE: TIntegerField;
    q_request_viewL_PRICE: TFloatField;
    q_request_viewLECTURE_ID: TStringField;
    q_request_viewSTUDENT_ID: TStringField;
    q_request_viewP_DATE: TStringField;
    q_request_viewPAY_AMOUNT: TFloatField;
    q_request_viewPAY_KIND: TSmallintField;
    q_request_viewR_DATE: TStringField;
    q_request_viewOUT_AMOUNT: TFloatField;
    q_request_viewREG_KIND: TSmallintField;
    q_request_viewPAY_WAY: TSmallintField;
    q_request_viewPAYBACK_WAY: TSmallintField;
    q_request_viewPAYBACK_BANK: TStringField;
    q_request_viewPAYBACK_BANKID: TStringField;
    q_request_viewPAYBACK_BANKOWNER: TStringField;
    q_request_viewOUT_KIND: TSmallintField;
    q_request_viewOUT_WHEN: TSmallintField;
    q_request_viewS_NAME: TStringField;
    q_request_viewS_TEL: TStringField;
    q_request_viewS_ADDR: TStringField;
    q_request_viewS_KIND: TSmallintField;
    q_request_viewS_SEX: TStringField;
    q_request_viewS_BIRTH: TStringField;
    q_request_viewCASH_RECEIPT_NO: TStringField;
    q_request_viewID: TStringField;
    btnTotalReport: TcxButton;
    q_selected_data_list: TUniQuery;
    q_selected_data_listID: TIntegerField;
    q_selected_data_listRECORD_ID: TStringField;
    UniQuery1: TUniQuery;
    q_request_viewL_IDX: TSmallintField;
    gridOutListL_IDX: TcxGridDBColumn;
    btnCancelPartial: TcxButton;
    CASHBILL_IU: TUniStoredProc;
    gridOutListPAY_WAY: TcxGridDBColumn;
    gridOutListSTUDENT_ID: TcxGridDBColumn;
    LECTURE_OUT_SEL: TUniStoredProc;
    LECTURE_OUT_SELR_DATE: TStringField;
    LECTURE_OUT_SELL_IDX: TSmallintField;
    LECTURE_OUT_SELID: TStringField;
    LECTURE_OUT_SELL_YEAR: TIntegerField;
    LECTURE_OUT_SELL_STEP: TIntegerField;
    LECTURE_OUT_SELL_NAME: TStringField;
    LECTURE_OUT_SELIS_ACTIVE: TIntegerField;
    LECTURE_OUT_SELL_PRICE: TFloatField;
    LECTURE_OUT_SELLECTURE_ID: TStringField;
    LECTURE_OUT_SELSTUDENT_ID: TStringField;
    LECTURE_OUT_SELP_DATE: TStringField;
    LECTURE_OUT_SELPAY_AMOUNT: TFloatField;
    LECTURE_OUT_SELPAY_KIND: TSmallintField;
    LECTURE_OUT_SELOUT_AMOUNT: TFloatField;
    LECTURE_OUT_SELREG_KIND: TSmallintField;
    LECTURE_OUT_SELPAY_WAY: TSmallintField;
    LECTURE_OUT_SELPAYBACK_WAY: TSmallintField;
    LECTURE_OUT_SELPAYBACK_BANK: TStringField;
    LECTURE_OUT_SELPAYBACK_BANKID: TStringField;
    LECTURE_OUT_SELPAYBACK_BANKOWNER: TStringField;
    LECTURE_OUT_SELOUT_KIND: TSmallintField;
    LECTURE_OUT_SELOUT_WHEN: TSmallintField;
    LECTURE_OUT_SELS_NAME: TStringField;
    LECTURE_OUT_SELS_TEL: TStringField;
    LECTURE_OUT_SELS_ADDR: TStringField;
    LECTURE_OUT_SELS_KIND: TSmallintField;
    LECTURE_OUT_SELS_SEX: TStringField;
    LECTURE_OUT_SELS_BIRTH: TStringField;
    LECTURE_OUT_SELCASH_RECEIPT_NO: TStringField;
    QueryInsertSurvey: TUniQuery;
    QueryDeleteSurvey: TUniQuery;
    PanelMessage: TPanel;
    Label2: TLabel;
    Gauge1: TGauge;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAttendListClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure gridOutListColumn1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSaveColumnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridOutListS_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnRefundClick(Sender: TObject);
    procedure btnRefundMultiClick(Sender: TObject);
    procedure gridOutListR_NOGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnTotalReportClick(Sender: TObject);
    procedure btnCancelPartialClick(Sender: TObject);
    procedure gridOutListPAY_WAYCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridOutListPAYBACK_WAYCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOutList2: TfmOutList2;

implementation

uses GlobalVar, Udm, UfmTotalReportOut, UfmMoneyInoutMove;

{$R *.dfm}

procedure TfmOutList2.btnAttendListClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := '퇴강자현황' + #13#10 +
              '===================' + #13#10 +
              '(' + DateToStr(DateTimePicker1.Date) + ' ~ ' + DateToStr(DateTimePicker2.Date) + ')';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmOutList2.btnCancelPartialClick(Sender: TObject);
var
  i, cnt, name_col, tel_col, price_col, id_col, date_col : Integer;
  sname, stel, l_id,ItemName : string;
  pay_amount, out_amount : Double;
  pdate : TDateTime;
  rid, success : Integer;
begin
  with gridOutList do begin
    cnt := Controller.SelectedRecordCount;
    success := 0;
    for i := 0 to cnt - 1 do begin
      rid := Controller.SelectedRecords[i].RecordIndex;
      stel := VarToStrDef(DataController.GetValue(rid, gridOutListCASH_RECEIPT_NO.Index), '');
      if (Length(stel) > 5) then begin
        l_id := DataController.GetValue(rid, gridOutListID.Index);
        sname := DataController.GetValue(rid, gridOutListS_NAME.Index);
        pay_amount := DataController.GetValue(rid, gridOutListOUT_AMOUNT.index);
        pdate := VarToDateTime(DataController.GetValue(rid, gridOutListR_DATE.Index));
        ItemName := '수련비 부분환불';

        CASHBILL_IU.ParamByName('CASHBILL_NO').Value := StringReplace(stel, '-', '', [rfReplaceAll]);
        CASHBILL_IU.ParamByName('C_DATE').Value := pdate;
        CASHBILL_IU.ParamByName('ITEM_NAME').Value := ItemName;
        CASHBILL_IU.ParamByName('AMOUNT').Value := pay_amount;
        CASHBILL_IU.ParamByName('TAX').Value := 0;
        CASHBILL_IU.ParamByName('SERVICE_CHARGE').Value := 0;
        CASHBILL_IU.ParamByName('DATA_STATUS').Value := 0;
        CASHBILL_IU.ParamByName('MEMBER_ID').Value := sname;
        CASHBILL_IU.ParamByName('CASH_KIND').Value := 1; //1=수련비 2=판매
        CASHBILL_IU.ParamByName('REF_UID').Value := l_id;
        CASHBILL_IU.ExecProc;
        Inc(success);
      end else begin
        ShowMessage('현금영수증번호를 확인하세요.');
      end;
    end;
  end;
  ShowMessage(IntToStr(success) + ' 건의 자료가 등록되었습니다.');
end;

procedure TfmOutList2.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.FileName := '퇴강자현황_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, true, true, true, 'xls');
    ShowMessage('엑셀파일 저장완료!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmOutList2.btnRefundClick(Sender: TObject);
var
  i, col, cnt, filter_cnt, select_cnt, p_kind : Integer;
  jukyo, money_str, msg, f_name, r_date, id : string;
  t_price : Double;
begin
  t_price := 0;
  cnt := gridOutList.Controller.SelectedRecordCount;
  p_kind := gridOutListOUT_AMOUNT.EditValue;
  if p_kind > 1 then begin
    f_name := gridOutListS_NAME.EditValue;
    t_price := gridOutListOUT_AMOUNT.EditValue;
    r_date := gridOutListR_DATE.EditValue;
    id := gridOutListID.EditValue;
    JUKYO := '수강료환불(' + f_name + ')';
    money_str := FormatFloat('#,원', t_price);
    msg := jukyo + ' 금액:' + money_str + '의 자료를 등록합니다.';
    if MessageBox(Handle, PWideChar(msg), '회계자료등록', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    begin
      dm.InsertMoneyINOUT(1, 2, 5, 15, 2, StrToDateTime(R_DATE), JUKYO, LoginUserDong, id, 0, t_price, 0);
      ShowMessage('회계자료가 등록되었습니다.');
    end;
  end else begin
    ShowMessage('환불처리는 퇴강자료만 등록할 수 있습니다.');
    Exit;
  end;
end;

procedure TfmOutList2.btnRefundMultiClick(Sender: TObject);
var
  i, col, cnt, filter_cnt, select_cnt, p_kind, col_name, bankid : Integer;
  jukyo, money_str, msg, f_name, r_date, id : string;
  tprice, l_price : Double;
begin
  if rbSelect.Checked then begin
    tprice := 0;
    cnt := gridOutList.Controller.SelectedRecordCount;
    col := gridOutList.GetColumnByFieldName('OUT_AMOUNT').Index;
    col_name := gridOutList.GetColumnByFieldName('S_NAME').Index;
    for i := 0 to cnt - 1 do begin
      if i = 0 then f_name := gridOutList.Controller.SelectedRecords[i].Values[col_name];
      l_price := gridOutList.Controller.SelectedRecords[i].Values[col];
      if l_price > 0 then
        tprice := tprice + l_price;
    end;
  end else begin
    gridOutList.DataController.GotoFirst;
    f_name := gridOutListS_NAME.EditValue;
    cnt := gridOutList.DataController.Summary.FooterSummaryValues[0];
    tprice := gridOutList.DataController.Summary.FooterSummaryValues[2];
  end;
  r_date := gridOutListR_DATE.EditValue;
  JUKYO := '수강료환불(' + f_name + '외 총'
   + IntToStr(cnt) + '명)';
  money_str := FormatFloat('#,원', tprice);
  msg := '다중환불로 등록한 회계자료는 반환결의를 수동으로 처리해야 합니다.' + #10#13 +
         jukyo + ' 금액:' + money_str + '의 자료를 등록합니다.';
  if MessageBox(Handle, PWideChar(msg), '회계자료등록', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    fmMoneyInoutMove := TfmMoneyInoutMove.Create(Self);
    try
      fmMoneyInoutMove.ShowModal;
      if fmMoneyInoutMove.ModalResult = mrOk then begin
        bankid := fmMoneyInoutMove.gridAccountID.EditValue;
        dm.InsertMoneyINOUT(bankid, 2, 5, 15, 2, StrToDateTime(R_DATE), JUKYO, LoginUserDong, '', 0, tprice, 0);
        ShowMessage('회계자료가 등록되었습니다.');
      end;
    finally
      fmMoneyInoutMove.Free;
    end;
  end;
end;

procedure TfmOutList2.btnRetrieveClick(Sender: TObject);
var
  pYear, pMonth, p_kind : integer;
  sdate : TDateTime;
begin
  LECTURE_OUT_SEL.ParamByName('STARTDATE').Value := DateToStr(DateTimePicker1.Date);
  LECTURE_OUT_SEL.ParamByName('ENDDATE').Value := DateToStr(DateTimePicker2.Date);
  LECTURE_OUT_SEL.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
end;

procedure TfmOutList2.btnSaveColumnClick(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '퇴강자현황(퇴강일).ini';
  gridOutList.StoreToIniFile(fname, True, [gsoUseSummary], '');
end;

procedure TfmOutList2.btnTotalReportClick(Sender: TObject);
var
  i, cnt, sel_id : Integer;
  rid : string;
  out_when, payback_way, pay_way, out_kind, out_amount : Integer;
begin
  fmTotalReportOut := TfmTotalReportOut.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    PanelMessage.Visible := True;
    PanelMessage.Refresh;
//    q_SELECTED_DATA_LIST.Active := True;
//    if q_SELECTED_DATA_LIST.RecordCount > 0 then
//      UniQuery1.Execute;
    QueryDeleteSurvey.ExecSQL;
    with gridOutList do begin
      cnt := DataController.FilteredRecordCount;
      Gauge1.MaxValue := cnt;
      for i := 0 to cnt - 1 do begin
        sel_id := DataController.FilteredRecordIndex[i];
        out_when := DataController.GetValue(sel_id, gridOutListOUT_WHEN.Index);
        payback_way := DataController.GetValue(sel_id, gridOutListPAYBACK_WAY.Index);
        pay_way := DataController.GetValue(sel_id, gridOutListPAY_WAY.Index);
        out_kind := DataController.GetValue(sel_id, gridOutListS_KIND.Index);
        out_amount := DataController.GetValue(sel_id, gridOutListOUT_AMOUNT.Index);

        QueryInsertSurvey.ParamByName('id').Value := i + 1;
        QueryInsertSurvey.ParamByName('out_when').Value := out_when;
        QueryInsertSurvey.ParamByName('payback_way').Value := payback_way;
        QueryInsertSurvey.ParamByName('pay_way').Value := pay_way;
        QueryInsertSurvey.ParamByName('out_kind').Value := out_kind;
        QueryInsertSurvey.ParamByName('out_amount').Value := out_amount;
        QueryInsertSurvey.ExecSQL;
        Gauge1.Progress := i + 1;
        Application.ProcessMessages;
      end;
      PanelMessage.Visible := False;
      Screen.Cursor := crArrow;
      fmTotalReportOut.START_DATE := DateTimePicker1.Date;
      fmTotalReportOut.END_DATE := DateTimePicker2.Date;
      fmTotalReportOut.ShowModal;
    end;
  finally
    fmTotalReportOut.Free;
  end;
end;

procedure TfmOutList2.gridOutListColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmOutList2.gridOutListPAYBACK_WAYCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind : Integer;
begin
  col_kind := AViewInfo.Value;
  if(col_kind = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmOutList2.gridOutListPAY_WAYCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind : Integer;
begin
  col_kind := AViewInfo.Value;
  if(col_kind = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmOutList2.gridOutListR_NOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.RecordIndex + 1);
  //AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index);
end;

procedure TfmOutList2.gridOutListS_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind, col_out : Integer;
begin
  col_kind := AViewInfo.GridRecord.Values[gridOutList.GetColumnByFieldName('S_KIND').Index];
  if(col_kind > 1) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmOutList2.DateTimePicker1CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutList2.DateTimePicker2CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutList2.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutList2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOutList2.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  btnRetrieve.Click;
end;

procedure TfmOutList2.FormResize(Sender: TObject);
begin
  PanelMessage.Top := (ClientHeight div 2) - 30;
  PanelMessage.Left := (ClientWidth div 2) - 150;
end;

procedure TfmOutList2.FormShow(Sender: TObject);
var
  fname : string;
begin
  fname := gsDefaultFolder + '퇴강자현황(퇴강일).ini';
  if FileExists(fname) then
    gridOutList.RestoreFromIniFile(fname, True, True, [gsoUseSummary], '');
end;

initialization RegisterClasses([TfmOutList2]);

end.
