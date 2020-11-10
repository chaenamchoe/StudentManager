object fmDongTotal: TfmDongTotal
  Left = 0
  Top = 0
  Caption = #46041#48324#51665#44228#54364
  ClientHeight = 667
  ClientWidth = 1030
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1030
    Height = 638
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'SevenClassic'
    object gridReportTotal: TcxGridDBTableView
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
      DataController.DataSource = d_MemTotal
      DataController.Filter.AutoDataSetFilter = True
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#, '#44053#51340
          Kind = skCount
          Position = spFooter
          Column = gridReportTotallecture_id
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotall_fixedcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalregist_count
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_common
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_dc
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_male
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_female
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_waiter
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_waiter
        end
        item
          Format = '#, '#44053#51340
          Kind = skCount
          Column = gridReportTotallecture_id
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotall_fixedcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalregist_count
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_common
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_dc
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_male
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_female
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_outer
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_outer
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_newer
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_newer
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_renewer
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_renewer
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_samedong
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_samedong
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_notsamedong
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalm_notsamedong
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotall_daycnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotall_daycnt
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotall_timecnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotall_timecnt
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotals_attendcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotals_attendcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotals_absentcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotals_absentcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalpay_amount
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalpay_amount
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridReportTotalpayback_amount
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalpayback_amount
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotall_fixedcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalregist_count
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_common
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_dc
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_male
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_female
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_waiter
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_outer
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_newer
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_renewer
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_samedong
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalm_notsamedong
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotall_daycnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotall_timecnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotals_attendcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotals_absentcnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalpay_amount
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalpayback_amount
        end
        item
          Format = '#, '#44053#51340
          Kind = skCount
          Column = gridReportTotallecture_id
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object gridReportTotalRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object gridReportTotaldong_id: TcxGridDBColumn
        Caption = #46041#47749
        DataBinding.FieldName = 'dong_id'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DONG'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dm.d_DONG_CODE
        GroupIndex = 0
        Width = 72
      end
      object gridReportTotallecture_id: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'lecture_id'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'L_NAME'
          end>
        Properties.ListSource = dm.d_LECTURE_look
        Width = 126
      end
      object gridReportTotallecture_name: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'lecture_name'
        Visible = False
        Width = 174
      end
      object gridReportTotall_fixedcnt: TcxGridDBColumn
        Caption = #51221#50896
        DataBinding.FieldName = 'l_fixedcnt'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalregist_count: TcxGridDBColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'regist_count'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_common: TcxGridDBColumn
        Caption = #51068#48152
        DataBinding.FieldName = 'm_common'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_dc: TcxGridDBColumn
        Caption = #44048#47732
        DataBinding.FieldName = 'm_dc'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_male: TcxGridDBColumn
        Caption = #45224#51088
        DataBinding.FieldName = 'm_male'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_female: TcxGridDBColumn
        Caption = #50668#51088
        DataBinding.FieldName = 'm_female'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_waiter: TcxGridDBColumn
        Caption = #45824#44592
        DataBinding.FieldName = 'm_waiter'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_outer: TcxGridDBColumn
        Caption = #53748#44053
        DataBinding.FieldName = 'm_outer'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_newer: TcxGridDBColumn
        Caption = #49888#44508
        DataBinding.FieldName = 'm_newer'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_renewer: TcxGridDBColumn
        Caption = #51116#44053
        DataBinding.FieldName = 'm_renewer'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_samedong: TcxGridDBColumn
        Caption = #51116#46041
        DataBinding.FieldName = 'm_samedong'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalm_notsamedong: TcxGridDBColumn
        Caption = #53440#46041
        DataBinding.FieldName = 'm_notsamedong'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotall_daycnt: TcxGridDBColumn
        Caption = #44053#51340#51068
        DataBinding.FieldName = 'l_daycnt'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotall_timecnt: TcxGridDBColumn
        Caption = #49884#44036
        DataBinding.FieldName = 'l_timecnt'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotals_attendcnt: TcxGridDBColumn
        Caption = #52636#49437
        DataBinding.FieldName = 's_attendcnt'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotals_absentcnt: TcxGridDBColumn
        Caption = #44208#49437
        DataBinding.FieldName = 's_absentcnt'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
      object gridReportTotalpay_amount: TcxGridDBColumn
        Caption = #49688#44053#47308
        DataBinding.FieldName = 'pay_amount'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 83
      end
      object gridReportTotalpayback_amount: TcxGridDBColumn
        Caption = #54872#48520
        DataBinding.FieldName = 'payback_amount'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 82
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridReportTotal
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1030
    Height = 29
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 7
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
      Left = 108
      Top = 7
      Width = 33
      Height = 13
      Caption = #48516#44592':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 241
      Top = 8
      Width = 33
      Height = 13
      Caption = #46041#47749':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object speYear: TSpinEdit
      Left = 47
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2013
    end
    object speStep: TSpinEdit
      Left = 142
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 4
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnRetrieve: TBitBtn
      Left = 399
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
      TabOrder = 3
      OnClick = btnRetrieveClick
    end
    object speStep2: TSpinEdit
      Left = 186
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 4
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object btnExport: TBitBtn
      Left = 666
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
      Left = 766
      Top = 2
      Width = 78
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
    object cbDong: TcxLookupComboBox
      Left = 276
      Top = 4
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DONG'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_DONG_CODE
      EditValue = ''
      TabOrder = 6
      Width = 112
    end
  end
  object PanelMessage: TPanel
    Left = 400
    Top = 248
    Width = 241
    Height = 73
    Color = clYellow
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 64
      Top = 23
      Width = 122
      Height = 26
      Caption = #51088#47308' '#52628#52636#51473'...'#13#10#51104#49884#47564' '#44592#45796#47532#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 272
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
        '')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        '')
      PrinterPage.PageHeader.Font.Charset = HANGEUL_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -21
      PrinterPage.PageHeader.Font.Name = #44404#47548
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = #48372#44256#49436
      ReportDocument.CreationDate = 41974.426776412040000000
      ReportTitle.AdjustOnReportScale = True
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#49324#49688#45817#51648#44553#54788#54889
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.AutoHeight = False
      OptionsPreview.Visible = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object dxMemTotal: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 272
    Top = 296
    object dxMemTotallecture_id: TStringField
      FieldName = 'lecture_id'
      Size = 17
    end
    object dxMemTotallecture_name: TStringField
      FieldName = 'lecture_name'
      Size = 30
    end
    object dxMemTotall_fixedcnt: TIntegerField
      Alignment = taCenter
      FieldName = 'l_fixedcnt'
    end
    object dxMemTotalm_common: TIntegerField
      Alignment = taCenter
      FieldName = 'm_common'
    end
    object dxMemTotalm_dc: TIntegerField
      Alignment = taCenter
      FieldName = 'm_dc'
    end
    object dxMemTotalm_male: TIntegerField
      Alignment = taCenter
      FieldName = 'm_male'
    end
    object dxMemTotalm_female: TIntegerField
      Alignment = taCenter
      FieldName = 'm_female'
    end
    object dxMemTotalm_waiter: TIntegerField
      Alignment = taCenter
      FieldName = 'm_waiter'
    end
    object dxMemTotalm_outer: TIntegerField
      Alignment = taCenter
      FieldName = 'm_outer'
    end
    object dxMemTotalm_newer: TIntegerField
      Alignment = taCenter
      FieldName = 'm_newer'
    end
    object dxMemTotalm_renewer: TIntegerField
      Alignment = taCenter
      FieldName = 'm_renewer'
    end
    object dxMemTotalm_samedong: TIntegerField
      Alignment = taCenter
      FieldName = 'm_samedong'
    end
    object dxMemTotalm_notsamedong: TIntegerField
      Alignment = taCenter
      FieldName = 'm_notsamedong'
    end
    object dxMemTotall_daycnt: TIntegerField
      Alignment = taCenter
      FieldName = 'l_daycnt'
    end
    object dxMemTotall_timecnt: TFloatField
      Alignment = taCenter
      FieldName = 'l_timecnt'
    end
    object dxMemTotals_attendcnt: TIntegerField
      Alignment = taCenter
      FieldName = 's_attendcnt'
    end
    object dxMemTotals_absentcnt: TIntegerField
      Alignment = taCenter
      FieldName = 's_absentcnt'
    end
    object dxMemTotalpay_amount: TFloatField
      FieldName = 'pay_amount'
      DisplayFormat = '#,'
    end
    object dxMemTotalpayback_amount: TFloatField
      FieldName = 'payback_amount'
      DisplayFormat = '#,'
    end
    object dxMemTotalregist_count: TIntegerField
      Alignment = taCenter
      FieldName = 'regist_count'
    end
    object dxMemTotaldong_id: TStringField
      FieldName = 'dong_id'
      Size = 17
    end
  end
  object d_MemTotal: TDataSource
    DataSet = dxMemTotal
    Left = 272
    Top = 344
  end
end
