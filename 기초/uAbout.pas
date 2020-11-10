unit uAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxGDIPlusClasses, ExtCtrls, ShellAPI,
  UniProvider, InterBaseUniProvider, DB, DBAccess, Registry, Uni, OleCtrls,
  jpeg;

type
  TfmAbout = class(TForm)
    pnl1: TPanel;
    lbl6: TLabel;
    lbl7: TLabel;
    lblVersion: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAbout: TfmAbout;

implementation

{$R *.dfm}

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

procedure TfmAbout.FormActivate(Sender: TObject);
var
  pVersion, pDate, AppVersion : string;
begin
  AppVersion := GetFileVersion(pWideChar(Application.ExeName));
  pDate :=  DateTimeToStr(FileDateToDateTime(FileAge(Application.ExeName)));
  pVersion := 'Version: ' + AppVersion + sLineBreak + 'Compiled: ' + pDate;
  lblVersion.Caption := pVersion;
end;

end.
