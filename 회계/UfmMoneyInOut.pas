unit UfmMoneyInOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, Buttons, ExtCtrls, cxDBLookupComboBox,
  cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, MemDS, DBAccess, Uni,
  cxGridCustomPopupMenu, cxGridPopupMenu, DateUtils, cxRadioGroup,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit;

type
  TfmMoneyInOut = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnRetrieve: TBitBtn;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    btnExport: TBitBtn;
    gridMoneyInout: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridMoneyInoutID: TcxGridDBColumn;
    gridMoneyInoutIO_DATE: TcxGridDBColumn;
    gridMoneyInoutIO_ITEM_ID: TcxGridDBColumn;
    gridMoneyInoutIO_SUBITEM_ID: TcxGridDBColumn;
    gridMoneyInoutIO_DETAIL_ID: TcxGridDBColumn;
    gridMoneyInoutIO_JUKYO: TcxGridDBColumn;
    gridMoneyInoutIO_IN: TcxGridDBColumn;
    gridMoneyInoutIO_OUT: TcxGridDBColumn;
    gridMoneyInoutIO_REST: TcxGridDBColumn;
    gridMoneyInoutIO_DONG_ID: TcxGridDBColumn;
    gridMoneyInoutColumn1: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    MONEY_INOUT_WONJANG_DAY: TUniStoredProc;
    d_MONEY_INOUT_WONJANG_DAY: TDataSource;
    MONEY_INOUT_WONJANG_DAYID: TIntegerField;
    MONEY_INOUT_WONJANG_DAYIO_DATE: TDateField;
    MONEY_INOUT_WONJANG_DAYIO_ITEM_ID: TIntegerField;
    MONEY_INOUT_WONJANG_DAYIO_SUBITEM_ID: TIntegerField;
    MONEY_INOUT_WONJANG_DAYIO_DETAIL_ID: TIntegerField;
    MONEY_INOUT_WONJANG_DAYIO_JUKYO: TStringField;
    MONEY_INOUT_WONJANG_DAYIO_IN: TFloatField;
    MONEY_INOUT_WONJANG_DAYIO_OUT: TFloatField;
    MONEY_INOUT_WONJANG_DAYIO_REST: TFloatField;
    MONEY_INOUT_WONJANG_DAYIO_DONG_ID: TStringField;
    MONEY_INOUT_WONJANG_DAYIO_KIND: TSmallintField;
    MONEY_INOUT_WONJANG_DAYDATA_KIND: TIntegerField;
    gridMoneyInoutIO_KIND: TcxGridDBColumn;
    gridMoneyInoutDATA_KIND: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    edtStartDate: TDateTimePicker;
    edtEndDate: TDateTimePicker;
    cxGridPopupMenu1: TcxGridPopupMenu;
    btnMoneyIn: TBitBtn;
    btnMoneyOut: TBitBtn;
    btnMoneyReturn: TBitBtn;
    btnPrint: TBitBtn;
    rbMix: TcxRadioButton;
    rbEach: TcxRadioButton;
    MONEY_INOUT_WONJANG_DAYIO_REG_LECTURE_ID: TStringField;
    gridMoneyInoutIO_REG_LECTURE_ID: TcxGridDBColumn;
    q_REGISTED_LECTURE: TUniQuery;
    q_REGISTED_LECTUREID: TStringField;
    q_REGISTED_LECTUREDONG_ID: TStringField;
    q_REGISTED_LECTURELECTURE_ID: TStringField;
    q_REGISTED_LECTURESTUDENT_ID: TStringField;
    q_REGISTED_LECTUREP_DATE: TStringField;
    q_REGISTED_LECTUREPAY_AMOUNT: TFloatField;
    q_REGISTED_LECTUREIS_DC: TSmallintField;
    q_REGISTED_LECTUREPAY_KIND: TSmallintField;
    q_REGISTED_LECTURER_DATE: TStringField;
    q_REGISTED_LECTUREOUT_AMOUNT: TFloatField;
    q_REGISTED_LECTUREREG_KIND: TSmallintField;
    q_REGISTED_LECTUREPAY_WAY: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_WAY: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_BANK: TStringField;
    q_REGISTED_LECTUREPAYBACK_BANKID: TStringField;
    q_REGISTED_LECTUREOUT_KIND: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_BANKOWNER: TStringField;
    d_REGISTED_LECTURE: TDataSource;
    q_STUDENTS: TUniQuery;
    d_STUDENTS: TDataSource;
    q_STUDENTSID: TStringField;
    q_STUDENTSDONG_ID: TStringField;
    q_STUDENTSS_NAME: TStringField;
    q_STUDENTSS_TEL: TStringField;
    q_STUDENTSS_ADDR: TStringField;
    q_STUDENTSS_SEX: TStringField;
    q_STUDENTSS_KIND: TSmallintField;
    q_STUDENTSBIGO: TStringField;
    q_STUDENTSREG_DATE: TDateField;
    q_STUDENTSS_EMAIL: TStringField;
    q_STUDENTSS_DONG: TStringField;
    q_STUDENTSS_BIRTH: TStringField;
    q_STUDENTSBANK_NAME: TStringField;
    q_STUDENTSBANK_ID: TStringField;
    q_lecture_active: TUniQuery;
    d_lecture_active: TDataSource;
    q_lecture_activeL_NAME: TStringField;
    cbBankKind: TcxLookupComboBox;
    btnMove: TBitBtn;
    MONEY_INOUT_MOVE: TUniStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridMoneyInoutCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure gridMoneyInoutColumn1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure gridMoneyInoutIO_JUKYOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure gridMoneyInoutStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure edtStartDatePropertiesEditValueChanged(Sender: TObject);
    procedure edtEndDatePropertiesEditValueChanged(Sender: TObject);
    procedure edtStartDateChange(Sender: TObject);
    procedure edtEndDateChange(Sender: TObject);
    procedure btnMoneyOutClick(Sender: TObject);
    procedure btnMoneyInClick(Sender: TObject);
    procedure btnMoneyReturnClick(Sender: TObject);
    procedure cbBankKindPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridMoneyInoutFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnMoveClick(Sender: TObject);
  private
    procedure ReportFormNew;
    procedure ReportFormOld;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyInOut: TfmMoneyInOut;

