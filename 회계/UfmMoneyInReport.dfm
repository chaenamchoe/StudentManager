object fmMoneyInReport: TfmMoneyInReport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#51077#44208#51032#49436
  ClientHeight = 701
  ClientWidth = 1048
  Color = clBtnFace
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
  object TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 701
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 305
      Height = 161
      Align = alTop
      Caption = #49688#51077#44208#51032
      TabOrder = 0
      object Label1: TLabel
        Left = 58
        Top = 25
        Width = 56
        Height = 13
        Caption = #54924#44228#45380#46020':'
      end
      object Label2: TLabel
        Left = 58
        Top = 46
        Width = 56
        Height = 13
        Caption = #48156#51032#51068#51088':'
      end
      object Label3: TLabel
        Left = 58
        Top = 68
        Width = 56
        Height = 13
        Caption = #49688#51077#51068#51088':'
      end
      object Label4: TLabel
        Left = 19
        Top = 90
        Width = 95
        Height = 13
        Caption = #54788#44552#52636#45225#48512#44592#51116':'
      end
      object Label5: TLabel
        Left = 19
        Top = 112
        Width = 95
        Height = 13
        Caption = #51648#52636#45236#50669#48512#44592#51116':'
      end
      object Label6: TLabel
        Left = 58
        Top = 134
        Width = 56
        Height = 13
        Caption = #49688#51077#44552#50529':'
      end
      object edtYear: TEdit
        Left = 119
        Top = 22
        Width = 66
        Height = 21
        ImeName = 'Microsoft IME 2010'
        NumbersOnly = True
        TabOrder = 0
        OnChange = edtYearChange
      end
      object edtBalDate: TcxDateEdit
        Left = 120
        Top = 43
        Properties.OnEditValueChanged = edtBalDatePropertiesEditValueChanged
        TabOrder = 1
        Width = 121
      end
      object edtOutDate: TcxDateEdit
        Left = 119
        Top = 65
        Properties.OnEditValueChanged = edtOutDatePropertiesEditValueChanged
        TabOrder = 2
        Width = 121
      end
      object edtRegDate1: TcxDateEdit
        Left = 119
        Top = 87
        Properties.OnEditValueChanged = edtRegDate1PropertiesEditValueChanged
        TabOrder = 3
        Width = 121
      end
      object edtRegDate2: TcxDateEdit
        Left = 119
        Top = 109
        Properties.OnEditValueChanged = edtRegDate2PropertiesEditValueChanged
        TabOrder = 4
        Width = 121
      end
      object edtAmount: TcxCurrencyEdit
        Left = 120
        Top = 131
        Properties.AssignedValues.DisplayFormat = True
        Properties.UseThousandSeparator = True
        Properties.OnEditValueChanged = edtAmountPropertiesEditValueChanged
        TabOrder = 5
        Width = 121
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 171
      Width = 305
      Height = 240
      Align = alTop
      Caption = #49688#51077#45236#50669
      TabOrder = 1
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 295
        Height = 190
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Black'
        object gridOut: TcxGridDBTableView
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
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridOutRecId: TcxGridDBColumn
            DataBinding.FieldName = 'RecId'
            Visible = False
          end
          object gridOutdesc: TcxGridDBColumn
            Caption = #49688#51077#45236#50669
            DataBinding.FieldName = 'desc'
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gridOut
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 211
        Width = 301
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnEditDesc: TBitBtn
          Left = 101
          Top = 0
          Width = 94
          Height = 25
          Caption = #45236#50669#49688#51221
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
            0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
            BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
            DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
          TabOrder = 0
          OnClick = btnEditDescClick
        end
      end
    end
    object btnSave: TBitBtn
      Left = 107
      Top = 519
      Width = 100
      Height = 25
      Caption = #51088#47308#51200#51109
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
        030AA03300000000030DD03333333333330AA03300000000330DD03088888888
        030AA03088888888030DD03088888888030AA03088888888030DD03088888888
        000AA03088888888080DD00000000000000AADADADADADADADAD}
      TabOrder = 2
      OnClick = btnSaveClick
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 417
      Width = 305
      Height = 96
      Align = alTop
      Caption = #48708#44256#49324#54637
      TabOrder = 3
      object edtBigo: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 295
        Height = 73
        Align = alClient
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        ScrollBars = ssVertical
        TabOrder = 0
        OnChange = edtBigoChange
      end
    end
  end
  object PanelClient: TPanel
    Left = 313
    Top = 0
    Width = 735
    Height = 701
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PanelClient'
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 735
      Height = 33
      Align = alTop
      TabOrder = 0
      object btnPrint: TBitBtn
        Left = 352
        Top = 4
        Width = 97
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
        TabOrder = 0
        OnClick = btnPrintClick
      end
      object chkAddSign: TCheckBox
        Left = 168
        Top = 9
        Width = 145
        Height = 17
        Caption = #52509#47924#50948#50896' '#44208#51116#52628#44032
        TabOrder = 1
        OnClick = chkAddSignClick
      end
    end
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 33
      Width = 735
      Height = 668
      HorzScrollBar.Visible = False
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      object PanelPreview: TPanel
        Left = 6
        Top = 3
        Width = 691
        Height = 966
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Shape1: TShape
          Left = 6
          Top = 132
          Width = 672
          Height = 824
          Pen.Width = 2
        end
        object Label13: TLabel
          Left = 6
          Top = 24
          Width = 117
          Height = 15
          Caption = '['#48324#51648' '#51228'8'#54840#49436#49885']'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 245
          Top = 81
          Width = 220
          Height = 27
          Caption = #49688'  '#51077'  '#44208'  '#51032'  '#49436
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = #48148#53461
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblYear: TLabel
          Left = 40
          Top = 199
          Width = 73
          Height = 16
          Caption = '2015 '#45380#46020
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 195
          Top = 145
          Width = 69
          Height = 16
          Caption = #54924#44228' '#45812#45817
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 343
          Top = 145
          Width = 69
          Height = 16
          Caption = #48512' '#50948#50896#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 508
          Top = 145
          Width = 48
          Height = 16
          Caption = #50948#50896#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 641
          Top = 167
          Width = 16
          Height = 64
          Caption = #44208'      '#51116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label20: TLabel
          Left = 32
          Top = 297
          Width = 87
          Height = 16
          Caption = #48156'           '#51032
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 32
          Top = 341
          Width = 88
          Height = 16
          Caption = #49688'    '#51077'    '#51068
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 22
          Top = 386
          Width = 112
          Height = 16
          Caption = #54788#44552#52636#45225#48512#44592#51116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 22
          Top = 431
          Width = 112
          Height = 16
          Caption = #49688#51077#45236#50669#48512#44592#51116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 36
          Top = 526
          Width = 79
          Height = 16
          Caption = #49688' '#51077' '#44552' '#50529
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 36
          Top = 675
          Width = 79
          Height = 16
          Caption = #49688' '#51077' '#45236' '#50669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Shape2: TShape
          Left = 6
          Top = 281
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape3: TShape
          Left = 150
          Top = 177
          Width = 470
          Height = 1
          Brush.Color = clBlack
        end
        object Shape4: TShape
          Left = 150
          Top = 132
          Width = 1
          Height = 824
          Brush.Color = clBlack
        end
        object Shape5: TShape
          Left = 301
          Top = 132
          Width = 1
          Height = 150
          Brush.Color = clBlack
        end
        object Shape6: TShape
          Left = 467
          Top = 132
          Width = 1
          Height = 150
          Brush.Color = clBlack
        end
        object Shape7: TShape
          Left = 619
          Top = 132
          Width = 1
          Height = 150
          Brush.Color = clBlack
        end
        object Shape8: TShape
          Left = 6
          Top = 326
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape9: TShape
          Left = 6
          Top = 371
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape10: TShape
          Left = 6
          Top = 416
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape11: TShape
          Left = 6
          Top = 459
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape12: TShape
          Left = 619
          Top = 281
          Width = 1
          Height = 179
          Brush.Color = clBlack
        end
        object Label29: TLabel
          Left = 639
          Top = 297
          Width = 26
          Height = 16
          Caption = '('#51064')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 639
          Top = 341
          Width = 26
          Height = 16
          Caption = '('#51064')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 639
          Top = 386
          Width = 26
          Height = 16
          Caption = '('#51064')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 639
          Top = 431
          Width = 26
          Height = 16
          Caption = '('#51064')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Shape13: TShape
          Left = 6
          Top = 606
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape14: TShape
          Left = 183
          Top = 498
          Width = 450
          Height = 49
          Pen.Width = 2
        end
        object lblBalDate: TLabel
          Left = 183
          Top = 297
          Width = 410
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblOutDate: TLabel
          Left = 183
          Top = 341
          Width = 410
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblRegDate1: TLabel
          Left = 183
          Top = 386
          Width = 410
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblRegDate2: TLabel
          Left = 183
          Top = 431
          Width = 410
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblAmountText: TLabel
          Left = 200
          Top = 512
          Width = 410
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = #51068#44552' '#51060#52380#50977#48177#49340#49901#50977#50896#51221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #48148#53461
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAmountNum: TLabel
          Left = 202
          Top = 561
          Width = 410
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '\2,636'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblBigo: TLabel
          Left = 168
          Top = 770
          Width = 497
          Height = 174
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lblDesc1: TLabel
          Left = 161
          Top = 627
          Width = 501
          Height = 16
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc2: TLabel
          Left = 161
          Top = 650
          Width = 501
          Height = 16
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc3: TLabel
          Left = 161
          Top = 674
          Width = 501
          Height = 16
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc4: TLabel
          Left = 161
          Top = 698
          Width = 501
          Height = 16
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc5: TLabel
          Left = 161
          Top = 721
          Width = 501
          Height = 16
          AutoSize = False
          Caption = '2015. 03. 05('#54868')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Shape15: TShape
          Left = 6
          Top = 755
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Label12: TLabel
          Left = 36
          Top = 843
          Width = 79
          Height = 16
          Caption = #48708' '#44256' '#49324' '#54637
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object shp1: TShape
          Left = 388
          Top = 132
          Width = 1
          Height = 150
          Brush.Color = clBlack
          Visible = False
        end
        object lbl1: TLabel
          Left = 294
          Top = 145
          Width = 69
          Height = 16
          Caption = #48512' '#50948#50896#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
          Visible = False
        end
      end
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 56
    Top = 352
    object dxMemData1desc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 56
    Top = 400
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PrintTitle = #51648#52636#44208#51032#49436
    Version = 0
    Left = 160
    Top = 648
    object dxComponentPrinter1Link1: TdxCustomContainerReportLink
      Active = True
      Component = PanelPreview
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
      ReportDocument.Caption = #51648#52636#44208#51032#49436
      ReportDocument.CreationDate = 42884.684698344910000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object q_MONEY_IN_REPORT_INS: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'insert into money_in_report2 ('
      '    id,'
      '    m_year,'
      '    balui_date,'
      '    in_date,'
      '    reg_date1,'
      '    reg_date2,'
      '    in_amount,'
      '    uniq_id,'
      '    dong_id,'
      '    bigo,'
      '    m_date,'
      '    in_list)'
      '  values ('
      '    :id,'
      '    :m_year,'
      '    :balui_date,'
      '    :in_date,'
      '    :reg_date1,'
      '    :reg_date2,'
      '    :in_amount,'
      '    :uniq_id,'
      '    :dong_id,'
      '    :bigo,'
      '    :m_date,'
      '    :in_list);')
    Left = 224
    Top = 592
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'm_year'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'balui_date'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'in_date'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'reg_date1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'reg_date2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'in_amount'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'uniq_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'bigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'm_date'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'in_list'
        ParamType = ptInput
      end>
  end
end
