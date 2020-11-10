object fmLectureAnalyseMonthly: TfmLectureAnalyseMonthly
  Left = 0
  Top = 0
  Caption = 'fmLectureAnalyseMonthly'
  ClientHeight = 629
  ClientWidth = 1098
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
    Width = 1098
    Height = 29
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1093
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
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1098
    Height = 600
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'SevenClassic'
    ExplicitWidth = 1093
    object gridMonthly: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = D_GET_ANALYSE_MONTHLY
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH1_REST
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH1_INPRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH1_OUTPRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH2_REST
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH2_INPRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH2_OUTPRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH3_REST
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH3_INPRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridMonthlyMONTH3_OUTPRICE
        end
        item
          Format = '#'
          Kind = skSum
        end
        item
          Format = '#'
          Kind = skSum
        end
        item
          Format = '#'
          Kind = skSum
        end
        item
          Format = '#'
          Kind = skSum
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyMONTH1_REST_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyREG_MONTH1_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyOUT_MONTH1_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyMONTH2_REST_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyREG_MONTH2_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyOUT_MONTH2_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyMONTH3_REST_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyREG_MONTH3_CNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridMonthlyOUT_MONTH3_CNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = #44053#51340#51221#48372
          FixedKind = fkLeft
        end
        item
          Caption = '1'#50900
        end
        item
          Caption = '2'#50900
        end
        item
          Caption = '3'#50900
        end>
      object gridMonthlyR_L_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'R_L_ID'
        Visible = False
        VisibleForCustomization = False
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridMonthlyR_L_IDX: TcxGridDBBandedColumn
        Caption = 'No'
        DataBinding.FieldName = 'R_L_IDX'
        HeaderAlignmentHorz = taCenter
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridMonthlyR_LECTURENAME: TcxGridDBBandedColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'R_LECTURENAME'
        HeaderAlignmentHorz = taCenter
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridMonthlyR_PLAN: TcxGridDBBandedColumn
        Caption = #51221#50896
        DataBinding.FieldName = 'R_PLAN'
        Visible = False
        HeaderAlignmentHorz = taCenter
        VisibleForCustomization = False
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH1_REST: TcxGridDBBandedColumn
        Caption = #44552#50529
        DataBinding.FieldName = 'MONTH1_REST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #44552#50529'('#46321#47197'-'#54872#48520')'
        Styles.Content = cxStyle3
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH1_INPRICE: TcxGridDBBandedColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'MONTH1_INPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH1_OUTPRICE: TcxGridDBBandedColumn
        Caption = #54872#48520
        DataBinding.FieldName = 'MONTH1_OUTPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH2_REST: TcxGridDBBandedColumn
        Caption = #44552#50529
        DataBinding.FieldName = 'MONTH2_REST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #44552#50529'('#46321#47197'-'#54872#48520')'
        Styles.Content = cxStyle3
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH2_INPRICE: TcxGridDBBandedColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'MONTH2_INPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH2_OUTPRICE: TcxGridDBBandedColumn
        Caption = #54872#48520
        DataBinding.FieldName = 'MONTH2_OUTPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH3_REST: TcxGridDBBandedColumn
        Caption = #44552#50529
        DataBinding.FieldName = 'MONTH3_REST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #44552#50529'('#46321#47197'-'#54872#48520')'
        Styles.Content = cxStyle3
        Width = 90
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH3_INPRICE: TcxGridDBBandedColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'MONTH3_INPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH3_OUTPRICE: TcxGridDBBandedColumn
        Caption = #54872#48520
        DataBinding.FieldName = 'MONTH3_OUTPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,'
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridMonthlyOUT_MONTH1_CNT: TcxGridDBBandedColumn
        Caption = #53748#44053
        DataBinding.FieldName = 'OUT_MONTH1_CNT'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle4
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridMonthlyOUT_MONTH2_CNT: TcxGridDBBandedColumn
        Caption = #53748#44053
        DataBinding.FieldName = 'OUT_MONTH2_CNT'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle4
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridMonthlyOUT_MONTH3_CNT: TcxGridDBBandedColumn
        Caption = #53748#44053
        DataBinding.FieldName = 'OUT_MONTH3_CNT'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle4
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH1_REST_CNT: TcxGridDBBandedColumn
        Caption = #51064#50896
        DataBinding.FieldName = 'MONTH1_REST_CNT'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #51064#50896'='#46321#47197'-'#53748#44053
        Styles.Content = cxStyle2
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH2_REST_CNT: TcxGridDBBandedColumn
        Caption = #51064#50896
        DataBinding.FieldName = 'MONTH2_REST_CNT'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #51064#50896'='#46321#47197'-'#53748#44053
        Styles.Content = cxStyle2
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridMonthlyMONTH3_REST_CNT: TcxGridDBBandedColumn
        Caption = #51064#50896
        DataBinding.FieldName = 'MONTH3_REST_CNT'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #51064#50896'='#46321#47197'-'#53748#44053
        Styles.Content = cxStyle2
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridMonthlyREG_MONTH1_CNT: TcxGridDBBandedColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'REG_MONTH1_CNT'
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridMonthlyREG_MONTH2_CNT: TcxGridDBBandedColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'REG_MONTH2_CNT'
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridMonthlyREG_MONTH3_CNT: TcxGridDBBandedColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'REG_MONTH3_CNT'
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMonthly
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
    Left = 192
    Top = 248
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
  object D_GET_ANALYSE_MONTHLY: TDataSource
    DataSet = SP_GET_ANALYSE_MONTHLY
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
      ReportDocument.CreationDate = 42460.212743564810000000
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
  object SP_GET_ANALYSE_MONTHLY: TUniStoredProc
    StoredProcName = 'SP_GET_ANALYSE_MONTHLY'
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
        Name = 'MONTH1_REST_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'MONTH2_REST_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'MONTH3_REST_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH1_INPRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH2_INPRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH3_INPRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH1_OUTPRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH2_OUTPRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH3_OUTPRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH1_REST'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH2_REST'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH3_REST'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'REG_MONTH1_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'REG_MONTH2_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'REG_MONTH3_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'OUT_MONTH1_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'OUT_MONTH2_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'OUT_MONTH3_CNT'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'SP_GET_ANALYSE_MONTHLY'
    object SP_GET_ANALYSE_MONTHLYR_L_ID: TStringField
      FieldName = 'R_L_ID'
      Size = 17
    end
    object SP_GET_ANALYSE_MONTHLYR_L_IDX: TIntegerField
      Alignment = taCenter
      FieldName = 'R_L_IDX'
    end
    object SP_GET_ANALYSE_MONTHLYR_LECTURENAME: TStringField
      Alignment = taCenter
      FieldName = 'R_LECTURENAME'
      Size = 30
    end
    object SP_GET_ANALYSE_MONTHLYR_PLAN: TIntegerField
      Alignment = taCenter
      FieldName = 'R_PLAN'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH1_INPRICE: TFloatField
      FieldName = 'MONTH1_INPRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH2_INPRICE: TFloatField
      FieldName = 'MONTH2_INPRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH3_INPRICE: TFloatField
      FieldName = 'MONTH3_INPRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH1_OUTPRICE: TFloatField
      FieldName = 'MONTH1_OUTPRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH2_OUTPRICE: TFloatField
      FieldName = 'MONTH2_OUTPRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH3_OUTPRICE: TFloatField
      FieldName = 'MONTH3_OUTPRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH1_REST: TFloatField
      FieldName = 'MONTH1_REST'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH2_REST: TFloatField
      FieldName = 'MONTH2_REST'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH3_REST: TFloatField
      FieldName = 'MONTH3_REST'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYOUT_MONTH1_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'OUT_MONTH1_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYOUT_MONTH2_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'OUT_MONTH2_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYOUT_MONTH3_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'OUT_MONTH3_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH1_REST_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'MONTH1_REST_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH2_REST_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'MONTH2_REST_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYMONTH3_REST_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'MONTH3_REST_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYREG_MONTH1_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'REG_MONTH1_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYREG_MONTH2_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'REG_MONTH2_CNT'
      DisplayFormat = '#,'
    end
    object SP_GET_ANALYSE_MONTHLYREG_MONTH3_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'REG_MONTH3_CNT'
      DisplayFormat = '#,'
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
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clBlue
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
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 904
    Top = 472
  end
end
