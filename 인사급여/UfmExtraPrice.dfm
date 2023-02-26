object fmExtraPrice: TfmExtraPrice
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #52628#44032' '#51076#44552'/'#44277#51228
  ClientHeight = 267
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 17
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 262
    Height = 214
    Margins.Bottom = 50
    Align = alLeft
    Caption = #52628#44032#51076#44552
    TabOrder = 0
    ExplicitTop = 8
    ExplicitHeight = 256
    object Label1: TLabel
      Left = 39
      Top = 40
      Width = 75
      Height = 17
      Caption = #47749#51208#55092#44032#48708':'
    end
    object Label7: TLabel
      Left = 44
      Top = 71
      Width = 70
      Height = 17
      Caption = #44592#53440#49688#45817'1:'
    end
    object Label8: TLabel
      Left = 16
      Top = 102
      Width = 98
      Height = 17
      Caption = #44592#53440#49688#45817'1'#47749#52845':'
    end
    object Label9: TLabel
      Left = 44
      Top = 133
      Width = 70
      Height = 17
      Caption = #44592#53440#49688#45817'2:'
    end
    object Label10: TLabel
      Left = 16
      Top = 164
      Width = 98
      Height = 17
      Caption = #44592#53440#49688#45817'2'#47749#52845':'
    end
    object EXTRA_PRICE: TcxCurrencyEdit
      Left = 120
      Top = 37
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 0
      Width = 105
    end
    object ETC1_NAME: TEdit
      Left = 120
      Top = 99
      Width = 105
      Height = 25
      TabOrder = 1
    end
    object ETC1_PRICE: TcxCurrencyEdit
      Left = 120
      Top = 68
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 2
      Width = 105
    end
    object ETC2_PRICE: TcxCurrencyEdit
      Left = 120
      Top = 130
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 3
      Width = 105
    end
    object ETC2_NAME: TEdit
      Left = 120
      Top = 161
      Width = 105
      Height = 25
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 271
    Top = 3
    Width = 262
    Height = 214
    Margins.Bottom = 50
    Align = alLeft
    Caption = #52628#44032#44277#51228
    TabOrder = 1
    ExplicitTop = 8
    ExplicitHeight = 303
    object Label2: TLabel
      Left = 48
      Top = 40
      Width = 61
      Height = 17
      Caption = #44397#48124#50672#44552':'
    end
    object Label3: TLabel
      Left = 48
      Top = 71
      Width = 61
      Height = 17
      Caption = #44256#50857#48372#54744':'
    end
    object Label4: TLabel
      Left = 48
      Top = 102
      Width = 61
      Height = 17
      Caption = #44148#44053#48372#54744':'
    end
    object Label5: TLabel
      Left = 20
      Top = 133
      Width = 89
      Height = 17
      Caption = #51109#44592#50836#50577#48372#54744':'
    end
    object Label6: TLabel
      Left = 48
      Top = 164
      Width = 61
      Height = 17
      Caption = #49328#51116#48372#54744':'
    end
    object YUNGUM: TcxCurrencyEdit
      Left = 115
      Top = 37
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 0
      Width = 105
    end
    object GOYONG_BOHUM: TcxCurrencyEdit
      Left = 115
      Top = 68
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 1
      Width = 105
    end
    object GUNGANG_BOHUM: TcxCurrencyEdit
      Left = 115
      Top = 99
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 2
      Width = 105
    end
    object YOYANG_BOHUM: TcxCurrencyEdit
      Left = 115
      Top = 130
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 3
      Width = 105
    end
    object SANJAE_BOHUM: TcxCurrencyEdit
      Left = 115
      Top = 161
      EditValue = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 4
      Width = 105
    end
  end
  object cxButton1: TcxButton
    Left = 190
    Top = 231
    Width = 75
    Height = 25
    Caption = #51200#51109
    LookAndFeel.SkinName = 'DevExpressStyle'
    ModalResult = 1
    TabOrder = 2
  end
  object cxButton2: TcxButton
    Left = 271
    Top = 231
    Width = 75
    Height = 25
    Caption = #52712#49548
    LookAndFeel.SkinName = 'DevExpressStyle'
    ModalResult = 2
    TabOrder = 3
  end
end
