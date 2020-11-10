object fmMoneyByItem: TfmMoneyByItem
  Left = 0
  Top = 0
  Caption = #54637#47785#48324' '#49688#51077#51648#52636
  ClientHeight = 628
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 33
      Height = 13
      Caption = #44592#44036':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 255
      Top = 8
      Width = 33
      Height = 13
      Caption = #53685#51109':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnRetrieve: TBitBtn
      Left = 423
      Top = 2
      Width = 60
      Height = 25
      Caption = #51312#54924
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
        FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
        FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
        FF0A444444444444444D444444444444444A444444444444444D}
      TabOrder = 2
      OnClick = btnRetrieveClick
    end
    object btnExport: TBitBtn
      Left = 807
      Top = 2
      Width = 99
      Height = 25
      Caption = #50641#49472#51200#51109
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADADADAD00000000000000006666007777777706E
        EF0AA0E6666606EEF0ADDA0E66606EEF060AADA0E606EEF0000DDADA006EEF0A
        DADAADAD06EEF00DADADDAD06EEF0670DADAAD06EEF0E6670DADD06EEF0A0E66
        70DA0FFFF0ADA0EEEE0D00000ADADA00000AADADADADADADADAD}
      TabOrder = 3
      OnClick = btnExportClick
    end
    object edtStartDate: TcxDateEdit
      Left = 53
      Top = 4
      Properties.ImmediatePost = True
      TabOrder = 0
      Width = 97
    end
    object edtEndDate: TcxDateEdit
      Left = 150
      Top = 4
      Properties.ImmediatePost = True
      TabOrder = 1
      Width = 97
    end
    object btnPrint: TBitBtn
      Left = 912
      Top = 2
      Width = 63
      Height = 25
      Caption = #52636#47141
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000084
        840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
        3333330000000000033330313131313010330000000000000103013131355531
        0003031313122213010300000000000001100131313131301010300000000003
        0100330666666660301044446000002203033333066666663033444444000002
        2203333333066666633044444444000000003333333333333333}
      TabOrder = 4
      OnClick = btnPrintClick
    end
    object cbBankKind: TcxImageComboBox
      Left = 291
      Top = 4
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
      TabOrder = 5
      Width = 128
    end
    object chkColumnTotal: TCheckBox
      Left = 496
      Top = 6
      Width = 81
      Height = 17
      Caption = #54637#47785#54633#44228
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = chkColumnTotalClick
    end
    object chkColumnGrandTotal: TCheckBox
      Left = 602
      Top = 6
      Width = 97
      Height = 17
      Caption = #51204#52404#54637#47785#54633#44228
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = chkColumnGrandTotalClick
    end
  end
  object cxDBPivotGrid1: TcxDBPivotGrid
    Left = 0
    Top = 29
    Width = 1020
    Height = 599
    Align = alClient
    DataSource = dm.d_money_inout2
    Groups = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsCustomize.Filtering = False
    OptionsCustomize.QuickPrefiltering = False
    OptionsData.SummaryNullIgnore = True
    OptionsView.ColumnFields = False
    OptionsView.ColumnGrandTotalText = #52509#44228
    OptionsView.ColumnGrandTotalWidth = 132
    OptionsView.ColumnTotalsLocation = ctlNear
    OptionsView.DataFields = False
    OptionsView.FilterFields = False
    OptionsView.FilterSeparator = False
    OptionsView.HeaderFilterButtonShowMode = pgfbmSmartTag
    OptionsView.RowFields = False
    OptionsView.RowGrandTotalText = #52509#44228
    OptionsView.RowGrandTotalWidth = 676
    OptionsView.RowTotalsLocation = rtlNear
    OptionsView.ShowHeaderFilterButtons = pgsfbWhenSelected
    PopupMenus.GroupValueMenu.Items = []
    TabOrder = 1
    object cxDBPivotGridYear: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      DataBinding.FieldName = 'IO_DATE'
      DisplayFormat = 'yyyy'
      PropertiesClassName = 'TcxDateEditProperties'
      GroupInterval = giDateYear
      GroupIntervalRange = 1
      SortOrder = soAscending
      Visible = True
      Width = 70
      UniqueName = 'IO_DATE'
    end
    object cxDBPivotGridIO_DATE: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #51068#51088
      DataBinding.FieldName = 'IO_DATE'
      PropertiesClassName = 'TcxDateEditProperties'
      GroupInterval = giDateMonth
      GroupIntervalRange = 1
      SortOrder = soAscending
      Visible = True
      Width = 60
      UniqueName = #51068#51088
    end
    object cxDBPivotGridSUBITEM_ID: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #49464#48512#47448
      DataBinding.FieldName = 'IO_SUBITEM_ID'
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.Alignment.Horz = taCenter
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'SUB_NAME'
        end>
      Properties.ListSource = dm.d_acc_sublook
      Visible = True
      UniqueName = #49464#48512#47448
    end
    object cxDBPivotGridDETAIL_ID: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #49464#54637#47785
      DataBinding.FieldName = 'IO_DETAIL_ID'
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.Alignment.Horz = taCenter
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DETAIL_NAME'
        end>
      Properties.ListSource = dm.d_acc_detaillook
      Visible = True
      UniqueName = #49464#54637#47785
    end
    object cxDBPivotGridJUKYO: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 3
      IsCaptionAssigned = True
      Caption = #51201#50836
      DataBinding.FieldName = 'IO_JUKYO'
      MinWidth = 50
      Visible = True
      Width = 200
      UniqueName = #51201#50836
    end
    object cxDBPivotGridIO_IN: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #44552#50529
      DataBinding.FieldName = 'PRICE'
      DisplayFormat = '#,'
      Visible = True
      UniqueName = #44552#50529
    end
    object cxDBPivotGridDay: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 2
      IsCaptionAssigned = True
      Caption = #51068
      DataBinding.FieldName = 'IO_DATE'
      DisplayFormat = 'dd'
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd'#51068
      GroupIntervalRange = 1
      SummaryType = stCount
      SortOrder = soAscending
      TotalsVisibility = tvNone
      Visible = True
      Width = 60
      UniqueName = #51068
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 216
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 624
    Top = 456
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page #]/[Total Pages]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42401.667090775460000000
      OptionsOnEveryPage.FilterBar = False
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      BuiltInReportLink = True
    end
  end
end
