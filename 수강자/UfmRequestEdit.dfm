object fmRequestEdit: TfmRequestEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#49888#52397' '#46321#47197'/'#49688#51221
  ClientHeight = 456
  ClientWidth = 380
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
    Height = 385
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
      Top = 222
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
    object lblpayway: TLabel
      Left = 21
      Top = 331
      Width = 52
      Height = 13
      Caption = #44208#51116#48169#48277
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
      Top = 352
      Width = 91
      Height = 13
      Caption = #54788#44552#50689#49688#51613#48264#54840
    end
    object Label9: TLabel
      Left = 21
      Top = 246
      Width = 43
      Height = 13
      Caption = #46321#47197#50900':'
    end
    object edtPayDate: TcxDateEdit
      Left = 21
      Top = 37
      TabOrder = 0
      Width = 104
    end
    object ddlb_dckind: TcxLookupComboBox
      Left = 80
      Top = 219
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
      Width = 134
    end
    object edtStudentID: TcxTextEdit
      Left = 302
      Top = 8
      Enabled = False
      TabOrder = 20
      Visible = False
      Width = 59
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
    object edtPayWay: TcxImageComboBox
      Left = 79
      Top = 327
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
        end>
      TabOrder = 17
      Width = 95
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
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #46321#47197
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #45824#44592
          Value = 1
        end>
      Properties.OnEditValueChanged = cbPayKindPropertiesEditValueChanged
      TabOrder = 1
      Visible = False
      Width = 105
    end
    object cbLectureName: TcxLookupComboBox
      Left = 21
      Top = 76
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'L_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_lecture_lookstep
      Properties.OnEditValueChanged = cbLectureNamePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 212
    end
    object edtTel: TEdit
      Left = 21
      Top = 156
      Width = 133
      Height = 21
      Hint = #54616#51060#54536'(-)'#51012' '#48764#44256' '#49707#51088#47564' '#51077#47141' '
      ImeName = 'Microsoft IME 2010'
      MaxLength = 13
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnChange = edtTelChange
      OnEnter = edtTelEnter
    end
    object edtStudentName: TEdit
      Left = 21
      Top = 117
      Width = 103
      Height = 21
      Hint = #49688#44053#51088#47749#51012' '#51077#47141#54620' '#54980' '#50644#53552#53412#47484' '#52824#49464#50836'.'
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnEnter = edtStudentNameEnter
      OnExit = edtStudentNameExit
    end
    object edtBirthDate: TEdit
      Left = 128
      Top = 117
      Width = 98
      Height = 21
      Hint = '850204'#50752' '#44057#51060' '#49707#51088#47564' 6'#51088#47196' '#51077#47141
      ImeName = 'Microsoft IME 2010'
      MaxLength = 8
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnChange = edtBirthDateChange
      OnEnter = edtBirthDateEnter
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
    object edtCashReceiptNo: TcxTextEdit
      Left = 118
      Top = 349
      TabOrder = 18
      Width = 135
    end
    object chkCashReceipt: TCheckBox
      Left = 258
      Top = 351
      Width = 95
      Height = 17
      Caption = #50689#49688#51613#48156#44553
      TabOrder = 19
      OnClick = chkCashReceiptClick
    end
    object Panel1: TPanel
      Left = 21
      Top = 265
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
      Top = 265
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
      Top = 265
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
      Top = 265
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
    object Panel5: TPanel
      Left = 21
      Top = 292
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
    object Panel6: TPanel
      Left = 101
      Top = 292
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
    object Panel7: TPanel
      Left = 181
      Top = 292
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
    object Panel8: TPanel
      Left = 261
      Top = 292
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
  end
  object btnSave: TBitBtn
    Left = 201
    Top = 400
    Width = 75
    Height = 25
    Caption = #51200#51109
    Enabled = False
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
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object BitBtn2: TBitBtn
    Left = 276
    Top = 400
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
  object btnEditStudent: TBitBtn
    Left = 75
    Top = 400
    Width = 105
    Height = 25
    Caption = #49688#44053#51088#49688#51221
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
    TabOrder = 3
    OnClick = btnEditStudentClick
  end
  object btnSelect: TBitBtn
    Left = 39
    Top = 400
    Width = 29
    Height = 25
    Hint = #49688#44053#51088#49440#53469
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888008
      8888888888888090888888888888809908880888880880999088088000888099
      9908800880888099999088080008809999088008888080999088000088808099
      0888000888880090888800088800800088880000088088888888000000080888
      8888800000000888888888000008888888888888888888888888}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    OnClick = btnSelectClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 431
    Width = 380
    Height = 25
    Panels = <
      item
        Width = 50
      end>
  end
  object SP_CHECK_STUDENT_EXISTS: TUniStoredProc
    StoredProcName = 'SP_CHECK_STUDENT_EXISTS'
    Connection = dm.UniConnection1
    Left = 280
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'LEC_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'STD_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'RECORD_CNT'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'SP_CHECK_STUDENT_EXISTS'
    object SP_CHECK_STUDENT_EXISTSRECORD_CNT: TIntegerField
      FieldName = 'RECORD_CNT'
    end
  end
  object d_REQUEST_VIEW: TDataSource
    DataSet = SP_STUDENT_EXISTS_INQUATER
    Left = 328
    Top = 120
  end
  object SP_STUDENT_EXISTS_INQUATER: TUniStoredProc
    StoredProcName = 'SP_STUDENT_EXISTS_INQUATER'
    Connection = dm.UniConnection1
    Left = 328
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'JO_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'JO_STEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'JO_STUDENT'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'L_YEAR'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'L_STEP'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'S_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'S_TEL'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftFixedChar
        Name = 'S_BIRTH'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftFixedChar
        Name = 'P_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'REG_PRICE1'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'REG_PRICE2'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'REG_PRICE3'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'SP_STUDENT_EXISTS_INQUATER'
    object SP_STUDENT_EXISTS_INQUATERL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object SP_STUDENT_EXISTS_INQUATERL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object SP_STUDENT_EXISTS_INQUATERL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object SP_STUDENT_EXISTS_INQUATERS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 30
    end
    object SP_STUDENT_EXISTS_INQUATERS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object SP_STUDENT_EXISTS_INQUATERS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object SP_STUDENT_EXISTS_INQUATERP_DATE: TStringField
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object SP_STUDENT_EXISTS_INQUATERREG_PRICE1: TFloatField
      FieldName = 'REG_PRICE1'
      DisplayFormat = '#,0'
    end
    object SP_STUDENT_EXISTS_INQUATERREG_PRICE2: TFloatField
      FieldName = 'REG_PRICE2'
      DisplayFormat = '#,0'
    end
    object SP_STUDENT_EXISTS_INQUATERREG_PRICE3: TFloatField
      FieldName = 'REG_PRICE3'
      DisplayFormat = '#,0'
    end
  end
end
