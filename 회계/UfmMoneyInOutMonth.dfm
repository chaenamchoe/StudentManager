object fmMoneyInOutMonth: TfmMoneyInOutMonth
  Left = 0
  Top = 0
  Caption = #49688#51077#51648#52636#54788#54889'('#44592#44036#48324')'
  ClientHeight = 629
  ClientWidth = 1108
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
    Width = 1108
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 7
      Width = 61
      Height = 13
      Caption = #51312#54924#44592#44036':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 205
      Top = 8
      Width = 11
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnRetrieve: TBitBtn
      Left = 417
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
      TabOrder = 0
      OnClick = btnRetrieveClick
    end
    object btnAdd: TBitBtn
      Left = 490
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
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnEdit: TBitBtn
      Left = 551
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
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnDelete: TBitBtn
      Left = 612
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
      TabOrder = 3
      OnClick = btnDeleteClick
    end
    object btnExport: TBitBtn
      Left = 895
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
      TabOrder = 4
      OnClick = btnExportClick
    end
    object btnPrint: TBitBtn
      Left = 1000
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
      TabOrder = 5
      OnClick = btnPrintClick
    end
    object cbYear: TComboBox
      Left = 77
      Top = 4
      Width = 66
      Height = 22
      Style = csOwnerDrawFixed
      ImeName = 'Microsoft IME 2010'
      TabOrder = 6
    end
    object cbMonth: TComboBox
      Left = 142
      Top = 4
      Width = 59
      Height = 22
      Style = csOwnerDrawFixed
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 7
      Text = '1'#50900
      OnChange = cbMonthChange
      Items.Strings = (
        '1'#50900
        '2'#50900
        '3'#50900
        '4'#50900
        '5'#50900
        '6'#50900
        '7'#50900
        '8'#50900
        '9'#50900
        '10'#50900
        '11'#50900
        '12'#50900)
    end
    object cbMonth2: TComboBox
      Left = 223
      Top = 4
      Width = 59
      Height = 22
      Style = csOwnerDrawFixed
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 8
      Text = '1'#50900
      OnChange = cbMonth2Change
      Items.Strings = (
        '1'#50900
        '2'#50900
        '3'#50900
        '4'#50900
        '5'#50900
        '6'#50900
        '7'#50900
        '8'#50900
        '9'#50900
        '10'#50900
        '11'#50900
        '12'#50900)
    end
    object cbBankKind: TcxLookupComboBox
      Left = 284
      Top = 4
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'BANK_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_bank_account
      Properties.OnEditValueChanged = cbBankKindPropertiesEditValueChanged
      EditValue = 1
      TabOrder = 9
      Width = 130
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1108
    Height = 600
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'SevenClassic'
    object gridMoneyInout: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellDblClick = gridMoneyInoutCellDblClick
      OnFocusedRecordChanged = gridMoneyInoutFocusedRecordChanged
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = d_MONEY_INOUT_WONJANG_MONTH
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,'
          Column = gridMoneyInoutIO_IN
        end
        item
          Format = '#,'
          Column = gridMoneyInoutIO_OUT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Column = gridMoneyInoutIO_IN
        end
        item
          Format = '#,'
          Column = gridMoneyInoutIO_OUT
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.MonthFormat = 'yyyy'#45380' mm'#50900
      DateTimeHandling.YearFormat = 'yyyy'#45380
      DateTimeHandling.DateFormat = 'yyyy-mm-dd'
      DateTimeHandling.Grouping = dtgByMonth
      DateTimeHandling.UseLongDateFormat = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      Styles.OnGetContentStyle = gridMoneyInoutStylesGetContentStyle
      object gridMoneyInoutColumn1: TcxGridDBColumn
        Caption = 'No'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gridMoneyInoutColumn1GetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 49
      end
      object gridMoneyInoutID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridMoneyInoutIO_DATE: TcxGridDBColumn
        Caption = #51068#51088
        DataBinding.FieldName = 'IO_DATE'
        Width = 92
      end
      object gridMoneyInoutIO_ITEM_ID: TcxGridDBColumn
        DataBinding.FieldName = 'IO_ITEM_ID'
        Visible = False
        Width = 132
      end
      object gridMoneyInoutIO_SUBITEM_ID: TcxGridDBColumn
        Caption = #49464#49464#54637'/'#54200#49457#47785
        DataBinding.FieldName = 'IO_SUBITEM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'SUB_NAME'
          end>
        Properties.ListSource = dm.d_acc_sublook
        Width = 109
      end
      object gridMoneyInoutIO_DETAIL_ID: TcxGridDBColumn
        Caption = #47785'/'#53685#44228#47785
        DataBinding.FieldName = 'IO_DETAIL_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DETAIL_NAME'
          end>
        Properties.ListSource = dm.d_acc_detaillook
        Width = 108
      end
      object gridMoneyInoutIO_JUKYO: TcxGridDBColumn
        Caption = #51201#50836
        DataBinding.FieldName = 'IO_JUKYO'
        OnGetDisplayText = gridMoneyInoutIO_JUKYOGetDisplayText
        Width = 268
      end
      object gridMoneyInoutIO_IN: TcxGridDBColumn
        Caption = #49688#51077#44552#50529
        DataBinding.FieldName = 'IO_IN'
        HeaderAlignmentHorz = taCenter
        Width = 137
      end
      object gridMoneyInoutIO_OUT: TcxGridDBColumn
        Caption = #51648#52636#44552#50529
        DataBinding.FieldName = 'IO_OUT'
        HeaderAlignmentHorz = taCenter
        Width = 146
      end
      object gridMoneyInoutIO_REST: TcxGridDBColumn
        Caption = #54788#51116#51092#50529
        DataBinding.FieldName = 'IO_REST'
        HeaderAlignmentHorz = taCenter
        Width = 142
      end
      object gridMoneyInoutIO_DONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'IO_DONG_ID'
        Visible = False
      end
      object gridMoneyInoutIO_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'IO_KIND'
        Visible = False
      end
      object gridMoneyInoutDATA_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'DATA_KIND'
        Visible = False
      end
      object gridMoneyInoutIO_REG_LECTURE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'IO_REG_LECTURE_ID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMoneyInout
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PrintTitle = 'test'
    Version = 0
    Left = 704
    Top = 416
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
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # / Pages #]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleFactor = 95
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42447.755604050920000000
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
  object MONEY_INOUT_WONJANG_MONTH: TUniStoredProc
    StoredProcName = 'MONEY_INOUT_WONJANG_MONTH'
    Connection = dm.UniConnection1
    Left = 224
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'BANK_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'START_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'END_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'IO_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IO_ITEM_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IO_SUBITEM_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IO_DETAIL_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IO_JUKYO'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'IO_IN'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'IO_OUT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'IO_REST'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IO_DONG_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'IO_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DATA_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IO_REG_LECTURE_ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'MONEY_INOUT_WONJANG_MONTH'
    object MONEY_INOUT_WONJANG_MONTHID: TIntegerField
      FieldName = 'ID'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_DATE: TDateField
      FieldName = 'IO_DATE'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_ITEM_ID: TIntegerField
      FieldName = 'IO_ITEM_ID'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_SUBITEM_ID: TIntegerField
      FieldName = 'IO_SUBITEM_ID'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_DETAIL_ID: TIntegerField
      FieldName = 'IO_DETAIL_ID'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_JUKYO: TStringField
      FieldName = 'IO_JUKYO'
      Size = 50
    end
    object MONEY_INOUT_WONJANG_MONTHIO_IN: TFloatField
      FieldName = 'IO_IN'
      DisplayFormat = '#,0'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_OUT: TFloatField
      FieldName = 'IO_OUT'
      DisplayFormat = '#,0'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_REST: TFloatField
      FieldName = 'IO_REST'
      DisplayFormat = '#,0'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_DONG_ID: TStringField
      FieldName = 'IO_DONG_ID'
      Size = 17
    end
    object MONEY_INOUT_WONJANG_MONTHIO_KIND: TSmallintField
      FieldName = 'IO_KIND'
    end
    object MONEY_INOUT_WONJANG_MONTHDATA_KIND: TIntegerField
      FieldName = 'DATA_KIND'
    end
    object MONEY_INOUT_WONJANG_MONTHIO_REG_LECTURE_ID: TStringField
      FieldName = 'IO_REG_LECTURE_ID'
      Size = 17
    end
  end
  object d_MONEY_INOUT_WONJANG_MONTH: TDataSource
    DataSet = MONEY_INOUT_WONJANG_MONTH
    Left = 224
    Top = 368
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clBlue
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 952
    Top = 488
  end
  object q_REGISTED_LECTURE: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO REGISTED_LECTURE'
      
        '  (ID, DONG_ID, LECTURE_ID, STUDENT_ID, P_DATE, PAY_AMOUNT, IS_D' +
        'C, PAY_KIND, R_DATE, OUT_AMOUNT, REG_KIND, PAY_WAY, PAYBACK_WAY,' +
        ' PAYBACK_BANK, PAYBACK_BANKID, OUT_KIND, PAYBACK_BANKOWNER)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :LECTURE_ID, :STUDENT_ID, :P_DATE, :PAY_AMOUNT' +
        ', :IS_DC, :PAY_KIND, :R_DATE, :OUT_AMOUNT, :REG_KIND, :PAY_WAY, ' +
        ':PAYBACK_WAY, :PAYBACK_BANK, :PAYBACK_BANKID, :OUT_KIND, :PAYBAC' +
        'K_BANKOWNER)')
    SQLDelete.Strings = (
      'DELETE FROM REGISTED_LECTURE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE REGISTED_LECTURE'
      'SET'
      
        '  ID = :ID, DONG_ID = :DONG_ID, LECTURE_ID = :LECTURE_ID, STUDEN' +
        'T_ID = :STUDENT_ID, P_DATE = :P_DATE, PAY_AMOUNT = :PAY_AMOUNT, ' +
        'IS_DC = :IS_DC, PAY_KIND = :PAY_KIND, R_DATE = :R_DATE, OUT_AMOU' +
        'NT = :OUT_AMOUNT, REG_KIND = :REG_KIND, PAY_WAY = :PAY_WAY, PAYB' +
        'ACK_WAY = :PAYBACK_WAY, PAYBACK_BANK = :PAYBACK_BANK, PAYBACK_BA' +
        'NKID = :PAYBACK_BANKID, OUT_KIND = :OUT_KIND, PAYBACK_BANKOWNER ' +
        '= :PAYBACK_BANKOWNER'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM REGISTED_LECTURE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, DONG_ID, LECTURE_ID, STUDENT_ID, P_DATE, PAY_AMOUNT, ' +
        'IS_DC, PAY_KIND, R_DATE, OUT_AMOUNT, REG_KIND, PAY_WAY, PAYBACK_' +
        'WAY, PAYBACK_BANK, PAYBACK_BANKID, OUT_KIND, PAYBACK_BANKOWNER F' +
        'ROM REGISTED_LECTURE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM REGISTED_LECTURE'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from REGISTED_LECTURE'
      'where id = :id')
    Left = 224
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
      end>
    object q_REGISTED_LECTUREID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_REGISTED_LECTUREDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_REGISTED_LECTURELECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_REGISTED_LECTURESTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object q_REGISTED_LECTUREP_DATE: TStringField
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REGISTED_LECTUREPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
    end
    object q_REGISTED_LECTUREIS_DC: TSmallintField
      FieldName = 'IS_DC'
    end
    object q_REGISTED_LECTUREPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
    end
    object q_REGISTED_LECTURER_DATE: TStringField
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REGISTED_LECTUREOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
    end
    object q_REGISTED_LECTUREREG_KIND: TSmallintField
      FieldName = 'REG_KIND'
    end
    object q_REGISTED_LECTUREPAY_WAY: TSmallintField
      FieldName = 'PAY_WAY'
    end
    object q_REGISTED_LECTUREPAYBACK_WAY: TSmallintField
      FieldName = 'PAYBACK_WAY'
    end
    object q_REGISTED_LECTUREPAYBACK_BANK: TStringField
      FieldName = 'PAYBACK_BANK'
    end
    object q_REGISTED_LECTUREPAYBACK_BANKID: TStringField
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object q_REGISTED_LECTUREOUT_KIND: TSmallintField
      FieldName = 'OUT_KIND'
    end
    object q_REGISTED_LECTUREPAYBACK_BANKOWNER: TStringField
      FieldName = 'PAYBACK_BANKOWNER'
      Size = 30
    end
  end
  object d_REGISTED_LECTURE: TDataSource
    DataSet = q_REGISTED_LECTURE
    Left = 224
    Top = 488
  end
  object q_STUDENTS: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO STUDENTS'
      
        '  (ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_KIND, BIGO, REG_' +
        'DATE, S_EMAIL, S_DONG, S_BIRTH, BANK_NAME, BANK_ID)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :S_NAME, :S_TEL, :S_ADDR, :S_SEX, :S_KIND, :BI' +
        'GO, :REG_DATE, :S_EMAIL, :S_DONG, :S_BIRTH, :BANK_NAME, :BANK_ID' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM STUDENTS'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE STUDENTS'
      'SET'
      
        '  ID = :ID, DONG_ID = :DONG_ID, S_NAME = :S_NAME, S_TEL = :S_TEL' +
        ', S_ADDR = :S_ADDR, S_SEX = :S_SEX, S_KIND = :S_KIND, BIGO = :BI' +
        'GO, REG_DATE = :REG_DATE, S_EMAIL = :S_EMAIL, S_DONG = :S_DONG, ' +
        'S_BIRTH = :S_BIRTH, BANK_NAME = :BANK_NAME, BANK_ID = :BANK_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM STUDENTS'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_KIND, BIGO, ' +
        'REG_DATE, S_EMAIL, S_DONG, S_BIRTH, BANK_NAME, BANK_ID FROM STUD' +
        'ENTS'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM STUDENTS'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from students'
      'where id = :student_id')
    Left = 384
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'student_id'
        ParamType = ptInput
      end>
    object q_STUDENTSID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_STUDENTSDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_STUDENTSS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_STUDENTSS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_STUDENTSS_ADDR: TStringField
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_STUDENTSS_SEX: TStringField
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_STUDENTSS_KIND: TSmallintField
      FieldName = 'S_KIND'
    end
    object q_STUDENTSBIGO: TStringField
      FieldName = 'BIGO'
      Size = 50
    end
    object q_STUDENTSREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_STUDENTSS_EMAIL: TStringField
      FieldName = 'S_EMAIL'
      Size = 50
    end
    object q_STUDENTSS_DONG: TStringField
      FieldName = 'S_DONG'
      Size = 17
    end
    object q_STUDENTSS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_STUDENTSBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object q_STUDENTSBANK_ID: TStringField
      FieldName = 'BANK_ID'
      Size = 30
    end
  end
  object d_STUDENTS: TDataSource
    DataSet = q_STUDENTS
    Left = 384
    Top = 488
  end
  object q_lecture_active: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_ACTIVE'
      '  (L_NAME)'
      'VALUES'
      '  (:L_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM LECTURE_ACTIVE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LECTURE_ACTIVE'
      'SET'
      '  L_NAME = :L_NAME'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LECTURE_ACTIVE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT L_NAME FROM LECTURE_ACTIVE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LECTURE_ACTIVE'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select l_name from LECTURE_ACTIVE'
      'where id = :lecture_id;')
    Left = 80
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'lecture_id'
        ParamType = ptInput
      end>
    object q_lecture_activeL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
  end
  object d_lecture_active: TDataSource
    DataSet = q_lecture_active
    Left = 80
    Top = 488
  end
end
