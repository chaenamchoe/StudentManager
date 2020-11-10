object DemoBasicMainForm: TDemoBasicMainForm
  Left = 239
  Top = 187
  Caption = 'ExpressScheduler DemoBasic Demo'
  ClientHeight = 643
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Scheduler: TcxScheduler
    Left = 0
    Top = 0
    Width = 1043
    Height = 624
    DateNavigator.RowCount = 2
    ViewDay.Active = True
    ViewDay.TimeRulerMinutes = True
    Align = alClient
    ControlBox.Control = pnlControls
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 0
    Splitters = {
      83030000FB00000012040000000100007E03000001000000830300006F020000}
    StoredClientBounds = {0100000001000000120400006F020000}
    object pnlControls: TPanel
      Left = 0
      Top = 0
      Width = 143
      Height = 367
      Align = alClient
      BevelOuter = bvNone
      Color = clWindow
      TabOrder = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 143
        Height = 367
        Align = alClient
        BorderStyle = bsNone
        ImeName = 'Microsoft IME 2010'
        Lines.Strings = (
          'Your controls can be placed '
          'here')
        TabOrder = 0
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 624
    Width = 1043
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 464
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Left = 504
    Top = 8
  end
  object lfController: TcxLookAndFeelController
    Left = 544
    Top = 8
  end
end
