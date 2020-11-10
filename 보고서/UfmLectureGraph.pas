unit UfmLectureGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, DB, cxDBData,
  cxGridChartView, cxGridDBChartView, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, DateUtils, MemDS, DBAccess, Uni, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TfmLectureGraph = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    speStep2: TSpinEdit;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    fridChart: TcxGridDBChartView;
    fridChartSeries1: TcxGridDBChartSeries;
    fridChartSeries2: TcxGridDBChartSeries;
    fridChartSeries3: TcxGridDBChartSeries;
    q_TEACHER_PAY_VIEW: TUniQuery;
    q_TEACHER_PAY_VIEWL_NAME: TStringField;
    q_TEACHER_PAY_VIEWID: TStringField;
    q_TEACHER_PAY_VIEWDONG_ID: TStringField;
    q_TEACHER_PAY_VIEWLECTURE_ID: TStringField;
    q_TEACHER_PAY_VIEWTEACHER_ID: TStringField;
    q_TEACHER_PAY_VIEWP_YEAR: TIntegerField;
    q_TEACHER_PAY_VIEWP_MONTH: TIntegerField;
    q_TEACHER_PAY_VIEWTOTAL_HOUR: TFloatField;
    q_TEACHER_PAY_VIEWTOTAL_MAN: TFloatField;
    q_TEACHER_PAY_VIEWMAN_COMMON: TFloatField;
    q_TEACHER_PAY_VIEWCOMMON_PRICE: TFloatField;
    q_TEACHER_PAY_VIEWMAN_DC: TFloatField;
    q_TEACHER_PAY_VIEWDC_PRICE: TFloatField;
    q_TEACHER_PAY_VIEWTOTAL_AMOUNT: TFloatField;
    q_TEACHER_PAY_VIEWSODUK: TFloatField;
    q_TEACHER_PAY_VIEWJUMIN: TFloatField;
    q_TEACHER_PAY_VIEWNET_AMOUNT: TFloatField;
    q_TEACHER_PAY_VIEWWEEK_DAYS: TStringField;
    q_TEACHER_PAY_VIEWBANK_NAME: TStringField;
    q_TEACHER_PAY_VIEWBANK_NO: TStringField;
    q_TEACHER_PAY_VIEWEXTRA_PAY: TFloatField;
    d_TEACHER_PAY_VIEW: TDataSource;
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure fridChartValueClick(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureGraph: TfmLectureGraph;

implementation

uses Udm, GlobalVar;

{$R *.dfm}

procedure TfmLectureGraph.btnRetrieveClick(Sender: TObject);
begin
  q_TEACHER_PAY_VIEW.ParamByName('dong_id').AsString := LoginUserDong;
  q_TEACHER_PAY_VIEW.ParamByName('p_year').AsInteger := speYear.Value;
  q_TEACHER_PAY_VIEW.ParamByName('start_month').AsInteger := speStep.Value;
  q_TEACHER_PAY_VIEW.ParamByName('end_month').AsInteger := speStep2.Value;
  q_TEACHER_PAY_VIEW.Active := True;
  d_TEACHER_PAY_VIEW.DataSet.Refresh;
end;

procedure TfmLectureGraph.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLectureGraph.FormShow(Sender: TObject);
begin
  speYear.Value := YearOf(Date);
  speStep.Value := MonthOf(Date);
  speStep2.Value := MonthOf(Date);
end;

procedure TfmLectureGraph.fridChartValueClick(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHandled: Boolean);
begin
  ShowMessage(IntToStr(AValueIndex));
end;

initialization RegisterClasses([TfmLectureGraph]);
end.
