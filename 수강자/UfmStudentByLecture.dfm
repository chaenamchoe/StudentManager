object fmStudentByLecture: TfmStudentByLecture
  Left = 0
  Top = 0
  Caption = #44053#51340#48324' '#49688#44053#51088' '#54788#54889
  ClientHeight = 655
  ClientWidth = 1043
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
    Width = 1043
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
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
      Left = 160
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
    object Label3: TLabel
      Left = 334
      Top = 7
      Width = 47
      Height = 13
      Caption = #44053#51340#47749':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbLecture: TcxLookupComboBox
      Left = 383
      Top = 4
      Properties.AutoSelect = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'L_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = d_lecture_select
      Properties.OnEditValueChanged = cbLecturePropertiesEditValueChanged
      EditValue = ''
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 153
    end
    object btnSendSMS: TBitBtn
      Left = 632
      Top = 2
      Width = 98
      Height = 25
      Caption = #47928#51088#51204#49569
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0A0A0A0A
        DADAADADADADAD00ADADDADA0000000B0ADAADAD0FFFFF0B0DADDADA0F99990B
        B0DAADAD0FFFFFF0B0ADDADFFFF99990BB0AADAF4FFFFFFF0000FFFF44F9999F
        01104444444FFFFF000D44444444FF0007DA444444444F0F0DAD44444444FF00
        DADA4444444F000DADADDADA44FADADADADAADAD4FADADADADAD}
      TabOrder = 1
    end
    object cbStep1: TComboBox
      Left = 197
      Top = 4
      Width = 62
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 4
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 2
      Text = '1'#48516#44592
      OnChange = cbStep1Change
      Items.Strings = (
        '1'#48516#44592
        '2'#48516#44592
        '3'#48516#44592
        '4'#48516#44592)
    end
    object cbStep2: TComboBox
      Left = 259
      Top = 4
      Width = 65
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 4
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 3
      Text = '1'#48516#44592
      OnChange = cbStep2Change
      Items.Strings = (
        '1'#48516#44592
        '2'#48516#44592
        '3'#48516#44592
        '4'#48516#44592)
    end
    object cbYear: TComboBox
      Left = 41
      Top = 4
      Width = 57
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 11
      ImeName = 'Microsoft IME 2010'
      TabOrder = 4
    end
    object cbYear2: TComboBox
      Left = 97
      Top = 4
      Width = 57
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 11
      ImeName = 'Microsoft IME 2010'
      TabOrder = 5
    end
    object btnSaveColumn: TcxButton
      Left = 904
      Top = 2
      Width = 41
      Height = 25
      Hint = #51312#54924#52972#47100#49444#51221#51200#51109
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000040000
        00130000001E0000002000000020000000200000002100000021000000210000
        002200000022000000220000002300000021000000160000000500000012281E
        16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
        3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
        21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
        79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
        24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
        6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
        26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
        EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
        29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
        EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
        2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
        2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
        4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
        32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
        3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
        35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
        CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
        36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
        3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
        39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
        38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
        3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
        36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
        3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
        F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
        2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
        64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
        0002000000030000000400000004000000040000000400000005000000050000
        0005000000050000000500000006000000060000000400000001}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnSaveColumnClick
    end
    object btnRetrieve: TcxButton
      Left = 542
      Top = 2
      Width = 60
      Height = 25
      Hint = #51312#54924
      Caption = #51312#54924
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000090000
        000E000000100000001000000010000000100000001000000011000000110000
        001100000011000000100000000B00000003000000000000000017417CCA2159
        A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
        A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
        B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
        E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
        BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
        E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
        D2FF3C86C4FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
        EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
        E6FF4D9CD0FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
        EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
        F5FF71C1E6FF56A3D6FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
        FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
        FEFF92DEF4FF7B93A8FF4CA0D6FF4A9DD5FF489CD4FF479AD2FF4698D2FF4596
        D1FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
        FEFFA1E6F7FFBA8573FFFFFFFFFFFCF9F7FFFCF9F7FFFCF9F6FFFBF9F6FFFCF8
        F6FFFBF8F6FFFFFFFFFFB17B68FF0000001C0000000A00000007398ECBFFD0F8
        FEFFAAEAF8FFBC8A78FFFFFFFFFFCAA497FFC9A396FFC9A395FFC8A294FFC7A2
        93FFC7A092FFFFFFFFFFB47F6DFF0000001000000000000000003B92CEFFD3F9
        FEFFB2EEF9FFBF8E7DFFFFFFFFFFFDFBF9FFFDFAF8FFFCFBF8FFFCFAF8FFFCFA
        F8FFFCFAF7FFFFFFFFFFB78471FF0000000C00000000000000003D97D1FFE2FC
        FEFFDEF8FAFFC39381FFFFFFFFFFCCA99CFFCCA89BFFCBA79AFFCBA699FFCAA6
        98FFCAA598FFFFFFFFFFBB8776FF0000000700000000000000002E739DBF3E9A
        D3FF3D97D1FFC69785FFFFFFFFFFFCF9F6FFFCF9F5FFFBF9F5FFFBF7F4FFFBF8
        F4FFFAF7F3FFFFFFFFFFBE8C7BFF000000050000000000000000000000020000
        000300000005C99B8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC1907FFF000000030000000000000000000000000000
        000000000001977669BECB9E8DFFCA9D8CFFC99C8BFFC89B89FFC89A88FFC799
        87FFC69786FFC59785FF916E61BF000000020000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0002000000020000000200000001000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnRetrieveClick
    end
    object btnSaveExcel: TcxButton
      Left = 736
      Top = 2
      Width = 99
      Height = 25
      Hint = #50641#49472#51200#51109
      Caption = #50641#49472#51200#51109
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
        3CFF000000003C3C3CFF000000003C3C3CFF00000000000000003C3C3CFF0000
        000000000000242424993C3C3CFF000000003C3C3CFF00000000000000003C3C
        3CFF0000000024242499000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF000000003C3C3CFF000000002424249900000000000000003C3C
        3CFF2424249900000000242424993C3C3CFF000000003C3C3CFF3C3C3CFF2424
        249900000000242424993C3C3CFF242424990000000024242499000000003C3C
        3CFF0000000024242499000000003C3C3CFF000000003C3C3CFF3C3C3CFF0000
        00003C3C3CFF3C3C3CFF3C3C3CFF000000002424249900000000000000003C3C
        3CFF000000003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF2424
        249900000000000000003C3C3CFF000000003C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnSaveExcelClick
    end
    object btnPrint: TcxButton
      Left = 838
      Top = 2
      Width = 63
      Height = 25
      Hint = #52636#47141
      Caption = #52636#47141
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btnPrintClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1043
    Height = 626
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    object gridRequest: TcxGridDBTableView
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
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = d_REQUEST_VIEW
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '0 '#47749
          Kind = skCount
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,0('#47749')'
          Kind = skCount
          Column = gridRequestS_NAME
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestPAY_AMOUNT
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridRequestREG_MONTH
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridRequestREG_MONTH2
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridRequestREG_MONTH3
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridRequestOUT_MONTH
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridRequestOUT_MONTH2
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridRequestOUT_MONTH3
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_PRICE1
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_PRICE2
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_PRICE3
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_PRICE1
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_PRICE2
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_PRICE3
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_AMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridRequestColumn1: TcxGridDBColumn
        Caption = 'No'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gridRequestColumn1GetDisplayText
        Width = 42
      end
      object gridRequestL_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'L_YEAR'
        Width = 57
      end
      object gridRequestL_STEP: TcxGridDBColumn
        DataBinding.FieldName = 'L_STEP'
        Width = 41
      end
      object gridRequestL_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'L_NAME'
        Width = 148
      end
      object gridRequestL_TIME_WEEK: TcxGridDBColumn
        DataBinding.FieldName = 'L_TIME_WEEK'
        Visible = False
        Width = 40
      end
      object gridRequestL_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'L_DAYS'
        Visible = False
        Width = 51
      end
      object gridRequestL_MONTH: TcxGridDBColumn
        DataBinding.FieldName = 'L_MONTH'
        Visible = False
        Width = 47
      end
      object gridRequestCLASSROOM_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CLASSROOM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListSource = dm.d_CLASSROOM
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestIS_ACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ACTIVE'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestLECTURE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestSTUDENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestTEACHER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestS_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'S_NAME'
        Width = 75
      end
      object gridRequestS_TEL: TcxGridDBColumn
        DataBinding.FieldName = 'S_TEL'
        Width = 115
      end
      object gridRequestS_SEX: TcxGridDBColumn
        DataBinding.FieldName = 'S_SEX'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #45224
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = #50668
            Value = '2'
          end>
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'T_NAME'
        Visible = False
        VisibleForCustomization = False
        Width = 58
      end
      object gridRequestT_SEX: TcxGridDBColumn
        DataBinding.FieldName = 'T_SEX'
        Visible = False
        VisibleForCustomization = False
        Width = 38
      end
      object gridRequestT_TEL: TcxGridDBColumn
        DataBinding.FieldName = 'T_TEL'
        Visible = False
        VisibleForCustomization = False
        Width = 137
      end
      object gridRequestBANK_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_NAME'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestBANK_NO: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_NO'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestDONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestIS_DC: TcxGridDBColumn
        Caption = #44048#47732#44396#48516
        DataBinding.FieldName = 'IS_DC'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListSource = dm.d_DC_KIND
        OnCustomDrawCell = gridRequestIS_DCCustomDrawCell
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestREG_MONTH: TcxGridDBColumn
        Caption = #49688#44053'1'
        DataBinding.FieldName = 'REG_MONTH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        OnCustomDrawCell = gridRequestREG_MONTHCustomDrawCell
        HeaderAlignmentHorz = taCenter
        VisibleForCustomization = False
        Width = 50
      end
      object gridRequestREG_PRICE1: TcxGridDBColumn
        Caption = #49688#44053'1'
        DataBinding.FieldName = 'REG_PRICE1'
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestREG_MONTH2: TcxGridDBColumn
        Caption = #49688#44053'2'
        DataBinding.FieldName = 'REG_MONTH2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        OnCustomDrawCell = gridRequestREG_MONTH2CustomDrawCell
        VisibleForCustomization = False
        Width = 50
      end
      object gridRequestREG_PRICE2: TcxGridDBColumn
        Caption = #49688#44053'2'
        DataBinding.FieldName = 'REG_PRICE2'
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestREG_MONTH3: TcxGridDBColumn
        Caption = #49688#44053'3'
        DataBinding.FieldName = 'REG_MONTH3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        OnCustomDrawCell = gridRequestREG_MONTH3CustomDrawCell
        VisibleForCustomization = False
        Width = 50
      end
      object gridRequestREG_PRICE3: TcxGridDBColumn
        Caption = #49688#44053'3'
        DataBinding.FieldName = 'REG_PRICE3'
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestPAY_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'PAY_AMOUNT'
        HeaderAlignmentHorz = taCenter
        Width = 95
      end
      object gridRequestOUT_MONTH: TcxGridDBColumn
        Caption = #53748#44053
        DataBinding.FieldName = 'OUT_MONTH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        VisibleForCustomization = False
        Width = 50
      end
      object gridRequestOUT_PRICE1: TcxGridDBColumn
        Caption = #54872#48520'1'
        DataBinding.FieldName = 'OUT_PRICE1'
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestOUT_MONTH2: TcxGridDBColumn
        Caption = #53748#44053'2'
        DataBinding.FieldName = 'OUT_MONTH2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        VisibleForCustomization = False
        Width = 50
      end
      object gridRequestOUT_PRICE2: TcxGridDBColumn
        Caption = #54872#48520'2'
        DataBinding.FieldName = 'OUT_PRICE2'
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestOUT_MONTH3: TcxGridDBColumn
        Caption = #53748#44053'3'
        DataBinding.FieldName = 'OUT_MONTH3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        VisibleForCustomization = False
        Width = 50
      end
      object gridRequestOUT_PRICE3: TcxGridDBColumn
        Caption = #54872#48520'3'
        DataBinding.FieldName = 'OUT_PRICE3'
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestOUT_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'OUT_AMOUNT'
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestREG_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'REG_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #49888#44508
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #51116#44053
            Value = 1
          end>
        Visible = False
      end
      object gridRequestOUT_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'OUT_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'REASON_NAME'
          end>
        Properties.ListSource = dm.d_payback_reason
      end
      object gridRequestS_BIRTH: TcxGridDBColumn
        DataBinding.FieldName = 'S_BIRTH'
        Width = 89
      end
      object gridRequestPAYBACK_WAY: TcxGridDBColumn
        DataBinding.FieldName = 'PAYBACK_WAY'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestPAYBACK_BANK: TcxGridDBColumn
        DataBinding.FieldName = 'PAYBACK_BANK'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestPAYBACK_BANKID: TcxGridDBColumn
        DataBinding.FieldName = 'PAYBACK_BANKID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestP_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'P_DATE'
        Width = 94
      end
      object gridRequestS_ADDR: TcxGridDBColumn
        DataBinding.FieldName = 'S_ADDR'
        Width = 227
      end
      object gridRequestSTART_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'START_DATE'
        Visible = False
        VisibleForCustomization = False
        Width = 83
      end
      object gridRequestEND_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'END_DATE'
        Visible = False
        VisibleForCustomization = False
        Width = 84
      end
      object gridRequestR_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'R_DATE'
        Visible = False
        Width = 85
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridRequest
    end
  end
  object q_REQUEST_VIEW: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_STUDENT_REQUEST_VIEW'
      
        '  (L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_MONTH, START_D' +
        'ATE, END_DATE, CLASSROOM_ID, IS_ACTIVE, DONG_ID, LECTURE_ID, STU' +
        'DENT_ID, P_DATE, PAY_AMOUNT, PAY_KIND, R_DATE, OUT_AMOUNT, REG_K' +
        'IND, PAY_WAY, PAYBACK_WAY, PAYBACK_BANK, PAYBACK_BANKID, OUT_KIN' +
        'D, TEACHER_ID, S_NAME, S_TEL, S_ADDR, S_KIND, S_SEX, S_BIRTH, T_' +
        'NAME, T_SEX, T_TEL, BANK_NAME, BANK_NO, ID)'
      'VALUES'
      
        '  (:L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DAYS, :L_MONTH, :' +
        'START_DATE, :END_DATE, :CLASSROOM_ID, :IS_ACTIVE, :DONG_ID, :LEC' +
        'TURE_ID, :STUDENT_ID, :P_DATE, :PAY_AMOUNT, :PAY_KIND, :R_DATE, ' +
        ':OUT_AMOUNT, :REG_KIND, :PAY_WAY, :PAYBACK_WAY, :PAYBACK_BANK, :' +
        'PAYBACK_BANKID, :OUT_KIND, :TEACHER_ID, :S_NAME, :S_TEL, :S_ADDR' +
        ', :S_KIND, :S_SEX, :S_BIRTH, :T_NAME, :T_SEX, :T_TEL, :BANK_NAME' +
        ', :BANK_NO, :ID)')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select '
      '    lecture_active.l_year,'
      '    lecture_active.l_step,'
      '    lecture_active.l_name,'
      '    lecture_active.l_time_week,'
      '    lecture_active.l_days,'
      '    lecture_active.l_month,'
      '    lecture_active.start_date,'
      '    lecture_active.end_date,'
      '    lecture_active.classroom_id,'
      '    lecture_active.is_active,'
      '    lecture_active.l_price,'
      '    REGISTED_LECTURE.dong_id,'
      '    REGISTED_LECTURE.lecture_id,'
      '    REGISTED_LECTURE.student_id,'
      '    REGISTED_LECTURE.p_date,'
      '    REGISTED_LECTURE.pay_amount,'
      '    REGISTED_LECTURE.pay_kind,'
      '    REGISTED_LECTURE.r_date,'
      '    REGISTED_LECTURE.out_amount,'
      '    REGISTED_LECTURE.reg_kind,'
      '    REGISTED_LECTURE.is_dc,'
      '    REGISTED_LECTURE.payback_way,'
      '    REGISTED_LECTURE.payback_bank,'
      '    REGISTED_LECTURE.payback_bankid,'
      '    REGISTED_LECTURE.PAYBACK_BANKOWNER,'
      '    REGISTED_LECTURE.out_kind,'
      '    REGISTED_LECTURE.REG_MONTH,'
      '    REGISTED_LECTURE.REG_MONTH2,'
      '    REGISTED_LECTURE.REG_MONTH3,'
      '    REGISTED_LECTURE.OUT_MONTH,'
      '    REGISTED_LECTURE.OUT_MONTH2,'
      '    REGISTED_LECTURE.OUT_MONTH3,'
      '    REGISTED_LECTURE.REG_PRICE1,'
      '    REGISTED_LECTURE.REG_PRICE2,'
      '    REGISTED_LECTURE.REG_PRICE3,'
      '    REGISTED_LECTURE.OUT_PRICE1,'
      '    REGISTED_LECTURE.OUT_PRICE2,'
      '    REGISTED_LECTURE.OUT_PRICE3,'
      '    lecture_active.teacher_id,'
      '    students.s_name,'
      '    students.s_tel,'
      '    students.s_addr,'
      '    students.s_kind,'
      '    students.s_sex,'
      '    students.s_birth,'
      '    teacher.t_name,'
      '    teacher.t_sex,'
      '    teacher.t_tel,'
      '    teacher.bank_name,'
      '    teacher.bank_no,'
      '    REGISTED_LECTURE.id'
      'from REGISTED_LECTURE'
      
        '   inner join lecture_active on (REGISTED_LECTURE.lecture_id = l' +
        'ecture_active.id)'
      
        '   inner join teacher on (lecture_active.teacher_id = teacher.id' +
        ')'
      
        '   inner join students on (REGISTED_LECTURE.student_id = student' +
        's.id)'
      'where REGISTED_LECTURE.lecture_id = :lecture_id and '
      '(lecture_active.l_year between :l_year and :l_year2) and'
      '(lecture_active.l_step between :l_step and :l_step2)'
      'order by REGISTED_LECTURE.id')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 144
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'lecture_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_year2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_step'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_step2'
        ParamType = ptInput
      end>
    object q_REQUEST_VIEWL_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'L_YEAR'
    end
    object q_REQUEST_VIEWL_STEP: TIntegerField
      Alignment = taCenter
      DisplayLabel = #48516#44592
      FieldName = 'L_STEP'
    end
    object q_REQUEST_VIEWL_NAME: TStringField
      DisplayLabel = #44053#51340#47749
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWL_TIME_WEEK: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54924#49688
      FieldName = 'L_TIME_WEEK'
    end
    object q_REQUEST_VIEWL_DAYS: TStringField
      DisplayLabel = #50836#51068
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_REQUEST_VIEWL_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44060#50900
      FieldName = 'L_MONTH'
    end
    object q_REQUEST_VIEWCLASSROOM_ID: TStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_REQUEST_VIEWIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object q_REQUEST_VIEWLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 10
    end
    object q_REQUEST_VIEWSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 10
    end
    object q_REQUEST_VIEWPAY_AMOUNT: TFloatField
      DisplayLabel = #49688#44053#47308
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_REQUEST_VIEWS_NAME: TStringField
      DisplayLabel = #49688#44053#51088#47749
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWS_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_REQUEST_VIEWS_SEX: TStringField
      Alignment = taCenter
      DisplayLabel = #49457#48324
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_REQUEST_VIEWT_NAME: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'T_NAME'
    end
    object q_REQUEST_VIEWT_SEX: TStringField
      Alignment = taCenter
      DisplayLabel = #49457#48324'('#44053#49324')'
      FieldName = 'T_SEX'
      Size = 4
    end
    object q_REQUEST_VIEWT_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840'('#44053#49324')'
      FieldName = 'T_TEL'
      Size = 30
    end
    object q_REQUEST_VIEWBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Transliterate = False
    end
    object q_REQUEST_VIEWBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
      Transliterate = False
    end
    object q_REQUEST_VIEWID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object q_REQUEST_VIEWDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_REQUEST_VIEWOUT_AMOUNT: TFloatField
      DisplayLabel = #54872#48520#44552#50529
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWREG_KIND: TSmallintField
      Alignment = taCenter
      DisplayLabel = #49888#44508'/'#51116#44053
      FieldName = 'REG_KIND'
    end
    object q_REQUEST_VIEWS_BIRTH: TStringField
      DisplayLabel = #49373#45380#50900#51068
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWPAYBACK_BANK: TStringField
      FieldName = 'PAYBACK_BANK'
    end
    object q_REQUEST_VIEWPAYBACK_BANKID: TStringField
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object q_REQUEST_VIEWOUT_KIND: TSmallintField
      DisplayLabel = #53748#44053#49324#50976
      FieldName = 'OUT_KIND'
    end
    object q_REQUEST_VIEWS_ADDR: TStringField
      DisplayLabel = #51452#49548
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_REQUEST_VIEWSTART_DATE: TStringField
      DisplayLabel = #44060#44053#51068#51088
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWEND_DATE: TStringField
      DisplayLabel = #51333#44053#51068#51088
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWP_DATE: TStringField
      DisplayLabel = #44208#51116#51068#51088
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWR_DATE: TStringField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField
      FieldName = 'PAYBACK_BANKOWNER'
      ReadOnly = True
      Size = 30
    end
    object q_REQUEST_VIEWREG_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_MONTH2: TSmallintField
      FieldName = 'REG_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_MONTH3: TSmallintField
      FieldName = 'REG_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH2: TSmallintField
      FieldName = 'OUT_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH3: TSmallintField
      FieldName = 'OUT_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEWIS_DC: TSmallintField
      Alignment = taCenter
      FieldName = 'IS_DC'
      ReadOnly = True
    end
    object q_REQUEST_VIEWPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
      ReadOnly = True
    end
    object q_REQUEST_VIEWPAYBACK_WAY: TSmallintField
      FieldName = 'PAYBACK_WAY'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_PRICE1: TFloatField
      FieldName = 'REG_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWREG_PRICE2: TFloatField
      FieldName = 'REG_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWREG_PRICE3: TFloatField
      FieldName = 'REG_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWOUT_PRICE1: TFloatField
      FieldName = 'OUT_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWOUT_PRICE2: TFloatField
      FieldName = 'OUT_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWOUT_PRICE3: TFloatField
      FieldName = 'OUT_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWS_KIND: TSmallintField
      FieldName = 'S_KIND'
      ReadOnly = True
    end
  end
  object d_REQUEST_VIEW: TDataSource
    DataSet = q_REQUEST_VIEW
    Left = 144
    Top = 400
  end
  object q_lecture_select: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_ACTIVE'
      '  (ID, L_NAME)'
      'VALUES'
      '  (:ID, :L_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM LECTURE_ACTIVE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LECTURE_ACTIVE'
      'SET'
      '  ID = :ID, L_NAME = :L_NAME'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LECTURE_ACTIVE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, L_NAME FROM LECTURE_ACTIVE'
      'WHERE'
      '  ID = :ID')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select distinct ID, L_NAME from LECTURE_ACTIVE'
      'where (l_year >= :l_year and l_year <= :l_year2) and '
      '(l_step >= :l_step and l_step <= :l_step2)'
      'order by l_idx')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 272
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'l_year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_year2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_step'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_step2'
        ParamType = ptInput
      end>
    object q_lecture_selectID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_lecture_selectL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
  end
  object d_lecture_select: TDataSource
    DataSet = q_lecture_select
    Left = 272
    Top = 400
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 272
    Top = 472
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
      ReportDocument.CreationDate = 42751.563061597220000000
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
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 888
    Top = 520
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 176
    Top = 160
    PixelsPerInch = 96
    object cxStyleDefault: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clBlue
    end
  end
end
