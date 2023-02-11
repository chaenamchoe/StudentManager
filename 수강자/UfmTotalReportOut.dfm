object fmTotalReportOut: TfmTotalReportOut
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54872#48520#51088' '#51665#44228
  ClientHeight = 637
  ClientWidth = 753
  Color = clWhite
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 637
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 219
      Top = 9
      Width = 210
      Height = 32
      Caption = #54872#48520#51088#47308' '#51665#44228
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 36
      Top = 52
      Width = 56
      Height = 13
      Caption = #54872#48520#44592#44036':'
    end
    object Label4: TLabel
      Left = 23
      Top = 75
      Width = 69
      Height = 13
      Caption = #54872#48520#52509#51064#50896':'
    end
    object Label5: TLabel
      Left = 23
      Top = 94
      Width = 69
      Height = 13
      Caption = #54872#48520#52509#44552#50529':'
    end
    object Label6: TLabel
      Left = 23
      Top = 120
      Width = 91
      Height = 13
      Caption = '['#44552#50529#48324' '#51665#44228']'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 400
      Top = 120
      Width = 91
      Height = 13
      Caption = '['#44048#47732#48324' '#51665#44228']'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMancount: TLabel
      Left = 107
      Top = 75
      Width = 87
      Height = 13
      Caption = 'lblMancount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPeriods: TLabel
      Left = 107
      Top = 52
      Width = 73
      Height = 13
      Caption = 'lblPeriods'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotalPrice: TLabel
      Left = 107
      Top = 94
      Width = 90
      Height = 13
      Caption = 'lblTotalPrice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid2: TcxGrid
      Left = 400
      Top = 136
      Width = 305
      Height = 481
      TabOrder = 0
      object gridDC: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
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
        DataController.DataSource = DataSource2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,0'
            Kind = skSum
            Column = gridDCCOUNT
          end
          item
            Format = '#,0'
            Kind = skSum
            Column = gridDCSUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridDCOUT_KIND: TcxGridDBColumn
          Caption = #44048#47732#44396#48516
          DataBinding.FieldName = 'OUT_KIND'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'KIND_NAME'
            end>
          Properties.ListSource = dm.d_DC_KIND
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object gridDCPAYBACK_WAY: TcxGridDBColumn
          Caption = #44208#51116
          DataBinding.FieldName = 'PAYBACK_WAY'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #54788#44552
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #51060#52404
              Value = 1
            end
            item
              Description = #44592#53440
              Value = 2
            end
            item
              Description = #52852#46300
              Value = 3
            end>
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object gridDCCOUNT: TcxGridDBColumn
          Caption = #44148#49688
          DataBinding.FieldName = 'COUNT'
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object gridDCSUM: TcxGridDBColumn
          Caption = #54633#44228#44552#50529
          DataBinding.FieldName = 'SUM'
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gridDC
      end
    end
    object cxGrid1: TcxGrid
      Left = 23
      Top = 136
      Width = 370
      Height = 481
      TabOrder = 1
      object gridMoney: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
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
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,0'
            Kind = skSum
            Column = gridMoneyCOUNT
          end
          item
            Format = '#,0'
            Kind = skSum
            Column = gridMoneySUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridMoneyOUT_AMOUNT: TcxGridDBColumn
          Caption = #44552#50529#44396#48516
          DataBinding.FieldName = 'OUT_AMOUNT'
          HeaderAlignmentHorz = taCenter
        end
        object gridMoneyOUT_WHEN: TcxGridDBColumn
          Caption = #54872#48520#44396#48516
          DataBinding.FieldName = 'OUT_WHEN'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #44060#49884#51204
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #44060#49884#54980
              Value = 2
            end
            item
              Description = #52628#44032
              Value = 3
            end>
          HeaderAlignmentHorz = taCenter
        end
        object gridMoneyPAYBACK_WAY: TcxGridDBColumn
          Caption = #44208#51116
          DataBinding.FieldName = 'PAYBACK_WAY'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #54788#44552
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #51060#52404
              Value = 1
            end
            item
              Description = #44592#53440
              Value = 2
            end
            item
              Description = #52852#46300
              Value = 3
            end>
          HeaderAlignmentHorz = taCenter
          Width = 49
        end
        object gridMoneyCOUNT: TcxGridDBColumn
          Caption = #44148#49688
          DataBinding.FieldName = 'COUNT'
          HeaderAlignmentHorz = taCenter
          Width = 44
        end
        object gridMoneySUM: TcxGridDBColumn
          Caption = #54633#44228#44552#50529
          DataBinding.FieldName = 'SUM'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridMoney
      end
    end
  end
  object cxButton1: TcxButton
    Left = 456
    Top = 11
    Width = 75
    Height = 25
    Caption = #52636#47141
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      000000000000000000030000000C000000120000001400000014000000150000
      0015000000140000000D00000003000000000000000000000000000000000000
      00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
      78FFBE8978FF876356C30000000B000000000000000000000000000000030000
      000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
      E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
      42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
      72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
      6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
      76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
      71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
      35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
      78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
      DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
      7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
      32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
      86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
      42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
      8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
      DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
      84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
      E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
      2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
      E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
      0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
      E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
      00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
      EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
      00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
      FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
      000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
      91FFCDA391FF98786BC100000004000000000000000000000000}
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      
        'select out_amount, out_when, payback_way, count(id), sum(out_amo' +
        'unt)'
      'from money_kind_survey'
      'group by out_amount, out_when, payback_way;')
    Left = 112
    Top = 216
    object UniQuery1OUT_AMOUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'OUT_AMOUNT'
    end
    object UniQuery1OUT_WHEN: TIntegerField
      Alignment = taCenter
      FieldName = 'OUT_WHEN'
    end
    object UniQuery1PAYBACK_WAY: TIntegerField
      Alignment = taCenter
      FieldName = 'PAYBACK_WAY'
    end
    object UniQuery1COUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'COUNT'
      ReadOnly = True
    end
    object UniQuery1SUM: TLargeintField
      FieldName = 'SUM'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = #49688#44053#51088#54788#54889
    Version = 0
    Left = 80
    Top = 576
    object dxComponentPrinter1Link1: TdxCustomContainerReportLink
      Active = True
      Component = Panel1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44201.344672777780000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object UniQuery2: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select out_kind, payback_way, count(id), sum(out_amount)'
      'from money_kind_survey'
      'group by out_kind, payback_way;')
    Left = 552
    Top = 224
    object UniQuery2OUT_KIND: TIntegerField
      Alignment = taCenter
      FieldName = 'OUT_KIND'
    end
    object UniQuery2PAYBACK_WAY: TIntegerField
      Alignment = taCenter
      FieldName = 'PAYBACK_WAY'
    end
    object UniQuery2COUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'COUNT'
      ReadOnly = True
    end
    object UniQuery2SUM: TLargeintField
      FieldName = 'SUM'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 112
    Top = 264
  end
  object DataSource2: TDataSource
    DataSet = UniQuery2
    Left = 552
    Top = 272
  end
end
