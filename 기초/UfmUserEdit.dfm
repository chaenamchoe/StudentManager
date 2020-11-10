object fmUserEdit: TfmUserEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49324#50857#51088' '#46321#47197'/'#49688#51221
  ClientHeight = 259
  ClientWidth = 211
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
    Width = 193
    Height = 209
    Caption = #49324#50857#51088' '#51221#48372
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 39
      Height = 13
      Caption = #49548#49549#47749
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 52
      Height = 13
      Caption = #49324#50857#51088#47749
      FocusControl = edtUsername
    end
    object Label3: TLabel
      Left = 16
      Top = 110
      Width = 51
      Height = 13
      Caption = #47196#44536#51064'ID'
      FocusControl = edtLoginID
    end
    object Label4: TLabel
      Left = 16
      Top = 153
      Width = 52
      Height = 13
      Caption = #54056#49828#50892#46300
      FocusControl = cxDBTextEdit4
    end
    object edtUsername: TcxDBTextEdit
      Left = 16
      Top = 80
      DataBinding.DataField = 'USER_NAME'
      DataBinding.DataSource = dm.d_LOGIN_USER
      TabOrder = 1
      Width = 121
    end
    object edtLoginID: TcxDBTextEdit
      Left = 16
      Top = 126
      DataBinding.DataField = 'LOGIN_ID'
      DataBinding.DataSource = dm.d_LOGIN_USER
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 16
      Top = 169
      DataBinding.DataField = 'LOGIN_PASS'
      DataBinding.DataSource = dm.d_LOGIN_USER
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      TabOrder = 3
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 16
      Top = 38
      DataBinding.DataField = 'DONG_ID'
      DataBinding.DataSource = dm.d_LOGIN_USER
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DONG'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_DONG_CODE
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 145
    end
  end
  object BitBtn1: TBitBtn
    Left = 27
    Top = 223
    Width = 75
    Height = 25
    Caption = #51200#51109
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
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 105
    Top = 223
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
end
