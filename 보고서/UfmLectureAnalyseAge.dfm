object fmLectureAnalyseAge: TfmLectureAnalyseAge
  Left = 0
  Top = 0
  Caption = 'fmLectureAnalyseAge'
  ClientHeight = 627
  ClientWidth = 1174
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
    Width = 1174
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
      Left = 103
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
      Left = 202
      Top = 2
      Width = 91
      Height = 25
      Caption = #51116#44228#49328
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
    object cbYear: TComboBox
      Left = 45
      Top = 4
      Width = 57
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 11
      ImeName = 'Microsoft IME 2010'
      TabOrder = 3
    end
    object RadioButton1: TRadioButton
      Left = 299
      Top = 6
      Width = 62
      Height = 17
      Caption = #49688#44053#49373
      Checked = True
      TabOrder = 4
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 378
      Top = 6
      Width = 73
      Height = 17
      Caption = #52636#49437#51068
      TabOrder = 5
      OnClick = RadioButton2Click
    end
    object cbStep1: TcxImageComboBox
      Left = 138
      Top = 4
      EditValue = 1
      Properties.Items = <
        item
          Description = '1'#48516#44592
          ImageIndex = 0
          Value = 1
        end
        item
          Description = '2'#48516#44592
          Value = 2
        end
        item
          Description = '3'#48516#44592
          Value = 3
        end
        item
          Description = '4'#48516#44592
          Value = 4
        end>
      TabOrder = 6
      Width = 61
    end
    object chkAddOuter: TcxCheckBox
      Left = 472
      Top = 4
      Caption = #53748#44053#51088' '#54252#54632
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 7
      Width = 121
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1174
    Height = 598
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'SevenClassic'
    object gridAge: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
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
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_10_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_10_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_20_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_20_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_30_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_30_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_40_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_40_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_50_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_50_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_60_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_60_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_70_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_70_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_80_M
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_80_W
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridAgeKIND_TOTAL
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT10M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT10W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT20M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT20W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT30M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT30W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT40M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT40W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT50M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT50W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT60M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT60W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT70M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT70W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT80M_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeT80W_H
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAgeH_TOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = #44053#51340#47749
          Width = 133
        end
        item
          Caption = '10'#45824
          Width = 120
        end
        item
          Caption = '20'#45824
          Width = 120
        end
        item
          Caption = '30'#45824
          Width = 120
        end
        item
          Caption = '40'#45824
          Width = 120
        end
        item
          Caption = '50'#45824
          Width = 120
        end
        item
          Caption = '60'#45824
          Width = 120
        end
        item
          Caption = '70'#45824
          Width = 120
        end
        item
          Caption = '80'#45824
          Width = 120
        end
        item
          Caption = #54633#44228
        end>
      object gridAgeID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForEditForm = bTrue
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeL_UID: TcxGridDBBandedColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'L_UID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'L_NAME'
          end>
        Properties.ListSource = dm.d_LECTURE_look
        VisibleForEditForm = bTrue
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeKIND_10_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K10M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_10_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K10W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_20_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K20M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_20_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K20W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_30_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K30M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_30_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K30W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_40_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K40M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_40_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K40W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_50_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K50M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_50_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K50W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_60_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K60M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_60_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K60W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_70_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K70M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_70_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K70W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 7
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_80_M: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'K80M'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeKIND_80_W: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'K80W'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 8
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridAgeKIND_TOTAL: TcxGridDBBandedColumn
        Caption = #44228
        DataBinding.FieldName = 'K_TOTAL'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridAgeT10M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H10M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT10W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H10W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeT20M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H20M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT20W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H20W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeT30M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H30M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT30W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H30W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeT40M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H40M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT40W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H40W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeT50M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H50M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT50W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H50W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeT60M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H60M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT60W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H60W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 6
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeT70M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H70M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT70W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H70W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 7
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeT80M_H: TcxGridDBBandedColumn
        Caption = #45224
        DataBinding.FieldName = 'H80M'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridAgeT80W_H: TcxGridDBBandedColumn
        Caption = #50668
        DataBinding.FieldName = 'H80W'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 8
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridAgeH_TOTAL: TcxGridDBBandedColumn
        Caption = #44228
        DataBinding.FieldName = 'H_TOTAL'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridAge
    end
  end
  object PanelMsg: TPanel
    Left = 384
    Top = 224
    Width = 305
    Height = 57
    Caption = #44228#49328#51473#51077#45768#45796'. '#51104#49884' '#44592#45796#47140#51452#49464#50836'...'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = STUDENTS_BY_AGE_SEL
    Left = 240
    Top = 456
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 728
    Top = 464
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
      ReportDocument.CreationDate = 44090.636130312500000000
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
  object GET_ANALYSE_AGE_NEW: TUniStoredProc
    StoredProcName = 'GET_ANALYSE_AGE_NEW'
    Connection = dm.UniConnection1
    Transaction = UniTransaction1
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 240
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LEC_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LEC_STEP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INCLUDE_OUT'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'GET_ANALYSE_AGE_NEW'
    object GET_ANALYSE_AGE_NEWLEC_NAME: TStringField
      FieldName = 'LEC_NAME'
      Size = 30
    end
    object GET_ANALYSE_AGE_NEWKIND_10_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_10_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_10_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_10_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_20_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_20_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_20_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_20_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_30_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_30_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_30_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_30_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_40_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_40_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_40_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_40_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_50_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_50_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_50_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_50_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_60_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_60_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_60_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_60_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_70_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_70_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_70_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_70_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_80_M: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_80_M'
    end
    object GET_ANALYSE_AGE_NEWKIND_80_W: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_80_W'
    end
    object GET_ANALYSE_AGE_NEWKIND_TOTAL: TIntegerField
      Alignment = taCenter
      FieldName = 'KIND_TOTAL'
    end
    object GET_ANALYSE_AGE_NEWTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object GET_ANALYSE_AGE_NEWT10M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T10M_H'
    end
    object GET_ANALYSE_AGE_NEWT10W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T10W_H'
    end
    object GET_ANALYSE_AGE_NEWT20M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T20M_H'
    end
    object GET_ANALYSE_AGE_NEWT20W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T20W_H'
    end
    object GET_ANALYSE_AGE_NEWT30M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T30M_H'
    end
    object GET_ANALYSE_AGE_NEWT30W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T30W_H'
    end
    object GET_ANALYSE_AGE_NEWT40M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T40M_H'
    end
    object GET_ANALYSE_AGE_NEWT40W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T40W_H'
    end
    object GET_ANALYSE_AGE_NEWT50M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T50M_H'
    end
    object GET_ANALYSE_AGE_NEWT50W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T50W_H'
    end
    object GET_ANALYSE_AGE_NEWT60M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T60M_H'
    end
    object GET_ANALYSE_AGE_NEWT60W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T60W_H'
    end
    object GET_ANALYSE_AGE_NEWT70M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T70M_H'
    end
    object GET_ANALYSE_AGE_NEWT70W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T70W_H'
    end
    object GET_ANALYSE_AGE_NEWT80M_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T80M_H'
    end
    object GET_ANALYSE_AGE_NEWT80W_H: TIntegerField
      Alignment = taCenter
      FieldName = 'T80W_H'
    end
    object GET_ANALYSE_AGE_NEWH_TOTAL: TIntegerField
      Alignment = taCenter
      FieldName = 'H_TOTAL'
    end
    object GET_ANALYSE_AGE_NEWL_UID: TStringField
      FieldName = 'L_UID'
      Size = 17
    end
    object GET_ANALYSE_AGE_NEWL_IDX: TIntegerField
      FieldName = 'L_IDX'
    end
  end
  object STUDENT_BIRTH_UPDATE: TUniStoredProc
    StoredProcName = 'STUDENT_BIRTH_UPDATE'
    Connection = dm.UniConnection1
    Transaction = UniTransaction1
    Left = 464
    Top = 352
    CommandStoredProcName = 'STUDENT_BIRTH_UPDATE'
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = dm.UniConnection1
    Left = 464
    Top = 296
  end
  object STUDENTS_BY_AGE_SEL: TUniStoredProc
    StoredProcName = 'STUDENTS_BY_AGE_SEL'
    Connection = dm.UniConnection1
    Left = 240
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'L_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'K10M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K10W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K20M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K20W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K30M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K30W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K40M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K40W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K50M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K50W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K60M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K60W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K70M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K70W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K80M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K80W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H10M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H10W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H20M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H20W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H30M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H30W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H40M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H40W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H50M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H50W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H60M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H60W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H70M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H70W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H80M'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H80W'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'K_TOTAL'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'H_TOTAL'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'STUDENTS_BY_AGE_SEL'
    object STUDENTS_BY_AGE_SELL_UID: TStringField
      FieldName = 'L_UID'
      Size = 17
    end
    object STUDENTS_BY_AGE_SELK10M: TIntegerField
      FieldName = 'K10M'
    end
    object STUDENTS_BY_AGE_SELK10W: TIntegerField
      FieldName = 'K10W'
    end
    object STUDENTS_BY_AGE_SELK20M: TIntegerField
      FieldName = 'K20M'
    end
    object STUDENTS_BY_AGE_SELK20W: TIntegerField
      FieldName = 'K20W'
    end
    object STUDENTS_BY_AGE_SELK30M: TIntegerField
      FieldName = 'K30M'
    end
    object STUDENTS_BY_AGE_SELK30W: TIntegerField
      FieldName = 'K30W'
    end
    object STUDENTS_BY_AGE_SELK40M: TIntegerField
      FieldName = 'K40M'
    end
    object STUDENTS_BY_AGE_SELK40W: TIntegerField
      FieldName = 'K40W'
    end
    object STUDENTS_BY_AGE_SELK50M: TIntegerField
      FieldName = 'K50M'
    end
    object STUDENTS_BY_AGE_SELK50W: TIntegerField
      FieldName = 'K50W'
    end
    object STUDENTS_BY_AGE_SELK60M: TIntegerField
      FieldName = 'K60M'
    end
    object STUDENTS_BY_AGE_SELK60W: TIntegerField
      FieldName = 'K60W'
    end
    object STUDENTS_BY_AGE_SELK70M: TIntegerField
      FieldName = 'K70M'
    end
    object STUDENTS_BY_AGE_SELK70W: TIntegerField
      FieldName = 'K70W'
    end
    object STUDENTS_BY_AGE_SELK80M: TIntegerField
      FieldName = 'K80M'
    end
    object STUDENTS_BY_AGE_SELK80W: TIntegerField
      FieldName = 'K80W'
    end
    object STUDENTS_BY_AGE_SELH10M: TIntegerField
      FieldName = 'H10M'
    end
    object STUDENTS_BY_AGE_SELH10W: TIntegerField
      FieldName = 'H10W'
    end
    object STUDENTS_BY_AGE_SELH20M: TIntegerField
      FieldName = 'H20M'
    end
    object STUDENTS_BY_AGE_SELH20W: TIntegerField
      FieldName = 'H20W'
    end
    object STUDENTS_BY_AGE_SELH30M: TIntegerField
      FieldName = 'H30M'
    end
    object STUDENTS_BY_AGE_SELH30W: TIntegerField
      FieldName = 'H30W'
    end
    object STUDENTS_BY_AGE_SELH40M: TIntegerField
      FieldName = 'H40M'
    end
    object STUDENTS_BY_AGE_SELH40W: TIntegerField
      FieldName = 'H40W'
    end
    object STUDENTS_BY_AGE_SELH50M: TIntegerField
      FieldName = 'H50M'
    end
    object STUDENTS_BY_AGE_SELH50W: TIntegerField
      FieldName = 'H50W'
    end
    object STUDENTS_BY_AGE_SELH60M: TIntegerField
      FieldName = 'H60M'
    end
    object STUDENTS_BY_AGE_SELH60W: TIntegerField
      FieldName = 'H60W'
    end
    object STUDENTS_BY_AGE_SELH70M: TIntegerField
      FieldName = 'H70M'
    end
    object STUDENTS_BY_AGE_SELH70W: TIntegerField
      FieldName = 'H70W'
    end
    object STUDENTS_BY_AGE_SELH80M: TIntegerField
      FieldName = 'H80M'
    end
    object STUDENTS_BY_AGE_SELH80W: TIntegerField
      FieldName = 'H80W'
    end
    object STUDENTS_BY_AGE_SELK_TOTAL: TIntegerField
      FieldName = 'K_TOTAL'
    end
    object STUDENTS_BY_AGE_SELH_TOTAL: TIntegerField
      FieldName = 'H_TOTAL'
    end
  end
end
