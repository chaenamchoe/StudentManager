object fmLectureEdit: TfmLectureEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44053#51340' '#46321#47197'/'#49688#51221
  ClientHeight = 443
  ClientWidth = 437
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
    Width = 421
    Height = 427
    Caption = #44053#51032' '#46321#47197'/'#49688#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 26
      Height = 13
      Caption = #45380#46020
    end
    object Label2: TLabel
      Left = 83
      Top = 24
      Width = 26
      Height = 13
      Caption = #48516#44592
    end
    object Label3: TLabel
      Left = 127
      Top = 24
      Width = 39
      Height = 13
      Caption = #44053#51340#47749
    end
    object Label6: TLabel
      Left = 359
      Top = 109
      Width = 26
      Height = 13
      Caption = #44060#50900
    end
    object Label7: TLabel
      Left = 154
      Top = 109
      Width = 52
      Height = 13
      Caption = #44060#44053#51068#51088
    end
    object Label8: TLabel
      Left = 16
      Top = 147
      Width = 69
      Height = 13
      Caption = #44053#49324#47749'('#50900'1)'
    end
    object Label9: TLabel
      Left = 346
      Top = 231
      Width = 52
      Height = 13
      Caption = #49688#44053#47308#44228
    end
    object Label10: TLabel
      Left = 291
      Top = 148
      Width = 39
      Height = 13
      Caption = #44053#51032#49892
    end
    object Label14: TLabel
      Left = 16
      Top = 110
      Width = 52
      Height = 13
      Caption = #49884#51089#49884#44036
    end
    object Label15: TLabel
      Left = 84
      Top = 110
      Width = 52
      Height = 13
      Caption = #51333#47308#49884#44036
    end
    object Label4: TLabel
      Left = 256
      Top = 109
      Width = 52
      Height = 13
      Caption = #51333#44053#51068#51088
    end
    object Label5: TLabel
      Left = 359
      Top = 24
      Width = 26
      Height = 13
      Caption = #51221#50896
    end
    object Label11: TLabel
      Left = 16
      Top = 283
      Width = 104
      Height = 13
      Caption = #44053#49324#49688#45817#50836#50984'(%):'
    end
    object Label12: TLabel
      Left = 215
      Top = 348
      Width = 95
      Height = 13
      Caption = #44053#49324#48320#44221#51201#50857#50900':'
      Visible = False
    end
    object Label13: TLabel
      Left = 316
      Top = 24
      Width = 17
      Height = 13
      Caption = 'No'
    end
    object lblMon1: TLabel
      Left = 32
      Top = 231
      Width = 69
      Height = 13
      Caption = #49688#44053#47308'('#50900'1)'
    end
    object lblMon2: TLabel
      Left = 125
      Top = 231
      Width = 69
      Height = 13
      Caption = #49688#44053#47308'('#50900'2)'
    end
    object lblMon3: TLabel
      Left = 218
      Top = 231
      Width = 69
      Height = 13
      Caption = #49688#44053#47308'('#50900'3)'
    end
    object Label16: TLabel
      Left = 109
      Top = 147
      Width = 69
      Height = 13
      Caption = #44053#49324#47749'('#50900'2)'
    end
    object Label17: TLabel
      Left = 202
      Top = 147
      Width = 69
      Height = 13
      Caption = #44053#49324#47749'('#50900'3)'
    end
    object Label18: TLabel
      Left = 217
      Top = 283
      Width = 56
      Height = 13
      Caption = #44053#51340#49345#53468':'
    end
    object Label19: TLabel
      Left = 31
      Top = 189
      Width = 69
      Height = 13
      Caption = #44053#51032#51068'('#50900'1)'
    end
    object Label20: TLabel
      Left = 125
      Top = 189
      Width = 69
      Height = 13
      Caption = #44053#51032#51068'('#50900'2)'
    end
    object Label21: TLabel
      Left = 218
      Top = 189
      Width = 69
      Height = 13
      Caption = #44053#51032#51068'('#50900'3)'
    end
    object Label22: TLabel
      Left = 346
      Top = 189
      Width = 52
      Height = 13
      Caption = #44053#51032#51068#44228
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 64
      Width = 385
      Height = 39
      Caption = #50836#51068#49440#53469
      TabOrder = 6
      object CheckBox1: TCheckBox
        Tag = 1
        Left = 10
        Top = 15
        Width = 34
        Height = 17
        Caption = #50900
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Tag = 2
        Left = 61
        Top = 15
        Width = 34
        Height = 17
        Caption = #54868
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object CheckBox3: TCheckBox
        Tag = 3
        Left = 111
        Top = 15
        Width = 34
        Height = 17
        Caption = #49688
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object CheckBox4: TCheckBox
        Tag = 4
        Left = 161
        Top = 15
        Width = 34
        Height = 17
        Caption = #47785
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object CheckBox5: TCheckBox
        Tag = 5
        Left = 212
        Top = 15
        Width = 34
        Height = 17
        Caption = #44552
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object CheckBox6: TCheckBox
        Tag = 6
        Left = 263
        Top = 15
        Width = 34
        Height = 17
        Caption = #53664
        TabOrder = 5
        OnClick = CheckBox1Click
      end
      object CheckBox7: TCheckBox
        Tag = 7
        Left = 313
        Top = 15
        Width = 34
        Height = 17
        Caption = #51068
        TabOrder = 6
        OnClick = CheckBox1Click
      end
    end
    object edtWeekTemp: TcxTextEdit
      Left = 264
      Top = 367
      TabStop = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      TabOrder = 23
      Visible = False
      Width = 121
    end
    object edtWeekCount: TcxTextEdit
      Left = 203
      Top = 367
      TabStop = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      TabOrder = 24
      Visible = False
      Width = 56
    end
    object edtYear: TcxSpinEdit
      Left = 16
      Top = 37
      Properties.ImmediatePost = True
      Properties.MaxValue = 9999.000000000000000000
      Properties.MinValue = 2000.000000000000000000
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Value = 2013
      Width = 65
    end
    object edtKisu: TcxSpinEdit
      Left = 82
      Top = 37
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = edtKisuPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Value = 1
      Width = 44
    end
    object edtName: TcxTextEdit
      Left = 182
      Top = 8
      TabStop = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Visible = False
      Width = 125
    end
    object edtStartTime: TcxLookupComboBox
      Left = 16
      Top = 123
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'TIME_STR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_TIME_START
      Properties.OnEditValueChanged = edtStartTimePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Width = 65
    end
    object edtEndTime: TcxLookupComboBox
      Left = 84
      Top = 123
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'TIME_STR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_TIME_END
      Properties.OnEditValueChanged = edtEndTimePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Width = 65
    end
    object edtMonth: TcxSpinEdit
      Left = 359
      Top = 123
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      Value = 1
      Width = 42
    end
    object edtStartDate: TcxDateEdit
      Left = 154
      Top = 123
      Properties.DateOnError = deNull
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseNullString = True
      Properties.OnEditValueChanged = edtStartDatePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Width = 101
    end
    object edtTeacher: TcxLookupComboBox
      Left = 16
      Top = 161
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'T_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_TEACHER_LOOK
      Properties.OnEditValueChanged = edtTeacherPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 12
      Width = 85
    end
    object edtClassroom: TcxLookupComboBox
      Left = 291
      Top = 161
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'C_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_CLASSROOM
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 15
      Width = 110
    end
    object edtTime: TcxTextEdit
      Left = 17
      Top = 367
      TabStop = False
      TabOrder = 25
      Visible = False
      Width = 43
    end
    object edtTimeStr: TcxTextEdit
      Left = 66
      Top = 367
      TabStop = False
      TabOrder = 26
      Visible = False
      Width = 104
    end
    object edtEndDate: TcxDateEdit
      Left = 256
      Top = 123
      Properties.DateOnError = deNull
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseNullString = True
      Properties.OnEditValueChanged = edtEndDatePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Width = 101
    end
    object edtPrice: TcxCurrencyEdit
      Left = 304
      Top = 245
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.HideSelection = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 16
      Width = 97
    end
    object edtMen: TcxSpinEdit
      Left = 359
      Top = 37
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.UseNullString = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Value = 10
      Width = 45
    end
    object edtSudangPercent: TEdit
      Left = 125
      Top = 280
      Width = 49
      Height = 21
      ImeName = 'Microsoft IME 2010'
      NumbersOnly = True
      TabOrder = 20
      Text = '70'
    end
    object btnSave: TBitBtn
      Left = 136
      Top = 307
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
      NumGlyphs = 2
      TabOrder = 21
      OnClick = btnSaveClick
    end
    object BitBtn2: TBitBtn
      Left = 217
      Top = 307
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 22
    end
    object cbChangeMonth: TcxImageComboBox
      Left = 316
      Top = 344
      EditValue = 0
      Properties.Items = <
        item
          Description = #50630#51020
          ImageIndex = 0
          Value = 0
        end
        item
          Description = '1'#50900
          Value = 1
        end
        item
          Description = '2'#50900
          Value = 2
        end
        item
          Description = '3'#50900
          Value = 3
        end
        item
          Description = '4'#50900
          Value = 4
        end
        item
          Description = '5'#50900
          Value = 5
        end
        item
          Description = '6'#50900
          Value = 6
        end
        item
          Description = '7'#50900
          Value = 7
        end
        item
          Description = '8'#50900
          Value = 8
        end
        item
          Description = '9'#50900
          Value = 9
        end
        item
          Description = '10'#50900
          Value = 10
        end
        item
          Description = '11'#50900
          Value = 11
        end
        item
          Description = '12'#50900
          Value = 12
        end>
      Properties.OnEditValueChanged = cbChangeMonthPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 27
      Visible = False
      Width = 85
    end
    object PanelMonthDays: TPanel
      Left = 9
      Top = 394
      Width = 401
      Height = 24
      BevelOuter = bvNone
      TabOrder = 28
      Visible = False
      object lblMonth1: TLabel
        Left = 7
        Top = 5
        Width = 56
        Height = 13
        Caption = #51201#50857#48169#49885':'
      end
      object lblMonth2: TLabel
        Left = 126
        Top = 5
        Width = 82
        Height = 13
        Caption = #45817#50900#44053#51032#51068#49688':'
      end
      object lblMonth3: TLabel
        Left = 265
        Top = 5
        Width = 82
        Height = 13
        Caption = #49352#44053#49324#44053#51032#51068':'
      end
      object lblMonthDays: TLabel
        Left = 215
        Top = 5
        Width = 22
        Height = 13
        Caption = '0'#51068
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtThirdMonth: TcxSpinEdit
        Left = 350
        Top = 1
        Properties.Alignment.Horz = taCenter
        Properties.AssignedValues.MinValue = True
        Properties.ImmediatePost = True
        Properties.MaxValue = 999.000000000000000000
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseNullString = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 42
      end
      object cbChangeKind: TcxImageComboBox
        Left = 64
        Top = 1
        EditValue = 0
        Properties.Items = <
          item
            Description = #50900#48324
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #51068#48324
            Value = 1
          end>
        Properties.OnEditValueChanged = cbChangeKindPropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 1
        Width = 52
      end
    end
    object edtSecondMonth: TcxSpinEdit
      Left = 94
      Top = 345
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 29
      Visible = False
      Width = 42
    end
    object edtIDX: TcxSpinEdit
      Left = 314
      Top = 37
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Value = 1
      Width = 44
    end
    object lcbLecture: TcxLookupComboBox
      Left = 127
      Top = 37
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'LECTURE_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_lecture_list
      Properties.OnEditValueChanged = lcbLecturePropertiesEditValueChanged
      TabOrder = 2
      Width = 187
    end
    object edtMonth1Price: TcxCurrencyEdit
      Left = 16
      Top = 245
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMonth1PricePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 17
      Width = 85
    end
    object edtMonth2Price: TcxCurrencyEdit
      Left = 109
      Top = 245
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMonth1PricePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 18
      Width = 85
    end
    object edtMonth3Price: TcxCurrencyEdit
      Left = 202
      Top = 245
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMonth1PricePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 19
      Width = 85
    end
    object edtTeacher2: TcxLookupComboBox
      Left = 109
      Top = 161
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'T_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_TEACHER_LOOK
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 13
      Width = 85
    end
    object edtTeacher3: TcxLookupComboBox
      Left = 202
      Top = 161
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'T_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_TEACHER_LOOK
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 14
      Width = 85
    end
    object IS_ACTIVE: TcxImageComboBox
      Left = 279
      Top = 276
      EditValue = 0
      Properties.Items = <
        item
          Description = #49688#44053#51473
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #55092#44053#51473
          Value = 1
        end>
      TabOrder = 30
      Width = 85
    end
    object edtMonth1Days: TcxCurrencyEdit
      Left = 16
      Top = 203
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMonth1DaysPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 31
      Width = 85
    end
    object edtMonth2Days: TcxCurrencyEdit
      Left = 109
      Top = 203
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMonth1DaysPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 32
      Width = 85
    end
    object edtMonth3Days: TcxCurrencyEdit
      Left = 202
      Top = 203
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMonth1DaysPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 33
      Width = 85
    end
    object edtMonthTotalDays: TcxCurrencyEdit
      Left = 304
      Top = 203
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.HideSelection = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 34
      Width = 97
    end
  end
end
