object fmOutList2: TfmOutList2
  Left = 0
  Top = 0
  Caption = #53748#44053#51088#54788#54889'('#44592#44036#48324')'
  ClientHeight = 681
  ClientWidth = 1220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1220
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 43
      Height = 13
      Caption = #53748#44053#51068':'
    end
    object btnSaveColumn: TcxButton
      Left = 1015
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
      TabOrder = 0
      OnClick = btnSaveColumnClick
    end
    object DateTimePicker1: TDateTimePicker
      Left = 66
      Top = 4
      Width = 96
      Height = 23
      Date = 42076.980453622690000000
      Time = 42076.980453622690000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
      OnCloseUp = DateTimePicker1CloseUp
    end
    object DateTimePicker2: TDateTimePicker
      Left = 161
      Top = 4
      Width = 96
      Height = 23
      Date = 42076.980453622690000000
      Time = 42076.980453622690000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 2
      OnCloseUp = DateTimePicker2CloseUp
    end
    object btnRetrieve: TcxButton
      Left = 259
      Top = 2
      Width = 60
      Height = 25
      Hint = #51312#54924
      Caption = #51312#54924
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
      TabOrder = 3
      OnClick = btnRetrieveClick
    end
    object btnExport: TcxButton
      Left = 839
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
      TabOrder = 4
      OnClick = btnExportClick
    end
    object btnAttendList: TcxButton
      Left = 939
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
      TabOrder = 5
      OnClick = btnAttendListClick
    end
    object btnRefund: TcxButton
      Left = 430
      Top = 2
      Width = 81
      Height = 25
      Hint = #54924#44228#51088#47308#46321#47197
      Caption = #44060#48324#54872#48520
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000068159
        4BBEB37B67FFB27B66FFB27A66FFB27864FFB17965FFB17965FFB17765FFB177
        63FFB07664FFB07664FF7E5448C000000008000000000000000000000009B57D
        6BFFFDFBF9FFFBF6F2FFFBF5F2FFFAF5F1FFFBF4EFFFF9F3EEFFF9F2EEFFFAF2
        ECFFF8F0EBFFF9F0EAFFB17866FF0000000C000000000000000000000009B781
        6DFFFDFBFAFFC79C8BFFC69B8BFFC59A8AFFC59A89FFC49888FFC49887FFC397
        87FFBA8B7AFFF9F1ECFFB37A68FF0000000C000000000000000000000008B984
        72FFFDFCFBFFF7EEE9FFF8EEE9FFF8EFE8FFF8EEE8FFF7EEE8FFF8EEE8FFF7ED
        E8FFF7EEE8FFFAF2EEFFB57D6BFF0000000C000000000000000000000008BB87
        75FFFEFCFBFFC8A090FFC89F8EFFC89E8DFFC79D8CFFC79C8BFFC69B8BFFC69A
        8AFFBC8E7DFFFAF4EFFFB7816EFF0000000B000000000000000000000007BE8A
        79FFFEFDFCFFF8F1EBFFF8F1ECFFF8F0ECFFF8F1EBFFF8F0EBFFF9F0EBFFF8EF
        EAFFF8F0EAFFFAF5F1FFBA8571FF0000000A000000000000000000000006C08F
        7EFFFEFDFDFFCBA695FFCAA494FFCAA393FFC9A291FFC8A191FFC8A08FFFC89F
        8EFFBF9381FFFBF6F3FFBB8975FF0000000A000000000000000000000006C493
        80FFFEFEFDFFFAF3EEFFFAF2EFFFF9F2EFFFFAF2EEFFF9F2EEFFFAF2EEFFFAF2
        EEFFF9F1EEFFFCF7F4FFBE8B79FF00000009000000000000000000000006C696
        86FFFEFEFDFFCFAA9BFFCEAA9AFFCEA998FFCDA797FFCBA494FFDCC5BBFFEAE0
        DCFFE2D1CBFFFAF7F6FFE2CEC7FF00000011000000040000000100000005C99B
        8AFFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFAF5F4FFBCB7DBFF3B2E
        AEFF6D66B3FFE9E9EBFF665BA6FF160C7EEA0603244F0000000400000005C99E
        8DFFFFFEFEFF3C9EE0FF3A9DE0FF389ADFFF3699DDFFC0DCEFFF4036B7FF6F85
        EAFF4150CBFF3931A4FF3B48C9FF5C74E4FF180E82E70000000700000004CEA1
        90FFFFFFFEFF4BB2EEFF49B0EDFF47AFEDFF45AEEDFFAFDAF3FF6B70CCFF7780
        DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F0000000500000004CEA3
        93FFFFFFFFFF51B5EEFF4EB5EEFF4CB3EEFF4BB1EEFF6FBFF0FFC4DDEEFF4744
        BDFF6A85EBFF7494F2FF6079E7FF262094E4010104130000000200000003D0A6
        96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFCFCFCFF807FD6FF6B7E
        E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000029C7C
        70BFD2A898FFD1A897FFD1A897FFD1A797FFD0A797FFEFE4E0FF615FD6FFB1C3
        F6FF8D99EAFF5E5BCFFF8995E7FFA6B8F3FF3B35AEE300000004000000000000
        0002000000030000000300000003000000030000000400000005151537474B4B
        C5E63131829F020205122E2D809F4340BCE61212334600000002}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnRefundClick
    end
    object btnRefundMulti: TcxButton
      Left = 512
      Top = 2
      Width = 81
      Height = 25
      Hint = #54924#44228#51088#47308#46321#47197
      Caption = #45796#51473#54872#48520
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000068159
        4BBEB37B67FFB27B66FFB27A66FFB27864FFB17965FFB17965FFB17765FFB177
        63FFB07664FFB07664FF7E5448C000000008000000000000000000000009B57D
        6BFFFDFBF9FFFBF6F2FFFBF5F2FFFAF5F1FFFBF4EFFFF9F3EEFFF9F2EEFFFAF2
        ECFFF8F0EBFFF9F0EAFFB17866FF0000000C000000000000000000000009B781
        6DFFFDFBFAFFC79C8BFFC69B8BFFC59A8AFFC59A89FFC49888FFC49887FFC397
        87FFBA8B7AFFF9F1ECFFB37A68FF0000000C000000000000000000000008B984
        72FFFDFCFBFFF7EEE9FFF8EEE9FFF8EFE8FFF8EEE8FFF7EEE8FFF8EEE8FFF7ED
        E8FFF7EEE8FFFAF2EEFFB57D6BFF0000000C000000000000000000000008BB87
        75FFFEFCFBFFC8A090FFC89F8EFFC89E8DFFC79D8CFFC79C8BFFC69B8BFFC69A
        8AFFBC8E7DFFFAF4EFFFB7816EFF0000000B000000000000000000000007BE8A
        79FFFEFDFCFFF8F1EBFFF8F1ECFFF8F0ECFFF8F1EBFFF8F0EBFFF9F0EBFFF8EF
        EAFFF8F0EAFFFAF5F1FFBA8571FF0000000A000000000000000000000006C08F
        7EFFFEFDFDFFCBA695FFCAA494FFCAA393FFC9A291FFC8A191FFC8A08FFFC89F
        8EFFBF9381FFFBF6F3FFBB8975FF0000000A000000000000000000000006C493
        80FFFEFEFDFFFAF3EEFFFAF2EFFFF9F2EFFFFAF2EEFFF9F2EEFFFAF2EEFFFAF2
        EEFFF9F1EEFFFCF7F4FFBE8B79FF00000009000000000000000000000006C696
        86FFFEFEFDFFCFAA9BFFCEAA9AFFCEA998FFCDA797FFCBA494FFDCC5BBFFEAE0
        DCFFE2D1CBFFFAF7F6FFE2CEC7FF00000011000000040000000100000005C99B
        8AFFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFAF5F4FFBCB7DBFF3B2E
        AEFF6D66B3FFE9E9EBFF665BA6FF160C7EEA0603244F0000000400000005C99E
        8DFFFFFEFEFF3C9EE0FF3A9DE0FF389ADFFF3699DDFFC0DCEFFF4036B7FF6F85
        EAFF4150CBFF3931A4FF3B48C9FF5C74E4FF180E82E70000000700000004CEA1
        90FFFFFFFEFF4BB2EEFF49B0EDFF47AFEDFF45AEEDFFAFDAF3FF6B70CCFF7780
        DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F0000000500000004CEA3
        93FFFFFFFFFF51B5EEFF4EB5EEFF4CB3EEFF4BB1EEFF6FBFF0FFC4DDEEFF4744
        BDFF6A85EBFF7494F2FF6079E7FF262094E4010104130000000200000003D0A6
        96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFCFCFCFF807FD6FF6B7E
        E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000029C7C
        70BFD2A898FFD1A897FFD1A897FFD1A797FFD0A797FFEFE4E0FF615FD6FFB1C3
        F6FF8D99EAFF5E5BCFFF8995E7FFA6B8F3FF3B35AEE300000004000000000000
        0002000000030000000300000003000000030000000400000005151537474B4B
        C5E63131829F020205122E2D809F4340BCE61212334600000002}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnRefundMultiClick
    end
    object rbSelect: TcxRadioButton
      Left = 601
      Top = 7
      Width = 52
      Height = 17
      Caption = #49440#53469
      Checked = True
      TabOrder = 8
      TabStop = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
    object rbAll: TcxRadioButton
      Left = 654
      Top = 7
      Width = 51
      Height = 17
      Caption = #51204#52404
      TabOrder = 9
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
    object btnTotalReport: TcxButton
      Left = 326
      Top = 2
      Width = 100
      Height = 25
      Hint = #51665#44228#54364
      Caption = #54872#48520#51665#44228#54364
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000500000007000000080000
        0008000000080000000800000008000000080000000500000001000000000000
        0000000000000000000000000000000000047B5144BCAB715EFFAC705DFFAB70
        5CFFAB6F5DFFAB6E5CFFAA6E5BFFAA6E5BFF7A4F41BC00000005000000000000
        000000000000000000000000000000000006AF7461FFF9F3EEFFF8F3EEFFF8F2
        EEFFF8F2EEFFF8F2EDFFF8F2EDFFF7F2EDFFAB6F5DFF00000007000000000000
        000000000000000000000000000000000006B17764FFF9F3EFFF082886FF0828
        85FF082885FF082885FF082885FFF8F2EEFFAE715FFF00000007000000050000
        00080000000900000009000000090000000EB27A67FFFAF5F1FFBDC1D3FF092A
        88FFBDC1D3FFF6EFEAFFF6EFEAFFF9F3F0FFAF7461FF000000068F6C5EBCC795
        83FFC79583FFC79583FFC79482FFD8B9AFFFB47D6BFFFAF6F3FFF6F1ECFF939E
        C2FF092D89FFF7F0EAFFF7EFEAFFFAF5F2FFB17764FF00000006C79785FFFFFF
        FFFFFFFFFFFFFFFFFFFFD7B9AEFFFBFBFBFFB8816EFFFBF7F4FFBEC2D5FF0A2F
        8CFFBEC3D4FFF6F1ECFFF6F0EBFFFAF6F3FFB27A67FF00000005C89786FFFFFF
        FFFFFFFFFFFFFFFFFFFFD8BAAFFFFBFBFBFFBA8472FFFBF8F6FF0B348EFF0B34
        8EFF0B338EFF0B318DFF0A318DFFFBF7F5FFB57D6BFF00000005C99887FFDDC4
        BBFFD8BBB0FFD8BBB0FFD8BBAFFFE4D2CBFFBB8775FFFCFAF7FFFCF9F7FFFCF9
        F7FFFCF9F7FFFBF9F7FFFBF9F7FFFBF9F6FFB8816FFF00000004CA9A88FFFFFF
        FFFFFFFFFFFFFFFFFFFFD8BCB1FFFDFDFDFFCCA799FFBD8977FFBD8876FFBC88
        75FFBB8875FFBB8774FFBB8674FFBA8573FF8A6255BF00000002CB9B89FFFFFF
        FFFFFFFFFFFFFFFFFFFFD9BCB1FFFFFFFFFFFEFEFEFFFDFDFDFFE4D2CCFFFCFC
        FCFFFCFCFCFFFCFCFCFFDABDB1FF000000090000000200000001C9905DFFDFBA
        92FFD7A775FFD6A673FFD6A471FFD6A470FFD6A26EFFD6A16DFFD59F6CFFD59F
        6AFFD59D69FFDCAD83FFBB7842FF000000050000000000000000C9905DFFEED4
        AEFFE9C693FFE9C591FFD7A572FFE7C18CFFE6C08AFFE5BE87FFD5A16CFFE4BA
        83FFE3B881FFE8C599FFBA7842FF000000050000000000000000C9905EFFEFD7
        B1FFEFD5B0FFEFD4ADFFE0BC97FFEDD1AAFFEDD1A8FFEBCFA6FFDFB890FFEBCB
        A1FFEAC99FFFE9C89DFFBB7943FF0000000400000000000000009B7550BED19D
        6AFFD09C68FFCE9A66FFCD9864FFCD9662FFCB935FFFCA915DFFC78E5AFFC68B
        57FFC48955FFC38752FF8F613ABF000000020000000000000000000000010000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000030000000300000002000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnTotalReportClick
    end
    object btnCancelPartial: TcxButton
      Left = 734
      Top = 2
      Width = 104
      Height = 25
      Hint = #49440#53469#51088#47308' '#54788#44552#50689#49688#51613' '#48512#48516#52712#49548
      Caption = #54872#48520#50689#49688#51613#46321#47197
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnCancelPartialClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1220
    Height = 652
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    object gridOutList: TcxGridDBTableView
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
      DataController.DataSource = d_REQUEST_VIEW
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Column = gridOutListPAY_AMOUNT
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridOutListOUT_AMOUNT
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0 '#47749
          Kind = skCount
          Column = gridOutListS_NAME
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0 '#47749
          Kind = skCount
          Column = gridOutListS_NAME
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridOutListPAY_AMOUNT
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridOutListOUT_AMOUNT
        end
        item
          Format = '#'
          Kind = skSum
        end
        item
          Format = '#'
          Kind = skSum
        end
        item
          Format = '#'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end
        item
          Format = '#,0'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      OptionsView.Indicator = True
      Styles.Group = cxStyleBlue
      object gridOutListR_NO: TcxGridDBColumn
        Caption = 'NO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gridOutListR_NOGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 38
      end
      object gridOutListL_YEAR: TcxGridDBColumn
        Caption = #45380#46020
        DataBinding.FieldName = 'L_YEAR'
        HeaderAlignmentHorz = taCenter
        Width = 48
      end
      object gridOutListL_STEP: TcxGridDBColumn
        Caption = #48516#44592
        DataBinding.FieldName = 'L_STEP'
        HeaderAlignmentHorz = taCenter
        Width = 36
      end
      object gridOutListP_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068
        DataBinding.FieldName = 'P_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'mm-dd'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object gridOutListR_DATE: TcxGridDBColumn
        Caption = #53748#44053#51068
        DataBinding.FieldName = 'R_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'mm-dd'
        HeaderAlignmentHorz = taCenter
        Width = 61
      end
      object gridOutListL_NAME: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'L_NAME'
        HeaderAlignmentHorz = taCenter
        Width = 159
      end
      object gridOutListS_NAME: TcxGridDBColumn
        Caption = #49457#47749
        DataBinding.FieldName = 'S_NAME'
        HeaderAlignmentHorz = taCenter
        Width = 74
      end
      object gridOutListS_BIRTH: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'S_BIRTH'
        HeaderAlignmentHorz = taCenter
        Width = 76
      end
      object gridOutListS_TEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'S_TEL'
        HeaderAlignmentHorz = taCenter
        Width = 129
      end
      object gridOutListS_ADDR: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'S_ADDR'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 166
      end
      object gridOutListS_KIND: TcxGridDBColumn
        Caption = #44048#47732#45236#50669
        DataBinding.FieldName = 'S_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListSource = dm.d_DC_KIND
        OnCustomDrawCell = gridOutListS_KINDCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 85
      end
      object gridOutListPAY_AMOUNT: TcxGridDBColumn
        Caption = #49688#44053#47308
        DataBinding.FieldName = 'PAY_AMOUNT'
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object gridOutListPAY_KIND: TcxGridDBColumn
        Caption = #53748#44053#44396#48516
        DataBinding.FieldName = 'PAY_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = #49688#44053
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #53748#44053'1'
            Value = 1
          end
          item
            Description = #53748#44053'2'
            Value = 2
          end
          item
            Description = #53748#44053'3'
            Value = 3
          end>
        Visible = False
      end
      object gridOutListPAY_WAY: TcxGridDBColumn
        Caption = #44208#51116
        DataBinding.FieldName = 'PAY_WAY'
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
        OnCustomDrawCell = gridOutListPAY_WAYCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
      object gridOutListOUT_AMOUNT: TcxGridDBColumn
        Caption = #54872#48520#44552#50529
        DataBinding.FieldName = 'OUT_AMOUNT'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object gridOutListOUT_KIND: TcxGridDBColumn
        Caption = #54872#48520#49324#50976
        DataBinding.FieldName = 'OUT_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'REASON_NAME'
          end>
        Properties.ListSource = dm.d_payback_reason
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object gridOutListPAYBACK_WAY: TcxGridDBColumn
        Caption = #54872#48520#48169#48277
        DataBinding.FieldName = 'PAYBACK_WAY'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
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
        OnCustomDrawCell = gridOutListPAYBACK_WAYCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object gridOutListOUT_WHEN: TcxGridDBColumn
        Caption = #54872#48520#44396#48516
        DataBinding.FieldName = 'OUT_WHEN'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
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
        Width = 60
      end
      object gridOutListPAYBACK_BANKOWNER: TcxGridDBColumn
        Caption = #50696#44552#51452
        DataBinding.FieldName = 'PAYBACK_BANKOWNER'
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object gridOutListPAYBACK_BANK: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'PAYBACK_BANK'
        HeaderAlignmentHorz = taCenter
        Width = 74
      end
      object gridOutListPAYBACK_BANKID: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'PAYBACK_BANKID'
        HeaderAlignmentHorz = taCenter
        Width = 137
      end
      object gridOutListID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridOutListCASH_RECEIPT_NO: TcxGridDBColumn
        Caption = #54788#44552#50689#49688#51613'No'
        DataBinding.FieldName = 'CASH_RECEIPT_NO'
        Width = 128
      end
      object gridOutListL_IDX: TcxGridDBColumn
        DataBinding.FieldName = 'L_IDX'
        Visible = False
      end
      object gridOutListSTUDENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_ID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridOutList
    end
  end
  object PanelMessage: TPanel
    Left = 512
    Top = 224
    Width = 300
    Height = 60
    Caption = #51089#50629#51012' '#51652#54665#54616#44256' '#51080#49845#45768#45796'...'
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
  object d_REQUEST_VIEW: TDataSource
    DataSet = LECTURE_OUT_SEL
    Left = 88
    Top = 360
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PrintTitle = '111'
    Version = 0
    Left = 408
    Top = 432
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
        '[Page #]/[Total Pages]')
      PrinterPage.PageHeader.Font.Charset = HANGEUL_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -21
      PrinterPage.PageHeader.Font.Name = #44404#47548
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.RightTitle.Strings = (
        '')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44007.454991157410000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#51340#46321#47197#54788#54889
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
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
    Left = 952
    Top = 504
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 152
    Top = 240
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
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object cxStyleGreen: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clGreen
    end
  end
  object q_request_view: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select '
      '        REGISTED_LECTURE.r_date,'
      '        lecture_active.l_idx,'
      '        REGISTED_LECTURE.id,'
      '        lecture_active.l_year,'
      '        lecture_active.l_step,'
      '        lecture_active.l_name,'
      '        lecture_active.is_active,'
      '        lecture_active.l_price,'
      '        REGISTED_LECTURE.lecture_id,'
      '        REGISTED_LECTURE.student_id,'
      '        REGISTED_LECTURE.p_date,'
      '        REGISTED_LECTURE.pay_amount,'
      '        REGISTED_LECTURE.pay_kind,'
      '        REGISTED_LECTURE.out_amount,'
      '        REGISTED_LECTURE.reg_kind,'
      '        REGISTED_LECTURE.pay_way,'
      '        REGISTED_LECTURE.payback_way,'
      '        REGISTED_LECTURE.payback_bank,'
      '        REGISTED_LECTURE.payback_bankid,'
      '        REGISTED_LECTURE.PAYBACK_BANKOWNER,'
      '        REGISTED_LECTURE.out_kind,'
      '        REGISTED_LECTURE.OUT_WHEN,'
      '        students.s_name,'
      '        students.s_tel,'
      '        students.s_addr,'
      '        students.s_kind,'
      '        students.s_sex,'
      '        students.s_birth,'
      '        students.CASH_RECEIPT_NO'
      '    from REGISTED_LECTURE'
      
        '       inner join lecture_active on (REGISTED_LECTURE.lecture_id' +
        ' = lecture_active.id)'
      
        '       inner join students on (REGISTED_LECTURE.student_id = stu' +
        'dents.id)'
      
        '    where (REGISTED_LECTURE.out_amount > 0) and (cast(REGISTED_L' +
        'ECTURE.r_date as date) between :startdate and :enddate)'
      'union all'
      'select '
      '        REGISTED_LECTURE.r_date2 as r_date,'
      '        lecture_active.l_idx,'
      '        REGISTED_LECTURE.id,'
      '        lecture_active.l_year,'
      '        lecture_active.l_step,'
      '        lecture_active.l_name,'
      '        lecture_active.is_active,'
      '        lecture_active.l_price,'
      '        REGISTED_LECTURE.lecture_id,'
      '        REGISTED_LECTURE.student_id,'
      '        REGISTED_LECTURE.p_date,'
      '        REGISTED_LECTURE.pay_amount,'
      '        REGISTED_LECTURE.pay_kind,'
      '        REGISTED_LECTURE.out_amount2,'
      '        REGISTED_LECTURE.reg_kind,'
      '        REGISTED_LECTURE.pay_way,'
      '        REGISTED_LECTURE.payback_way,'
      '        REGISTED_LECTURE.payback_bank,'
      '        REGISTED_LECTURE.payback_bankid,'
      '        REGISTED_LECTURE.PAYBACK_BANKOWNER,'
      '        REGISTED_LECTURE.out_kind2 as out_kind,'
      '        REGISTED_LECTURE.OUT_WHEN2 as out_when,'
      '        students.s_name,'
      '        students.s_tel,'
      '        students.s_addr,'
      '        students.s_kind,'
      '        students.s_sex,'
      '        students.s_birth,'
      '        students.CASH_RECEIPT_NO'
      '    from REGISTED_LECTURE'
      
        '       inner join lecture_active on (REGISTED_LECTURE.lecture_id' +
        ' = lecture_active.id)'
      
        '       inner join students on (REGISTED_LECTURE.student_id = stu' +
        'dents.id)'
      '    where (REGISTED_LECTURE.out_amount > 0) and '
      
        '    (REGISTED_LECTURE.r_date2 >= :startdate and REGISTED_LECTURE' +
        '.r_date2 <= :enddate)')
    Left = 216
    Top = 304
    ParamData = <
      item
        DataType = ftDate
        Name = 'startdate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'enddate'
        ParamType = ptInput
      end>
    object q_request_viewL_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'L_YEAR'
    end
    object q_request_viewL_STEP: TIntegerField
      Alignment = taCenter
      FieldName = 'L_STEP'
    end
    object q_request_viewL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_request_viewIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object q_request_viewL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_request_viewLECTURE_ID: TStringField
      Alignment = taCenter
      FieldName = 'LECTURE_ID'
      ReadOnly = True
      Required = True
      Size = 17
    end
    object q_request_viewSTUDENT_ID: TStringField
      Alignment = taCenter
      FieldName = 'STUDENT_ID'
      ReadOnly = True
      Required = True
      Size = 17
    end
    object q_request_viewP_DATE: TStringField
      Alignment = taCenter
      FieldName = 'P_DATE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 10
    end
    object q_request_viewPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,0'
    end
    object q_request_viewPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
      ReadOnly = True
    end
    object q_request_viewR_DATE: TStringField
      Alignment = taCenter
      FieldName = 'R_DATE'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object q_request_viewOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_request_viewREG_KIND: TSmallintField
      FieldName = 'REG_KIND'
      ReadOnly = True
    end
    object q_request_viewPAY_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
      ReadOnly = True
    end
    object q_request_viewPAYBACK_WAY: TSmallintField
      FieldName = 'PAYBACK_WAY'
      ReadOnly = True
    end
    object q_request_viewPAYBACK_BANK: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANK'
      ReadOnly = True
    end
    object q_request_viewPAYBACK_BANKID: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKID'
      ReadOnly = True
      Size = 30
    end
    object q_request_viewPAYBACK_BANKOWNER: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKOWNER'
      ReadOnly = True
      Size = 30
    end
    object q_request_viewOUT_KIND: TSmallintField
      FieldName = 'OUT_KIND'
      ReadOnly = True
    end
    object q_request_viewOUT_WHEN: TSmallintField
      FieldName = 'OUT_WHEN'
      ReadOnly = True
    end
    object q_request_viewS_NAME: TStringField
      Alignment = taCenter
      FieldName = 'S_NAME'
      ReadOnly = True
      Size = 30
    end
    object q_request_viewS_TEL: TStringField
      Alignment = taCenter
      FieldName = 'S_TEL'
      ReadOnly = True
      Size = 30
    end
    object q_request_viewS_ADDR: TStringField
      FieldName = 'S_ADDR'
      ReadOnly = True
      Size = 50
    end
    object q_request_viewS_KIND: TSmallintField
      FieldName = 'S_KIND'
      ReadOnly = True
    end
    object q_request_viewS_SEX: TStringField
      FieldName = 'S_SEX'
      ReadOnly = True
      Size = 4
    end
    object q_request_viewS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object q_request_viewCASH_RECEIPT_NO: TStringField
      FieldName = 'CASH_RECEIPT_NO'
      ReadOnly = True
      Size = 30
    end
    object q_request_viewID: TStringField
      Alignment = taCenter
      FieldName = 'ID'
      ReadOnly = True
      Required = True
      Size = 17
    end
    object q_request_viewL_IDX: TSmallintField
      FieldName = 'L_IDX'
    end
  end
  object q_selected_data_list: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO SELECTED_DATA_LIST'
      '  (ID, RECORD_ID)'
      'VALUES'
      '  (:ID, :RECORD_ID)')
    SQLDelete.Strings = (
      'DELETE FROM SELECTED_DATA_LIST'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE SELECTED_DATA_LIST'
      'SET'
      '  ID = :ID, RECORD_ID = :RECORD_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM SELECTED_DATA_LIST'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, RECORD_ID FROM SELECTED_DATA_LIST'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SELECTED_DATA_LIST'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from selected_data_list')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 224
    Top = 432
    object q_selected_data_listID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_selected_data_listRECORD_ID: TStringField
      FieldName = 'RECORD_ID'
      Size = 17
    end
  end
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'delete from selected_data_list where id > 0')
    Left = 224
    Top = 480
  end
  object CASHBILL_IU: TUniStoredProc
    StoredProcName = 'CASHBILL_IU'
    Connection = dm.UniConnection1
    Left = 408
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'CASHBILL_NO'
        ParamType = ptInput
        Size = 24
      end
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'AMOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TAX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SERVICE_CHARGE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'CASH_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REF_UID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CASHBILL_IU'
  end
  object LECTURE_OUT_SEL: TUniStoredProc
    StoredProcName = 'LECTURE_OUT_SEL'
    Connection = dm.UniConnection1
    Left = 88
    Top = 312
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'STARTDATE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFixedChar
        Name = 'ENDDATE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFixedChar
        Name = 'R_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'L_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'L_YEAR'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'L_STEP'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'L_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LECTURE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'STUDENT_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftFixedChar
        Name = 'P_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'PAY_AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'OUT_AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'REG_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_WAY'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAYBACK_WAY'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'PAYBACK_BANK'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'PAYBACK_BANKID'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PAYBACK_BANKOWNER'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftSmallint
        Name = 'OUT_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'OUT_WHEN'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'S_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'S_TEL'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'S_ADDR'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftSmallint
        Name = 'S_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'S_SEX'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'S_BIRTH'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CASH_RECEIPT_NO'
        ParamType = ptOutput
        Size = 30
      end>
    CommandStoredProcName = 'LECTURE_OUT_SEL'
    object LECTURE_OUT_SELR_DATE: TStringField
      Alignment = taCenter
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object LECTURE_OUT_SELL_IDX: TSmallintField
      FieldName = 'L_IDX'
    end
    object LECTURE_OUT_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LECTURE_OUT_SELL_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'L_YEAR'
    end
    object LECTURE_OUT_SELL_STEP: TIntegerField
      Alignment = taCenter
      FieldName = 'L_STEP'
    end
    object LECTURE_OUT_SELL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object LECTURE_OUT_SELIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object LECTURE_OUT_SELL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object LECTURE_OUT_SELLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object LECTURE_OUT_SELSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object LECTURE_OUT_SELP_DATE: TStringField
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object LECTURE_OUT_SELPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,0'
    end
    object LECTURE_OUT_SELPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
    end
    object LECTURE_OUT_SELOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,0'
    end
    object LECTURE_OUT_SELREG_KIND: TSmallintField
      FieldName = 'REG_KIND'
    end
    object LECTURE_OUT_SELPAY_WAY: TSmallintField
      FieldName = 'PAY_WAY'
    end
    object LECTURE_OUT_SELPAYBACK_WAY: TSmallintField
      FieldName = 'PAYBACK_WAY'
    end
    object LECTURE_OUT_SELPAYBACK_BANK: TStringField
      FieldName = 'PAYBACK_BANK'
    end
    object LECTURE_OUT_SELPAYBACK_BANKID: TStringField
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object LECTURE_OUT_SELPAYBACK_BANKOWNER: TStringField
      FieldName = 'PAYBACK_BANKOWNER'
      Size = 30
    end
    object LECTURE_OUT_SELOUT_KIND: TSmallintField
      FieldName = 'OUT_KIND'
    end
    object LECTURE_OUT_SELOUT_WHEN: TSmallintField
      FieldName = 'OUT_WHEN'
    end
    object LECTURE_OUT_SELS_NAME: TStringField
      Alignment = taCenter
      FieldName = 'S_NAME'
      Size = 30
    end
    object LECTURE_OUT_SELS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object LECTURE_OUT_SELS_ADDR: TStringField
      FieldName = 'S_ADDR'
      Size = 50
    end
    object LECTURE_OUT_SELS_KIND: TSmallintField
      FieldName = 'S_KIND'
    end
    object LECTURE_OUT_SELS_SEX: TStringField
      FieldName = 'S_SEX'
      Size = 4
    end
    object LECTURE_OUT_SELS_BIRTH: TStringField
      Alignment = taCenter
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object LECTURE_OUT_SELCASH_RECEIPT_NO: TStringField
      FieldName = 'CASH_RECEIPT_NO'
      Size = 30
    end
  end
  object QueryInsertSurvey: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'insert into money_kind_survey ('
      '    id,'
      '    out_when,'
      '    payback_way,'
      '    pay_way,'
      '    out_kind,'
      '    out_amount)'
      '  values ('
      '    :id,'
      '    :out_when,'
      '    :payback_way,'
      '    :pay_way,'
      '    :out_kind,'
      '    :out_amount);')
    Left = 416
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'out_when'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'payback_way'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pay_way'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'out_kind'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'out_amount'
        ParamType = ptInput
      end>
  end
  object QueryDeleteSurvey: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'delete from money_kind_survey where id > 0;')
    Left = 416
    Top = 368
  end
end
