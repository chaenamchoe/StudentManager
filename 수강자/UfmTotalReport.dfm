object fmTotalReport: TfmTotalReport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#46321#47197' '#51665#44228
  ClientHeight = 498
  ClientWidth = 726
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
    Width = 726
    Height = 498
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 466
    object Label1: TLabel
      Left = 219
      Top = 9
      Width = 210
      Height = 32
      Caption = #49688#44053#46321#47197' '#51665#44228
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
      Caption = #46321#47197#44592#44036':'
    end
    object Label4: TLabel
      Left = 23
      Top = 73
      Width = 69
      Height = 13
      Caption = #46321#47197#52509#51064#50896':'
    end
    object Label5: TLabel
      Left = 23
      Top = 94
      Width = 69
      Height = 13
      Caption = #46321#47197#52509#44552#50529':'
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
      Left = 377
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
      Top = 73
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
      Left = 377
      Top = 136
      Width = 304
      Height = 337
      TabOrder = 0
      object gridDC: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCCnt1
          end
          item
            Format = '#,0'
            Kind = skSum
            Column = gridDCPrice1
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCPrice2
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCPrice3
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCPrice1
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCPrice2
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCPrice3
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCCnt1
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridDCTotal
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupRowHeight = 18
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        Bands = <
          item
            Caption = #44396#48516
            Width = 104
          end
          item
            Caption = '1'#50900
            Visible = False
            Width = 117
          end
          item
            Caption = '2'#50900
            Visible = False
            Width = 119
          end
          item
            Caption = '3'#50900
            Visible = False
            Width = 112
          end
          item
            Caption = #54633#44228
            Width = 177
          end>
        object gridDCKind: TcxGridBandedColumn
          Caption = #44048#47732#44396#48516
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'KIND_NAME'
            end>
          Properties.ListSource = dm.d_DC_KIND
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.CellMerging = True
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 97
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridDCCnt1: TcxGridBandedColumn
          Caption = #44148#49688
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 53
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridDCPrice1: TcxGridBandedColumn
          Caption = '1'#50900' '#44552#50529
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridDCPrice2: TcxGridBandedColumn
          Caption = '2'#50900' '#44552#50529
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 90
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridDCPrice3: TcxGridBandedColumn
          Caption = '3'#50900' '#44552#50529
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridDCTotal: TcxGridBandedColumn
          Caption = #54633#44228
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 123
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gridDCPayWay: TcxGridBandedColumn
          Caption = #44208#51116
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Items = <
            item
              Description = #54788#44552
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #48373#51648#52852#46300
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
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gridDC
      end
    end
    object cxGrid1: TcxGrid
      Left = 23
      Top = 136
      Width = 346
      Height = 337
      TabOrder = 1
      object gridPrice: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,'
            Kind = skSum
            Column = gridPricePrice3
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridPriceCnt3
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridPricePrice2
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridPriceCnt2
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridPricePrice1
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridPriceCnt1
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridPriceColumn1
          end
          item
            Format = '#,'
            Kind = skSum
            Column = gridPriceColumn2
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #44396#48516
            Width = 98
          end
          item
            Caption = '1'#50900
            Visible = False
            Width = 110
          end
          item
            Caption = '2'#50900
            Visible = False
            Width = 122
          end
          item
            Caption = '3'#50900
            Visible = False
            Width = 116
          end
          item
            Caption = #54633#44228
            Width = 173
          end>
        object gridPriceKind: TcxGridBandedColumn
          Caption = #44552#50529#44396#48516
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.CellMerging = True
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridPriceCnt1: TcxGridBandedColumn
          Caption = #44148#49688
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 45
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridPricePrice1: TcxGridBandedColumn
          Caption = #44552#50529
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridPriceCnt2: TcxGridBandedColumn
          Caption = #44148#49688
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 45
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridPricePrice2: TcxGridBandedColumn
          Caption = #44552#50529
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 90
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridPriceCnt3: TcxGridBandedColumn
          Caption = #44148#49688
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 45
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridPricePrice3: TcxGridBandedColumn
          Caption = #44552#50529
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridPriceColumn1: TcxGridBandedColumn
          Caption = #44148#49688
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 47
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridPriceColumn2: TcxGridBandedColumn
          Caption = #44552#50529
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Moving = False
          Options.Sorting = False
          Options.VertSizing = False
          Width = 105
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gridPricePayWay: TcxGridBandedColumn
          Caption = #44208#51116
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Items = <
            item
              Description = #54788#44552
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #48373#51648#52852#46300
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
          Width = 57
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridPrice
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
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 472
    Top = 48
    object dxMemData1item_name: TIntegerField
      FieldName = 'item_name'
    end
    object dxMemData1item_cnt: TIntegerField
      FieldName = 'item_cnt'
    end
    object dxMemData1item_price: TFloatField
      FieldName = 'item_price'
    end
    object dxMemData1item_kind: TSmallintField
      FieldName = 'item_kind'
    end
    object dxMemData1item_cnt2: TIntegerField
      FieldName = 'item_cnt2'
    end
    object dxMemData1item_price2: TFloatField
      FieldName = 'item_price2'
    end
    object dxMemData1item_cnt3: TIntegerField
      FieldName = 'item_cnt3'
    end
    object dxMemData1item_price3: TFloatField
      FieldName = 'item_price3'
    end
    object dxMemData1total_cnt: TIntegerField
      FieldName = 'total_cnt'
    end
    object dxMemData1total_price: TFloatField
      FieldName = 'total_price'
    end
    object dxMemData1pay_way: TIntegerField
      FieldName = 'pay_way'
    end
  end
  object dxMemData4: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 472
    Top = 96
    object dxMemData4item_kind: TIntegerField
      FieldName = 'item_kind'
    end
    object dxMemData4item_cnt: TIntegerField
      FieldName = 'item_cnt'
    end
    object dxMemData4item_price1: TFloatField
      FieldName = 'item_price1'
    end
    object dxMemData4item_price2: TFloatField
      FieldName = 'item_price2'
    end
    object dxMemData4item_price3: TFloatField
      FieldName = 'item_price3'
    end
    object dxMemData4total_price: TFloatField
      FieldName = 'total_price'
    end
    object dxMemData4out_kind: TIntegerField
      FieldName = 'out_kind'
    end
    object dxMemData4pay_way: TIntegerField
      Alignment = taCenter
      FieldName = 'pay_way'
    end
  end
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    Left = 280
    Top = 176
  end
  object SP_CREATE_KIND_TOTAL: TUniStoredProc
    StoredProcName = 'SP_CREATE_KIND_TOTAL'
    Connection = dm.UniConnection1
    Left = 280
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'SDATE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'EDATE'
        ParamType = ptInput
        Size = 10
      end>
    CommandStoredProcName = 'SP_CREATE_KIND_TOTAL'
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = #49688#44053#51088#54788#54889
    Version = 0
    Left = 576
    Top = 16
    object dxComponentPrinter1Link1: TdxCustomContainerReportLink
      Active = True
      Component = Panel1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43182.561914826390000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
end
