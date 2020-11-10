object fmReportTeacherPay: TfmReportTeacherPay
  Left = 0
  Top = 0
  Caption = #44053#49324#47308' '#51648#44553#54788#54889
  ClientHeight = 632
  ClientWidth = 1017
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
    Width = 1017
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 7
      Width = 61
      Height = 13
      Caption = #51648#44553#45380#50900':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 166
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
    object speYear: TSpinEdit
      Left = 69
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2013
    end
    object speStep: TSpinEdit
      Left = 126
      Top = 4
      Width = 37
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnRetrieve: TBitBtn
      Left = 224
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
      Left = 184
      Top = 4
      Width = 37
      Height = 22
      MaxValue = 12
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
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1017
    Height = 603
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    object gridPayment: TcxGridDBTableView
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
      DataController.DataSource = d_TEACHER_PAYMENT_SEL2
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentTOTAL_MAN
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentMAN_COMMON
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentCOMMON_PRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentMAN_DC
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentDC_PRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentTOTAL_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentSODUK
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentJUMIN
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentNET_AMOUNT
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentTOTAL_MAN
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentMAN_COMMON
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentCOMMON_PRICE
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentMAN_DC
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentDC_PRICE
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentTOTAL_AMOUNT
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentSODUK
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentJUMIN
        end
        item
          Format = '#,'
          Position = spFooter
          Column = gridPaymentNET_AMOUNT
        end
        item
          Format = '#,'
          Position = spFooter
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPaymentTAX_TOTAL
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentTOTAL_MAN
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentMAN_COMMON
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentCOMMON_PRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentMAN_DC
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentDC_PRICE
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentTOTAL_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentSODUK
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentJUMIN
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridPaymentNET_AMOUNT
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
          Format = '#,'#47749
          Kind = skCount
          Column = gridPaymentTEACHER_ID
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPaymentTAX_TOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      Styles.Group = cxStyle1
      object gridPaymentTEACHER_ID: TcxGridDBColumn
        Caption = #44053#49324#47749
        DataBinding.FieldName = 'TEACHER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'T_NAME'
          end>
        Properties.ListSource = dm.d_TEACHER_LOOK
        GroupIndex = 0
        Options.CellMerging = True
        Width = 84
      end
      object gridPaymentLECTURE_ID: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'LECTURE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'L_NAME'
          end>
        Properties.ListSource = dm.d_LECTURE_look
        SortIndex = 0
        SortOrder = soAscending
      end
      object gridPaymentP_YEAR: TcxGridDBColumn
        Caption = #45380#46020
        DataBinding.FieldName = 'P_YEAR'
        Width = 57
      end
      object gridPaymentP_MONTH: TcxGridDBColumn
        Caption = #50900
        DataBinding.FieldName = 'P_MONTH'
        SortIndex = 1
        SortOrder = soAscending
        Width = 43
      end
      object gridPaymentTOTAL_MAN: TcxGridDBColumn
        Caption = #52509#51064#50896
        DataBinding.FieldName = 'TOTAL_MAN'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object gridPaymentMAN_COMMON: TcxGridDBColumn
        Caption = #51068#48152
        DataBinding.FieldName = 'MAN_COMMON'
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object gridPaymentMAN_DC: TcxGridDBColumn
        Caption = #44048#47732
        DataBinding.FieldName = 'MAN_DC'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object gridPaymentCOMMON_PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'COMMON_PRICE'
        Visible = False
        Width = 104
      end
      object gridPaymentDC_PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'DC_PRICE'
        Visible = False
        Width = 92
      end
      object gridPaymentTOTAL_AMOUNT: TcxGridDBColumn
        Caption = #54633#44228#44552#50529
        DataBinding.FieldName = 'TOTAL_AMOUNT'
        Width = 101
      end
      object gridPaymentSODUK: TcxGridDBColumn
        Caption = #49548#46301#49464
        DataBinding.FieldName = 'SODUK'
        Width = 93
      end
      object gridPaymentJUMIN: TcxGridDBColumn
        Caption = #51452#48124#49464
        DataBinding.FieldName = 'JUMIN'
        Width = 80
      end
      object gridPaymentTAX_TOTAL: TcxGridDBColumn
        Caption = #49464#44552#54633#44228
        DataBinding.FieldName = 'TAX_TOTAL'
        Width = 90
      end
      object gridPaymentNET_AMOUNT: TcxGridDBColumn
        Caption = #52572#51333#49688#47161#50529
        DataBinding.FieldName = 'NET_AMOUNT'
        Width = 101
      end
      object gridPaymentDATA_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'DATA_KIND'
        Visible = False
        VisibleForCustomization = False
      end
      object gridPaymentID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridPaymentDONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
      end
      object gridPaymentTOTAL_HOUR: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_HOUR'
        Visible = False
      end
      object gridPaymentWEEK_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'WEEK_DAYS'
        Visible = False
      end
      object gridPaymentBANK_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_NAME'
        Visible = False
      end
      object gridPaymentBANK_NO: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_NO'
        Visible = False
      end
      object gridPaymentEXTRA_PAY: TcxGridDBColumn
        DataBinding.FieldName = 'EXTRA_PAY'
        Visible = False
      end
      object gridPaymentCOMMON_OUT: TcxGridDBColumn
        DataBinding.FieldName = 'COMMON_OUT'
        Visible = False
      end
      object gridPaymentDC_OUT: TcxGridDBColumn
        DataBinding.FieldName = 'DC_OUT'
        Visible = False
      end
      object gridPaymentLECTURE_TOTAL_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_TOTAL_AMOUNT'
        Visible = False
      end
      object gridPaymentNET_CENTER_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'NET_CENTER_AMOUNT'
        Visible = False
      end
      object gridPaymentCOMMON_FEE: TcxGridDBColumn
        DataBinding.FieldName = 'COMMON_FEE'
        Visible = False
      end
      object gridPaymentDC_FEE: TcxGridDBColumn
        DataBinding.FieldName = 'DC_FEE'
        Visible = False
      end
      object gridPaymentCALC_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'CALC_KIND'
        Visible = False
      end
      object gridPaymentMONTH1_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'MONTH1_DAYS'
        Visible = False
      end
      object gridPaymentMONTH2_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'MONTH2_DAYS'
        Visible = False
      end
      object gridPaymentMONTH3_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'MONTH3_DAYS'
        Visible = False
      end
      object gridPaymentL_IDX: TcxGridDBColumn
        DataBinding.FieldName = 'L_IDX'
        Visible = False
      end
      object gridPaymentL_UID: TcxGridDBColumn
        DataBinding.FieldName = 'L_UID'
        Visible = False
      end
      object gridPaymentT_IDX: TcxGridDBColumn
        DataBinding.FieldName = 'T_IDX'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridPayment
    end
  end
  object q_TEACHER_PAYTOTAL: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select '
      '    teacher_id,'
      '    p_year,'
      '    p_month,'
      '    data_kind,'
      '    sum( total_man ) total_man,'
      '    sum( man_common ) man_common,'
      '    sum( common_price ) common_price,'
      '    sum( man_dc ) man_dc,'
      '    sum( dc_price ) dc_price,'
      '    sum( total_amount ) total_amount,'
      '    sum( soduk ) soduk,'
      '    sum( jumin ) jumin,'
      '    sum( net_amount ) net_amount'
      'from TEACHER_MONTHLY_PAY'
      
        'where ((p_year = :p_year) and (p_month >= :p_month1) and (p_mont' +
        'h <= :p_month2))'
      'group by teacher_id, p_year, p_month, data_kind'
      'order by teacher_id, p_year, p_month')
    Left = 176
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_month1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_month2'
        ParamType = ptInput
      end>
    object q_TEACHER_PAYTOTALTEACHER_ID: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_TEACHER_PAYTOTALP_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'P_YEAR'
    end
    object q_TEACHER_PAYTOTALP_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #50900
      FieldName = 'P_MONTH'
    end
    object q_TEACHER_PAYTOTALCOMMON_PRICE: TFloatField
      DisplayLabel = #44552#50529
      FieldName = 'COMMON_PRICE'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAYTOTALDC_PRICE: TFloatField
      DisplayLabel = #44048#47732#44552#50529
      FieldName = 'DC_PRICE'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAYTOTALTOTAL_AMOUNT: TFloatField
      DisplayLabel = #52509#50529
      FieldName = 'TOTAL_AMOUNT'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAYTOTALSODUK: TFloatField
      DisplayLabel = #49548#46301#49464
      FieldName = 'SODUK'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAYTOTALJUMIN: TFloatField
      DisplayLabel = #51452#48124#49464
      FieldName = 'JUMIN'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAYTOTALNET_AMOUNT: TFloatField
      DisplayLabel = #49892#49688#47161#50529
      FieldName = 'NET_AMOUNT'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAYTOTALTOTAL_MAN: TLargeintField
      FieldName = 'TOTAL_MAN'
      ReadOnly = True
    end
    object q_TEACHER_PAYTOTALMAN_COMMON: TLargeintField
      FieldName = 'MAN_COMMON'
      ReadOnly = True
    end
    object q_TEACHER_PAYTOTALMAN_DC: TLargeintField
      FieldName = 'MAN_DC'
      ReadOnly = True
    end
    object q_TEACHER_PAYTOTALDATA_KIND: TIntegerField
      FieldName = 'DATA_KIND'
    end
  end
  object d_TEACHER_PAYMENT_SEL2: TDataSource
    DataSet = TEACHER_PAYMENT_SEL2
    Left = 336
    Top = 440
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 176
    Top = 400
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
      ReportDocument.CreationDate = 43601.698325752320000000
      ReportTitle.AdjustOnReportScale = True
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#49324#49688#45817#51648#44553#54788#54889
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 104
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
  object TEACHER_PAYMENT_SEL2: TUniStoredProc
    StoredProcName = 'TEACHER_PAYMENT_SEL2'
    Connection = dm.UniConnection1
    Left = 336
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PMONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PMONTH2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'LECTURE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'TEACHER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'P_YEAR'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_HOUR'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_MAN'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MAN_COMMON'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MAN_DC'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'DC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'SODUK'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'JUMIN'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'NET_AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'WEEK_DAYS'
        ParamType = ptOutput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BANK_NO'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'EXTRA_PAY'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_OUT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'DC_OUT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'LECTURE_TOTAL_AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'NET_CENTER_AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_FEE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'DC_FEE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'CALC_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'MONTH1_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'MONTH2_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'MONTH3_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'L_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'L_UID'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'T_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TAX_TOTAL'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'TEACHER_PAYMENT_SEL2'
    object TEACHER_PAYMENT_SEL2ID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object TEACHER_PAYMENT_SEL2DONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object TEACHER_PAYMENT_SEL2LECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object TEACHER_PAYMENT_SEL2TEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object TEACHER_PAYMENT_SEL2P_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'P_YEAR'
    end
    object TEACHER_PAYMENT_SEL2P_MONTH: TIntegerField
      Alignment = taCenter
      FieldName = 'P_MONTH'
    end
    object TEACHER_PAYMENT_SEL2TOTAL_HOUR: TFloatField
      FieldName = 'TOTAL_HOUR'
    end
    object TEACHER_PAYMENT_SEL2TOTAL_MAN: TFloatField
      FieldName = 'TOTAL_MAN'
    end
    object TEACHER_PAYMENT_SEL2MAN_COMMON: TFloatField
      FieldName = 'MAN_COMMON'
    end
    object TEACHER_PAYMENT_SEL2COMMON_PRICE: TFloatField
      FieldName = 'COMMON_PRICE'
    end
    object TEACHER_PAYMENT_SEL2MAN_DC: TFloatField
      FieldName = 'MAN_DC'
    end
    object TEACHER_PAYMENT_SEL2DC_PRICE: TFloatField
      FieldName = 'DC_PRICE'
    end
    object TEACHER_PAYMENT_SEL2TOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      DisplayFormat = '#,0'
    end
    object TEACHER_PAYMENT_SEL2SODUK: TFloatField
      FieldName = 'SODUK'
      DisplayFormat = '#,0'
    end
    object TEACHER_PAYMENT_SEL2JUMIN: TFloatField
      FieldName = 'JUMIN'
      DisplayFormat = '#,0'
    end
    object TEACHER_PAYMENT_SEL2NET_AMOUNT: TFloatField
      FieldName = 'NET_AMOUNT'
      DisplayFormat = '#,0'
    end
    object TEACHER_PAYMENT_SEL2WEEK_DAYS: TStringField
      FieldName = 'WEEK_DAYS'
      Size = 15
    end
    object TEACHER_PAYMENT_SEL2BANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object TEACHER_PAYMENT_SEL2BANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object TEACHER_PAYMENT_SEL2EXTRA_PAY: TFloatField
      FieldName = 'EXTRA_PAY'
    end
    object TEACHER_PAYMENT_SEL2COMMON_OUT: TFloatField
      FieldName = 'COMMON_OUT'
    end
    object TEACHER_PAYMENT_SEL2DC_OUT: TFloatField
      FieldName = 'DC_OUT'
    end
    object TEACHER_PAYMENT_SEL2LECTURE_TOTAL_AMOUNT: TFloatField
      FieldName = 'LECTURE_TOTAL_AMOUNT'
    end
    object TEACHER_PAYMENT_SEL2NET_CENTER_AMOUNT: TFloatField
      FieldName = 'NET_CENTER_AMOUNT'
    end
    object TEACHER_PAYMENT_SEL2COMMON_FEE: TFloatField
      FieldName = 'COMMON_FEE'
    end
    object TEACHER_PAYMENT_SEL2DC_FEE: TFloatField
      FieldName = 'DC_FEE'
    end
    object TEACHER_PAYMENT_SEL2CALC_KIND: TSmallintField
      FieldName = 'CALC_KIND'
    end
    object TEACHER_PAYMENT_SEL2MONTH1_DAYS: TSmallintField
      FieldName = 'MONTH1_DAYS'
    end
    object TEACHER_PAYMENT_SEL2MONTH2_DAYS: TSmallintField
      FieldName = 'MONTH2_DAYS'
    end
    object TEACHER_PAYMENT_SEL2MONTH3_DAYS: TSmallintField
      FieldName = 'MONTH3_DAYS'
    end
    object TEACHER_PAYMENT_SEL2L_IDX: TSmallintField
      FieldName = 'L_IDX'
    end
    object TEACHER_PAYMENT_SEL2L_UID: TIntegerField
      FieldName = 'L_UID'
    end
    object TEACHER_PAYMENT_SEL2T_IDX: TSmallintField
      FieldName = 'T_IDX'
    end
    object TEACHER_PAYMENT_SEL2TAX_TOTAL: TFloatField
      FieldName = 'TAX_TOTAL'
      DisplayFormat = '#,0'
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 816
    Top = 480
  end
end
