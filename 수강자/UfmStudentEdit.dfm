object fmStudentEdit: TfmStudentEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#51088' '#46321#47197'/'#49688#51221
  ClientHeight = 362
  ClientWidth = 333
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
    Width = 313
    Height = 306
    Caption = #49688#44053#51088' '#46321#47197'/'#49688#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 22
      Width = 52
      Height = 13
      Caption = #49688#44053#51088#47749
    end
    object Label2: TLabel
      Left = 160
      Top = 23
      Width = 52
      Height = 13
      Caption = #49373#45380#50900#51068
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 52
      Height = 13
      Caption = #51204#54868#48264#54840
    end
    object Label4: TLabel
      Left = 24
      Top = 104
      Width = 26
      Height = 13
      Caption = #51452#49548
    end
    object Label5: TLabel
      Left = 24
      Top = 184
      Width = 26
      Height = 13
      Caption = #49457#48324
    end
    object Label6: TLabel
      Left = 136
      Top = 184
      Width = 52
      Height = 13
      Caption = #44048#47732#50668#48512
    end
    object Label7: TLabel
      Left = 24
      Top = 222
      Width = 52
      Height = 13
      Caption = #48708#44256#49324#54637
    end
    object Label9: TLabel
      Left = 24
      Top = 145
      Width = 39
      Height = 13
      Caption = #51060#47700#51068
    end
    object Label8: TLabel
      Left = 160
      Top = 64
      Width = 26
      Height = 13
      Caption = #46041#47749
    end
    object Label10: TLabel
      Left = 24
      Top = 260
      Width = 91
      Height = 13
      Caption = #54788#44552#50689#49688#51613#48264#54840
    end
    object edtName: TcxTextEdit
      Left = 24
      Top = 36
      TabOrder = 0
      Width = 121
    end
    object edtDong: TcxLookupComboBox
      Left = 160
      Top = 77
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DONG'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_DONG_CODE
      TabOrder = 2
      Width = 121
    end
    object edtAddr: TcxTextEdit
      Left = 24
      Top = 118
      TabOrder = 3
      Width = 257
    end
    object edtEmail: TcxTextEdit
      Left = 24
      Top = 158
      TabOrder = 4
      Width = 257
    end
    object edtSex: TcxImageComboBox
      Left = 24
      Top = 197
      EditValue = '2'
      Properties.Items = <
        item
          Description = #45224
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #50668
          Value = '2'
        end>
      TabOrder = 5
      Width = 85
    end
    object edtDCKind: TcxLookupComboBox
      Left = 136
      Top = 197
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KIND_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_DC_KIND
      TabOrder = 6
      Width = 145
    end
    object edtBigo: TcxTextEdit
      Left = 24
      Top = 235
      TabOrder = 7
      Width = 257
    end
    object edtCashReceiptNo: TcxTextEdit
      Left = 24
      Top = 273
      TabOrder = 8
      Width = 162
    end
    object chkCashReceipt: TCheckBox
      Left = 201
      Top = 275
      Width = 80
      Height = 17
      Caption = #48156#44553#50668#48512
      TabOrder = 9
    end
    object edtBirth: TEdit
      Left = 160
      Top = 36
      Width = 98
      Height = 21
      ImeName = 'Microsoft IME 2010'
      MaxLength = 8
      NumbersOnly = True
      TabOrder = 1
      OnChange = edtBirthChange
    end
    object edtTel: TEdit
      Left = 24
      Top = 77
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2010'
      MaxLength = 13
      NumbersOnly = True
      TabOrder = 10
      OnChange = edtTelChange
    end
  end
  object BitBtn1: TBitBtn
    Left = 85
    Top = 320
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
    Left = 166
    Top = 320
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
end