implementation

uses GlobalVar, Udm, UfmMoneyInOutEdit, UfmMoneyInOutEdit2, uCommonLogic,
  UfmMoneyOutReport, UfmMoneyBackReport, UfmMoneyInReport, UfmMoneyInoutMove, UfmMoneyBackReport2;

{$R *.dfm}


procedure TfmMoneyInOut.btnAddClick(Sender: TObject);
begin
  fmMoneyInOutEdit := TfmMoneyInOutEdit.Create(Self);
  try
    fmMoneyInOutEdit.BANK_ID := cbBankKind.EditValue;
    fmMoneyInOutEdit.dxTemp.Active := True;
    fmMoneyInOutEdit.dxTemp.Append;
    fmMoneyInOutEdit.ShowModal;
    if fmMoneyInOutEdit.ModalResult = mrOk then
      d_MONEY_INOUT_WONJANG_DAY.DataSet.Refresh;
  finally
    fmMoneyInOutEdit.Free;
  end;
end;

procedure TfmMoneyInOut.btnDeleteClick(Sender: TObject);
var
  ID, cnt, col, i : integer;
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    cnt := gridMoneyInout.Controller.SelectedRecordCount;
    col := gridMoneyInout.GetColumnByFieldName('ID').Index;
    for i := 0 to cnt - 1 do begin
      ID := gridMoneyInout.Controller.SelectedRecords[i].Values[col];
      dm.DeleteMoneyINOUT(ID);
    end;
    d_MONEY_INOUT_WONJANG_DAY.DataSet.Refresh;
    gridMoneyInout.Controller.ClearSelection;
  end;
end;

