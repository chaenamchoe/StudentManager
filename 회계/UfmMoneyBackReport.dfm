object fmMoneyBackReport: TfmMoneyBackReport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #48152#54872#44208#51032#49436
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
      Height = 142
      Align = alTop
      Caption = #51648#52636#44208#51032
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
        Caption = #48152#54872#51068#51088':'
      end
      object Label5: TLabel
        Left = 19
        Top = 90
        Width = 95
        Height = 13
        Caption = #51648#52636#45236#50669#48512#44592#51116':'
      end
      object Label6: TLabel
        Left = 58
        Top = 112
        Width = 56
        Height = 13
        Caption = #48152#54872#44552#50529':'
      end
      object edtYear: TEdit
        Left = 120
        Top = 20
        Width = 66
        Height = 21
        ImeName = 'Microsoft IME 2010'
        NumbersOnly = True
        TabOrder = 0
        OnChange = edtYearChange
      end
      object edtBalDate: TcxDateEdit
        Left = 119
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
      object edtRegDate2: TcxDateEdit
        Left = 119
        Top = 87
        Properties.OnEditValueChanged = edtRegDate2PropertiesEditValueChanged
        TabOrder = 3
        Width = 121
      end
      object edtAmount: TcxCurrencyEdit
        Left = 119
        Top = 109
        Properties.AssignedValues.DisplayFormat = True
        Properties.UseThousandSeparator = True
        Properties.OnEditValueChanged = edtAmountPropertiesEditValueChanged
        TabOrder = 4
        Width = 121
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 152
      Width = 305
      Height = 91
      Align = alTop
      Caption = #52292#44428#51088
      TabOrder = 1
      object Label12: TLabel
        Left = 20
        Top = 23
        Width = 43
        Height = 13
        Caption = #52292#44428#51088':'
      end
      object Label60: TLabel
        Left = 6
        Top = 47
        Width = 56
        Height = 13
        Caption = #48152#54872#49324#50976':'
      end
      object edtOwener: TEdit
        Left = 68
        Top = 20
        Width = 229
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
        OnChange = edtOwenerChange
      end
      object edtBackReason: TEdit
        Left = 68
        Top = 44
        Width = 229
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
        OnChange = edtBackReasonChange
      end
    end
    object btnSave: TBitBtn
      Left = 113
      Top = 526
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
        Left = 380
        Top = 3
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
          Top = 136
          Width = 672
          Height = 774
          Pen.Width = 2
        end
        object lblYear: TLabel
          Left = 40
          Top = 192
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
          Left = 202
          Top = 150
          Width = 48
          Height = 16
          Caption = #45812#45817#51088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 362
          Top = 150
          Width = 48
          Height = 16
          Caption = #48512#54924#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 522
          Top = 150
          Width = 47
          Height = 16
          Caption = #54924'   '#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 643
          Top = 166
          Width = 19
          Height = 67
          AutoSize = False
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
          Top = 273
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
          Top = 312
          Width = 88
          Height = 16
          Caption = #48152'    '#54872'    '#51068
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 14
          Top = 352
          Width = 128
          Height = 16
          Caption = #49688#44053#47308#49688#45225#48512#44592#51116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 40
          Top = 737
          Width = 77
          Height = 16
          Caption = #50689'         '#49688
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Shape3: TShape
          Left = 150
          Top = 179
          Width = 470
          Height = 1
          Brush.Color = clBlack
        end
        object Shape4: TShape
          Left = 150
          Top = 136
          Width = 1
          Height = 460
          Brush.Color = clBlack
        end
        object Shape5: TShape
          Left = 301
          Top = 136
          Width = 1
          Height = 126
          Brush.Color = clBlack
        end
        object Shape6: TShape
          Left = 467
          Top = 136
          Width = 1
          Height = 126
          Brush.Color = clBlack
        end
        object Shape7: TShape
          Left = 619
          Top = 136
          Width = 1
          Height = 126
          Brush.Color = clBlack
        end
        object Shape8: TShape
          Left = 6
          Top = 299
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape9: TShape
          Left = 6
          Top = 339
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape10: TShape
          Left = 6
          Top = 379
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape11: TShape
          Left = 6
          Top = 261
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape12: TShape
          Left = 619
          Top = 261
          Width = 1
          Height = 119
          Brush.Color = clBlack
        end
        object Label29: TLabel
          Left = 639
          Top = 273
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
          Top = 312
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
          Top = 352
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
        object Shape14: TShape
          Left = 177
          Top = 457
          Width = 450
          Height = 49
          Pen.Width = 2
        end
        object Shape16: TShape
          Left = 6
          Top = 595
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object lblBalDate: TLabel
          Left = 183
          Top = 273
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
          Top = 312
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
          Top = 352
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
          Left = 194
          Top = 471
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
          Left = 196
          Top = 511
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
        object Label15: TLabel
          Left = 307
          Top = 718
          Width = 159
          Height = 16
          Caption = #50948' '#44552#50529#51012' '#50689#49688#54633#45768#45796'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblReceiptDate: TLabel
          Left = 299
          Top = 740
          Width = 170
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
        object Label26: TLabel
          Left = 307
          Top = 766
          Width = 53
          Height = 16
          Caption = #50689#49688#51088':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 6
          Top = 81
          Width = 667
          Height = 27
          Alignment = taCenter
          AutoSize = False
          Caption = #48152'  '#54872'  '#44208'  '#51032'  '#49436
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = #48148#53461
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape2: TShape
          Left = 6
          Top = 686
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape13: TShape
          Left = 6
          Top = 813
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape15: TShape
          Left = 150
          Top = 595
          Width = 1
          Height = 315
          Brush.Color = clBlack
        end
        object Label14: TLabel
          Left = 40
          Top = 635
          Width = 83
          Height = 16
          Caption = #52292'   '#44428'    '#51088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 40
          Top = 852
          Width = 77
          Height = 16
          Caption = #49324'         '#50976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblOwner: TLabel
          Left = 183
          Top = 635
          Width = 410
          Height = 16
          AutoSize = False
          Caption = #54861#44600#46041' '#50808' '#52509'10'#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblBackReason: TLabel
          Left = 183
          Top = 852
          Width = 410
          Height = 16
          AutoSize = False
          Caption = '2023'#45380#46020' 1'#48516#44592' '#54872#44553#49888#52397
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 32
          Top = 473
          Width = 94
          Height = 16
          Caption = #48152'  '#54872'  '#44552'  '#50529
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 24
    Top = 576
    object dxMemData1desc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 24
    Top = 624
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
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = #51648#52636#44208#51032#49436
      ReportDocument.CreationDate = 44967.492225509260000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object q_MONEY_BACK_REPORT: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'insert into money_back_report2 ('
      '    m_year,'
      '    balui_date,'
      '    out_date,'
      '    reg_date1,'
      '    reg_date2,'
      '    out_amount,'
      '    lecture_name,'
      '    lecture_sname,'
      '    pay_date,'
      '    pay_amount,'
      '    back_reason,'
      '    req_addr,'
      '    req_tel,'
      '    req_name,'
      '    req_bank,'
      '    req_bankid,'
      '    dong_id,'
      '    uniq_id,'
      '    m_date)'
      '  values ('
      '    :m_year,'
      '    :balui_date,'
      '    :out_date,'
      '    :reg_date1,'
      '    :reg_date2,'
      '    :out_amount,'
      '    :lecture_name,'
      '    :lecture_sname,'
      '    :pay_date,'
      '    :pay_amount,'
      '    :back_reason,'
      '    :req_addr,'
      '    :req_tel,'
      '    :req_name,'
      '    :req_bank,'
      '    :req_bankid,'
      '    :dong_id,'
      '    :uniq_id,'
      '    :m_date);')
    Left = 224
    Top = 592
    ParamData = <
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
        Name = 'out_date'
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
        Name = 'out_amount'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lecture_name'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lecture_sname'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pay_date'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pay_amount'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'back_reason'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'req_addr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'req_tel'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'req_name'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'req_bank'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'req_bankid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'uniq_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'm_date'
        ParamType = ptInput
      end>
  end
end
