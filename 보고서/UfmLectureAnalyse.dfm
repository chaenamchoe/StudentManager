object fmLectureAnalyse: TfmLectureAnalyse
  Left = 0
  Top = 0
  Caption = 'fmLectureAnalyse'
  ClientHeight = 629
  ClientWidth = 1036
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 29
    Align = alTop
    TabOrder = 0
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
    object btnRetrieve: TBitBtn
      Left = 205
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
      TabOrder = 1
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
      TabOrder = 2
      OnClick = btnPrintClick
    end
    object cbStep: TComboBox
      Left = 143
      Top = 4
      Width = 62
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 4
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 3
      Text = '1'#48516#44592
      OnChange = cbStepChange
      Items.Strings = (
        '1'#48516#44592
        '2'#48516#44592
        '3'#48516#44592
        '4'#48516#44592)
    end
    object cbYear: TComboBox
      Left = 45
      Top = 4
      Width = 57
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 11
      ImeName = 'Microsoft IME 2010'
      TabOrder = 4
    end
    object chkHidePrice: TCheckBox
      Left = 288
      Top = 7
      Width = 97
      Height = 17
      Caption = #44552#50529' '#48372#44592
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = chkHidePriceClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1036
    Height = 600
    Align = alClient
    TabOrder = 1
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#, '#44053#51340
          Kind = skCount
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_PLAN
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_REGIST
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DROP
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_COMMON
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND1
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND2
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND3
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND4
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND5
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND6
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND7
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalR_DC_KIND8
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalDC_PRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalTOTAL_PRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalOUT_PRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridReportTotalCOMMON_PRICE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridReportTotalR_L_ID: TcxGridDBColumn
        DataBinding.FieldName = 'R_L_ID'
        Visible = False
      end
      object gridReportTotalR_L_IDX: TcxGridDBColumn
        Caption = #48264#54840
        DataBinding.FieldName = 'R_L_IDX'
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object gridReportTotalR_LECTURENAME: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'R_LECTURENAME'
        HeaderAlignmentHorz = taCenter
        Width = 131
      end
      object gridReportTotalR_PLAN: TcxGridDBColumn
        Caption = #51221#50896
        DataBinding.FieldName = 'R_PLAN'
        HeaderAlignmentHorz = taCenter
        Width = 54
      end
      object gridReportTotalR_REGIST: TcxGridDBColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'R_REGIST'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle4
        Width = 56
      end
      object gridReportTotalR_DROP: TcxGridDBColumn
        Caption = #53748#44053
        DataBinding.FieldName = 'R_DROP'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 48
      end
      object gridReportTotalOUT_PRICE: TcxGridDBColumn
        Caption = #53748#44053#44552#50529
        DataBinding.FieldName = 'OUT_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object gridReportTotalR_COMMON: TcxGridDBColumn
        Caption = #51068#48152
        DataBinding.FieldName = 'R_COMMON'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle3
        Width = 51
      end
      object gridReportTotalTOTAL_PRICE: TcxGridDBColumn
        Caption = #51068#48152#44552#50529
        DataBinding.FieldName = 'TOTAL_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 97
      end
      object gridReportTotalR_DC: TcxGridDBColumn
        Caption = #44048#47732
        DataBinding.FieldName = 'R_DC'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle2
        Width = 54
      end
      object gridReportTotalDC_PRICE: TcxGridDBColumn
        Caption = #44048#47732#44552#50529
        DataBinding.FieldName = 'DC_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 99
      end
      object gridReportTotalCOMMON_PRICE: TcxGridDBColumn
        Caption = #51068#48152'+'#44048#47732
        DataBinding.FieldName = 'COMMON_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 98
      end
      object gridReportTotalR_DC_KIND1: TcxGridDBColumn
        Caption = #45432#51064
        DataBinding.FieldName = 'R_DC_KIND1'
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object gridReportTotalR_DC_KIND2: TcxGridDBColumn
        Caption = #51109#50528#51064
        DataBinding.FieldName = 'R_DC_KIND2'
        HeaderAlignmentHorz = taCenter
      end
      object gridReportTotalR_DC_KIND3: TcxGridDBColumn
        Caption = #50976#44277#51088
        DataBinding.FieldName = 'R_DC_KIND3'
        HeaderAlignmentHorz = taCenter
      end
      object gridReportTotalR_DC_KIND4: TcxGridDBColumn
        Caption = #49688#44553#51088
        DataBinding.FieldName = 'R_DC_KIND4'
        HeaderAlignmentHorz = taCenter
      end
      object gridReportTotalR_DC_KIND5: TcxGridDBColumn
        Caption = #45796#51088#45376
        DataBinding.FieldName = 'R_DC_KIND5'
        HeaderAlignmentHorz = taCenter
      end
      object gridReportTotalR_DC_KIND6: TcxGridDBColumn
        Caption = #51032#49324#51088
        DataBinding.FieldName = 'R_DC_KIND6'
        HeaderAlignmentHorz = taCenter
      end
      object gridReportTotalR_DC_KIND7: TcxGridDBColumn
        Caption = #47924#47308
        DataBinding.FieldName = 'R_DC_KIND7'
        HeaderAlignmentHorz = taCenter
      end
      object gridReportTotalR_DC_KIND8: TcxGridDBColumn
        Caption = #53945#48324
        DataBinding.FieldName = 'R_DC_KIND8'
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridReportTotal
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
  end
  object d_MemTotal: TDataSource
    DataSet = UniStoredProc1
    Left = 192
    Top = 344
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 280
    Top = 440
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
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
      ReportDocument.CreationDate = 42441.324000462960000000
      ReportTitle.AdjustOnReportScale = True
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#49324#49688#45817#51648#44553#54788#54889
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.AutoHeight = False
      OptionsPreview.Visible = False
      OptionsSize.AutoWidth = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object UniStoredProc1: TUniStoredProc
    StoredProcName = 'SP_GET_ANALYSE_TOTAL2'
    Connection = dm.UniConnection1
    Options.ReturnParams = True
    Options.UpdateAllFields = True
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 192
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'L_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_STEP1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'R_L_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'R_L_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'R_LECTURENAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'R_PLAN'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_REGIST'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_COMMON'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DROP'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND1'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND3'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND4'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND5'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND6'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND7'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_DC_KIND8'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'DC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'OUT_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_PRICE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'SP_GET_ANALYSE_TOTAL2'
    object UniStoredProc1R_L_ID: TStringField
      FieldName = 'R_L_ID'
      Size = 17
    end
    object UniStoredProc1R_L_IDX: TIntegerField
      Alignment = taCenter
      FieldName = 'R_L_IDX'
    end
    object UniStoredProc1R_LECTURENAME: TStringField
      Alignment = taCenter
      FieldName = 'R_LECTURENAME'
      Size = 30
    end
    object UniStoredProc1R_PLAN: TIntegerField
      Alignment = taCenter
      FieldName = 'R_PLAN'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_REGIST: TIntegerField
      Alignment = taCenter
      FieldName = 'R_REGIST'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_COMMON: TIntegerField
      Alignment = taCenter
      FieldName = 'R_COMMON'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DROP: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DROP'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND1: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND1'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND2: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND2'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND3: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND3'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND4: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND4'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND5: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND5'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND6: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND6'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND7: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND7'
      DisplayFormat = '#,'
    end
    object UniStoredProc1R_DC_KIND8: TIntegerField
      Alignment = taCenter
      FieldName = 'R_DC_KIND8'
      DisplayFormat = '#,'
    end
    object UniStoredProc1COMMON_PRICE: TFloatField
      FieldName = 'COMMON_PRICE'
    end
    object UniStoredProc1DC_PRICE: TFloatField
      FieldName = 'DC_PRICE'
    end
    object UniStoredProc1OUT_PRICE: TFloatField
      FieldName = 'OUT_PRICE'
    end
    object UniStoredProc1TOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 192
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 904
    Top = 472
  end
end
