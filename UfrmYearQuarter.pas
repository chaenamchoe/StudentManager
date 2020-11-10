unit UfrmYearQuarter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DateUtils;

type
  TfrmYearQuarter = class(TFrame)
    Label1: TLabel;
    cbYear: TComboBox;
    cbQuarter: TComboBox;
    procedure cbYearChange(Sender: TObject);
    procedure cbQuarterChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IYear, IQuater : Integer;
    procedure InitYearMonth;
  end;

implementation

{$R *.dfm}

procedure TfrmYearQuarter.cbQuarterChange(Sender: TObject);
begin
  IYear := StrToInt(cbYear.Text);
  IQuater := cbQuarter.ItemIndex + 1;
end;

procedure TfrmYearQuarter.cbYearChange(Sender: TObject);
begin
  IYear := StrToInt(cbYear.Text);
  IQuater := cbQuarter.ItemIndex + 1;
end;

procedure TfrmYearQuarter.InitYearMonth;
var
  i, cYear, mon : integer;
begin
  cYear := YearOf(Date);
  for i := cYear - 9 to cYear + 1 do
    cbYear.Items.Add(IntToStr(i));
  cbYear.ItemIndex := cbYear.Items.IndexOf(IntToStr(cYear));
  mon := MonthOf(Date);
  case mon of
    1..3 : cbQuarter.ItemIndex := 0;
    4..6 : cbQuarter.ItemIndex := 1;
    7..9 : cbQuarter.ItemIndex := 2;
    10..12 : cbQuarter.ItemIndex := 3;
  end;
  IYear := StrToInt(cbYear.Text);
  IQuater := cbQuarter.ItemIndex + 1;
end;

end.
