object fmUserManager: TfmUserManager
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49324#50857#51088' '#46321#47197#51221#48372
  ClientHeight = 265
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnEdit: TBitBtn
    Left = 86
    Top = 223
    Width = 60
    Height = 25
    Hint = #49688#51221
    Caption = #49688#51221
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
      0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
      BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
      DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btnEditClick
  end
  object btnSave: TBitBtn
    Left = 152
    Top = 223
    Width = 60
    Height = 25
    Hint = #51200#51109
    Caption = #51200#51109
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
      030AA03300000000030DD03333333333330AA03300000000330DD03088888888
      030AA03088888888030DD03088888888030AA03088888888030DD03088888888
      000AA03088888888080DD00000000000000AADADADADADADADAD}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 273
    Height = 201
    Caption = #49324#50857#51088' '#46321#47197#51221#48372
    TabOrder = 2
    object Label1: TLabel
      Left = 13
      Top = 76
      Width = 56
      Height = 13
      Caption = #49324#50857#51088#47749':'
    end
    object Label2: TLabel
      Left = 13
      Top = 97
      Width = 55
      Height = 13
      Caption = #47196#44536#51064'ID:'
    end
    object Label3: TLabel
      Left = 13
      Top = 118
      Width = 56
      Height = 13
      Caption = #48708#48128#48264#54840':'
    end
    object Label4: TLabel
      Left = 13
      Top = 139
      Width = 56
      Height = 13
      Caption = #51204#54868#48264#54840':'
    end
    object Label5: TLabel
      Left = 13
      Top = 160
      Width = 51
      Height = 13
      Caption = #51060' '#47700' '#51068':'
    end
    object Label6: TLabel
      Left = 13
      Top = 28
      Width = 56
      Height = 13
      Caption = #49548#49549#49884#44400':'
    end
    object Label7: TLabel
      Left = 12
      Top = 47
      Width = 56
      Height = 13
      Caption = #51088#52824#45800#52404':'
    end
    object edtCityName: TcxTextEdit
      Left = 73
      Top = 25
      Enabled = False
      TabOrder = 0
      Width = 180
    end
    object edtDongName: TcxTextEdit
      Left = 73
      Top = 46
      Enabled = False
      TabOrder = 1
      Width = 180
    end
    object edtUserName: TcxTextEdit
      Left = 73
      Top = 73
      Enabled = False
      TabOrder = 2
      Width = 121
    end
    object edtLoginID: TcxTextEdit
      Left = 73
      Top = 94
      Enabled = False
      TabOrder = 3
      Width = 121
    end
    object edtLoginPass: TcxTextEdit
      Left = 73
      Top = 115
      Enabled = False
      Properties.EchoMode = eemPassword
      TabOrder = 4
      Width = 121
    end
    object edtUserTel: TcxTextEdit
      Left = 73
      Top = 136
      Enabled = False
      TabOrder = 5
      Width = 180
    end
    object edtUserEmail: TcxTextEdit
      Left = 73
      Top = 157
      Enabled = False
      TabOrder = 6
      Width = 180
    end
  end
end
