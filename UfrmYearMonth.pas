unit UfrmYearMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DateUtils;

type
  TfrmYearMonth = class(TFrame)
    Label1: TLabel;
    cbYear: TComboBox;
    cbMonth: TComboBox;
    procedure cbYearChange(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IYear, IMonth : Integer;
    procedure InitYearMonth;
  end;

implementation

{$R *.dfm}

{ TfrmYearMonth }

procedure TfrmYearMonth.cbMonthChange(Sender: TObject);
begin
  IYear := StrToInt(cbYear.Text);
  IMonth := cbMonth.ItemIndex + 1;
end;

procedure TfrmYearMonth.cbYearChange(Sender: TObject);
begin
  IYear := StrToInt(cbYear.Text);
  IMonth := cbMonth.ItemIndex + 1;
end;

procedure TfrmYearMonth.InitYearMonth;
var
  i, cYear, mon : integer;
begin
  cYear := YearOf(Date);
  for i := cYear - 9 to cYear + 1 do
    cbYear.Items.Add(IntToStr(i));
  cbYear.ItemIndex := cbYear.Items.IndexOf(IntToStr(cYear));
  mon := MonthOf(Date);
  cbMonth.ItemIndex := mon - 1;
  IYear := StrToInt(cbYear.Text);
  IMonth := cbMonth.ItemIndex + 1;
end;

end.
