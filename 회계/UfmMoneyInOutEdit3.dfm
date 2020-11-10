object fmMoneyInOutEdit3: TfmMoneyInOutEdit3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #51648#52636#51088#47308' '#46321#47197
  ClientHeight = 334
  ClientWidth = 338
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
    AlignWithMargins = True
    Left = 5
    Top = 10
    Width = 328
    Height = 319
    Margins.Left = 5
    Margins.Top = 10
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Caption = #49688#51077'/'#51648#52636' '#45236#50669
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 26
      Height = 13
      Caption = #51068#51088
    end
    object Label2: TLabel
      Left = 24
      Top = 166
      Width = 26
      Height = 13
      Caption = #51201#50836
      FocusControl = edtJukyo
    end
    object Label4: TLabel
      Left = 24
      Top = 74
      Width = 26
      Height = 13
      Caption = #49464#48512
    end
    object Label5: TLabel
      Left = 24
      Top = 119
      Width = 39
      Height = 13
      Caption = #54200#49457#47785
    end
    object Label6: TLabel
      Left = 165
      Top = 119
      Width = 39
      Height = 13
      Caption = #53685#44228#47785
    end
    object Label7: TLabel
      Left = 212
      Top = 210
      Width = 84
      Height = 13
      Caption = #49688#51077'/'#51648#52636#44552#50529
      FocusControl = edtOut
    end
    object Label8: TLabel
      Left = 24
      Top = 209
      Width = 26
      Height = 13
      Caption = #53685#51109
    end
    object Label3: TLabel
      Left = 165
      Top = 30
      Width = 58
      Height = 13
      Caption = #49688#51077'/'#51648#52636
    end
    object cbItem: TcxDBLookupComboBox
      Left = 24
      Top = 90
      DataBinding.DataField = 'ACC_ITEM'
      DataBinding.DataSource = d_temp
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'ITEM_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dm.d_account_item
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 166
    end
    object cbSubitem: TcxDBLookupComboBox
      Left = 24
      Top = 135
      DataBinding.DataField = 'acc_subitem'
      DataBinding.DataSource = d_temp
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'SUB_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dm.d_account_subitem
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 126
    end
    object cdDetail: TcxDBLookupComboBox
      Left = 165
      Top = 135
      DataBinding.DataField = 'acc_detail'
      DataBinding.DataSource = d_temp
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DETAIL_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dm.d_account_detail
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 131
    end
    object edtJukyo: TcxDBTextEdit
      Left = 24
      Top = 182
      DataBinding.DataField = 'm_jukyo'
      DataBinding.DataSource = d_temp
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 272
    end
    object btnSave: TBitBtn
      Left = 70
      Top = 267
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
      TabOrder = 7
      OnClick = btnSaveClick
    end
    object btnCancel: TBitBtn
      Left = 151
      Top = 267
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 8
    end
    object edtDate: TcxDBDateEdit
      Left = 24
      Top = 48
      DataBinding.DataField = 'm_date'
      DataBinding.DataSource = d_temp
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 126
    end
    object edtOut: TcxDBCalcEdit
      Left = 165
      Top = 226
      DataBinding.DataField = 'm_out'
      DataBinding.DataSource = d_temp
      Properties.DisplayFormat = '#,'
      Properties.ImmediatePost = True
      Properties.QuickClose = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Width = 131
    end
    object cbKind: TcxDBImageComboBox
      Left = 165
      Top = 47
      DataBinding.DataField = 'm_kind'
      DataBinding.DataSource = d_temp
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #49688#51077
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #51648#52636
          Value = 2
        end>
      Properties.OnEditValueChanged = cbKindPropertiesEditValueChanged
      TabOrder = 1
      Width = 84
    end
    object cbBankKind: TcxImageComboBox
      Left = 24
      Top = 225
      EditValue = 1
      Properties.Items = <
        item
          Description = #49688#44053#47308#44288#47532#53685#51109
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #50868#50689#48708#44288#47532#53685#51109'1'
          Value = 2
        end
        item
          Description = #50868#50689#48708#44288#47532#53685#51109'2'
          Value = 3
        end>
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 9
      Width = 131
    end
  end
  object dxTemp: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 240
    Top = 264
    object dxTempm_date: TStringField
      FieldName = 'm_date'
      Size = 10
    end
    object dxTempacc_item: TIntegerField
      FieldName = 'acc_item'
    end
    object dxTempacc_subitem: TIntegerField
      FieldName = 'acc_subitem'
    end
    object dxTempacc_detail: TIntegerField
      FieldName = 'acc_detail'
    end
    object dxTempm_jukyo: TStringField
      FieldName = 'm_jukyo'
      Size = 50
    end
    object dxTempm_in: TFloatField
      FieldName = 'm_in'
    end
    object dxTempm_out: TFloatField
      FieldName = 'm_out'
    end
    object dxTempm_kind: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'm_kind'
    end
    object dxTempid: TIntegerField
      FieldName = 'id'
    end
    object dxTempreg_lecture_id: TStringField
      FieldName = 'reg_lecture_id'
      Size = 17
    end
  end
  object d_temp: TDataSource
    DataSet = dxTemp
    Left = 280
    Top = 264
  end
end
