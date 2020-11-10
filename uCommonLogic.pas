unit uCommonLogic;

interface
uses
    Windows, Classes, DB, ADODB, SysUtils, Forms, Graphics,
    Registry, Dialogs, Controls, DBCtrls, iemview,
    DBClient, IdHashMessageDigest, idHash, ievect, Uni, InterBaseUniProvider,
    DateUtils, Types, Messages, cxSSheet, cxGrid, cxGridDBTableView,
    cxGridDBBandedTableView, cxCalendar;

function GetFileVersion(szFullPath: pChar): String;
function CreateUniqTimeString : string;
procedure SaveGridToExcel(var GridView : TcxGridDBTableView; filename : string);
procedure SaveGridToExcel2(var GridView : TcxGridDBBandedTableView; filename : string);
procedure SetCellText(Sheet: TcxSSBookSheet; Col, Row: Integer; TextData: string);
function ConvertDateToStrField(Check_Date : TDateTime) : string;
procedure ConvertStrToDateField(Check_Date : string; var DateField : TcxDateEdit);


implementation

function GetFileVersion(szFullPath: pChar): String;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Result := '';
  Size := GetFileVersionInfoSize(szFullPath, Size2);
  if Size > 0 then begin
    GetMem(Pt, Size);
    try
      GetFileVersionInfo(szFullPath, 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo(Pt2^) do begin
        Result := Format('%d.%d.%d.%d', [HiWord(dwFileVersionMS),
                                         LoWord(dwFileVersionMS),
                                         HiWord(dwFileVersionLS),
                                         LoWord(dwFileVersionLS)]);
      end;
    finally
      FreeMem(Pt);
    end;
  end;
end;

function CreateUniqTimeString : string;
begin
  result := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

function ConvertDateToStrField(Check_Date : TDateTime) : string;
var
  new_date : TDateTime;
begin
  if TryStrToDate(DateTimeToStr(Check_Date), new_date) = True then
    Result := DateTimeToStr(new_date)
  else
    Result := '';
end;

procedure ConvertStrToDateField(Check_Date : string; var DateField : TcxDateEdit);
var
  new_date : TDateTime;
begin
  if TryStrToDate(Check_Date, new_date) = True then
    DateField.Date := new_date
  else
    DateField.Clear;
end;

//cxGridDBTableView의 보이는 필드들을 자동으로 추출하여 엑셀 파일로 저장하는 함수
//아래의 엑셀저장버튼 스크립트를 참조할 것. 그리드뷰의 이름과 엑셀파일명 인수를 꼭 넣어야 함.
//procedure TfmLectureAnalyse.btnExportClick(Sender: TObject);
//var
//  filename : string;
//begin
//  filename := Caption + '_' + DateTimeToStr(Date) + '.xls';
//  SaveGridToExcel(gridReportTotal, filename);
//end;
//
procedure SaveGridToExcel(var GridView : TcxGridDBTableView; filename : string);
var
  Sheet: TcxSSBookSheet;
  col_text, col_caption : string;
  saveDialog : TSaveDialog;
  i, c, rec_cnt, col_cnt, col_width, field_id : integer;
  cxSpreadSheet : TcxSpreadSheet;
begin
  //use절에 cxSSheet 추가할 것.
  cxSpreadSheet := TCxSpreadSheet.Create(Application);
  Sheet := cxSpreadSheet.Sheet;
  Sheet.ClearAll;
  cxSpreadSheet.Precision := 0;

  rec_cnt     := GridView.DataController.FilteredRecordCount;
  col_cnt := GridView.FilterRow.GridView.VisibleColumnCount;
  for I := 0 to rec_cnt - 1 do begin
    for c := 0 to col_cnt - 1 do begin
      col_caption := GridView.FilterRow.GridView.VisibleColumns[c].Caption;
      col_width   := GridView.FilterRow.GridView.VisibleColumns[c].Width;
      field_id    := GridView.FilterRow.GridView.VisibleColumns[c].id;
      if i = 0 then begin
        Sheet.Cols.Size[c] := col_width;
        SetCellText(Sheet, c, 0, col_caption);
      end;
      col_text := GridView.FilterRow.GridView.DataController.GetDisplayText(i, field_id);
      SetCellText(Sheet, c, i+1, col_text);
    end;
  end;
  saveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Filter := '엑셀파일(*.xls)|*.xls';
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.FileName := filename;
    if saveDialog.Execute then begin
      filename := saveDialog.FileName;
      cxSpreadSheet.SaveToFile(filename);
      ShowMessage('파일:' + filename + '이(가) 저장되었습니다.');
    end;
  finally
    saveDialog.Free;
    cxSpreadSheet.Free;
  end;
end;

procedure SaveGridToExcel2(var GridView : TcxGridDBBandedTableView; filename : string);
var
  Sheet: TcxSSBookSheet;
  col_text, col_caption : string;
  saveDialog : TSaveDialog;
  i, c, rec_cnt, col_cnt, col_width, field_id : integer;
  cxSpreadSheet : TcxSpreadSheet;
begin
  //use절에 cxSSheet 추가할 것.
  cxSpreadSheet := TCxSpreadSheet.Create(Application);
  Sheet := cxSpreadSheet.Sheet;
  Sheet.ClearAll;
  cxSpreadSheet.Precision := 0;

  rec_cnt     := GridView.DataController.FilteredRecordCount;
  col_cnt := GridView.FilterRow.GridView.VisibleColumnCount;
  for I := 0 to rec_cnt - 1 do begin
    for c := 0 to col_cnt - 1 do begin
      col_caption := GridView.FilterRow.GridView.VisibleColumns[c].Caption;
      col_width   := GridView.FilterRow.GridView.VisibleColumns[c].Width;
      field_id    := GridView.FilterRow.GridView.VisibleColumns[c].id;
      if i = 0 then begin
        Sheet.Cols.Size[c] := col_width;
        SetCellText(Sheet, c, 0, col_caption);
      end;
      col_text := GridView.FilterRow.GridView.DataController.GetDisplayText(i, field_id);
      SetCellText(Sheet, c, i+1, col_text);
    end;
  end;
  saveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Filter := '엑셀파일(*.xls)|*.xls';
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.FileName := filename;
    if saveDialog.Execute then begin
      filename := saveDialog.FileName;
      cxSpreadSheet.SaveToFile(filename);
      ShowMessage('파일:' + filename + '이(가) 저장되었습니다.');
    end;
  finally
    saveDialog.Free;
    cxSpreadSheet.Free;
  end;
end;

procedure SetCellText(Sheet: TcxSSBookSheet; Col, Row: Integer; TextData: string);
var
  Cell: TcxSSCellObject;
begin
  Cell := Sheet.GetCellObject(Col, Row);
  with Cell do
    try
      Cell.Text := TextData;
    finally
      Free;
    end;
end;


end.
