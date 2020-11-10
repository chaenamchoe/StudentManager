object fmStudentView: TfmStudentView
  Left = 0
  Top = 0
  Caption = #49688#44053#51088#54788#54889
  ClientHeight = 644
  ClientWidth = 1056
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
    Width = 1056
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 61
      Height = 13
      Caption = #49688#44053#51088#47749':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnAdd: TBitBtn
      Left = 232
      Top = 2
      Width = 60
      Height = 25
      Hint = #46321#47197
      Caption = #46321#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
        DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
        DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
        DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnAddClick
    end
    object btnEdit: TBitBtn
      Left = 293
      Top = 2
      Width = 60
      Height = 25
      Hint = #49688#51221
      Caption = #49688#51221
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
        BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
        DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnEditClick
    end
    object btnDelete: TBitBtn
      Left = 354
      Top = 2
      Width = 87
      Height = 25
      Hint = #49440#53469#49325#51228
      Caption = #49440#53469#49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
        DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
        DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
        0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnDeleteClick
    end
    object edtName: TEdit
      Left = 75
      Top = 4
      Width = 91
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
    object btnRetrieve: TBitBtn
      Left = 168
      Top = 2
      Width = 60
      Height = 25
      Caption = #44160#49353
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
        FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
        FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
        FF0A444444444444444D444444444444444A444444444444444D}
      TabOrder = 1
      OnClick = btnRetrieveClick
    end
    object chkFilter: TCheckBox
      Left = 568
      Top = 7
      Width = 51
      Height = 17
      Caption = #54596#53552
      TabOrder = 5
      OnClick = chkFilterClick
    end
    object chkGroup: TCheckBox
      Left = 634
      Top = 7
      Width = 51
      Height = 17
      Caption = #44536#47353
      TabOrder = 6
      OnClick = chkGroupClick
    end
    object btnExport: TBitBtn
      Left = 884
      Top = 2
      Width = 36
      Height = 25
      Hint = #50641#49472#51200#51109
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADADADAD00000000000000006666007777777706E
        EF0AA0E6666606EEF0ADDA0E66606EEF060AADA0E606EEF0000DDADA006EEF0A
        DADAADAD06EEF00DADADDAD06EEF0670DADAAD06EEF0E6670DADD06EEF0A0E66
        70DA0FFFF0ADA0EEEE0D00000ADADA00000AADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnExportClick
    end
    object btnPrint: TBitBtn
      Left = 920
      Top = 2
      Width = 35
      Height = 25
      Hint = #52636#47141
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD00000000000DADD0888888888080DA000000000000080D0888888BBB88
        000A088888877788080D00000000000008800888888888808080D00000000008
        0800AD0FFFFFFFF08080DAD0F00000F0000AADA0FFFFFFFF0DADDADA0F00000F
        0ADAADAD0FFFFFFFF0ADDADAD000000000DAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnPrintClick
    end
    object btnExcelImport: TBitBtn
      Left = 785
      Top = 2
      Width = 99
      Height = 25
      Caption = #50641#49472#50676#44592
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000090000
        000E000000100000001000000010000000100000001000000011000000110000
        001100000011000000100000000B00000003000000000000000017417CCA2159
        A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
        A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
        B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
        E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
        BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
        E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
        D2FF3C87C6FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
        EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
        E6FF4FA0D5FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
        EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
        F5FF75C8EDFF55A3D7FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
        FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
        FEFF97E5FCFF62BBE7FF4AA0D6FF4A9DD5FF91C3E3FF8DBCDCFF8FBDE0FF5FA3
        D6FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
        FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFFBBE6F3FFA68E78FFA6BABDFFB2E1
        F3FFB9E6F7FFB3E0F0FF8EADD1FF000000180000000B00000007398ECBFFD0F8
        FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFD3EDF3FFAD744CFF9A6841FFBEB8
        ADFFD1E1E3FF975D32FF8A6E59FF0C07032E00000007000000013B92CEFFD3F9
        FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF9CC3E0FFAD886CFFDBB891FFB07F
        53FF9B643AFF9F663DFFDBB67EFF8E5D33EF311D0F67000000063D97D1FFE2FC
        FEFFE2FCFEFFE1FCFEFFD3F3FAFF428FC1EC0B111523382A1E58C49870FFEAD2
        B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000082E739DBF3E9A
        D3FF3E99D3FF3E99D3FF3E97D2FF143245590000000200000003382C204E9877
        58CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B00000003000000020000
        0003000000030000000400000003000000020000000000000000000000010000
        000200000005CAA27AFF846A50AC110D0A1B0000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000000000000000000000}
      TabOrder = 9
      OnClick = btnExcelImportClick
    end
    object btnAutoRemake: TBitBtn
      Left = 447
      Top = 2
      Width = 110
      Height = 25
      Hint = #49440#53469#49325#51228
      Caption = #44048#47732#51116#51648#51221
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888808888800008800009088880078888008990888800888800899
        9088880088800899990888800000089999908887088008999999888870800899
        9998888887000899998888888870089998888888887008998888888880000898
        8888888888888888888888888888888888888888888888888888}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnAutoRemakeClick
    end
    object btnSMS: TcxButton
      Left = 697
      Top = 2
      Width = 87
      Height = 25
      Caption = #47928#51088#51204#49569
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00310000003400000036000000380000003B0000003D00000040000000430000
        0044000000470000004A0000004C000000500000005200000000000000000000
        001400000016000000190000001B0000001D0000001E00000021000000230000
        0026000000280000002A0000002D0000002F0000003200000000000000000000
        00030000000400000005000000060000000700000008000000090000000B0000
        000C0000000D0000000F00000011000000130000001500000000000000000000
        0000000000000000000000000000000000001721AAFF0E1385FF0505338B0000
        00150000000C0000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000002D43D4FF445FF4FF503A31FF4934
        2CFF221814990000001200000003000000000000000000000000000000040000
        00090000000B0000000C0000000C0000000C19256F8B5D463CFF78594DFF7151
        45FF45396CFF04062EA000000016000000030000000000000000122533553776
        A2EA3C81B2FF397FB0FF377EB0FF7FACCCFFC2D3DEFF654D41FFA39596FF6C5D
        99FF5E61E3FF242792FF202858CB0000001500000002000000003F81AEF37BB7
        D8FF87D3F2FF83D1F0FF7ECEF0FF7ACCEFFFD8ECF5FF999594FF7E7EA6FF9EA7
        F2FF686CE6FF696CE6FF282B98FF070A389C0000000F00000002478BBAFFB7E6
        F7FF8ED7F3FF818F92FF786D63FF73675EFFADDEF5FFD2CFCDFF6E71AAFF6E78
        C6FFA7B1F4FF7279E9FF7278E9FF2B309EFF0A0D3F990000000E4B8EBCFFBFE9
        F9FF97DBF4FF80776CFF8ED7F3FF786E64FF87D3F2FFA49D96FFD9ECF4FF7478
        B3FF747FCEFFB0BAF6FF7D85ECFF7D83ECFF3238A4FF0A0E3E8C4E93BFFFC7ED
        FAFF9DDEF5FF8B9898FF80776DFF7B7268FF8ED7F3FF74685EFFB4E3F5FFD4D1
        CFFF7E8DCDFF7B86D5FFBAC5F8FF8990EFFF8D95EBFF181F85F05296C1FFCFF0
        FBFFA5E2F6FFA1E0F6FF9FDEF5FF80766CFF96DBF4FF796E63FF74675EFFAAB2
        B4FFDDEFF6FF8492D4FF7B86D8FFC8D5FAFFA7B3EBFF171F7CCC5599C4FFD6F3
        FBFFBEEBFAFF93A1A2FF867D74FF92AEB5FF9FDEF5FF7C7268FF96DBF4FF93D9
        F4FFBAE7F8FFDEF0F8FF8897D5FF5F69C9F4333C99CD0406162B5A9CC6FF9CC9
        E1FFD7F3FBFFD3F1FBFFCEF0FBFFC9EEFAFFC5ECF9FFACC7CFFFBAE8F8FFB5E5
        F8FFAFE3F7FFA6CFE5FFC6DAE8FF0000000A000000040000000217273144487C
        9DCC599BC5FF569AC4FF5498C3FF5296C1FF4F94C0FF4D91BEFF4B90BCFF498D
        BBFF478CBAFF39749AD910212D47000000020000000000000000000000010000
        0003000000040000000400000004000000040000000500000005000000050000
        0005000000050000000400000002000000000000000000000000}
      TabOrder = 11
      OnClick = btnSMSClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1056
    Height = 615
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridStudent: TcxGridDBTableView
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
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellDblClick = gridStudentCellDblClick
      DataController.DataSource = dm.d_STUDENTS_SEL
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridStudentID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridStudentREG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATE'
        Width = 83
      end
      object gridStudentS_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'S_NAME'
        Width = 65
      end
      object gridStudentS_BIRTH: TcxGridDBColumn
        DataBinding.FieldName = 'S_BIRTH'
        Width = 77
      end
      object gridStudentS_SEX: TcxGridDBColumn
        DataBinding.FieldName = 'S_SEX'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #45224
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #50668
            Value = 2
          end>
        Width = 41
      end
      object gridStudentS_KIND: TcxGridDBColumn
        Caption = #44048#47732#50668#48512
        DataBinding.FieldName = 'S_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dm.d_DC_KIND
        OnCustomDrawCell = gridStudentS_KINDCustomDrawCell
        Width = 83
      end
      object gridStudentS_TEL: TcxGridDBColumn
        DataBinding.FieldName = 'S_TEL'
        Width = 97
      end
      object gridStudentS_DONG: TcxGridDBColumn
        DataBinding.FieldName = 'S_DONG'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DONG'
          end>
        Properties.ListSource = dm.d_DONG_CODE
        Width = 74
      end
      object gridStudentS_ADDR: TcxGridDBColumn
        DataBinding.FieldName = 'S_ADDR'
        Width = 205
      end
      object gridStudentCASH_RECEIPT_NO: TcxGridDBColumn
        Caption = #54788#44552#50689#49688#51613#48264#54840
        DataBinding.FieldName = 'CASH_RECEIPT_NO'
        Width = 147
      end
      object gridStudentCASH_RECEIPT_YESNO: TcxGridDBColumn
        Caption = #48156#54665#50668#48512
        DataBinding.FieldName = 'CASH_RECEIPT_YESNO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.AllowGrayed = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 59
      end
      object gridStudentS_EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'S_EMAIL'
        Width = 184
      end
      object gridStudentBIGO: TcxGridDBColumn
        Caption = #48708#44256#49324#54637
        DataBinding.FieldName = 'BIGO'
        Width = 251
      end
      object gridStudentDONG_ID: TcxGridDBColumn
        Caption = #46041'ID'
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
      end
      object gridStudentBANK_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_NAME'
        Visible = False
      end
      object gridStudentBANK_ID: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_ID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridStudent
    end
  end
  object PanelMsg: TPanel
    Left = 360
    Top = 178
    Width = 305
    Height = 87
    Color = clBlue
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 25
      Top = 22
      Width = 249
      Height = 13
      Caption = #45824#49345#51088' '#44160#49353' '#48143' '#50629#45936#51060#53944' '#51089#50629#51473#51077#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelName: TLabel
      Left = 25
      Top = 43
      Width = 108
      Height = 13
      Caption = #51104#49884' '#44592#45796#47532#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PrintTitle = 'test'
    Version = 0
    Left = 408
    Top = 400
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # / Pages #]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleFactor = 95
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44008.600547071760000000
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #49688#44053#51088' '#47532#49828#53944
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 920
    Top = 504
  end
  object q_student_update: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'update students set s_kind = 2'
      'where id = :id')
    Left = 168
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
      end>
  end
end
