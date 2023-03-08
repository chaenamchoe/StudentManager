object fmTeacherExtrapay: TfmTeacherExtrapay
  Left = 0
  Top = 0
  Caption = #44053#49324#49688#45817'2'
  ClientHeight = 636
  ClientWidth = 1165
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1165
    Height = 29
    Align = alTop
    TabOrder = 0
    inline frmYearMonth1: TfrmYearMonth
      Left = 12
      Top = 4
      Width = 164
      Height = 23
      TabOrder = 0
      ExplicitLeft = 12
      ExplicitTop = 4
      ExplicitWidth = 164
      ExplicitHeight = 23
      inherited Label1: TLabel
        Left = 0
        Top = 4
        ExplicitLeft = 0
        ExplicitTop = 4
      end
      inherited cbMonth: TComboBox
        OnChange = frmYearMonth1cbMonthChange
      end
    end
    object btnRetrieve: TcxButton
      Left = 179
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
      TabOrder = 1
      OnClick = btnRetrieveClick
    end
    object btnExport: TcxButton
      Left = 614
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
      TabOrder = 2
      OnClick = btnExportClick
    end
    object btnAttendList: TcxButton
      Left = 714
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
      TabOrder = 3
      OnClick = btnAttendListClick
    end
    object btnCalc: TcxButton
      Left = 516
      Top = 2
      Width = 92
      Height = 25
      Caption = #49688#45817#51116#44228#49328
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 4
      OnClick = btnCalcClick
    end
    object btnCreateNew: TcxButton
      Left = 435
      Top = 2
      Width = 80
      Height = 25
      Caption = #49688#45817#49373#49457
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 5
      OnClick = btnCreateNewClick
    end
    object btnReportBank: TcxButton
      Left = 812
      Top = 2
      Width = 85
      Height = 25
      Hint = #51008#54665#51228#52636#50857' '#52636#47141
      Caption = #51008#54665#51228#52636
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
      TabOrder = 6
      OnClick = btnReportBankClick
    end
    object cxButton1: TcxButton
      Left = 903
      Top = 2
      Width = 85
      Height = 25
      Hint = #51008#54665#51228#52636#50857' '#52636#47141
      Caption = #51008#54665#51228#52636
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF000000003C3C3CFF0000000000000000000000003C3C3CFF0000
        0000000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E8000000000000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = cxButton1Click
    end
    object btnExpand: TcxButton
      Left = 245
      Top = 2
      Width = 34
      Height = 25
      Hint = #54204#52824#44592
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
        00000000000100000004000000090000000D0000000F0000000F0000000C0000
        00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
        0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
        1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
        02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
        50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
        3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
        C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
        7CFFEFE6DFFFCDA67CFFCDA36EFFE4C693FFEFD9ABFFEAD2A8FFD4B284FFD0AE
        88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
        C9FFDDC1A8FFC99966FFE8C085FFE9C388FF8F4B24FFF1D8B1FFF3DDB8FFD6B3
        8AFFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
        F2FFC79873FFDEAB77FFEFCDABFFF1D2B5FF8F4524FFEDC99EFFF1D4B2FFECCF
        AEFFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
        FCFFBE875FFFEDCFB9FF682612FF8A3F22FF8C4024FF8F4225FF924427FFF1CE
        AEFFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
        F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FF8B3C23FFF1CEB6FFEBB78FFFE7BC
        9AFFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
        D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FF6A2213FFF1C8B2FFEBB08AFFCA8F
        6FFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
        A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88967FFCE9D
        84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
        4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
        F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
        020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
        A2FC62504B900404031000000002000000000000000000000000000000000000
        000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
        1F3E000000060000000100000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnExpandClick
    end
    object btnUnexpand: TcxButton
      Left = 280
      Top = 2
      Width = 34
      Height = 25
      Hint = #44048#52628#44592
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
        00000000000100000004000000090000000D0000000F0000000F0000000C0000
        00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
        0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
        1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
        02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
        50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
        3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
        C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
        7CFFEFE6DFFFCDA67CFFCDA36EFFE4C693FFEFD9ABFFE9D0A4FFD4B284FFD0AE
        88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
        C9FFDDC1A8FFC99966FFE8C085FFE9C388FFEDCB99FFF0D6ADFFF3DDB8FFD6B3
        8AFFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
        F2FFC79873FFDEAB77FFEFCDABFFF4DBC3FFF2D6B6FFF1D4B0FFF4DDC1FFF0D9
        BDFFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
        FCFFBE875FFFEDCFB9FF682612FF8A3F22FF8C4024FF8F4225FF924427FFF1CE
        AEFFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
        F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78FFFE7BC
        9AFFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
        D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBB08AFFCA8F
        6FFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
        A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88967FFCE9D
        84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
        4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
        F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
        020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
        A2FC62504B900404031000000002000000000000000000000000000000000000
        000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
        1F3E000000060000000100000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btnUnexpandClick
    end
    object cxCheckBox1: TcxCheckBox
      Left = 320
      Top = 4
      Caption = #44536#47353#54756#45908
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 10
      OnClick = cxCheckBox1Click
      Width = 81
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1165
    Height = 607
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridExtrapay: TcxGridDBTableView
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
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = ds_TEACHER_EXTRAPAY_SEL
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayNET_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapaySODUKSE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayJUMINSE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayTOTAL_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayU_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayBOJUN_TOTAL
        end
        item
          Format = '#,0'
          Kind = skCount
          Column = gridExtrapayL_UID
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayNET_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapaySODUKSE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayJUMINSE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayTOTAL_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayW_DAYS
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayU_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayBOJUN_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayBOJUN_CNT
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridExtrapayBOJUN_TOTAL
        end
        item
          Format = '#,0'
          Kind = skCount
          Column = gridExtrapayL_UID
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.OnCompare = gridExtrapayDataControllerCompare
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.FocusRect = False
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      Styles.OnGetContentStyle = gridCompensationStylesGetContentStyle
      Styles.Group = cxStyleBlue
      object gridExtrapayTEACHER_IDX: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'TEACHER_IDX'
        Visible = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 42
      end
      object gridExtrapayID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        SortIndex = 1
        SortOrder = soAscending
      end
      object gridExtrapayL_MONTH: TcxGridDBColumn
        Caption = #50900#48516
        DataBinding.FieldName = 'L_MONTH'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object gridExtrapayIDX: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'IDX'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDataText = gridExtrapayIDXGetDataText
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object gridExtrapayLECTURE_ID: TcxGridDBColumn
        Caption = #44053#51340#53076#46300
        DataBinding.FieldName = 'LECTURE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'LECTURE_NAME'
          end>
        Visible = False
      end
      object gridExtrapayTEACHER_ID: TcxGridDBColumn
        Caption = #44053#49324#47749
        DataBinding.FieldName = 'TEACHER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'T_NAME'
          end>
        Properties.ListSource = dm.d_TEACHER_LOOK
        OnCustomDrawCell = gridExtrapayTEACHER_IDCustomDrawCell
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 119
      end
      object gridExtrapayL_UID: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'L_UID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'LECTURE_NAME'
          end>
        Properties.ListSource = dm.d_lecture_list
        HeaderAlignmentHorz = taCenter
        Width = 134
      end
      object gridExtrapayL_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'L_YEAR'
        Visible = False
        VisibleForCustomization = False
      end
      object gridExtrapayNET_PRICE: TcxGridDBColumn
        Caption = #51648#44553#50529
        DataBinding.FieldName = 'NET_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        OnCustomDrawCell = gridExtrapayNET_PRICECustomDrawCell
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyleRed
        Width = 86
        OnCompareRowValuesForCellMerging = gridExtrapayNET_PRICECompareRowValuesForCellMerging
      end
      object gridExtrapaySODUKSE: TcxGridDBColumn
        Caption = #49548#46301#49464
        DataBinding.FieldName = 'SODUKSE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        OnCustomDrawCell = gridExtrapaySODUKSECustomDrawCell
        HeaderAlignmentHorz = taCenter
        OnCompareRowValuesForCellMerging = gridExtrapaySODUKSECompareRowValuesForCellMerging
      end
      object gridExtrapayJUMINSE: TcxGridDBColumn
        Caption = #51648#48169#49464
        DataBinding.FieldName = 'JUMINSE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        OnCustomDrawCell = gridExtrapayJUMINSECustomDrawCell
        HeaderAlignmentHorz = taCenter
        OnCompareRowValuesForCellMerging = gridExtrapaySODUKSECompareRowValuesForCellMerging
      end
      object gridExtrapayTOTAL_PRICE: TcxGridDBColumn
        Caption = #49688#45817#54633#44228
        DataBinding.FieldName = 'TOTAL_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        OnCustomDrawCell = gridExtrapayTOTAL_PRICECustomDrawCell
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyleBlue
        Width = 80
        OnCompareRowValuesForCellMerging = gridExtrapaySODUKSECompareRowValuesForCellMerging
      end
      object gridExtrapayCITY_PRICE: TcxGridDBColumn
        Caption = #45800#44032'('#49884#44036')'
        DataBinding.FieldName = 'CITY_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridExtrapayW_DAYS: TcxGridDBColumn
        Caption = #52636#44053#51068#49688
        DataBinding.FieldName = 'W_DAYS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridExtrapayW_HOURS: TcxGridDBColumn
        Caption = #49884#44036'('#51068')'
        DataBinding.FieldName = 'W_HOURS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 1
        Properties.DisplayFormat = ',0.0;-,0.0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object gridExtrapayU_PRICE: TcxGridDBColumn
        Caption = #49688#45817#44552#50529#44228
        DataBinding.FieldName = 'U_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
      object gridExtrapayLECTURE_PRICE: TcxGridDBColumn
        Caption = #49688#44053#47308'('#50900')'
        DataBinding.FieldName = 'LECTURE_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridExtrapayBOJUN_PRICE: TcxGridDBColumn
        Caption = #48372#51204#44552#50529
        DataBinding.FieldName = 'BOJUN_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridExtrapayBOJUN_CNT: TcxGridDBColumn
        Caption = #44048#47732#51064#50896
        DataBinding.FieldName = 'BOJUN_CNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridExtrapayBOJUN_TOTAL: TcxGridDBColumn
        Caption = #48372#51204#44552#50529#44228
        DataBinding.FieldName = 'BOJUN_TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyleBlue
      end
      object gridExtrapayTOTAL_PRICE2: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_PRICE2'
        Visible = False
      end
      object gridExtrapaySODUKSE2: TcxGridDBColumn
        DataBinding.FieldName = 'SODUKSE2'
        Visible = False
      end
      object gridExtrapayJUMINSE2: TcxGridDBColumn
        DataBinding.FieldName = 'JUMINSE2'
        Visible = False
      end
      object gridExtrapayNET_PRICE2: TcxGridDBColumn
        DataBinding.FieldName = 'NET_PRICE2'
        Visible = False
      end
      object gridExtrapayColumn1: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'TEACHER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'BANK_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_TEACHER_SEL_LOOKUP
        Options.CellMerging = True
        Width = 90
        OnCompareRowValuesForCellMerging = gridExtrapayColumn1CompareRowValuesForCellMerging
      end
      object gridExtrapayColumn2: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'TEACHER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'BANK_NO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_TEACHER_SEL_LOOKUP
        Options.CellMerging = True
        OnCompareRowValuesForCellMerging = gridExtrapayColumn2CompareRowValuesForCellMerging
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridExtrapay
    end
  end
  object cxGrid2: TcxGrid
    Left = 528
    Top = 160
    Width = 629
    Height = 193
    TabOrder = 2
    Visible = False
    object gridTotal: TcxGridDBTableView
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
      DataController.DataSource = ds_TEACHER_EXTRAPAY_TOTAL_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
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
          Format = '#,0'#47749
          Kind = skCount
          Column = gridTotalT_NAME
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridTotalNET_PRICE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object No: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'IDX'
        Visible = False
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
        Width = 55
      end
      object 강사명: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_ID'
        Visible = False
      end
      object gridTotalColumn1: TcxGridDBColumn
        Caption = 'No'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gridTotalColumn1GetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 57
      end
      object gridTotalT_NAME: TcxGridDBColumn
        Caption = #44053#49324#47749
        DataBinding.FieldName = 'T_NAME'
        Width = 157
      end
      object gridTotalNET_PRICE: TcxGridDBColumn
        Caption = #51648#44553#50529
        DataBinding.FieldName = 'NET_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 126
      end
      object gridTotalBANK_NAME: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'BANK_NAME'
        Width = 134
      end
      object gridTotalBANK_NO: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'BANK_NO'
        Width = 277
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = gridTotal
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPageSetup, peoPreferences, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPageMargins]
    PreviewOptions.PreviewBoundsRect = {0000000000000000E803000020030000}
    PrintTitle = '111'
    Version = 0
    Left = 720
    Top = 520
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
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44993.386037291670000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#51340#46321#47197#54788#54889
      ShrinkToPageWidth = True
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
    Left = 848
    Top = 528
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 136
    Top = 288
    object dxMemData1lecture_id: TStringField
      FieldName = 'lecture_id'
      Size = 17
    end
    object dxMemData1lecture_name: TStringField
      FieldName = 'lecture_name'
      Size = 30
    end
    object dxMemData1teacher_name: TStringField
      FieldName = 'teacher_name'
    end
    object dxMemData1reg_count: TIntegerField
      Alignment = taCenter
      FieldName = 'reg_count'
      DisplayFormat = '#,'
    end
    object dxMemData1dc_count: TIntegerField
      Alignment = taCenter
      FieldName = 'dc_count'
      DisplayFormat = '#,'
    end
    object dxMemData1kind1_cnt: TIntegerField
      Alignment = taCenter
      FieldName = 'kind1_cnt'
      DisplayFormat = '#,'
    end
    object dxMemData1kind2_cnt: TIntegerField
      Alignment = taCenter
      FieldName = 'kind2_cnt'
      DisplayFormat = '#,'
    end
    object dxMemData1kind3_cnt: TIntegerField
      Alignment = taCenter
      FieldName = 'kind3_cnt'
      DisplayFormat = '#,'
    end
    object dxMemData1kind4_cnt: TIntegerField
      Alignment = taCenter
      FieldName = 'kind4_cnt'
      DisplayFormat = '#,'
    end
    object dxMemData1kind5_cnt: TIntegerField
      Alignment = taCenter
      FieldName = 'kind5_cnt'
      DisplayFormat = '#,'
    end
    object dxMemData1kind_cnt6: TIntegerField
      Alignment = taCenter
      FieldName = 'kind_cnt6'
      DisplayFormat = '#,'
    end
    object dxMemData1lecture_price: TFloatField
      FieldName = 'lecture_price'
      DisplayFormat = '#,0'
    end
    object dxMemData1compan_price: TFloatField
      FieldName = 'compan_price'
      DisplayFormat = '#,0'
    end
    object dxMemData1total_price: TFloatField
      FieldName = 'total_price'
      DisplayFormat = '#,0'
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 136
    Top = 336
  end
  object q_lecture_active: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from lecture_active'
      'where l_year = :l_year and l_step = :l_step and l_price > 0')
    Left = 128
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'l_year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_step'
        ParamType = ptInput
      end>
    object q_lecture_activeID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_lecture_activeDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_lecture_activeL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object q_lecture_activeL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object q_lecture_activeL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_lecture_activeL_TIME_WEEK: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object q_lecture_activeL_DAYS: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_lecture_activeL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object q_lecture_activeSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_lecture_activeTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_lecture_activeL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_lecture_activeCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_lecture_activeIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object q_lecture_activeL_DURATION: TStringField
      FieldName = 'L_DURATION'
    end
    object q_lecture_activeL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object q_lecture_activeL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object q_lecture_activeL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object q_lecture_activeEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_lecture_activePLAN_MEN: TSmallintField
      FieldName = 'PLAN_MEN'
    end
    object q_lecture_activeREGIST_MEN: TSmallintField
      FieldName = 'REGIST_MEN'
    end
    object q_lecture_activeWAIT_MEN: TSmallintField
      FieldName = 'WAIT_MEN'
    end
    object q_lecture_activeDROP_MEN: TSmallintField
      FieldName = 'DROP_MEN'
    end
    object q_lecture_activeTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object q_lecture_activeTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
    end
    object q_lecture_activeTEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
  end
  object d_lecture_active: TDataSource
    DataSet = q_lecture_active
    Left = 128
    Top = 464
  end
  object SP_GET_COMPANSATION: TUniStoredProc
    StoredProcName = 'SP_GET_COMPANSATION'
    Connection = dm.UniConnection1
    IndexFieldNames = 'L_IDX'
    Left = 296
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'L_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_STEP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'L_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'TEACHER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'COMMON_COUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DC_COUNT1'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DC_COUNT2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DC_COUNT3'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DC_COUNT4'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DC_COUNT5'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DC_COUNT6'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DC_TOTAL'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'SUDANG'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'LEC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'DC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'TEACHER_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftInteger
        Name = 'L_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'COUNT_TOTAL'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'TEACHER_PERCENT'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'SP_GET_COMPANSATION'
    object SP_GET_COMPANSATIONID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object SP_GET_COMPANSATIONL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object SP_GET_COMPANSATIONL_PRICE: TFloatField
      FieldName = 'L_PRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object SP_GET_COMPANSATIONTEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
    object SP_GET_COMPANSATIONCOMMON_COUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'COMMON_COUNT'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONDC_COUNT1: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT1'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONDC_COUNT2: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT2'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONDC_COUNT3: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT3'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONDC_COUNT4: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT4'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONDC_COUNT5: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT5'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONDC_COUNT6: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT6'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONDC_TOTAL: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_TOTAL'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONSUDANG: TFloatField
      FieldName = 'SUDANG'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONLEC_PRICE: TFloatField
      FieldName = 'LEC_PRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONTOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = '#,'
    end
    object SP_GET_COMPANSATIONTEACHER_NAME: TStringField
      FieldName = 'TEACHER_NAME'
    end
    object SP_GET_COMPANSATIONDC_PRICE: TFloatField
      DisplayLabel = #44048#47732#49688#44053#47308
      FieldName = 'DC_PRICE'
    end
    object SP_GET_COMPANSATIONL_IDX: TIntegerField
      FieldName = 'L_IDX'
    end
    object SP_GET_COMPANSATIONCOUNT_TOTAL: TIntegerField
      FieldName = 'COUNT_TOTAL'
      DisplayFormat = '#,'
    end
  end
  object d_SP_GET_COMPANSATION: TDataSource
    DataSet = cdsCompansation
    Left = 296
    Top = 376
  end
  object cdsCompansation: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsCompansationIndex2'
        Fields = 'rno'
      end>
    IndexName = 'cdsCompansationIndex2'
    Params = <>
    StoreDefs = True
    Left = 296
    Top = 424
    object cdsCompansationID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object cdsCompansationL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object cdsCompansationL_PRICE: TFloatField
      FieldName = 'L_PRICE'
      DisplayFormat = '#,'
    end
    object cdsCompansationTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object cdsCompansationTEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
    object cdsCompansationCOMMON_COUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'COMMON_COUNT'
      DisplayFormat = '#,'
    end
    object cdsCompansationDC_COUNT1: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT1'
      DisplayFormat = '#,'
    end
    object cdsCompansationDC_COUNT2: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT2'
      DisplayFormat = '#,'
    end
    object cdsCompansationDC_COUNT3: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT3'
      DisplayFormat = '#,'
    end
    object cdsCompansationDC_COUNT4: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT4'
      DisplayFormat = '#,'
    end
    object cdsCompansationDC_COUNT5: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT5'
      DisplayFormat = '#,'
    end
    object cdsCompansationDC_COUNT6: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_COUNT6'
      DisplayFormat = '#,'
    end
    object cdsCompansationDC_TOTAL: TIntegerField
      Alignment = taCenter
      FieldName = 'DC_TOTAL'
      DisplayFormat = '#,0'
    end
    object cdsCompansationSUDANG: TFloatField
      DisplayLabel = #44048#47732#48372#51204
      FieldName = 'SUDANG'
      DisplayFormat = '#,'
    end
    object cdsCompansationLEC_PRICE: TFloatField
      DisplayLabel = #49688#44053#47308
      FieldName = 'LEC_PRICE'
      DisplayFormat = '#,'
    end
    object cdsCompansationTOTAL_PRICE: TFloatField
      DisplayLabel = #54633#44228#44552#50529
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = '#,'
    end
    object cdsCompansationTEACHER_NAME: TStringField
      Alignment = taCenter
      FieldName = 'TEACHER_NAME'
    end
    object cdsCompansationrno: TIntegerField
      FieldName = 'rno'
      DisplayFormat = '#'
    end
    object cdsCompansationdc_price: TFloatField
      DisplayLabel = #44048#47732#49688#44053#47308
      FieldName = 'dc_price'
      DisplayFormat = '#,'
    end
    object cdsCompansationp_month: TIntegerField
      DisplayLabel = #50900#48516
      FieldName = 'p_month'
    end
    object cdsCompansationcount_total: TIntegerField
      Alignment = taCenter
      DisplayLabel = #52509#51064#50896
      FieldName = 'count_total'
      DisplayFormat = '#,'
    end
  end
  object VirtualTable1: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'L_NAME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'L_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TEACHER_ID'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'TEACHER_PERCENT'
        DataType = ftSmallint
      end
      item
        Name = 'COMMON_COUNT'
        DataType = ftInteger
      end
      item
        Name = 'DC_COUNT1'
        DataType = ftInteger
      end
      item
        Name = 'DC_COUNT2'
        DataType = ftInteger
      end
      item
        Name = 'DC_COUNT3'
        DataType = ftInteger
      end
      item
        Name = 'DC_COUNT4'
        DataType = ftInteger
      end
      item
        Name = 'DC_COUNT5'
        DataType = ftInteger
      end
      item
        Name = 'DC_COUNT6'
        DataType = ftInteger
      end
      item
        Name = 'DC_TOTAL'
        DataType = ftInteger
      end
      item
        Name = 'SUDANG'
        DataType = ftFloat
      end
      item
        Name = 'LEC_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TEACHER_NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'rno'
        DataType = ftInteger
      end>
    Left = 456
    Top = 424
    Data = {
      0300120002004944010011000000000006004C5F4E414D4501001E0000000000
      07004C5F505249434506000000000000000A00544541434845525F4944010011
      00000000000F00544541434845525F50455243454E5402000000000000000C00
      434F4D4D4F4E5F434F554E540300000000000000090044435F434F554E543103
      00000000000000090044435F434F554E54320300000000000000090044435F43
      4F554E54330300000000000000090044435F434F554E54340300000000000000
      090044435F434F554E54350300000000000000090044435F434F554E54360300
      000000000000080044435F544F54414C03000000000000000600535544414E47
      060000000000000009004C45435F505249434506000000000000000B00544F54
      414C5F505249434506000000000000000C00544541434845525F4E414D450100
      1400000000000300726E6F0300000000000000000000000000}
    object VirtualTable1ID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object VirtualTable1L_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object VirtualTable1L_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object VirtualTable1TEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object VirtualTable1TEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
    object VirtualTable1COMMON_COUNT: TIntegerField
      FieldName = 'COMMON_COUNT'
    end
    object VirtualTable1DC_COUNT1: TIntegerField
      FieldName = 'DC_COUNT1'
    end
    object VirtualTable1DC_COUNT2: TIntegerField
      FieldName = 'DC_COUNT2'
    end
    object VirtualTable1DC_COUNT3: TIntegerField
      FieldName = 'DC_COUNT3'
    end
    object VirtualTable1DC_COUNT4: TIntegerField
      FieldName = 'DC_COUNT4'
    end
    object VirtualTable1DC_COUNT5: TIntegerField
      FieldName = 'DC_COUNT5'
    end
    object VirtualTable1DC_COUNT6: TIntegerField
      FieldName = 'DC_COUNT6'
    end
    object VirtualTable1DC_TOTAL: TIntegerField
      FieldName = 'DC_TOTAL'
    end
    object VirtualTable1SUDANG: TFloatField
      FieldName = 'SUDANG'
    end
    object VirtualTable1LEC_PRICE: TFloatField
      FieldName = 'LEC_PRICE'
    end
    object VirtualTable1TOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object VirtualTable1TEACHER_NAME: TStringField
      FieldName = 'TEACHER_NAME'
    end
    object VirtualTable1rno: TIntegerField
      FieldName = 'rno'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 104
    Top = 128
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
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clNavy
    end
  end
  object TEACHER_EXTRAPAY_SEL: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_SEL'
    Connection = dm.UniConnection1
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LMON'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LECTURE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'L_UID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'TEACHER_ID'
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
        Name = 'L_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'U_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'W_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'W_HOURS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CITY_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'LECTURE_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'BOJUN_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'BOJUN_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'BOJUN_TOTAL'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SODUKSE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'JUMINSE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'NET_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_PRICE2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SODUKSE2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'JUMINSE2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'NET_PRICE2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'TEACHER_IDX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'TEACHER_EXTRAPAY_SEL'
    object TEACHER_EXTRAPAY_SELID: TIntegerField
      FieldName = 'ID'
    end
    object TEACHER_EXTRAPAY_SELLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object TEACHER_EXTRAPAY_SELTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object TEACHER_EXTRAPAY_SELL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object TEACHER_EXTRAPAY_SELL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object TEACHER_EXTRAPAY_SELU_PRICE: TIntegerField
      FieldName = 'U_PRICE'
    end
    object TEACHER_EXTRAPAY_SELW_DAYS: TIntegerField
      FieldName = 'W_DAYS'
    end
    object TEACHER_EXTRAPAY_SELW_HOURS: TFloatField
      FieldName = 'W_HOURS'
    end
    object TEACHER_EXTRAPAY_SELCITY_PRICE: TIntegerField
      FieldName = 'CITY_PRICE'
    end
    object TEACHER_EXTRAPAY_SELLECTURE_PRICE: TIntegerField
      FieldName = 'LECTURE_PRICE'
    end
    object TEACHER_EXTRAPAY_SELBOJUN_PRICE: TIntegerField
      FieldName = 'BOJUN_PRICE'
    end
    object TEACHER_EXTRAPAY_SELBOJUN_CNT: TIntegerField
      FieldName = 'BOJUN_CNT'
    end
    object TEACHER_EXTRAPAY_SELBOJUN_TOTAL: TIntegerField
      FieldName = 'BOJUN_TOTAL'
    end
    object TEACHER_EXTRAPAY_SELTOTAL_PRICE: TIntegerField
      FieldName = 'TOTAL_PRICE'
    end
    object TEACHER_EXTRAPAY_SELSODUKSE: TIntegerField
      FieldName = 'SODUKSE'
    end
    object TEACHER_EXTRAPAY_SELJUMINSE: TIntegerField
      FieldName = 'JUMINSE'
    end
    object TEACHER_EXTRAPAY_SELNET_PRICE: TIntegerField
      FieldName = 'NET_PRICE'
    end
    object TEACHER_EXTRAPAY_SELL_UID: TIntegerField
      FieldName = 'L_UID'
    end
    object TEACHER_EXTRAPAY_SELTEACHER_IDX: TIntegerField
      FieldName = 'TEACHER_IDX'
    end
    object TEACHER_EXTRAPAY_SELIDX: TIntegerField
      FieldName = 'IDX'
    end
    object TEACHER_EXTRAPAY_SELTOTAL_PRICE2: TIntegerField
      FieldName = 'TOTAL_PRICE2'
    end
    object TEACHER_EXTRAPAY_SELSODUKSE2: TIntegerField
      FieldName = 'SODUKSE2'
    end
    object TEACHER_EXTRAPAY_SELJUMINSE2: TIntegerField
      FieldName = 'JUMINSE2'
    end
    object TEACHER_EXTRAPAY_SELNET_PRICE2: TIntegerField
      FieldName = 'NET_PRICE2'
    end
  end
  object ds_TEACHER_EXTRAPAY_SEL: TDataSource
    DataSet = TEACHER_EXTRAPAY_SEL
    Left = 296
    Top = 232
  end
  object TEACHER_EXTRAPAY_UPD: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_UPD'
    Connection = dm.UniConnection1
    Left = 456
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'U_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CITY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BOJUN_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BOJUN_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SODUKSE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'JUMINSE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NET_PRICE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'TEACHER_EXTRAPAY_UPD'
  end
  object TEACHER_EXTRAPAY_DEL: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_DEL'
    Connection = dm.UniConnection1
    Left = 600
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'WYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WMONTH'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'TEACHER_EXTRAPAY_DEL'
  end
  object TEACHER_EXTRAPAY_CREATE: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_CREATE'
    Connection = dm.UniConnection1
    Left = 296
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'WYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WSTEP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WMON'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'TEACHER_EXTRAPAY_CREATE'
  end
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    Left = 40
    Top = 192
  end
  object TEACHER_EXTRAPAY_UPDTAX: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_UPDTAX'
    Connection = dm.UniConnection1
    Left = 456
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'TEACHER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SODUKSE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'JUMINSE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NET_PRICE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'TEACHER_EXTRAPAY_UPDTAX'
  end
  object TEACHER_SEL_LOOKUP: TUniStoredProc
    StoredProcName = 'TEACHER_SEL_LOOKUP'
    Connection = dm.UniConnection1
    Left = 952
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'T_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'T_TEL'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_NO'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftFixedChar
        Name = 'BANK_CODE'
        ParamType = ptOutput
        Size = 3
      end
      item
        DataType = ftInteger
        Name = 'IDX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'TEACHER_SEL_LOOKUP'
    object TEACHER_SEL_LOOKUPID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object TEACHER_SEL_LOOKUPT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object TEACHER_SEL_LOOKUPT_TEL: TStringField
      FieldName = 'T_TEL'
      Size = 30
    end
    object TEACHER_SEL_LOOKUPBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object TEACHER_SEL_LOOKUPBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object TEACHER_SEL_LOOKUPBANK_CODE: TStringField
      FieldName = 'BANK_CODE'
      FixedChar = True
      Size = 3
    end
    object TEACHER_SEL_LOOKUPIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
  object ds_TEACHER_SEL_LOOKUP: TDataSource
    DataSet = TEACHER_SEL_LOOKUP
    Left = 952
    Top = 104
  end
  object dxMemData2: TdxMemData
    Indexes = <
      item
        FieldName = 'idx'
        SortOptions = []
      end>
    SortOptions = []
    SortedField = 'idx'
    Left = 360
    Top = 496
    object dxMemData2id: TIntegerField
      FieldName = 'id'
    end
    object dxMemData2teacher: TStringField
      FieldName = 'teacher'
    end
    object dxMemData2net_pay: TFloatField
      FieldName = 'net_pay'
      DisplayFormat = '#,0'
    end
    object dxMemData2bank_name: TStringField
      FieldName = 'bank_name'
    end
    object dxMemData2bank_no: TStringField
      FieldName = 'bank_no'
      Size = 30
    end
    object dxMemData2report_title: TStringField
      FieldName = 'report_title'
      Size = 100
    end
    object dxMemData2dong_name: TStringField
      FieldName = 'dong_name'
      Size = 30
    end
    object dxMemData2idx: TIntegerField
      FieldName = 'idx'
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42440.967877916660000000
    ReportOptions.LastChange = 42461.440476284720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 288
    Top = 496
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 3.000000000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #44404#47548
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."report_title"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1dong_name: TfrxMemoView
          Left = 211.653680000000000000
          Top = 30.795300000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'dong_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."dong_name"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110023860000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 40.000000000000000000
          Top = 4.000000000000000000
          Width = 35.208824100000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 93.208824100000000000
          Top = 4.000000000000000000
          Width = 81.981974360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #44053#49324#47749)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 268.239071550000000000
          Top = 4.000000000000000000
          Width = 91.671913850000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #49892#49688#47161#50529)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 376.572395390000000000
          Top = 4.000000000000000000
          Width = 99.926661030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #51008#54665#47749)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 510.499056420000000000
          Top = 4.000000000000000000
          Width = 136.886787440000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #44228#51340#48264#54840)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo17: TfrxMemoView
          Left = 40.000000000000000000
          Top = 3.000000000000000000
          Width = 35.208824100000000000
          Height = 18.897650000000000000
          DataField = 'idx'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."idx"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo18: TfrxMemoView
          Left = 93.208824100000000000
          Top = 3.000000000000000000
          Width = 165.131634360000000000
          Height = 18.897650000000000000
          DataField = 'teacher'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."teacher"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo28: TfrxMemoView
          Left = 268.239071550000000000
          Top = 3.000000000000000000
          Width = 91.671913850000000000
          Height = 18.897650000000000000
          DataField = 'net_pay'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."net_pay"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 376.572395390000000000
          Top = 3.000000000000000000
          Width = 126.383371030000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."bank_name"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 510.499056420000000000
          Top = 3.000000000000000000
          Width = 189.800207440000000000
          Height = 18.897650000000000000
          DataField = 'bank_no'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."bank_no"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 21.897650000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo32: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo33: TfrxMemoView
          Align = baRight
          Left = 600.945270000000000000
          Top = 3.000000000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 245.561891550000000000
          Top = 3.779530000000000000
          Width = 114.349093850000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."net_pay">,MasterData1)]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo6: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 51.745734360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #54633#44228':')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'id=id'
      'teacher=teacher'
      'net_pay=net_pay'
      'bank_name=bank_name'
      'bank_no=bank_no'
      'report_title=report_title'
      'dong_name=dong_name'
      'idx=idx')
    DataSet = dxMemData2
    BCDToCurrency = False
    Left = 288
    Top = 544
  end
  object DataSource2: TDataSource
    DataSet = dxMemData2
    Left = 360
    Top = 544
  end
  object q_teacher: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      
        'select idx, t_name, bank_name, bank_no from teacher where id = :' +
        'teacher_id;')
    Left = 40
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'teacher_id'
        ParamType = ptInput
      end>
    object q_teacherT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object q_teacherBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object q_teacherBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_teacherIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
  object d_teacher: TDataSource
    DataSet = q_teacher
    Left = 40
    Top = 464
  end
  object TEACHER_EXTRAPAY_TOTAL_SEL: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_TOTAL_SEL'
    Connection = dm.UniConnection1
    Left = 632
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LMONTH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TEACHER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'T_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_NO'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftLargeint
        Name = 'NET_PRICE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'TEACHER_EXTRAPAY_TOTAL_SEL'
    object TEACHER_EXTRAPAY_TOTAL_SELTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object TEACHER_EXTRAPAY_TOTAL_SELIDX: TIntegerField
      FieldName = 'IDX'
    end
    object TEACHER_EXTRAPAY_TOTAL_SELT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object TEACHER_EXTRAPAY_TOTAL_SELBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object TEACHER_EXTRAPAY_TOTAL_SELBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object TEACHER_EXTRAPAY_TOTAL_SELNET_PRICE: TLargeintField
      FieldName = 'NET_PRICE'
    end
  end
  object ds_TEACHER_EXTRAPAY_TOTAL_SEL: TDataSource
    DataSet = TEACHER_EXTRAPAY_TOTAL_SEL
    Left = 632
    Top = 256
  end
end
