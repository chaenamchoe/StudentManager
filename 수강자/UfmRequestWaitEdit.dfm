object fmRequestWaitEdit: TfmRequestWaitEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#49888#52397#45824#44592' '#46321#47197'/'#49688#51221
  ClientHeight = 332
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 369
    Height = 278
    Caption = #49688#44053#49888#52397' '#46321#47197'/'#49688#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 148
      Top = 24
      Width = 52
      Height = 13
      Caption = #49688#44053#51088#47749
    end
    object Label2: TLabel
      Left = 21
      Top = 23
      Width = 52
      Height = 13
      Caption = #51217#49688#51068#51088
    end
    object Label3: TLabel
      Left = 149
      Top = 220
      Width = 39
      Height = 13
      Caption = #49688#44053#47308
      Visible = False
    end
    object Label4: TLabel
      Left = 21
      Top = 220
      Width = 52
      Height = 13
      Caption = #44048#47732#50668#48512
    end
    object Label5: TLabel
      Left = 21
      Top = 64
      Width = 52
      Height = 13
      Caption = #49373#45380#50900#51068
    end
    object Label6: TLabel
      Left = 148
      Top = 64
      Width = 26
      Height = 13
      Caption = #49457#48324
    end
    object Label7: TLabel
      Left = 222
      Top = 63
      Width = 52
      Height = 13
      Caption = #51204#54868#48264#54840
    end
    object Label8: TLabel
      Left = 21
      Top = 142
      Width = 26
      Height = 13
      Caption = #51452#49548
    end
    object lblStudentKind: TLabel
      Left = 287
      Top = 41
      Width = 56
      Height = 13
      Caption = #46321#47197#44396#48516
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 21
      Top = 182
      Width = 39
      Height = 13
      Caption = #51060#47700#51068
    end
    object Label10: TLabel
      Left = 234
      Top = 220
      Width = 52
      Height = 13
      Caption = #44208#51116#48169#48277
      Visible = False
    end
    object Label11: TLabel
      Left = 21
      Top = 102
      Width = 26
      Height = 13
      Caption = #46041#47749
    end
    object edtPayDate: TcxDateEdit
      Left = 21
      Top = 38
      TabOrder = 0
      Width = 121
    end
    object edtStudentName: TcxTextEdit
      Left = 148
      Top = 37
      Properties.OnEditValueChanged = edtStudentNamePropertiesEditValueChanged
      TabOrder = 1
      Width = 93
    end
    object ddlb_dckind: TcxLookupComboBox
      Left = 21
      Top = 233
      Enabled = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KIND_NAME'
        end>
      Properties.ListSource = dm.d_DC_KIND
      Properties.OnEditValueChanged = ddlb_dckindPropertiesEditValueChanged
      EditValue = 0
      TabOrder = 8
      Width = 121
    end
    object edtStudentID: TcxTextEdit
      Left = 238
      Top = 8
      Enabled = False
      TabOrder = 10
      Visible = False
      Width = 88
    end
    object edtBirthDate: TcxDateEdit
      Left = 21
      Top = 77
      Enabled = False
      TabOrder = 2
      Width = 121
    end
    object edtSex: TcxImageComboBox
      Left = 148
      Top = 77
      Enabled = False
      Properties.Items = <
        item
          Description = #45224#51088
          ImageIndex = 0
          Value = #45224#51088
        end
        item
          Description = #50668#51088
          Value = #50668#51088
        end>
      TabOrder = 3
      Width = 68
    end
    object edtTel: TcxTextEdit
      Left = 222
      Top = 77
      Enabled = False
      TabOrder = 4
      Width = 121
    end
    object edtAddr: TcxTextEdit
      Left = 21
      Top = 157
      Enabled = False
      TabOrder = 6
      Width = 322
    end
    object edtPrice: TcxCurrencyEdit
      Left = 148
      Top = 233
      EditValue = 0.000000000000000000
      Enabled = False
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseThousandSeparator = True
      TabOrder = 9
      Visible = False
      Width = 82
    end
    object edtEmail: TcxTextEdit
      Left = 21
      Top = 195
      Enabled = False
      TabOrder = 7
      Width = 322
    end
    object cxImageComboBox1: TcxImageComboBox
      Left = 234
      Top = 233
      Enabled = False
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
      TabOrder = 11
      Visible = False
      Width = 109
    end
    object edtDong: TcxLookupComboBox
      Left = 21
      Top = 115
      Enabled = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DONG'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_DONG_CODE
      TabOrder = 5
      Width = 121
    end
    object btnSelect: TBitBtn
      Left = 243
      Top = 36
      Width = 29
      Height = 22
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888008
        8888888888888090888888888888809908880888880880999088088000888099
        9908800880888099999088080008809999088008888080999088000088808099
        0888000888880090888800088800800088880000088088888888000000080888
        8888800000000888888888000008888888888888888888888888}
      ParentDoubleBuffered = False
      TabOrder = 12
      TabStop = False
      OnClick = btnSelectClick
    end
  end
  object btnSave: TBitBtn
    Left = 184
    Top = 296
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
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object BitBtn2: TBitBtn
    Left = 259
    Top = 296
    Width = 75
    Height = 25
    Caption = #52712#49548
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object btnEditStudent: TBitBtn
    Left = 58
    Top = 296
    Width = 105
    Height = 25
    Caption = #49688#44053#51088#49688#51221
    DoubleBuffered = True
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
      0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
      BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
      DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnEditStudentClick
  end
end
