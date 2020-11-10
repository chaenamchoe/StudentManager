object fmSendingSMS: TfmSendingSMS
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #47928#51088#51204#49569
  ClientHeight = 597
  ClientWidth = 796
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
  object Panel2: TPanel
    Left = 201
    Top = 0
    Width = 175
    Height = 597
    Align = alLeft
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 173
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      Caption = 'SMS '#50696#47928
      TabOrder = 0
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 27
      Width = 173
      Height = 569
      Align = alClient
      BorderWidth = 1
      TabOrder = 1
      LookAndFeel.SkinName = 'DevExpressStyle'
      object gridSample: TcxGridDBTableView
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
        OnFocusedRecordChanged = gridSampleFocusedRecordChanged
        DataController.DataSource = ds_SMS_SAMPLE_SEL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupByHeaderLayout = ghlHorizontal
        OptionsView.Header = False
        object gridSampleID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
        end
        object gridSampleSMS_TEXT: TcxGridDBColumn
          Caption = #47928#51088#49480#54540
          DataBinding.FieldName = 'SMS_TEXT'
          Width = 182
        end
        object gridSampleSMS_KIND: TcxGridDBColumn
          DataBinding.FieldName = 'SMS_KIND'
          Visible = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = gridSample
      end
    end
  end
  object Panel1: TPanel
    Left = 376
    Top = 0
    Width = 420
    Height = 597
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 28
      Width = 418
      Height = 568
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'DevExpressStyle'
      object gridSMS: TcxGridDBTableView
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
        OnCellDblClick = gridSMSCellDblClick
        DataController.DataSource = dSMS
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridSMSRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gridSMSid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object gridSMScheck_send: TcxGridDBColumn
          DataBinding.FieldName = 'check_send'
          HeaderAlignmentHorz = taCenter
          Width = 29
        end
        object gridSMScname: TcxGridDBColumn
          DataBinding.FieldName = 'cname'
          Options.Editing = False
          Options.Focusing = False
          Width = 76
        end
        object gridSMSctel: TcxGridDBColumn
          DataBinding.FieldName = 'ctel'
          Options.Editing = False
          Options.Focusing = False
          Width = 113
        end
        object gridSMSsex: TcxGridDBColumn
          Caption = #45224#50668
          DataBinding.FieldName = 'sex'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Items = <
            item
              Description = #45224#51088
              ImageIndex = 4
              Value = 0
            end
            item
              Description = #50668#51088
              ImageIndex = 5
              Value = 1
            end>
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object gridSMSjob: TcxGridDBColumn
          Caption = #49373#45380#50900#51068
          DataBinding.FieldName = 'job'
          Width = 107
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridSMS
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 418
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnSelectAll: TBitBtn
        Left = 2
        Top = 1
        Width = 39
        Height = 25
        Hint = #51204#52404#49440#53469
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0A0A0A0A
          DADAADADADADAD00ADADDADA0000000B0ADAADAD0FFFFF0B0DADDADA0F99990B
          B0DAADAD0FFFFFF0B0ADDADA0F999990BB0AADAD0FFFFFFF0000DAD4FF99999F
          0110AD444FFFFFFF000DD44447F99F0007DA444D44FFFF0F0DAD74DAD44FFF00
          DADAADADAD47F00DADADDADADAD4DADADADAADADADAD4DADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnSelectAllClick
      end
      object btnDeselect: TBitBtn
        Left = 41
        Top = 1
        Width = 39
        Height = 25
        Hint = #51204#52404#54644#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0A0A0A0A
          DADAADADADADAD00ADADDADA0000000B0ADAADAD0FFFFF0B0DADDADA0F99990B
          B0DAADAD0FFFFFF0B0ADDADA0F999990BB0AA1AD0FFFFFFF0000D11A0F99199F
          0110A717FF717FFF000DDA117711FF0007DAAD71111FFF0F0DADDA7111FFFF00
          DADAA711117F000DADADD117D117DADADADAADADAD117DADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnDeselectClick
      end
      object btnSMSSend: TBitBtn
        Left = 196
        Top = 1
        Width = 92
        Height = 25
        Caption = 'SMS '#51204#49569
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
          DADAADADAD00ADADADADDADAD0E00000DADAADAD0EEEEEE0ADADDAD70EEEEEE0
          DADAAD04C0E00000ADADD0CCC200C40ADADA74CCC2202C470DAD7CCCC22226C7
          00DA7CC2222200000E0D7C2222240EEEEEE07C8224220EEEEEE077CF8CCC0000
          0E0AA7F8F222220D00ADDA77682220DA0ADAADA777777DADADAD}
        TabOrder = 2
        OnClick = btnSMSSendClick
      end
      object BitBtn1: TBitBtn
        Left = 347
        Top = 1
        Width = 60
        Height = 25
        Caption = #51333#47308
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
          DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
          DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
          0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
        ModalResult = 1
        TabOrder = 3
      end
      object btnAddTemp: TBitBtn
        Left = 91
        Top = 1
        Width = 38
        Height = 25
        Hint = #52628#44032
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnAddTempClick
      end
      object btnDelTemp: TBitBtn
        Left = 130
        Top = 1
        Width = 38
        Height = 25
        Hint = #49325#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnDelTempClick
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 597
    Align = alLeft
    TabOrder = 2
    object Label5: TLabel
      Left = 24
      Top = 11
      Width = 52
      Height = 13
      Caption = #51204#49569#45236#50857
    end
    object Label4: TLabel
      Left = 91
      Top = 11
      Width = 68
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'SMS('#45800#47928')'
    end
    object lblBytes: TLabel
      Left = 118
      Top = 186
      Width = 55
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0/90'
    end
    object Label11: TLabel
      Left = 9
      Top = 211
      Width = 52
      Height = 13
      Caption = #49569#49888#48264#54840
    end
    object Label2: TLabel
      Left = 9
      Top = 328
      Width = 176
      Height = 78
      Caption = 
        'SMS('#45800#47928') : 90'#48148#51060#53944' '#44620#51648'. '#13#10'90'#48148#51060#53944#44032' '#45336#51004#47732' '#51088#46041#51004#47196' '#13#10'LMS('#51109#47928')'#51004#47196' '#51204#49569#46121#45768#45796'. '#13#10#44033' '#49436#48708#49828 +
        ' '#51333#47448#50640' '#46384#46972' '#48708#50857#51060' '#13#10#45796#47476#44172' '#52293#51221#46120#51012' '#51452#51032#54616#49464#50836'. '#13#10' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 7
      Top = 252
      Width = 178
      Height = 65
      Caption = 
        #8251#47928#51088#51204#49569#49884' '#50976#51032#49324#54637#8251#13#10#51221#48372#53685#49888#48277#50640' '#51032#54644' '#44305#44256#49457#47928#51088#13#10#45716'  ('#44305#44256')'#47928#44396#50752' '#47924#47308#49688#49888#44144#48512#13#10#48264#54840#47484' '#51228#44277#54644#50556' '#54633#45768#45796'.'#13 +
        #10#50629#47924#50857' '#47928#51088#47564' '#51204#49569#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 24
      Top = 30
      Width = 151
      Height = 151
      Color = clCream
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
      OnChange = Memo1Change
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 411
      Width = 185
      Height = 103
      Caption = #49324#50857#51088' '#51221#48372
      TabOrder = 1
      object lblCorpName: TLabel
        Left = 15
        Top = 24
        Width = 42
        Height = 13
        Caption = #54924#49324#47749
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCorpID: TLabel
        Left = 15
        Top = 43
        Width = 70
        Height = 13
        Caption = #49324#50629#51088#48264#54840
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUserName: TLabel
        Left = 15
        Top = 62
        Width = 56
        Height = 13
        Caption = #45812#45817#51088#47749
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRestPoint: TLabel
        Left = 15
        Top = 81
        Width = 42
        Height = 13
        Caption = #54252#51064#53944
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object edtSender: TcxComboBox
      Left = 9
      Top = 225
      OnFocusChanged = edtSenderFocusChanged
      TabOrder = 2
      Text = 'edtSender'
      Width = 121
    end
    object btnAdd: TcxButton
      Left = 133
      Top = 224
      Width = 26
      Height = 23
      Hint = #49569#49888#48264#54840#52628#44032
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
        82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
        59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
        45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
        44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
        D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
        3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
        3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
        5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnAddClick
    end
    object btnDel: TcxButton
      Left = 160
      Top = 224
      Width = 26
      Height = 23
      Hint = #49440#53469#48264#54840#49325#51228
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFDEAF75FFDEAF75FFDEB074FFDDAF
        75FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFDFB279FFE0B379FFE0B27AFFE0B2
        79FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFE1B67EFFE2B67FFFE2B77FFFE2B7
        7FFFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFE8C494FFE8C594FFE8C495FFE8C4
        95FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFB0794AFFAB7245FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF5EEE9FFFAF6F3FFFAF7F3FFFBF7F4FFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE6D9D2FFE7DBD4FFE9DED7FFEAE0D9FFEAE0DAFFEBE1
        DBFFEBE0DBFFEEE5E1FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFF1D7ABFFF1D8ADFFF1D8ADFFF1D8
        ADFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFF3DCB3FFF3DEB4FFF3DEB4FFF3DE
        B4FFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFF4E1B9FFF5E3BBFFF5E2BBFFF5E2
        BBFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnDelClick
    end
    object btnAddSample: TcxButton
      AlignWithMargins = True
      Left = 24
      Top = 181
      Width = 29
      Height = 23
      Hint = #50696#47928#52628#44032
      Margins.Left = 5
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
        82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
        59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
        45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
        44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
        D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
        3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
        3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
        5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnAddSampleClick
    end
    object btnDelSample: TcxButton
      AlignWithMargins = True
      Left = 84
      Top = 181
      Width = 29
      Height = 23
      Hint = #50696#47928#49325#51228
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFDEAF75FFDEAF75FFDEB074FFDDAF
        75FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFDFB279FFE0B379FFE0B27AFFE0B2
        79FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFE1B67EFFE2B67FFFE2B77FFFE2B7
        7FFFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFE8C494FFE8C594FFE8C495FFE8C4
        95FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFB0794AFFAB7245FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF5EEE9FFFAF6F3FFFAF7F3FFFBF7F4FFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE6D9D2FFE7DBD4FFE9DED7FFEAE0D9FFEAE0DAFFEBE1
        DBFFEBE0DBFFEEE5E1FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFF1D7ABFFF1D8ADFFF1D8ADFFF1D8
        ADFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFF3DCB3FFF3DEB4FFF3DEB4FFF3DE
        B4FFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFF4E1B9FFF5E3BBFFF5E2BBFFF5E2
        BBFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnDelSampleClick
    end
    object btnEditSample: TcxButton
      AlignWithMargins = True
      Left = 54
      Top = 181
      Width = 29
      Height = 23
      Hint = #50696#47928#49688#51221
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001F421C11FF30140DEC190A06B30304
        075F0000001B0000000500000000000000000000000000000000000000000000
        00000000000000000000000000000000001E663C2BE7B9C7D2FF7889A2FF2441
        82FF051033AF0000002100000005000000000000000000000000000000000000
        0002000000090000000E0000000F0000002041261BAE879AB2FFC8E3F5FF1F66
        B6FF2B6BA8FF051236AD0000001F000000040000000000000000000000000000
        00088C6657C0C38C7AFFC38C79FFCBA395FFA89894FF488BC3FFDEFEFDFF51B4
        E3FF1F68B7FF3173AEFF061538AA0000001C0000000400000000000000000000
        000CC5917EFFFDFBFAFFFCF8F6FFFAF7F5FFECEAE9FF7CA3BFFF479FD2FFDEFE
        FDFF59BFE9FF216BB9FF367BB3FF07173AA70000001A00000004000000000000
        000CC79481FFFEFBFAFFF9F0EAFFF8F0EAFFF7F0EBFFE8E4E1FF7EA4BFFF4BA5
        D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF081A3DA300000018000000000000
        000BC99786FFFEFCFBFFF9F2EDFFF9F2EDFFF9F0EBFFF8F2EDFFEBE7E5FF82A7
        C2FF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F9E000000000000
        000ACB9C8BFFFEFDFCFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF8F2EEFFEDE9
        E7FF85ABC7FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF000000000000
        0009CFA08DFFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF8F4
        EFFFEFECE9FF89AECAFF54B1DCFFDEFEFDFF4FA6D4FF102C4E93000000000000
        0009D0A393FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
        EFFFFAF6F1FFF3EFEDFF83A0B8FF357FBCFF173A598F0000000C000000000000
        0008D3A897FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
        F1FFFBF5F0FFFAF6F3FFE2CCC4FF000000160000000600000001000000000000
        0007D3AB9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFBF6F1FFD1A494FF0000000C0000000000000000000000000000
        0006D8AE9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7
        F5FFFBF7F4FFFCF7F3FFD3A897FF0000000B0000000000000000000000000000
        0006D8B0A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8
        F6FFFBF7F6FFFCF7F5FFD4AC9BFF0000000A0000000000000000000000000000
        0005D9B3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFD7AE9EFF000000090000000000000000000000000000
        0003A3867AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3
        A2FFD9B2A2FFD8B2A2FFA08377C2000000060000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnEditSampleClick
    end
    object btnPointSite: TButton
      Left = 37
      Top = 519
      Width = 122
      Height = 27
      Caption = #51092#50529#51312#54924' '#48143' '#52649#51204
      TabOrder = 8
      OnClick = btnPointSiteClick
    end
    object btnSMSHistory: TBitBtn
      Left = 37
      Top = 546
      Width = 122
      Height = 27
      Caption = #51204#49569#45236#50669#51312#54924
      TabOrder = 9
      OnClick = btnSMSHistoryClick
    end
  end
  object mdSMS: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 456
    Top = 424
    object mdSMSid: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object mdSMScheck_send: TBooleanField
      Alignment = taCenter
      DisplayLabel = #9733
      FieldName = 'check_send'
    end
    object mdSMScname: TStringField
      DisplayLabel = #49457#47749
      FieldName = 'cname'
      Size = 30
    end
    object mdSMSctel: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'ctel'
      Size = 30
    end
    object mdSMSjob: TStringField
      FieldName = 'job'
    end
    object mdSMSsex: TIntegerField
      FieldName = 'sex'
    end
  end
  object dSMS: TDataSource
    DataSet = mdSMS
    Left = 456
    Top = 472
  end
  object SMS_USER_SEL: TUniStoredProc
    StoredProcName = 'SMS_USER_SEL'
    Connection = dm.UniConnection1
    Left = 600
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'UID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CERTKEY'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COPRNUM'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CORPNAME'
        ParamType = ptOutput
        Size = 70
      end
      item
        DataType = ftString
        Name = 'CEONAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BIZTYPE'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'BIZCLASS'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'POSTNUM'
        ParamType = ptOutput
        Size = 9
      end
      item
        DataType = ftString
        Name = 'ADDR1'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftString
        Name = 'ADDR2'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftString
        Name = 'MEMBERNAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'PWD'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'MASTER_TEL'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_USER_SEL'
    object SMS_USER_SELUID: TIntegerField
      FieldName = 'UID'
    end
    object SMS_USER_SELCERTKEY: TStringField
      FieldName = 'CERTKEY'
      Size = 50
    end
    object SMS_USER_SELCOPRNUM: TStringField
      FieldName = 'COPRNUM'
      Size = 10
    end
    object SMS_USER_SELCORPNAME: TStringField
      FieldName = 'CORPNAME'
      Size = 70
    end
    object SMS_USER_SELCEONAME: TStringField
      FieldName = 'CEONAME'
      Size = 30
    end
    object SMS_USER_SELBIZTYPE: TStringField
      FieldName = 'BIZTYPE'
      Size = 40
    end
    object SMS_USER_SELBIZCLASS: TStringField
      FieldName = 'BIZCLASS'
      Size = 40
    end
    object SMS_USER_SELPOSTNUM: TStringField
      FieldName = 'POSTNUM'
      Size = 9
    end
    object SMS_USER_SELADDR1: TStringField
      FieldName = 'ADDR1'
      Size = 200
    end
    object SMS_USER_SELADDR2: TStringField
      FieldName = 'ADDR2'
      Size = 200
    end
    object SMS_USER_SELMEMBERNAME: TStringField
      FieldName = 'MEMBERNAME'
      Size = 30
    end
    object SMS_USER_SELID: TStringField
      FieldName = 'ID'
    end
    object SMS_USER_SELPWD: TStringField
      FieldName = 'PWD'
    end
    object SMS_USER_SELTEL: TStringField
      FieldName = 'TEL'
    end
    object SMS_USER_SELEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object SMS_USER_SELMASTER_TEL: TStringField
      FieldName = 'MASTER_TEL'
    end
  end
  object ds_SMS_USER_SEL: TDataSource
    DataSet = SMS_USER_SEL
    Left = 600
    Top = 248
  end
  object SMS_SENDER_TEL_SEL: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_SEL'
    Connection = dm.UniConnection1
    Left = 600
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CENTER_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_SEL'
    object SMS_SENDER_TEL_SELID: TIntegerField
      FieldName = 'ID'
    end
    object SMS_SENDER_TEL_SELCENTER_NAME: TStringField
      FieldName = 'CENTER_NAME'
    end
    object SMS_SENDER_TEL_SELTEL_NO: TStringField
      FieldName = 'TEL_NO'
    end
  end
  object SMS_SENDER_TEL_INS: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_INS'
    Connection = dm.UniConnection1
    Left = 600
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'CENTER_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptInput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_INS'
  end
  object ds_SMS_SENDER_TEL_SEL: TDataSource
    DataSet = SMS_SENDER_TEL_SEL
    Left = 600
    Top = 344
  end
  object SMS_SENDER_TEL_DEL: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_DEL'
    Connection = dm.UniConnection1
    Left = 456
    Top = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_DEL'
  end
  object SMS_SAMPLE_SEL: TUniStoredProc
    StoredProcName = 'SMS_SAMPLE_SEL'
    Connection = dm.UniConnection1
    Left = 280
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftMemo
        Name = 'SMS_TEXT'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'SMS_KIND'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'SMS_SAMPLE_SEL'
    object SMS_SAMPLE_SELID: TIntegerField
      FieldName = 'ID'
    end
    object SMS_SAMPLE_SELSMS_TEXT: TMemoField
      FieldName = 'SMS_TEXT'
      BlobType = ftMemo
    end
    object SMS_SAMPLE_SELSMS_KIND: TIntegerField
      FieldName = 'SMS_KIND'
    end
  end
  object ds_SMS_SAMPLE_SEL: TDataSource
    DataSet = SMS_SAMPLE_SEL
    Left = 280
    Top = 408
  end
  object SMS_SAMPLE_INS: TUniStoredProc
    StoredProcName = 'SMS_SAMPLE_INS'
    Connection = dm.UniConnection1
    Left = 280
    Top = 208
    ParamData = <
      item
        DataType = ftMemo
        Name = 'SMS_TEXT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'SMS_KIND'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'SMS_SAMPLE_INS'
  end
  object SMS_SAMPLE_UPD: TUniStoredProc
    StoredProcName = 'SMS_SAMPLE_UPD'
    Connection = dm.UniConnection1
    Left = 280
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'SMS_TEXT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'SMS_KIND'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'SMS_SAMPLE_UPD'
  end
  object SMS_SAMPLE_DEL: TUniStoredProc
    StoredProcName = 'SMS_SAMPLE_DEL'
    Connection = dm.UniConnection1
    Left = 280
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'SMS_SAMPLE_DEL'
  end
end
