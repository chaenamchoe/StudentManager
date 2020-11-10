object fmSMSManager: TfmSMSManager
  Left = 0
  Top = 0
  Caption = 'SMS'#44288#47532
  ClientHeight = 612
  ClientWidth = 994
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel22: TPanel
    Left = 257
    Top = 0
    Width = 304
    Height = 612
    Align = alLeft
    TabOrder = 0
    object Panel26: TPanel
      Left = 1
      Top = 1
      Width = 302
      Height = 368
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 9
        Width = 55
        Height = 13
        Caption = 'SMS'#51204#49569
      end
      object Label5: TLabel
        Left = 16
        Top = 53
        Width = 26
        Height = 13
        Caption = #45236#50857
      end
      object Label6: TLabel
        Left = 16
        Top = 266
        Width = 26
        Height = 13
        Caption = #49688#49888
      end
      object Label9: TLabel
        Left = 16
        Top = 349
        Width = 82
        Height = 13
        Caption = #51088#51452#50416#45716' '#47928#44396
      end
      object Label10: TLabel
        Left = 16
        Top = 30
        Width = 26
        Height = 13
        Caption = #51228#47785
      end
      object Label11: TLabel
        Left = 16
        Top = 286
        Width = 26
        Height = 13
        Caption = #49569#49888
      end
      object lblBytes: TLabel
        Left = 223
        Top = 250
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = '0/80'
      end
      object btnSMSSend: TBitBtn
        Left = 223
        Top = 120
        Width = 61
        Height = 25
        Caption = #51204#49569
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
          DADAADADAD00ADADADADDADAD0E00000DADAADAD0EEEEEE0ADADDAD70EEEEEE0
          DADAAD04C0E00000ADADD0CCC200C40ADADA74CCC2202C470DAD7CCCC22226C7
          00DA7CC2222200000E0D7C2222240EEEEEE07C8224220EEEEEE077CF8CCC0000
          0E0AA7F8F222220D00ADDA77682220DA0ADAADA777777DADADAD}
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = btnSMSSendClick
      end
      object btnSMSSave: TBitBtn
        Left = 223
        Top = 72
        Width = 61
        Height = 25
        Caption = #51200#51109
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
          030AA03300000000030DD03333333333330AA03300000000330DD03088888888
          030AA03088888888030DD03088888888030AA03088888888030DD03088888888
          000AA03088888888080DD00000000000000AADADADADADADADAD}
        ModalResult = 1
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = btnSMSSaveClick
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 48
        Top = 27
        DataBinding.DataField = 'S_TITLE'
        DataBinding.DataSource = DataModule1.d_SMS_SENTENSE
        TabOrder = 0
        Width = 169
      end
      object mmoMSG: TcxDBMemo
        Left = 48
        Top = 47
        DataBinding.DataField = 'S_CONTENTS'
        DataBinding.DataSource = DataModule1.d_SMS_SENTENSE
        Properties.OnChange = mmoMSGPropertiesChange
        TabOrder = 1
        Height = 216
        Width = 169
      end
      object edtSenderNo: TcxDBTextEdit
        Left = 48
        Top = 283
        DataBinding.DataField = 's_sender'
        DataBinding.DataSource = DataModule1.d_SMS_SENTENSE
        TabOrder = 3
        Width = 169
      end
      object btnSMSDel: TBitBtn
        Left = 223
        Top = 96
        Width = 61
        Height = 25
        Caption = #49325#51228
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
          0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
          BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
          DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = btnSMSDelClick
      end
      object btnSMSInput: TBitBtn
        Left = 223
        Top = 48
        Width = 61
        Height = 25
        Caption = #46321#47197
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
          BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
          DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = btnSMSInputClick
      end
      object edtReceverNo: TcxDBTextEdit
        Left = 48
        Top = 263
        DataBinding.DataField = 'S_RECEIVE'
        DataBinding.DataSource = DataModule1.d_SMS_SENTENSE
        TabOrder = 2
        Width = 169
      end
    end
    object cxGrid13: TcxGrid
      Left = 1
      Top = 369
      Width = 302
      Height = 242
      Align = alClient
      TabOrder = 1
      object gridSentense: TcxGridDBTableView
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
        DataController.DataSource = DataModule1.d_SMS_SENTENSE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '<'#51088#47308#50630#51020'>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridSentenseID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridSentenseS_TITLE: TcxGridDBColumn
          DataBinding.FieldName = 'S_TITLE'
        end
        object gridSentenseS_CONTENTS: TcxGridDBColumn
          DataBinding.FieldName = 'S_CONTENTS'
          Visible = False
        end
      end
      object cxGridLevel9: TcxGridLevel
        GridView = gridSentense
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 612
    Align = alLeft
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 16
      Top = 133
      Width = 217
      Height = 180
      Caption = #47928#51088#51204#49569' '#45800#44032
      TabOrder = 0
      object btnSMSprice: TButton
        Left = 31
        Top = 64
        Width = 153
        Height = 27
        Caption = 'SMS '#51204#49569#45800#44032#54869#51064
        TabOrder = 0
        OnClick = btnSMSpriceClick
      end
      object btnRestPoint: TButton
        Left = 31
        Top = 31
        Width = 153
        Height = 27
        Caption = #52649#51204#51092#50529#54869#51064
        TabOrder = 1
        OnClick = btnRestPointClick
      end
      object btnLMSPrice: TButton
        Left = 31
        Top = 97
        Width = 153
        Height = 27
        Caption = 'LMS '#51204#49569#45800#44032#54869#51064
        TabOrder = 2
        OnClick = btnLMSPriceClick
      end
      object btnMMSPrice: TButton
        Left = 31
        Top = 130
        Width = 153
        Height = 27
        Caption = 'MMS '#51204#49569#45800#44032#54869#51064
        TabOrder = 3
        OnClick = btnMMSPriceClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 17
      Width = 217
      Height = 105
      Caption = #51204#49569#45236#50669' '#48143' '#51092#50529#52649#51204
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 31
        Top = 25
        Width = 153
        Height = 27
        Caption = #51204#49569#45236#50669#51312#54924
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object btnPointSite: TButton
        Left = 31
        Top = 56
        Width = 153
        Height = 27
        Caption = #51092#50529#52649#51204'URL'
        TabOrder = 1
        OnClick = btnPointSiteClick
      end
    end
  end
end
