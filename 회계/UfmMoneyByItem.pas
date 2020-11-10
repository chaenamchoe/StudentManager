unit UfmMoneyByItem;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, StdCtrls, Buttons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, dxmdaset, cxClasses, cxGridLevel,
  cxGrid, Uni, UniProvider, cxCustomPivotGrid, cxDBPivotGrid, cxDBLookupComboBox,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxPivotGridLnk,
  dxPScxCommon, cxExportPivotGridLink, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxImageComboBox, DateUtils;

type
  TfmMoneyByItem = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnRetrieve: TBitBtn;
    btnExport: TBitBtn;
    edtStartDate: TcxDateEdit;
    edtEndDate: TcxDateEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGridIO_DATE: TcxDBPivotGridField;
    cxDBPivotGridSUBITEM_ID: TcxDBPivotGridField;
    cxDBPivotGridDETAIL_ID: TcxDBPivotGridField;
    cxDBPivotGridJUKYO: TcxDBPivotGridField;
    cxDBPivotGridIO_IN: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    btnPrint: TBitBtn;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    cbBankKind: TcxImageComboBox;
    lbl1: TLabel;
    cxDBPivotGridDay: TcxDBPivotGridField;
    chkColumnTotal: TCheckBox;
    chkColumnGrandTotal: TCheckBox;
    cxDBPivotGridYear: TcxDBPivotGridField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure chkColumnTotalClick(Sender: TObject);
    procedure chkColumnGrandTotalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMoneyByItem: TfmMoneyByItem;

implementation

uses GlobalVar, Udm, uCommonLogic;

{$R *.dfm}

procedure TfmMoneyByItem.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '¿¢¼¿ÆÄÀÏ (*.xls)|*.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    cxExportPivotGridToExcel(nameonly, cxDBPivotGrid1, True, True, 'xls');
    ShowMessage('¿¢¼¿ÆÄÀÏ ÀúÀå¿Ï·á!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmMoneyByItem.btnPrintClick(Sender: TObject);
var
  titleStr : string;
begin
  titleStr := Caption;
  dxComponentPrinter1Link1.ReportTitle.Text := titleStr;
  dxComponentPrinter1Link1.ReportTitle.Font.Name := '±¼¸²';
  dxComponentPrinter1Link1.ReportTitle.Font.Size := 16;
  dxComponentPrinter1Link1.ReportTitle.Font.Style := [fsBold];
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmMoneyByItem.btnRetrieveClick(Sender: TObject);
var
  i : integer;
begin
  if YearOf(edtStartDate.Date) = YearOf(edtEndDate.Date) then begin
    cxDBPivotGridYear.Visible := False;
  end else begin
    cxDBPivotGridYear.Visible := True;
  end;
  dm.q_money_inout2.ParamByName('dong_id').AsString := LoginUserDong;
  dm.q_money_inout2.ParamByName('sdate').AsDateTime := edtStartDate.Date;
  dm.q_money_inout2.ParamByName('edate').AsDateTime := edtEndDate.Date;
  dm.q_money_inout2.ParamByName('bank_id').AsInteger := cbBankKind.EditValue;
  dm.q_money_inout2.Active := True;
  dm.d_money_inout2.DataSet.Refresh;
  cxDBPivotGrid1.BeginUpdate;
  try
    for I := 0 to cxDBPivotGrid1.FieldCount - 1 do
      cxDBPivotGrid1.Fields[I].ExpandAll;
  finally
    cxDBPivotGrid1.EndUpdate;
  end;
end;

procedure TfmMoneyByItem.chkColumnGrandTotalClick(Sender: TObject);
begin
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chkColumnGrandTotal.Checked;
end;

procedure TfmMoneyByItem.chkColumnTotalClick(Sender: TObject);
begin
  cxDBPivotGrid1.OptionsView.ColumnTotals := chkColumnTotal.Checked;
end;

procedure TfmMoneyByItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMoneyByItem.FormCreate(Sender: TObject);
begin
  edtStartDate.Date := Date;
  edtEndDate.Date := Date;
end;

initialization RegisterClasses([TfmMoneyByItem]);

end.
