object fmRequestEdit2: TfmRequestEdit2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#49888#52397' '#46321#47197'/'#49688#51221
  ClientHeight = 441
  ClientWidth = 382
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
    Width = 365
    Height = 393
    Caption = #49688#44053#49888#52397' '#46321#47197'/'#49688#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 103
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
    object Label4: TLabel
      Left = 21
      Top = 220
      Width = 52
      Height = 13
      Caption = #44048#47732#50668#48512
    end
    object Label5: TLabel
      Left = 128
      Top = 103
      Width = 52
      Height = 13
      Caption = #49373#45380#50900#51068
    end
    object Label6: TLabel
      Left = 238
      Top = 103
      Width = 26
      Height = 13
      Caption = #49457#48324
    end
    object Label7: TLabel
      Left = 21
      Top = 142
      Width = 52
      Height = 13
      Caption = #51204#54868#48264#54840
    end
    object Label8: TLabel
      Left = 21
      Top = 181
      Width = 26
      Height = 13
      Caption = #51452#49548
    end
    object Label11: TLabel
      Left = 197
      Top = 143
      Width = 26
      Height = 13
      Caption = #46041#47749
      Visible = False
    end
    object Label12: TLabel
      Left = 128
      Top = 23
      Width = 58
      Height = 13
      Caption = #49888#44508'/'#51116#44053
      Visible = False
    end
    object Label3: TLabel
      Left = 21
      Top = 62
      Width = 39
      Height = 13
      Caption = #44053#51340#47749
    end
    object Label13: TLabel
      Left = 238
      Top = 23
      Width = 58
      Height = 13
      Caption = #46321#47197'/'#45824#44592
      Visible = False
    end
    object Label10: TLabel
      Left = 21
      Top = 259
      Width = 43
      Height = 13
      Caption = #46321#47197#50900':'
    end
    object lblpayway: TLabel
      Left = 21
      Top = 344
      Width = 52
      Height = 13
      Caption = #44208#51116#48169#48277
    end
    object Label14: TLabel
      Left = 21
      Top = 365
      Width = 91
      Height = 13
      Caption = #54788#44552#50689#49688#51613#48264#54840
    end
    object edtPayDate: TcxDateEdit
      Left = 21
      Top = 37
      TabOrder = 0
      Width = 104
    end
    object ddlb_dckind: TcxLookupComboBox
      Left = 21
      Top = 233
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KIND_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_DC_KIND
      Properties.OnEditValueChanged = ddlb_dckindPropertiesEditValueChanged
      EditValue = 0
      TabOrder = 10
      Width = 104
    end
    object edtStudentID: TcxTextEdit
      Left = 329
      Top = 8
      Enabled = False
      TabOrder = 20
      Visible = False
      Width = 32
    end
    object edtSex: TcxImageComboBox
      Left = 238
      Top = 117
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
      TabOrder = 6
      Width = 58
    end
    object edtDong: TcxLookupComboBox
      Left = 197
      Top = 156
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DONG'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 8
      Visible = False
      Width = 146
    end
    object cbRegKind: TcxImageComboBox
      Left = 128
      Top = 37
      EditValue = 0
      Enabled = False
      Properties.Items = <
        item
          Description = #49888#44508
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #51116#44053
          Value = 1
        end>
      TabOrder = 2
      Visible = False
      Width = 105
    end
    object cbPayKind: TcxImageComboBox
      Left = 238
      Top = 37
      EditValue = 0
      Enabled = False
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #46321#47197
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #53748#44053'1'
          Value = 1
        end
        item
          Description = #53748#44053'2'
          Value = 2
        end
        item
          Description = #53748#44053'3'
          Value = 3
        end>
      TabOrder = 1
      Visible = False
      Width = 105
    end
    object cbLectureName: TcxLookupComboBox
      Left = 21
      Top = 76
      Enabled = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'L_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_lecture_lookstep
      TabOrder = 3
      Width = 212
    end
    object edtStudentName: TEdit
      Left = 21
      Top = 117
      Width = 103
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 4
    end
    object edtBirthDate: TEdit
      Left = 128
      Top = 117
      Width = 98
      Height = 21
      ImeName = 'Microsoft IME 2010'
      MaxLength = 8
      NumbersOnly = True
      TabOrder = 5
      OnChange = edtBirthDateChange
    end
    object edtTel: TEdit
      Left = 21
      Top = 156
      Width = 133
      Height = 21
      ImeName = 'Microsoft IME 2010'
      MaxLength = 13
      NumbersOnly = True
      TabOrder = 7
      OnChange = edtTelChange
    end
    object edtAddr: TEdit
      Left = 21
      Top = 195
      Width = 322
      Height = 21
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      MaxLength = 50
      TabOrder = 9
    end
    object Panel1: TPanel
      Left = 21
      Top = 278
      Width = 80
      Height = 27
      TabOrder = 11
      object chkMon1: TCheckBox
        Tag = 1
        Left = 19
        Top = 5
        Width = 52
        Height = 17
        Caption = '1'#50900
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkMon1Click
      end
    end
    object Panel2: TPanel
      Left = 101
      Top = 278
      Width = 80
      Height = 27
      TabOrder = 12
      object chkMon2: TCheckBox
        Tag = 2
        Left = 17
        Top = 5
        Width = 52
        Height = 17
        Caption = '2'#50900
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkMon1Click
      end
    end
    object Panel3: TPanel
      Left = 181
      Top = 278
      Width = 80
      Height = 27
      TabOrder = 13
      object chkMon3: TCheckBox
        Tag = 3
        Left = 18
        Top = 5
        Width = 52
        Height = 17
        Caption = '3'#50900
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkMon1Click
      end
    end
    object Panel4: TPanel
      Left = 261
      Top = 278
      Width = 82
      Height = 27
      TabOrder = 21
      object lblPrice: TLabel
        Left = 17
        Top = 6
        Width = 52
        Height = 13
        Caption = #52509#49688#44053#47308
      end
    end
    object Panel8: TPanel
      Left = 261
      Top = 305
      Width = 82
      Height = 27
      TabOrder = 22
      object edtPrice: TcxCurrencyEdit
        Left = 3
        Top = 2
        TabStop = False
        EditValue = 30000.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        TabOrder = 0
        Width = 75
      end
    end
    object Panel7: TPanel
      Left = 181
      Top = 305
      Width = 80
      Height = 27
      TabOrder = 16
      object edtMon3: TcxCurrencyEdit
        Left = 6
        Top = 2
        EditValue = 10000.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        Properties.OnEditValueChanged = edtMon1PropertiesEditValueChanged
        TabOrder = 0
        Width = 68
      end
    end
    object Panel6: TPanel
      Left = 101
      Top = 305
      Width = 80
      Height = 27
      TabOrder = 15
      object edtMon2: TcxCurrencyEdit
        Left = 6
        Top = 2
        EditValue = 10000.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        Properties.OnEditValueChanged = edtMon1PropertiesEditValueChanged
        TabOrder = 0
        Width = 68
      end
    end
    object Panel5: TPanel
      Left = 21
      Top = 305
      Width = 80
      Height = 27
      TabOrder = 14
      object edtMon1: TcxCurrencyEdit
        Left = 6
        Top = 2
        EditValue = 10000.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        Properties.OnEditValueChanged = edtMon1PropertiesEditValueChanged
        TabOrder = 0
        Width = 68
      end
    end
    object edtPayWay: TcxImageComboBox
      Left = 79
      Top = 340
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
        end
        item
          Description = #52852#46300
          Value = 3
        end
        item
          Description = #51060#52404
          Value = 4
        end>
      TabOrder = 17
      Width = 95
    end
    object edtCashReceiptNo: TcxTextEdit
      Left = 118
      Top = 362
      TabOrder = 18
      Width = 135
    end
    object chkCashReceipt: TCheckBox
      Left = 258
      Top = 364
      Width = 93
      Height = 17
      Caption = #50689#49688#51613#48156#44553
      TabOrder = 19
      OnClick = chkCashReceiptClick
    end
  end
  object btnSave: TBitBtn
    Left = 113
    Top = 408
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
    Left = 188
    Top = 408
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
end
