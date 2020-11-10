object fmExpenseBudgetEdit2: TfmExpenseBudgetEdit2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49464#52636#50696#49328' '#49688#51221
  ClientHeight = 309
  ClientWidth = 456
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
    AlignWithMargins = True
    Left = 5
    Top = 10
    Width = 446
    Height = 294
    Margins.Left = 5
    Margins.Top = 10
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Caption = #49464#52636#50696#49328' '#49688#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 52
      Height = 13
      Caption = #54924#44228#45380#46020
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 125
      Width = 138
      Height = 13
      Caption = #49328#52636#44592#52488' '#46608#45716' '#51665#54665#45236#50669
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 24
      Top = 169
      Width = 26
      Height = 13
      Caption = #44552#50529
      FocusControl = cxDBCalcEdit1
    end
    object Label4: TLabel
      Left = 24
      Top = 78
      Width = 26
      Height = 13
      Caption = #49464#48512
      FocusControl = cxDBSpinEdit1
    end
    object Label5: TLabel
      Left = 190
      Top = 78
      Width = 39
      Height = 13
      Caption = #54200#49457#47785
      FocusControl = cxDBSpinEdit1
    end
    object Label6: TLabel
      Left = 297
      Top = 78
      Width = 39
      Height = 13
      Caption = #53685#44228#47785
      FocusControl = cxDBSpinEdit1
    end
    object Label7: TLabel
      Left = 152
      Top = 170
      Width = 52
      Height = 13
      Caption = #48708#44256#49324#54637
      FocusControl = cxDBTextEdit1
    end
    object Label8: TLabel
      Left = 103
      Top = 32
      Width = 52
      Height = 13
      Caption = #50696#49328#44396#48516
      FocusControl = cxDBSpinEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 24
      Top = 48
      DataBinding.DataField = 'ACC_YEAR'
      DataBinding.DataSource = d_temp
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 73
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 24
      Top = 94
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
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 190
      Top = 94
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
      Width = 107
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 297
      Top = 94
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
      Width = 122
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 24
      Top = 141
      DataBinding.DataField = 'acc_descript'
      DataBinding.DataSource = d_temp
      TabOrder = 5
      Width = 395
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 24
      Top = 185
      DataBinding.DataField = 'acc_expense'
      DataBinding.DataSource = d_temp
      Properties.QuickClose = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      TabOrder = 6
      Width = 129
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 152
      Top = 185
      DataBinding.DataField = 'acc_bigo'
      DataBinding.DataSource = d_temp
      TabOrder = 7
      Width = 267
    end
    object btnSave: TBitBtn
      Left = 141
      Top = 243
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
      TabOrder = 8
      OnClick = btnSaveClick
    end
    object btnCancel: TBitBtn
      Left = 222
      Top = 243
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 9
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 103
      Top = 48
      DataBinding.DataField = 'acc_kind'
      DataBinding.DataSource = d_temp
      Properties.Items = <
        item
          Description = #48376#50696#49328
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #49688#51221#50696#49328
          Value = 2
        end
        item
          Description = #52628#44032#44221#51221#50696#49328
          Value = 3
        end>
      TabOrder = 1
      Width = 121
    end
  end
  object dxTemp: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 32
    Top = 232
    object dxTempacc_year: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'acc_year'
    end
    object dxTempacc_item: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'acc_item'
    end
    object dxTempacc_subitem: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'acc_subitem'
    end
    object dxTempacc_detail: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'acc_detail'
    end
    object dxTempacc_descript: TStringField
      FieldName = 'acc_descript'
      Size = 200
    end
    object dxTempacc_expense: TFloatField
      FieldName = 'acc_expense'
    end
    object dxTempacc_bigo: TStringField
      FieldName = 'acc_bigo'
      Size = 100
    end
    object dxTempacc_kind: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'acc_kind'
    end
  end
  object d_temp: TDataSource
    DataSet = dxTemp
    Left = 96
    Top = 232
  end
end
