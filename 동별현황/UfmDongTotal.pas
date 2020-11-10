unit UfmDongTotal;

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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxDBLookupComboBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, StdCtrls, Buttons,
  Spin, ExtCtrls, dxmdaset, dxPSCore, dxPScxCommon, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Uni, UniProvider, DateUtils, cxGridExportLink,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfmDongTotal = class(TForm)
    cxGrid1: TcxGrid;
    gridReportTotal: TcxGridDBTableView;
    gridReportTotalRecId: TcxGridDBColumn;
    gridReportTotallecture_id: TcxGridDBColumn;
    gridReportTotallecture_name: TcxGridDBColumn;
    gridReportTotall_fixedcnt: TcxGridDBColumn;
    gridReportTotalregist_count: TcxGridDBColumn;
    gridReportTotalm_common: TcxGridDBColumn;
    gridReportTotalm_dc: TcxGridDBColumn;
    gridReportTotalm_male: TcxGridDBColumn;
    gridReportTotalm_female: TcxGridDBColumn;
    gridReportTotalm_waiter: TcxGridDBColumn;
    gridReportTotalm_outer: TcxGridDBColumn;
    gridReportTotalm_newer: TcxGridDBColumn;
    gridReportTotalm_renewer: TcxGridDBColumn;
    gridReportTotalm_samedong: TcxGridDBColumn;
    gridReportTotalm_notsamedong: TcxGridDBColumn;
    gridReportTotall_daycnt: TcxGridDBColumn;
    gridReportTotall_timecnt: TcxGridDBColumn;
    gridReportTotals_attendcnt: TcxGridDBColumn;
    gridReportTotals_absentcnt: TcxGridDBColumn;
    gridReportTotalpay_amount: TcxGridDBColumn;
    gridReportTotalpayback_amount: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxMemTotal: TdxMemData;
    dxMemTotallecture_id: TStringField;
    dxMemTotallecture_name: TStringField;
    dxMemTotall_fixedcnt: TIntegerField;
    dxMemTotalm_common: TIntegerField;
    dxMemTotalm_dc: TIntegerField;
    dxMemTotalm_male: TIntegerField;
    dxMemTotalm_female: TIntegerField;
    dxMemTotalm_waiter: TIntegerField;
    dxMemTotalm_outer: TIntegerField;
    dxMemTotalm_newer: TIntegerField;
    dxMemTotalm_renewer: TIntegerField;
    dxMemTotalm_samedong: TIntegerField;
    dxMemTotalm_notsamedong: TIntegerField;
    dxMemTotall_daycnt: TIntegerField;
    dxMemTotall_timecnt: TFloatField;
    dxMemTotals_attendcnt: TIntegerField;
    dxMemTotals_absentcnt: TIntegerField;
    dxMemTotalpay_amount: TFloatField;
    dxMemTotalpayback_amount: TFloatField;
    dxMemTotalregist_count: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    speYear: TSpinEdit;
    speStep: TSpinEdit;
    btnRetrieve: TBitBtn;
    speStep2: TSpinEdit;
    btnExport: TBitBtn;
    btnPrint: TBitBtn;
    PanelMessage: TPanel;
    Label3: TLabel;
    d_MemTotal: TDataSource;
    Label4: TLabel;
    cbDong: TcxLookupComboBox;
    dxMemTotaldong_id: TStringField;
    gridReportTotaldong_id: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    function Get_AbsendDay_Count(lecture_id: string): integer;
    function Get_Samedong_Count(lecture_id: string): integer;
    function Get_Newer_Count(lecture_id: string): integer;
    function Get_Male_Data(lecture_id: string): integer;
    procedure GetData(dong_id: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDongTotal: TfmDongTotal;

implementation

uses GlobalVar, Udm;

{$R *.dfm}


procedure TfmDongTotal.btnExportClick(Sender: TObject);
var
  filepath, nameonly : string;
  saveDLG : TSaveDialog;
begin
  saveDLG := TSaveDialog.Create(self);
  try
    saveDLG.Filter := '¿¢¼¿ÆÄÀÏ (*.xls)|*.xls';
    saveDLG.FileName := Caption + '_' + DateTimeToStr(Date) + '.xls';
    saveDLG.DefaultExt := 'xls';
    if saveDLG.Execute then begin
       filepath := saveDLG.FileName;
       nameonly := copy(filepath, 1, length(filepath) - 4);
    end else begin
       exit;
    end;
    ExportGridToExcel(nameonly, cxGrid1, false, true, true, 'xls');
    ShowMessage('¿¢¼¿ÆÄÀÏ ÀúÀå¿Ï·á!');
  finally
    saveDLG.Free;
  end;
end;

procedure TfmDongTotal.btnPrintClick(Sender: TObject);
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

procedure TfmDongTotal.btnRetrieveClick(Sender: TObject);
var
  i, cnt : integer;
  lecture_id, dong_id : string;
  regist_count, male_count, newer_count, samedong_count, total_day, absent_day : integer;
begin
  PanelMessage.Visible := True;
  PanelMessage.Refresh;
  Screen.Cursor := crArrow;
  dxMemTotal.DisableControls;

  if cbDong.EditValue = LoginUserDong then
    dong_id := '%'
  else
    dong_id := cbDong.EditValue;

  GetData(dong_id);   //ÇÕ°èÀÚ·á »êÃâ
  cnt := dxMemTotal.RecordCount;
  dxMemTotal.First;
  for i := 0 to cnt - 1 do begin
    lecture_id := dxMemTotallecture_id.AsString;
    regist_count := dxMemTotalregist_count.AsInteger;
    total_day := dxMemTotall_daycnt.AsInteger;
    male_count := Get_Male_Data(lecture_id);
    newer_count := Get_Newer_Count(lecture_id);
    samedong_count := Get_Samedong_Count(lecture_id);
    absent_day := Get_AbsendDay_Count(lecture_id);
    dxMemTotal.Edit;
    dxMemTotalm_male.AsInteger := male_count;
    dxMemTotalm_female.AsInteger := regist_count - male_count;
    dxMemTotalm_newer.AsInteger := newer_count;
    dxMemTotalm_renewer.AsInteger := regist_count - newer_count;
    dxMemTotalm_samedong.AsInteger := samedong_count;
    dxMemTotalm_notsamedong.AsInteger := regist_count - samedong_count;
    dxMemTotals_attendcnt.AsInteger := total_day * regist_count - absent_day;
    dxMemTotals_absentcnt.AsInteger := absent_day;
    dxMemTotal.Post;
    dxMemTotal.Next;
  end;
  d_MemTotal.DataSet.Refresh;
  dxMemTotal.First;
  dxMemTotal.EnableControls;
  PanelMessage.Visible := False;
  cxGrid1.SetFocus;
  Screen.Cursor := crDefault;
end;

function TfmDongTotal.Get_AbsendDay_Count(lecture_id : string) : integer;
var
  Query, Query2 : TUniQuery;
  sdate, edate : TDateTime;
begin
  Query := TUniQuery.Create(Self);
  Query2 := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('select start_date, end_date from LECTURE_ACTIVE ');                //°¹¼ö
      SQL.Add('where id = :lecture_id ');
      ParamByName('lecture_id').AsString := lecture_id;
      Active := True;
    end;
    if Query.RecordCount > 0 then begin
      sdate := StrToDatetime(Query.FieldByName('start_date').AsString);
      edate := StrToDatetime(Query.FieldByName('end_date').AsString);
      with Query2 do begin
        Connection := dm.UniConnection1;
        SpecificOptions.Values['FetchAll'] := 'true';
        SQL.Clear;
        SQL.Add('select count(lecture_id) r_count from STUDENT_ATTENDANCE ');                //°¹¼ö
        SQL.Add('where (lecture_id = :lecture_id) and (a_date between :sdate and :edate)');
        ParamByName('lecture_id').AsString := lecture_id;
        ParamByName('sdate').AsDateTime := sdate;
        ParamByName('edate').AsDateTime := edate;
        Active := True;
      end;
      if Query2.RecordCount > 0 then
        Result := Query2.FieldByName('r_count').AsInteger
      else
        Result := 0;
    end else
      Result := 0;

  finally
    Query2.Free;
    Query.Free;
  end;
end;

function TfmDongTotal.Get_Samedong_Count(lecture_id : string) : integer;
var
  Query : TUniQuery;
  l_year, l_step1, l_step2 : integer;
begin
  l_year := speYear.Value;
  l_step1 := speStep.Value;
  l_step2 := speStep2.Value;
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('select count(r_lecture_id) r_count ');                //°¹¼ö
      SQL.Add('from registed_student_lectureview ');
      SQL.Add('where r_lecture_id = :lecture_id ');
      SQL.Add('and l_year = :l_year and l_step >= :l_step1 and l_step <= :l_step2 ');
      SQL.Add('and s_dong = :s_dong');
      ParamByName('lecture_id').AsString := lecture_id;
      ParamByName('l_year').AsInteger := l_year;
      ParamByName('l_step1').AsInteger := l_step1;
      ParamByName('l_step2').AsInteger := l_step2;
      ParamByName('s_dong').AsString := LoginUserDong;
      Active := True;
    end;
    if Query.RecordCount > 0 then
      Result := Query.FieldByName('r_count').AsInteger
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

function TfmDongTotal.Get_Newer_Count(lecture_id : string) : integer;
var
  Query : TUniQuery;
  l_year, l_step1, l_step2 : integer;
begin
  l_year := speYear.Value;
  l_step1 := speStep.Value;
  l_step2 := speStep2.Value;
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('select count(r_lecture_id) r_count ');                //°¹¼ö
      SQL.Add('from registed_student_lectureview ');
      SQL.Add('where r_lecture_id = :lecture_id ');
      SQL.Add('and l_year = :l_year and l_step >= :l_step1 and l_step <= :l_step2 ');
      SQL.Add('and r_regist_kind = 1');
      ParamByName('lecture_id').AsString := lecture_id;
      ParamByName('l_year').AsInteger := l_year;
      ParamByName('l_step1').AsInteger := l_step1;
      ParamByName('l_step2').AsInteger := l_step2;
      Active := True;
    end;
    if Query.RecordCount > 0 then
      Result := Query.FieldByName('r_count').AsInteger
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

function TfmDongTotal.Get_Male_Data(lecture_id : string) : integer;
var
  Query : TUniQuery;
  l_year, l_step1, l_step2 : integer;
begin
  l_year := speYear.Value;
  l_step1 := speStep.Value;
  l_step2 := speStep2.Value;
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('select count(r_lecture_id) r_count ');                //°¹¼ö
      SQL.Add('from registed_student_lectureview ');
      SQL.Add('where r_lecture_id = :lecture_id ');
      SQL.Add('and l_year = :l_year and l_step >= :l_step1 and l_step <= :l_step2 ');
      SQL.Add('and s_sex = ''³²ÀÚ''');
      ParamByName('lecture_id').AsString := lecture_id;
      ParamByName('l_year').AsInteger := l_year;
      ParamByName('l_step1').AsInteger := l_step1;
      ParamByName('l_step2').AsInteger := l_step2;
      Active := True;
    end;
    if Query.RecordCount > 0 then
      Result := Query.FieldByName('r_count').AsInteger
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

procedure TfmDongTotal.GetData(dong_id : string);
var
  Query : TUniQuery;
  i, cnt, l_year, l_step1, l_step2 : integer;
  r_count : integer;
begin
  l_year := speYear.Value;
  l_step1 := speStep.Value;
  l_step2 := speStep2.Value;
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SpecificOptions.Values['FetchAll'] := 'true';
      SQL.Clear;
      SQL.Add('select R_DONG_ID, r_lecture_id, l_year, l_step, ');
      SQL.Add('count(r_lecture_id) r_count, ');                //°¹¼ö
      SQL.Add('sum(r_pay_amount) r_pay_amount, ');             //¼ö°­·á±İ¾×
      SQL.Add('sum(r_payback_amount) r_payback_amount, ');     //È¯ºÒ
      SQL.Add('sum(r_is_dc) r_is_dc, ');                       //È¯ºÒ°¹¼ö
      SQL.Add('sum(l_weeks_hoisu) l_weeks_hoisu, ');           //ÁÖ´çÈ½¼ö
      SQL.Add('sum(l_month_cnt) l_month_cnt, ');               //°³¿ù¼ö
      SQL.Add('sum(l_hours) l_hours, ');                       //½Ã°£
      SQL.Add('sum(l_plan_men) l_plan_men, ');                 //Á¤¿ø
      SQL.Add('sum(l_regist_men) l_regist_men, ');             //µî·Ï
      SQL.Add('sum(l_wait_men) l_wait_men, ');                 //´ë±â
      SQL.Add('sum(l_drop_men) l_drop_men, ');                 //Åğ°­
      SQL.Add('sum(l_total_day) l_total_day, ');               //Åğ°­
      SQL.Add('sum(l_total_time) l_total_time ');              //Åğ°­
      SQL.Add('from registed_student_lectureview ');
      SQL.Add('where ((R_DONG_ID like :dong_id) and (l_year = :l_year) and (l_step >= :l_step1) and (l_step <= :l_step2)) ');
      SQL.Add('group by R_DONG_ID, r_lecture_id, l_year, l_step ');
      ParamByName('dong_id').AsString := dong_id;
      ParamByName('l_year').AsInteger := l_year;
      ParamByName('l_step1').AsInteger := l_step1;
      ParamByName('l_step2').AsInteger := l_step2;
      Active := True;
    end;
    dxMemTotal.Active := False;
    dxMemTotal.Active := True;
    cnt := Query.RecordCount;
    Query.First;
    for i := 0 to cnt - 1 do begin
      r_count := Query.FieldByName('r_count').AsInteger;
      dxMemTotal.Append;
      dxMemTotallecture_id.AsString := Query.FieldByName('r_lecture_id').AsString;
      dxMemTotaldong_id.AsString := Query.FieldByName('R_DONG_ID').AsString;
      dxMemTotalregist_count.AsInteger := r_count;
      dxMemTotalpay_amount.AsFloat := Query.FieldByName('r_pay_amount').AsFloat;
      dxMemTotalpayback_amount.AsFloat := Query.FieldByName('r_payback_amount').AsFloat;
      dxMemTotalm_common.AsInteger := Query.FieldByName('l_regist_men').AsInteger div r_count;
      dxMemTotall_fixedcnt.AsInteger := Query.FieldByName('l_plan_men').AsInteger div r_count;
      dxMemTotalm_dc.AsInteger := Query.FieldByName('r_is_dc').AsInteger;
      dxMemTotalm_waiter.AsInteger := Query.FieldByName('l_wait_men').AsInteger div r_count;
      dxMemTotalm_outer.AsInteger := Query.FieldByName('l_drop_men').AsInteger div r_count;
      dxMemTotall_daycnt.AsInteger := Query.FieldByName('l_total_day').AsInteger div r_count;
      dxMemTotall_timecnt.AsFloat := Query.FieldByName('l_total_time').AsFloat / r_count;
      dxMemTotal.Post;
      Query.Next;
    end;
    d_MemTotal.DataSet.Refresh;
  finally
    Query.Free;
  end;
end;

procedure TfmDongTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDongTotal.FormCreate(Sender: TObject);
var
  mon : integer;
begin
  speYear.Value := YearOf(Date);
  mon := MonthOf(Date);
  case mon of
    1..3 : speStep2.Value := 1;
    4..6 : speStep2.Value := 2;
    7..9 : speStep2.Value := 3;
    10..12 : speStep2.Value := 4;
  end;
end;

initialization RegisterClasses([TfmDongTotal]);

end.