procedure TfmMoneyInOut.btnEditClick(Sender: TObject);
begin
  fmMoneyInOutEdit2 := TfmMoneyInOutEdit2.Create(Self);
  try
    fmMoneyInOutEdit2.BANK_ID := cbBankKind.EditValue;
    fmMoneyInOutEdit2.dxTemp.Active := True;
    fmMoneyInOutEdit2.dxTemp.Append;
    fmMoneyInOutEdit2.dxTempid.AsInteger := gridMoneyInoutID.EditValue;
    fmMoneyInOutEdit2.dxTempm_date.AsDateTime := gridMoneyInoutIO_DATE.EditValue;
    fmMoneyInOutEdit2.dxTempm_kind.AsInteger := gridMoneyInoutIO_KIND.EditValue;
    fmMoneyInOutEdit2.dxTempacc_item.AsInteger := gridMoneyInoutIO_ITEM_ID.EditValue;
    fmMoneyInOutEdit2.dxTempacc_subitem.AsInteger := gridMoneyInoutIO_SUBITEM_ID.EditValue;
    fmMoneyInOutEdit2.dxTempacc_detail.AsInteger := gridMoneyInoutIO_DETAIL_ID.EditValue;
    fmMoneyInOutEdit2.dxTempm_jukyo.AsString := gridMoneyInoutIO_JUKYO.EditValue;
    fmMoneyInOutEdit2.dxTempreg_lecture_id.AsString := gridMoneyInoutIO_REG_LECTURE_ID.EditValue;
    if gridMoneyInoutIO_KIND.EditValue = 1 then
      fmMoneyInOutEdit2.dxTempm_out.AsFloat := gridMoneyInoutIO_IN.EditValue
    else
      fmMoneyInOutEdit2.dxTempm_out.AsFloat := gridMoneyInoutIO_OUT.EditValue;
    fmMoneyInOutEdit2.ShowModal;
    if fmMoneyInOutEdit2.ModalResult = mrOk then
      d_MONEY_INOUT_WONJANG_DAY.DataSet.Refresh;
  finally
    fmMoneyInOutEdit2.Free;
  end;
end;

