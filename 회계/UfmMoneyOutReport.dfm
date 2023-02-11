object fmMoneyOutReport: TfmMoneyOutReport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #51648#52636#44208#51032#49436
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
      Height = 143
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
        Caption = #51648#52636#51068#51088':'
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
        Caption = #51648#52636#44552#50529':'
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
      object edtRegDate2: TcxDateEdit
        Left = 119
        Top = 87
        Properties.OnEditValueChanged = edtRegDate2PropertiesEditValueChanged
        TabOrder = 3
        Width = 121
      end
      object edtAmount: TcxCurrencyEdit
        Left = 120
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
      Top = 153
      Width = 305
      Height = 160
      Align = alTop
      Caption = #52292#51452
      TabOrder = 1
      object Label7: TLabel
        Left = 33
        Top = 89
        Width = 43
        Height = 13
        Caption = #51008#54665#47749':'
      end
      object Label8: TLabel
        Left = 33
        Top = 111
        Width = 43
        Height = 13
        Caption = #50696#44552#51452':'
      end
      object Label9: TLabel
        Left = 20
        Top = 133
        Width = 56
        Height = 13
        Caption = #44228#51340#48264#54840':'
      end
      object Label10: TLabel
        Left = 46
        Top = 67
        Width = 30
        Height = 13
        Caption = #51452#49548':'
      end
      object Label11: TLabel
        Left = 46
        Top = 45
        Width = 30
        Height = 13
        Caption = #49345#54840':'
      end
      object Label12: TLabel
        Left = 33
        Top = 23
        Width = 43
        Height = 13
        Caption = #52292#51452#47749':'
      end
      object edtOwener: TEdit
        Left = 82
        Top = 20
        Width = 121
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
        OnChange = edtOwenerChange
      end
      object edtComp: TEdit
        Left = 82
        Top = 42
        Width = 215
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
        OnChange = edtCompChange
      end
      object edtAddr: TEdit
        Left = 82
        Top = 64
        Width = 215
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 2
        OnChange = edtAddrChange
      end
      object edtBankName: TEdit
        Left = 82
        Top = 86
        Width = 215
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 3
        OnChange = edtBankNameChange
      end
      object edtBankOwener: TEdit
        Left = 82
        Top = 108
        Width = 215
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 4
        OnChange = edtBankOwenerChange
      end
      object edtBankID: TEdit
        Left = 82
        Top = 130
        Width = 215
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 5
        OnChange = edtBankIDChange
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 319
      Width = 305
      Height = 146
      Align = alTop
      Caption = #51648#52636#45236#50669
      TabOrder = 2
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 295
        Height = 96
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
            Caption = #51648#52636#45236#50669
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
        Top = 117
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
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 471
      Width = 305
      Height = 72
      Align = alTop
      Caption = #48708#44256#49324#54637
      TabOrder = 3
      object edtBigo: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 295
        Height = 49
        Align = alClient
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
        OnChange = edtBigoChange
      end
    end
    object btnSave: TBitBtn
      Left = 102
      Top = 583
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
      TabOrder = 4
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
        Left = 360
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
          Top = 132
          Width = 672
          Height = 824
          Pen.Width = 2
        end
        object Label14: TLabel
          Left = 6
          Top = 81
          Width = 667
          Height = 27
          Alignment = taCenter
          AutoSize = False
          Caption = #51648'  '#52636'  '#44208'  '#51032'  '#49436
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
          Left = 151
          Top = 145
          Width = 154
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = #45812#45817#51088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 310
          Top = 145
          Width = 154
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = #48512#54924#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 469
          Top = 145
          Width = 148
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = #54924'   '#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 640
          Top = 167
          Width = 20
          Height = 48
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
          Caption = #51648'    '#52636'    '#51068
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 22
          Top = 386
          Width = 112
          Height = 16
          Caption = #51648#52636#45236#50669#48512#44592#51116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 36
          Top = 476
          Width = 79
          Height = 16
          Caption = #51648' '#52636' '#44552' '#50529
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 36
          Top = 606
          Width = 79
          Height = 16
          Caption = #51648' '#52636' '#45236' '#50669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 40
          Top = 731
          Width = 77
          Height = 16
          Caption = #52292'         '#51452
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 40
          Top = 834
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
        object Label28: TLabel
          Left = 40
          Top = 910
          Width = 77
          Height = 16
          Caption = #48708'         '#44256
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
          Left = 305
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
        object Shape12: TShape
          Left = 619
          Top = 281
          Width = 1
          Height = 136
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
        object Label32: TLabel
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
        object Shape13: TShape
          Left = 6
          Top = 555
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape14: TShape
          Left = 183
          Top = 450
          Width = 450
          Height = 49
          Pen.Width = 2
        end
        object Shape15: TShape
          Left = 6
          Top = 683
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Shape16: TShape
          Left = 6
          Top = 801
          Width = 672
          Height = 1
          Brush.Color = clBlack
        end
        object Label33: TLabel
          Left = 175
          Top = 694
          Width = 47
          Height = 16
          Caption = #49457'  '#47749':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 383
          Top = 694
          Width = 47
          Height = 16
          Caption = #49345'  '#54840':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 175
          Top = 718
          Width = 47
          Height = 16
          Caption = #51452'  '#49548':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 175
          Top = 747
          Width = 53
          Height = 16
          Caption = #51008#54665#47749':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 383
          Top = 747
          Width = 53
          Height = 16
          Caption = #50696#44552#51452':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 175
          Top = 773
          Width = 69
          Height = 16
          Caption = #44228#51340#48264#54840':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object Shape17: TShape
          Left = 6
          Top = 886
          Width = 672
          Height = 1
          Brush.Color = clBlack
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
        object lblRegDate2: TLabel
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
        object lblAmountText: TLabel
          Left = 200
          Top = 464
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
          Top = 504
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
        object lblDesc1: TLabel
          Left = 172
          Top = 570
          Width = 493
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc2: TLabel
          Left = 172
          Top = 592
          Width = 493
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc3: TLabel
          Left = 172
          Top = 614
          Width = 493
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc4: TLabel
          Left = 172
          Top = 636
          Width = 493
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblDesc5: TLabel
          Left = 172
          Top = 658
          Width = 493
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblName: TLabel
          Left = 228
          Top = 694
          Width = 141
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblComp: TLabel
          Left = 436
          Top = 694
          Width = 213
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblAddr: TLabel
          Left = 228
          Top = 718
          Width = 429
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblBankName: TLabel
          Left = 233
          Top = 747
          Width = 120
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblBankOwener: TLabel
          Left = 442
          Top = 747
          Width = 167
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblBankID: TLabel
          Left = 250
          Top = 773
          Width = 271
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #48148#53461
          Font.Style = []
          ParentFont = False
        end
        object lblBigo: TLabel
          Left = 168
          Top = 910
          Width = 497
          Height = 16
          AutoSize = False
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
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = #51648#52636#44208#51032#49436
      ReportDocument.CreationDate = 44967.492655219910000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object q_MONEY_OUT_REPORT_INS: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'insert into money_out_report2 ('
      '    m_year,'
      '    balui_date,'
      '    out_date,'
      '    reg_date1,'
      '    reg_date2,'
      '    out_amount,'
      '    bank_name,'
      '    bank_id,'
      '    bank_owener,'
      '    owener_addr,'
      '    awener_comp,'
      '    bigo,'
      '    dong_id,'
      '    uniq_id,'
      '    m_date,'
      '    out_list)'
      '  values ('
      '    :m_year,'
      '    :balui_date,'
      '    :out_date,'
      '    :reg_date1,'
      '    :reg_date2,'
      '    :out_amount,'
      '    :bank_name,'
      '    :bank_id,'
      '    :bank_owener,'
      '    :owener_addr,'
      '    :awener_comp,'
      '    :bigo,'
      '    :dong_id,'
      '    :uniq_id,'
      '    :m_date,'
      '    :out_list);')
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
        Name = 'bank_name'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'bank_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'bank_owener'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'owener_addr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'awener_comp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'bigo'
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
      end
      item
        DataType = ftString
        Name = 'out_list'
        ParamType = ptInput
      end>
  end
end
