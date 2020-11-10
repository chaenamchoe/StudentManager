unit UfmSelectStudent;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, ExtCtrls, MemDS,
  DBAccess, Uni, dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxImageComboBox;

type
  TfmSelectStudent = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    gridStudent: TcxGridDBTableView;
    gridStudentID: TcxGridDBColumn;
    gridStudentDONG_ID: TcxGridDBColumn;
    gridStudentS_NAME: TcxGridDBColumn;
    gridStudentS_SEX: TcxGridDBColumn;
    gridStudentS_BIRTH: TcxGridDBColumn;
    gridStudentS_KIND: TcxGridDBColumn;
    gridStudentS_TEL: TcxGridDBColumn;
    gridStudentS_ADDR: TcxGridDBColumn;
    gridStudentBIGO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    btnSelect: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    gridStudentS_DONG: TcxGridDBColumn;
    q_STUDENTS_SELECT: TUniQuery;
    q_STUDENTS_SELECTID: TStringField;
    q_STUDENTS_SELECTDONG_ID: TStringField;
    q_STUDENTS_SELECTS_NAME: TStringField;
    q_STUDENTS_SELECTS_TEL: TStringField;
    q_STUDENTS_SELECTS_ADDR: TStringField;
    q_STUDENTS_SELECTS_SEX: TStringField;
    q_STUDENTS_SELECTS_KIND: TSmallintField;
    q_STUDENTS_SELECTBIGO: TStringField;
    q_STUDENTS_SELECTREG_DATE: TDateField;
    q_STUDENTS_SELECTS_EMAIL: TStringField;
    q_STUDENTS_SELECTS_DONG: TStringField;
    q_STUDENTS_SELECTS_BIRTH: TStringField;
    d_STUDENTS_SELECT: TDataSource;
    procedure gridStudentCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSelectStudent: TfmSelectStudent;

implementation

uses GlobalVar, Udm;

{$R *.dfm}

procedure TfmSelectStudent.FormShow(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

procedure TfmSelectStudent.gridStudentCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

end.
