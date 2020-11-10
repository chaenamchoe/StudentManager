object fmRegistWait: TfmRegistWait
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #45824#44592#51088' '#46321#47197#52376#47532
  ClientHeight = 165
  ClientWidth = 285
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
    Left = 8
    Top = 8
    Width = 265
    Height = 105
    Caption = #49688#44053#47308#54872#48520
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 24
      Width = 60
      Height = 13
      Caption = #46321#47197#51068#51088' :'
    end
    object Label2: TLabel
      Left = 13
      Top = 47
      Width = 60
      Height = 13
      Caption = #44208#51116#44552#50529' :'
    end
    object Label3: TLabel
      Left = 13
      Top = 70
      Width = 60
      Height = 13
      Caption = #44208#51116#48169#48277' :'
    end
    object edtDate: TcxDateEdit
      Left = 84
      Top = 21
      TabOrder = 0
      Width = 121
    end
    object edtAmount: TcxCurrencyEdit
      Left = 84
      Top = 44
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 1
      Width = 121
    end
    object edtPayWay: TcxImageComboBox
      Left = 84
      Top = 67
      EditValue = 0
      Properties.Items = <
        item
          Description = #54788#44552
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #48373#51648#52852#46300
          Value = 1
        end
        item
          Description = #44592#53440
          Value = 2
        end>
      TabOrder = 2
      Width = 121
    end
  end
  object btnSave: TBitBtn
    Left = 69
    Top = 125
    Width = 75
    Height = 25
    Caption = #51200#51109
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 125
    Width = 75
    Height = 25
    Caption = #52712#49548
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
end
