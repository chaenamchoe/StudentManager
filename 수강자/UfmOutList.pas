unit UfmOutList;

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
  cxImageComboBox, ComCtrls, cxRadioGroup, cxCheckBox;

type
  TfmOutList = class(TForm)
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
    gridOutListOUT_MONTH: TcxGridDBColumn;
    gridOutListL_YEAR: TcxGridDBColumn;
    gridOutListL_STEP: TcxGridDBColumn;
    SP_STUDENT_OUTLIST: TUniStoredProc;
    SP_STUDENT_OUTLISTL_YEAR: TIntegerField;
    SP_STUDENT_OUTLISTL_STEP: TIntegerField;
    SP_STUDENT_OUTLISTL_NAME: TStringField;
    SP_STUDENT_OUTLISTL_TIME_WEEK: TIntegerField;
    SP_STUDENT_OUTLISTL_DAYS: TStringField;
    SP_STUDENT_OUTLISTL_MONTH: TIntegerField;
    SP_STUDENT_OUTLISTSTART_DATE: TStringField;
    SP_STUDENT_OUTLISTEND_DATE: TStringField;
    SP_STUDENT_OUTLISTCLASSROOM_ID: TStringField;
    SP_STUDENT_OUTLISTIS_ACTIVE: TIntegerField;
    SP_STUDENT_OUTLISTL_PRICE: TFloatField;
    SP_STUDENT_OUTLISTDONG_ID: TStringField;
    SP_STUDENT_OUTLISTLECTURE_ID: TStringField;
    SP_STUDENT_OUTLISTSTUDENT_ID: TStringField;
    SP_STUDENT_OUTLISTP_DATE: TStringField;
    SP_STUDENT_OUTLISTPAY_AMOUNT: TFloatField;
    SP_STUDENT_OUTLISTPAY_KIND: TSmallintField;
    SP_STUDENT_OUTLISTR_DATE: TStringField;
    SP_STUDENT_OUTLISTOUT_AMOUNT: TFloatField;
    SP_STUDENT_OUTLISTREG_KIND: TSmallintField;
    SP_STUDENT_OUTLISTPAY_WAY: TSmallintField;
    SP_STUDENT_OUTLISTPAYBACK_WAY: TSmallintField;
    SP_STUDENT_OUTLISTPAYBACK_BANK: TStringField;
    SP_STUDENT_OUTLISTPAYBACK_BANKID: TStringField;
    SP_STUDENT_OUTLISTPAYBACK_BANKOWNER: TStringField;
    SP_STUDENT_OUTLISTOUT_KIND: TSmallintField;
    SP_STUDENT_OUTLISTOUT_MONTH: TSmallintField;
    SP_STUDENT_OUTLISTTEACHER_ID: TStringField;
    SP_STUDENT_OUTLISTS_NAME: TStringField;
    SP_STUDENT_OUTLISTS_TEL: TStringField;
    SP_STUDENT_OUTLISTS_ADDR: TStringField;
    SP_STUDENT_OUTLISTS_KIND: TSmallintField;
    SP_STUDENT_OUTLISTS_SEX: TStringField;
    SP_STUDENT_OUTLISTS_BIRTH: TStringField;
    SP_STUDENT_OUTLISTT_NAME: TStringField;
    SP_STUDENT_OUTLISTT_SEX: TStringField;
    SP_STUDENT_OUTLISTT_TEL: TStringField;
    SP_STUDENT_OUTLISTBANK_NAME: TStringField;
    SP_STUDENT_OUTLISTBANK_NO: TStringField;
    SP_STUDENT_OUTLISTID: TStringField;
    SP_STUDENT_OUTLISTR_NO: TIntegerField;
    gridOutListR_NO: TcxGridDBColumn;
    SP_STUDENT_OUTLISTOUT_MONTH2: TSmallintField;
    SP_STUDENT_OUTLISTOUT_MONTH3: TSmallintField;
    gridOutListOUT_MONTH2: TcxGridDBColumn;
    gridOutListOUT_MONTH3: TcxGridDBColumn;
    btnRetrieve: TcxButton;
    btnExport: TcxButton;
    btnAttendList: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAttendListClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOutList: TfmOutList;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmOutList.btnAttendListClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := 'Åð°­ÀÚÇöÈ²' + #13#10 +
              '===================' + #13#10 +
              '(' + DateToStr(DateTimePicker1.Date) + ' ~ ' + DateToStr(DateTimePicker2.Date) + ')';
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '±¼¸²';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmOutList.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '¿¢¼¿ÆÄÀÏ (*.xlsx)|*.xlsx';
    saveDLG.FileName := 'Åð°­ÀÚÇöÈ²_' + DateTimeToStr(Date) + '.xlsx';
    saveDLG.DefaultExt := 'xlsx';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToXLSX(nameonly, cxGrid1, false, true, true, 'xlsx');
    ShowMessage('¿¢¼¿ÆÄÀÏ ÀúÀå¿Ï·á!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmOutList.btnRetrieveClick(Sender: TObject);
var
  pYear, pMonth, p_kind : integer;
  sdate : TDateTime;
begin
  SP_STUDENT_OUTLIST.ParamByName('STARTDATE').Value := DateTimePicker1.Date;
  SP_STUDENT_OUTLIST.ParamByName('ENDDATE').Value := DateTimePicker2.Date;
  SP_STUDENT_OUTLIST.Active := True;
  d_REQUEST_VIEW.DataSet.Refresh;
end;

procedure TfmOutList.DateTimePicker1CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutList.DateTimePicker2CloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutList.FormActivate(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmOutList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOutList.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  btnRetrieve.Click;
end;

initialization RegisterClasses([TfmOutList]);

end.
