object fmExpenseBudget: TfmExpenseBudget
  Left = 0
  Top = 0
  Caption = #49464#52636#50696#49328
  ClientHeight = 640
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = #45380#46020':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 114
      Top = 8
      Width = 33
      Height = 13
      Caption = #44396#48516':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object speYear: TSpinEdit
      Left = 52
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2013
    end
    object btnRetrieve: TBitBtn
      Left = 238
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
    object btnAdd: TBitBtn
      Left = 462
      Top = 2
      Width = 60
      Height = 25
      Hint = #46321#47197
      Caption = #46321#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
        DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
        DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
        DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnAddClick
    end
    object btnEdit: TBitBtn
      Left = 523
      Top = 2
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
      TabOrder = 4
      OnClick = btnEditClick
    end
    object btnDelete: TBitBtn
      Left = 584
      Top = 2
      Width = 60
      Height = 25
      Hint = #49325#51228
      Caption = #49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
        DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
        DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
        0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnDeleteClick
    end
    object btnExport: TBitBtn
      Left = 746
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
      TabOrder = 6
      OnClick = btnExportClick
    end
    object cbKind: TcxImageComboBox
      Left = 149
      Top = 4
      EditValue = 1
      Properties.ImmediatePost = True
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
          Description = #52628#44032#44221#51221
          Value = 3
        end>
      Properties.OnEditValueChanged = cbKindPropertiesEditValueChanged
      TabOrder = 1
      Width = 87
    end
    object CheckBox1: TCheckBox
      Left = 319
      Top = 7
      Width = 121
      Height = 17
      Caption = #54637#47785#48324#49548#44228#48372#44592
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = CheckBox1Click
    end
    object btnPrint: TBitBtn
      Left = 851
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
      TabOrder = 8
      OnClick = btnPrintClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 995
    Height = 611
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'SevenClassic'
    object gridExpense: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      OnCellDblClick = gridExpenseCellDblClick
      DataController.DataSource = dm.d_account_expense_budget
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
          Column = gridExpenseACC_EXPENSE
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object gridExpenseID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridExpenseACC_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'ACC_YEAR'
        Visible = False
      end
      object gridExpenseACC_ITEM: TcxGridDBColumn
        Caption = #49464#48512
        DataBinding.FieldName = 'ACC_ITEM'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'ITEM_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dm.d_acc_itemlook
        GroupIndex = 0
        Options.CellMerging = True
        Width = 137
      end
      object gridExpenseACC_SUBITEM: TcxGridDBColumn
        Caption = #54200#49457#47785
        DataBinding.FieldName = 'ACC_SUBITEM'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'SUB_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dm.d_acc_sublook
        GroupIndex = 1
        Options.CellMerging = True
        Width = 85
      end
      object gridExpenseACC_DETAIL: TcxGridDBColumn
        Caption = #53685#44228#47785
        DataBinding.FieldName = 'ACC_DETAIL'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DETAIL_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dm.d_acc_detaillook
        GroupIndex = 2
        Options.CellMerging = True
        Width = 84
      end
      object gridExpenseACC_BUDGET: TcxGridDBColumn
        Caption = #50696#49328#50529
        DataBinding.FieldName = 'ACC_BUDGET'
        Visible = False
        Options.CellMerging = True
        Width = 111
      end
      object gridExpenseACC_DESCRIPT: TcxGridDBColumn
        Caption = #49328#52636#44592#52488' '#46608#45716' '#51665#54665#45236#50669
        DataBinding.FieldName = 'ACC_DESCRIPT'
        Width = 407
      end
      object gridExpenseACC_EXPENSE: TcxGridDBColumn
        Caption = #49328#52636'/'#51665#54665' '#44552#50529
        DataBinding.FieldName = 'ACC_EXPENSE'
        HeaderAlignmentHorz = taRightJustify
        Styles.GroupSummary = cxStyle1
        Width = 120
      end
      object gridExpenseACC_BIGO: TcxGridDBColumn
        Caption = #48708#44256
        DataBinding.FieldName = 'ACC_BIGO'
        Width = 189
      end
      object gridExpenseACC_DONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ACC_DONG_ID'
        Visible = False
      end
      object gridExpenseACC_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'ACC_KIND'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridExpense
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 64
    Top = 120
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clBlue
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PrintTitle = 'test'
    Version = 0
    Left = 408
    Top = 400
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
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
      PrinterPage.ScaleFactor = 95
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42157.480893842590000000
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #49688#44053#51088' '#47532#49828#53944
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
end
