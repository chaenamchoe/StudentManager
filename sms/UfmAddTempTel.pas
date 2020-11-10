unit UfmAddTempTel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmAddTempTel = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditName: TEdit;
    EditTel: TEdit;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAddTempTel: TfmAddTempTel;

implementation

{$R *.dfm}

end.
