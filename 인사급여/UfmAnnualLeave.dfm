object fmAnnualLeave: TfmAnnualLeave
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #50672#44032#51312#54924
  ClientHeight = 210
  ClientWidth = 222
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
    Width = 216
    Height = 204
    Align = alClient
    Caption = #50672#44032' '#52712#46301'/'#49324#50857
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 16
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 28
      Height = 17
      Caption = #45380#46020
    end
    object Label2: TLabel
      Left = 32
      Top = 63
      Width = 28
      Height = 17
      Caption = #52712#46301
    end
    object Label3: TLabel
      Left = 32
      Top = 94
      Width = 28
      Height = 17
      Caption = #49324#50857
    end
    object W_YEAR: TcxCurrencyEdit
      Left = 77
      Top = 29
      EditValue = 0
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 0
      Width = 76
    end
    object GET_AL: TcxCurrencyEdit
      Left = 77
      Top = 60
      EditValue = 0
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 1
      Width = 76
    end
    object USED_AL: TcxCurrencyEdit
      Left = 77
      Top = 91
      EditValue = 0
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 2
      Width = 76
    end
    object cxButton1: TcxButton
      Left = 77
      Top = 144
      Width = 75
      Height = 25
      Caption = #54869#51064
      LookAndFeel.SkinName = 'DevExpressStyle'
      ModalResult = 1
      TabOrder = 3
    end
  end
end