procedure TfmMoneyInOut.btnExportClick(Sender: TObject);
var
  filename, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  gridMoneyInoutColumn1.Visible := False;
  try
    filename := '수입지출현황_' + DateTimeToStr(Date) + '.xls';
    saveDLG.Filter := '엑셀파일 (*.xls)|*.xls';
    saveDLG.DefaultExt := 'xls';
    saveDLG.FileName := filename;
    if saveDLG.Execute then begin
       filename := saveDLG.FileName;
       nameonly := copy(filename, 1, length(filename) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('파일:' + nameonly + '.xls(이)가 저장되었습니다.');
  finally
    saveDLG.Free;
    gridMoneyInoutColumn1.Visible := True;
  end;
end;

procedure TfmMoneyInOut.btnMoneyInClick(Sender: TObject);
var
  i, cnt, col1, col2 : integer;
  jukyo, sprice : string;
  dprice : array[0..4] of Double;
  jukyo_str : array[0..4] of string;
begin
  fmMoneyInReport := TfmMoneyInReport.Create(Self);
  try
    fmMoneyInReport.edtYear.Text := IntToStr(YearOf(Date));
    fmMoneyInReport.edtBalDate.Date := Date;
    fmMoneyInReport.edtOutDate.Date := Date;
    fmMoneyInReport.edtRegDate2.Date := Date;
    fmMoneyInReport.edtAmount.EditValue := gridMoneyInoutIO_OUT.EditValue;

    fmMoneyInReport.edtBigo.Text := '';

    fmMoneyInReport.dxMemData1.Close;
    fmMoneyInReport.dxMemData1.Open;
    dprice[0] := 0;
    dprice[1] := 0;
    dprice[2] := 0;
    dprice[3] := 0;
    dprice[4] := 0;

    cnt := gridMoneyInout.Controller.SelectedRecordCount;
    if rbEach.Checked then begin
      if cnt > 5 then begin
        ShowMessage('개별방식으로는 총5개까지만 출력됩니다.' + #13#10 +
                    '5개 이상의 항목은 다시 추가로 출력하거나' + #13#10 +
                    '합산방식으로 출력하세요.');
        col1 := gridMoneyInout.GetColumnByFieldName('IO_JUKYO').Index;
        col2 := gridMoneyInout.GetColumnByFieldName('IO_IN').Index;
        for i := 0 to 4 do begin
          jukyo := gridMoneyInout.Controller.SelectedRecords[i].Values[col1];
          dprice[i] := gridMoneyInout.Controller.SelectedRecords[i].Values[col2];
          sprice := FormatFloat('\#,', gridMoneyInout.Controller.SelectedRecords[i].Values[col2]);
          fmMoneyInReport.dxMemData1.Append;
          fmMoneyInReport.dxMemData1desc.Value := jukyo + '(' + sprice + '원)';
          fmMoneyInReport.dxMemData1.Post;
          jukyo_str[i] := jukyo + '(' + sprice + '원)';
        end;
      end else begin
        col1 := gridMoneyInout.GetColumnByFieldName('IO_JUKYO').Index;
        col2 := gridMoneyInout.GetColumnByFieldName('IO_IN').Index;
        for i := 0 to cnt - 1 do begin
          jukyo := gridMoneyInout.Controller.SelectedRecords[i].Values[col1];
          dprice[i] := gridMoneyInout.Controller.SelectedRecords[i].Values[col2];
          sprice := FormatFloat('\#,', gridMoneyInout.Controller.SelectedRecords[i].Values[col2]);
          fmMoneyInReport.dxMemData1.Append;
          fmMoneyInReport.dxMemData1desc.Value := jukyo + '(' + sprice + '원)';
          fmMoneyInReport.dxMemData1.Post;
          jukyo_str[i] := jukyo + '(' + sprice + '원)';
        end;
      end;
      fmMoneyInReport.edtAmount.EditValue := dprice[0] + dprice[1] + dprice[2] + dprice[3] + dprice[4];
      fmMoneyInReport.lblDesc1.Caption := jukyo_str[0];
      fmMoneyInReport.lblDesc2.Caption := jukyo_str[1];
      fmMoneyInReport.lblDesc3.Caption := jukyo_str[2];
      fmMoneyInReport.lblDesc4.Caption := jukyo_str[3];
      fmMoneyInReport.lblDesc5.Caption := jukyo_str[4];
    end else begin
      col1 := gridMoneyInout.GetColumnByFieldName('IO_JUKYO').Index;
      col2 := gridMoneyInout.GetColumnByFieldName('IO_IN').Index;
      for i := 0 to cnt - 1 do begin
        if i = 0 then
          jukyo := gridMoneyInout.Controller.SelectedRecords[i].Values[col1];
        dprice[i] := gridMoneyInout.Controller.SelectedRecords[i].Values[col2];
      end;
      sprice := FormatFloat('\#,', dprice[0] + dprice[1] + dprice[2] + dprice[3] + dprice[4]);
      fmMoneyInReport.edtAmount.EditValue := dprice[0] + dprice[1] + dprice[2] + dprice[3] + dprice[4];
      fmMoneyInReport.dxMemData1.Append;
      fmMoneyInReport.dxMemData1desc.Value := jukyo + '외 ' + IntToStr(cnt) + '건(' + sprice + '원)';
      fmMoneyInReport.dxMemData1.Post;
      fmMoneyInReport.lblDesc1.Caption := jukyo + '외 ' + IntToStr(cnt) + '건(' + sprice + '원)';
    end;

    fmMoneyInReport.ShowModal;
  finally
    fmMoneyInReport.Free;
  end;
end;

procedure TfmMoneyInOut.btnMoneyOutClick(Sender: TObject);
var
  i, cnt, col1, col2 : integer;
  jukyo, sprice : string;
  dprice : array[0..4] of Double;
  jukyo_str : array[0..4] of string;
begin
  fmMoneyOutReport := TfmMoneyOutReport.Create(Self);
  try
    fmMoneyOutReport.edtYear.Text := IntToStr(YearOf(Date));
    fmMoneyOutReport.edtBalDate.Date := Date;
    fmMoneyOutReport.edtOutDate.Date := Date;
    fmMoneyOutReport.edtRegDate2.Date := Date;
    fmMoneyOutReport.edtAmount.EditValue := gridMoneyInoutIO_OUT.EditValue;
    fmMoneyOutReport.edtOwener.Text := '';
    fmMoneyOutReport.edtComp.Text := '';
    fmMoneyOutReport.edtAddr.Text := '';
    fmMoneyOutReport.edtBankName.Text := '';
    fmMoneyOutReport.edtBankOwener.Text := '';
    fmMoneyOutReport.edtBankID.Text := '';
    fmMoneyOutReport.edtBigo.Text := '';

    fmMoneyOutReport.dxMemData1.Close;
    fmMoneyOutReport.dxMemData1.Open;
    dprice[0] := 0;
    dprice[1] := 0;
    dprice[2] := 0;
    dprice[3] := 0;
    dprice[4] := 0;

    cnt := gridMoneyInout.Controller.SelectedRecordCount;
    if rbEach.Checked then begin
      if cnt > 5 then begin
        ShowMessage('개별방식으로는 총5개까지만 출력됩니다.' + #13#10 +
                    '5개 이상의 항목은 다시 추가로 출력하거나' + #13#10 +
                    '합산방식으로 출력하세요.');
        col1 := gridMoneyInout.GetColumnByFieldName('IO_JUKYO').Index;
        col2 := gridMoneyInout.GetColumnByFieldName('IO_OUT').Index;
        for i := 0 to 4 do begin
          jukyo := gridMoneyInout.Controller.SelectedRecords[i].Values[col1];
          dprice[i] := gridMoneyInout.Controller.SelectedRecords[i].Values[col2];
          sprice := FormatFloat('\#,', gridMoneyInout.Controller.SelectedRecords[i].Values[col2]);
          fmMoneyOutReport.dxMemData1.Append;
          fmMoneyOutReport.dxMemData1desc.Value := jukyo + '(' + sprice + '원)';
          fmMoneyOutReport.dxMemData1.Post;
          jukyo_str[i] := jukyo + '(' + sprice + '원)';
        end;
      end else begin
        col1 := gridMoneyInout.GetColumnByFieldName('IO_JUKYO').Index;
        col2 := gridMoneyInout.GetColumnByFieldName('IO_OUT').Index;
        for i := 0 to cnt - 1 do begin
          jukyo := gridMoneyInout.Controller.SelectedRecords[i].Values[col1];
          dprice[i] := gridMoneyInout.Controller.SelectedRecords[i].Values[col2];
          sprice := FormatFloat('\#,', gridMoneyInout.Controller.SelectedRecords[i].Values[col2]);
          fmMoneyOutReport.dxMemData1.Append;
          fmMoneyOutReport.dxMemData1desc.Value := jukyo + '(' + sprice + '원)';
          fmMoneyOutReport.dxMemData1.Post;
          jukyo_str[i] := jukyo + '(' + sprice + '원)';
        end;
      end;
      fmMoneyOutReport.edtAmount.EditValue := dprice[0] + dprice[1] + dprice[2] + dprice[3] + dprice[4];
      fmMoneyOutReport.lblDesc1.Caption := jukyo_str[0];
      fmMoneyOutReport.lblDesc2.Caption := jukyo_str[1];
      fmMoneyOutReport.lblDesc3.Caption := jukyo_str[2];
      fmMoneyOutReport.lblDesc4.Caption := jukyo_str[3];
      fmMoneyOutReport.lblDesc5.Caption := jukyo_str[4];
    end else begin
      col1 := gridMoneyInout.GetColumnByFieldName('IO_JUKYO').Index;
      col2 := gridMoneyInout.GetColumnByFieldName('IO_OUT').Index;
      for i := 0 to cnt - 1 do begin
        if i = 0 then
          jukyo := gridMoneyInout.Controller.SelectedRecords[i].Values[col1];
        dprice[i] := gridMoneyInout.Controller.SelectedRecords[i].Values[col2];
      end;
      sprice := FormatFloat('\#,', dprice[0] + dprice[1] + dprice[2] + dprice[3] + dprice[4]);
      fmMoneyOutReport.edtAmount.EditValue := dprice[0] + dprice[1] + dprice[2] + dprice[3] + dprice[4];
      fmMoneyOutReport.dxMemData1.Append;
      fmMoneyOutReport.dxMemData1desc.Value := jukyo + '외 ' + IntToStr(cnt) + '건(' + sprice + '원)';
      fmMoneyOutReport.dxMemData1.Post;
      fmMoneyOutReport.lblDesc1.Caption := jukyo + '외 ' + IntToStr(cnt) + '건(' + sprice + '원)';
    end;
    fmMoneyOutReport.ShowModal;
  finally
    fmMoneyOutReport.Free;
  end;
end;

procedure TfmMoneyInOut.btnMoneyReturnClick(Sender: TObject);
begin
  if MONEY_BACK_REPORT_WAY = 1 then
    ReportFormNew
  else
    ReportFormOld;
end;

procedure TfmMoneyInOut.ReportFormNew;
var
  uid : string;
  student_id, lecture_id : string;
begin
  fmMoneyBackReport := TfmMoneyBackReport.Create(Self);
  try
    fmMoneyBackReport.edtYear.Text := IntToStr(YearOf(Date));
    fmMoneyBackReport.edtBalDate.Date := Date;
    fmMoneyBackReport.edtOutDate.Date := Date;
    fmMoneyBackReport.edtRegDate2.Date := Date;
    fmMoneyBackReport.edtAmount.EditValue := gridMoneyInoutIO_OUT.EditValue;

    uid := gridMoneyInoutIO_REG_LECTURE_ID.EditValue;
    q_REGISTED_LECTURE.ParamByName('ID').Value := uid;
    q_REGISTED_LECTURE.Active := True;
    d_REGISTED_LECTURE.DataSet.Refresh;

    student_id := q_REGISTED_LECTURESTUDENT_ID.Value;
    q_STUDENTS.ParamByName('student_id').Value := student_id;
    q_STUDENTS.Active := True;
    d_STUDENTS.DataSet.Refresh;

    lecture_id := q_REGISTED_LECTURELECTURE_ID.Value;
    q_lecture_active.ParamByName('lecture_id').Value := lecture_id;
    q_lecture_active.Active := True;
    d_lecture_active.DataSet.Refresh;

    fmMoneyBackReport.edtOwener.Text := gridMoneyInoutIO_JUKYO.EditValue;
    fmMoneyBackReport.edtBackReason.Text := '사유를 입력하세요';
    fmMoneyBackReport.ShowModal;
  finally
    fmMoneyBackReport.Free;
  end;
end;

procedure TfmMoneyInOut.ReportFormOld;
var
  uid : string;
  student_id, lecture_id : string;
begin
  fmMoneyBackReport2 := TfmMoneyBackReport2.Create(Self);
  try
    fmMoneyBackReport2.edtYear.Text := IntToStr(YearOf(Date));
    fmMoneyBackReport2.edtBalDate.Date := Date;
    fmMoneyBackReport2.edtOutDate.Date := Date;
    fmMoneyBackReport2.edtRegDate2.Date := Date;
    fmMoneyBackReport2.edtAmount.EditValue := gridMoneyInoutIO_OUT.EditValue;

    uid := gridMoneyInoutIO_REG_LECTURE_ID.EditValue;
    q_REGISTED_LECTURE.ParamByName('ID').Value := uid;
    q_REGISTED_LECTURE.Active := True;
    d_REGISTED_LECTURE.DataSet.Refresh;

    student_id := q_REGISTED_LECTURESTUDENT_ID.Value;
    q_STUDENTS.ParamByName('student_id').Value := student_id;
    q_STUDENTS.Active := True;
    d_STUDENTS.DataSet.Refresh;

    lecture_id := q_REGISTED_LECTURELECTURE_ID.Value;
    q_lecture_active.ParamByName('lecture_id').Value := lecture_id;
    q_lecture_active.Active := True;
    d_lecture_active.DataSet.Refresh;


    fmMoneyBackReport2.edtOwener.Text := q_STUDENTSS_NAME.Value;
    fmMoneyBackReport2.edtPhone.Text := q_STUDENTSS_TEL.Value;
    fmMoneyBackReport2.edtAddr.Text := q_STUDENTSS_ADDR.Value;
    fmMoneyBackReport2.edtBankName.Text := q_REGISTED_LECTUREPAYBACK_BANK.Value;
    fmMoneyBackReport2.edtBankOwener.Text := q_REGISTED_LECTUREPAYBACK_BANKOWNER.Value;
    fmMoneyBackReport2.edtBankID.Text := q_REGISTED_LECTUREPAYBACK_BANKID.Value;
    fmMoneyBackReport2.edtBigo.Text := '';

    fmMoneyBackReport2.edtLectureName.Text   := q_lecture_activeL_NAME.Value;
    fmMoneyBackReport2.edtRequester.Text     := q_STUDENTSS_NAME.Value;
    fmMoneyBackReport2.edtPayDate.Text       := q_REGISTED_LECTUREP_DATE.AsString;
    fmMoneyBackReport2.edtPayAmount.Text     := FloatToStr(q_REGISTED_LECTUREPAY_AMOUNT.AsFloat);
    fmMoneyBackReport2.edtRequestPrice.Text  := FloatToStr(q_REGISTED_LECTUREOUT_AMOUNT.AsFloat);
    fmMoneyBackReport2.edtBackReason.Text := '개인사유';
    fmMoneyBackReport2.edtBigo.Text := '';

    fmMoneyBackReport2.ShowModal;
  finally
    fmMoneyBackReport2.Free;
  end;
end;

procedure TfmMoneyInOut.btnMoveClick(Sender: TObject);
var
  i, cnt, col1, ID, BANK_ID, C_BANK : Integer;
begin
  fmMoneyInoutMove := TfmMoneyInoutMove.Create(Self);
  try
    C_BANK := cbBankKind.EditValue;
    fmMoneyInoutMove.CurrentBankID := C_BANK;
    fmMoneyInoutMove.ShowModal;
    if fmMoneyInoutMove.ModalResult = mrOk then begin
      cnt := gridMoneyInout.Controller.SelectedRecordCount;
      col1 := gridMoneyInout.GetColumnByFieldName('ID').Index;
      for i := 0 to cnt - 1 do begin
        ID := gridMoneyInout.Controller.SelectedRecords[i].Values[col1];
        if ID > 0 then begin
          BANK_ID := fmMoneyInoutMove.gridAccountID.EditValue;
          MONEY_INOUT_MOVE.ParamByName('ID').Value := ID;
          MONEY_INOUT_MOVE.ParamByName('BANK_ID').Value := BANK_ID;
          MONEY_INOUT_MOVE.Execute;
        end;
      end;
      d_MONEY_INOUT_WONJANG_DAY.DataSet.Refresh;
    end;
  finally
    fmMoneyInoutMove.Free;
  end;
end;

procedure TfmMoneyInOut.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  gridMoneyInoutColumn1.Visible := False;
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '굴림';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
  gridMoneyInoutColumn1.Visible := True;
end;

procedure TfmMoneyInOut.btnRetrieveClick(Sender: TObject);
begin
  MONEY_INOUT_WONJANG_DAY.ParamByName('dong_id').AsString := LoginUserDong;
  MONEY_INOUT_WONJANG_DAY.ParamByName('start_date').AsDateTime := edtStartDate.Date;
  MONEY_INOUT_WONJANG_DAY.ParamByName('end_date').AsDateTime := edtEndDate.Date;
  MONEY_INOUT_WONJANG_DAY.ParamByName('bank_kind').AsInteger := cbBankKind.EditValue;
  MONEY_INOUT_WONJANG_DAY.ParamByName('syear').AsInteger := YearOf(edtStartDate.Date);
  MONEY_INOUT_WONJANG_DAY.Active := True;
  d_MONEY_INOUT_WONJANG_DAY.DataSet.Refresh;
end;

procedure TfmMoneyInOut.cbBankKindPropertiesEditValueChanged(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOut.edtStartDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOut.edtEndDateChange(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOut.edtEndDatePropertiesEditValueChanged(Sender: TObject);
begin
  //btnRetrieve.Click;
end;

procedure TfmMoneyInOut.edtStartDatePropertiesEditValueChanged(Sender: TObject);
begin
  //btnRetrieve.Click;
end;

procedure TfmMoneyInOut.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmMoneyInOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMoneyInOut.FormCreate(Sender: TObject);
begin
  edtStartDate.Date := Date;
  edtEndDate.Date := Date;
  btnRetrieve.Click;
end;

procedure TfmMoneyInOut.gridMoneyInoutCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmMoneyInOut.gridMoneyInoutColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmMoneyInOut.gridMoneyInoutFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  btnEdit.Enabled := gridMoneyInoutID.EditValue > 0;
  btnDelete.Enabled := gridMoneyInoutID.EditValue > 0;
end;

procedure TfmMoneyInOut.gridMoneyInoutIO_JUKYOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  col : Integer;
begin
  col := gridMoneyInout.GetColumnByFieldName('DATA_KIND').Index;
  case ARecord.Values[col] of
    0: AText := '<<전기이월>>';
    2: AText := '<<합계금액>>';
    3: AText := '<<누계금액>>';
  end;
end;

procedure TfmMoneyInOut.gridMoneyInoutStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col, col_val : Integer;
begin
  col := gridMoneyInout.GetColumnByFieldName('DATA_KIND').Index;
  col_val := ARecord.Values[col];
  case col_val of
    0: AStyle := cxStyle2;
    2: AStyle := cxStyle3;
    3: AStyle := cxStyle2;
  end;
end;

initialization RegisterClasses([TfmMoneyInOut]);

end.
