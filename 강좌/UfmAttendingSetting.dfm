object fmAttendingSetting: TfmAttendingSetting
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #52636#49437#48512' '#52636#47141#49444#51221
  ClientHeight = 161
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 337
    Height = 155
    Align = alClient
    Caption = #49688#44053#49373' '#51060#47492#51221#47148' '#49444#51221
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 24
    ExplicitWidth = 185
    ExplicitHeight = 105
    object chkOrderRegist: TcxRadioButton
      Left = 48
      Top = 40
      Width = 81
      Height = 17
      Caption = #46321#47197#49692
      Checked = True
      TabOrder = 0
      TabStop = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
    object chkOrderName: TcxRadioButton
      Left = 152
      Top = 40
      Width = 121
      Height = 17
      Caption = #49688#44053#49373' '#51060#47492#49692
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 96
      Width = 75
      Height = 25
      Caption = #54869#51064
      Kind = bkOK
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 169
      Top = 96
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 3
    end
  end
end
