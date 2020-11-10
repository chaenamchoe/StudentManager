unit UfmSenderTelEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmSenderTelEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditCenter: TEdit;
    EditTel: TEdit;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSenderTelEdit: TfmSenderTelEdit;

implementation

{$R *.dfm}

end.
