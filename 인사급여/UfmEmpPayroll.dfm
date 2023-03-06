object fmEmpPayroll: TfmEmpPayroll
  Left = 0
  Top = 0
  Caption = #44553#50668#44288#47532
  ClientHeight = 697
  ClientWidth = 1172
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1172
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 33
      Height = 17
      Caption = #45380#46020':'
    end
    object Label2: TLabel
      Left = 188
      Top = 7
      Width = 19
      Height = 17
      Caption = #50900':'
    end
    object spYear: TcxSpinEdit
      Left = 44
      Top = 3
      Properties.Alignment.Horz = taCenter
      TabOrder = 0
      Width = 78
    end
    object btnRetrieve: TcxButton
      Left = 122
      Top = 3
      Width = 61
      Height = 25
      Hint = #51312#54924
      Caption = #51312#54924
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnRetrieveClick
    end
    object btnAdd: TcxButton
      Left = 259
      Top = 3
      Width = 97
      Height = 25
      Caption = #44553#50668#49373#49457
      LookAndFeel.NativeStyle = False
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
      TabOrder = 2
      OnClick = btnAddClick
    end
    object icbMonth: TcxImageComboBox
      Left = 208
      Top = 3
      Properties.Alignment.Horz = taCenter
      Properties.Items = <
        item
          Description = '1'#50900
          ImageIndex = 0
          Value = 1
        end
        item
          Description = '2'#50900
          Value = 2
        end
        item
          Description = '3'#50900
          Value = 3
        end
        item
          Description = '4'#50900
          Value = 4
        end
        item
          Description = '5'#50900
          Value = 5
        end
        item
          Description = '6'#50900
          Value = 6
        end
        item
          Description = '7'#50900
          Value = 7
        end
        item
          Description = '8'#50900
          Value = 8
        end
        item
          Description = '9'#50900
          Value = 9
        end
        item
          Description = '10'#50900
          Value = 10
        end
        item
          Description = '11'#50900
          Value = 11
        end
        item
          Description = '12'#50900
          Value = 12
        end>
      TabOrder = 3
      Width = 51
    end
    object btnRecalc: TcxButton
      Left = 518
      Top = 3
      Width = 88
      Height = 25
      Caption = #49440#53469#51116#44228#49328
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnRecalcClick
    end
    object btnPrint: TcxButton
      Left = 821
      Top = 3
      Width = 108
      Height = 25
      Hint = #52636#47141
      Caption = #51076#44552#47749#49464#49436
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
      OnClick = btnPrintClick
    end
    object btnCalcDesc: TcxButton
      Left = 727
      Top = 3
      Width = 84
      Height = 25
      Caption = #49328#52636#49885#46321#47197
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnCalcDescClick
    end
    object btnDelete: TcxButton
      Left = 357
      Top = 3
      Width = 61
      Height = 25
      Hint = #49440#53469#44053#51340#49325#51228
      Caption = #49325#51228
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
        39F33C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF1E1E
        1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
        3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E7E1E1E1E7E0000
        000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
        3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E811E1E1E810000
        000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D101010463939
        39F33C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF1E1E
        1E81000000001E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnDeleteClick
    end
    object btnExtraPrice: TcxButton
      Left = 607
      Top = 3
      Width = 107
      Height = 25
      Caption = #52628#44032' '#51076#44552'/'#44277#51228
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnExtraPriceClick
    end
    object cxButton1: TcxButton
      Left = 930
      Top = 3
      Width = 111
      Height = 25
      Hint = #52636#47141
      Caption = #51648#52636#44208#51032#49436'1'
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
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 1043
      Top = 3
      Width = 111
      Height = 25
      Hint = #52636#47141
      Caption = #51648#52636#44208#51032#49436'2'
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
      TabOrder = 10
      OnClick = cxButton2Click
    end
    object btnAnnualLeave: TcxButton
      Left = 421
      Top = 3
      Width = 73
      Height = 25
      Caption = #50672#44032#51312#54924
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnAnnualLeaveClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 31
    Width = 1172
    Height = 666
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridPayroll: TcxGridDBTableView
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
      DataController.DataSource = ds_EMP_PAYROLL_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollYUNGUM
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollGOYONG_BOHUM
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollGUNGANG_BOHUM
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollYOYANG_BOHUM
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollSANJAE_BOHUM
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollYOUNGSU_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollGONGJE_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollJUMINSE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollSODUKSE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollTOTAL_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollEXTRA_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollHOLIDAY_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollEXTEND_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollFAMILY_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollBASIC_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollWORK_DAYS
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollWORK_HOURS
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollEXTEND_HOURS
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridPayrollHOLIDAY_HOURS
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridPayrollID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridPayrollWYEAR: TcxGridDBColumn
        DataBinding.FieldName = 'WYEAR'
        Visible = False
      end
      object gridPayrollWMONTH: TcxGridDBColumn
        Caption = #50900
        DataBinding.FieldName = 'WMONTH'
        HeaderAlignmentHorz = taCenter
        Width = 54
      end
      object gridPayrollE_ID: TcxGridDBColumn
        Caption = #51649#50896#47749
        DataBinding.FieldName = 'E_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'E_NAME'
          end>
        Properties.ListSource = ds_EMP_BASIC_SEL_LOOKUP
        Width = 68
      end
      object gridPayrollWORK_DAYS: TcxGridDBColumn
        Caption = #44540#47924#51068#49688
        DataBinding.FieldName = 'WORK_DAYS'
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object gridPayrollWORK_HOURS: TcxGridDBColumn
        Caption = #44540#47924#49884#44036
        DataBinding.FieldName = 'WORK_HOURS'
        HeaderAlignmentHorz = taCenter
        Width = 66
      end
      object gridPayrollEXTEND_HOURS: TcxGridDBColumn
        Caption = #50672#51109#44540#47924#49884#44036
        DataBinding.FieldName = 'EXTEND_HOURS'
        HeaderAlignmentHorz = taCenter
        Width = 92
      end
      object gridPayrollHOLIDAY_HOURS: TcxGridDBColumn
        Caption = #55092#51068#44540#47196#49884#44036
        DataBinding.FieldName = 'HOLIDAY_HOURS'
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollNIGHT_HOURS: TcxGridDBColumn
        Caption = #50556#44036#44540#47196#49884#44036
        DataBinding.FieldName = 'NIGHT_HOURS'
        Visible = False
      end
      object gridPayrollBASIC_PRICE: TcxGridDBColumn
        Caption = #44592#48376#44553
        DataBinding.FieldName = 'BASIC_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollFAMILY_PRICE: TcxGridDBColumn
        Caption = #44032#51313#49688#45817
        DataBinding.FieldName = 'FAMILY_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollEXTEND_PRICE: TcxGridDBColumn
        Caption = #50672#51109#44540#47196#49688#45817
        DataBinding.FieldName = 'EXTEND_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollHOLIDAY_PRICE: TcxGridDBColumn
        Caption = #55092#51068#44540#47924#49688#45817
        DataBinding.FieldName = 'HOLIDAY_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollNIGHT_PRICE: TcxGridDBColumn
        Caption = #50556#44036#44540#47196#49688#45817
        DataBinding.FieldName = 'NIGHT_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        Visible = False
      end
      object gridPayrollCASH_PRICE: TcxGridDBColumn
        Caption = #54788#44552
        DataBinding.FieldName = 'CASH_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        Visible = False
      end
      object gridPayrollEXTRA_PRICE: TcxGridDBColumn
        Caption = #47749#51208#55092#44032#48708
        DataBinding.FieldName = 'EXTRA_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollTOTAL_PRICE: TcxGridDBColumn
        Caption = #52509#50529
        DataBinding.FieldName = 'TOTAL_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollSODUKSE: TcxGridDBColumn
        Caption = #44540#47196#49548#46301#49464
        DataBinding.FieldName = 'SODUKSE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 82
      end
      object gridPayrollJUMINSE: TcxGridDBColumn
        Caption = #51648#48169#49548#46301#49464
        DataBinding.FieldName = 'JUMINSE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object gridPayrollGONGJE_PRICE: TcxGridDBColumn
        Caption = #44277#51228#50529#44228
        DataBinding.FieldName = 'GONGJE_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollYOUNGSU_PRICE: TcxGridDBColumn
        Caption = #50689#49688#50529
        DataBinding.FieldName = 'YOUNGSU_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollETC1_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ETC1_NAME'
        Visible = False
      end
      object gridPayrollETC1_PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'ETC1_PRICE'
        Visible = False
      end
      object gridPayrollETC2_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ETC2_NAME'
        Visible = False
      end
      object gridPayrollETC2_PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'ETC2_PRICE'
        Visible = False
      end
      object gridPayrollYUNGUM: TcxGridDBColumn
        Caption = #44397#48124#50672#44552
        DataBinding.FieldName = 'YUNGUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollGOYONG_BOHUM: TcxGridDBColumn
        Caption = #44256#50857#48372#54744
        DataBinding.FieldName = 'GOYONG_BOHUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollGUNGANG_BOHUM: TcxGridDBColumn
        Caption = #44148#44053#48372#54744
        DataBinding.FieldName = 'GUNGANG_BOHUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollYOYANG_BOHUM: TcxGridDBColumn
        Caption = #51109#44592#50836#50577#48372#54744
        DataBinding.FieldName = 'YOYANG_BOHUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
      object gridPayrollSANJAE_BOHUM: TcxGridDBColumn
        Caption = #49328#51116#48372#54744
        DataBinding.FieldName = 'SANJAE_BOHUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridPayroll
    end
  end
  object cxGrid2: TcxGrid
    Left = 512
    Top = 408
    Width = 561
    Height = 185
    TabOrder = 2
    Visible = False
    object gridAttending: TcxGridDBTableView
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
      DataController.DataSource = ds_EMP_ATTENDING_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Column = gridAttendingW_HOUR
        end
        item
          Format = '#,0'
          Kind = skCount
          Column = gridAttendingID
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
      object gridAttendingID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 59
      end
      object gridAttendingWDATE: TcxGridDBColumn
        DataBinding.FieldName = 'WDATE'
        Width = 117
      end
      object gridAttendingW_WEEK: TcxGridDBColumn
        DataBinding.FieldName = 'W_WEEK'
        Visible = False
        Width = 86
      end
      object gridAttendingIN_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'IN_TIME'
        Width = 87
      end
      object gridAttendingOUT_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'OUT_TIME'
        Width = 94
      end
      object gridAttendingW_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'W_KIND'
        Width = 85
      end
      object gridAttendingW_REASON: TcxGridDBColumn
        DataBinding.FieldName = 'W_REASON'
        Visible = False
        Width = 123
      end
      object gridAttendingW_HOUR: TcxGridDBColumn
        DataBinding.FieldName = 'W_HOUR'
        Width = 105
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = gridAttending
    end
  end
  object EMP_PAYROLL_SEL: TUniStoredProc
    StoredProcName = 'EMP_PAYROLL_SEL'
    Connection = dm.UniConnection1
    Left = 128
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'WYEAR'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'WMONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'E_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'WORK_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'WORK_HOURS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'EXTEND_HOURS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'HOLIDAY_HOURS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'NIGHT_HOURS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'BASIC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'EXTEND_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'HOLIDAY_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'NIGHT_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CASH_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'GONGJE_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'YOUNGSU_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CALC_NOTICE1'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'CALC_NOTICE2'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'CALC_NOTICE3'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'CALC_NOTICE4'
        ParamType = ptOutput
        Size = 100
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
        Name = 'EXTRA_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ETC1_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'ETC1_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ETC2_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'ETC2_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'YUNGUM'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'GOYONG_BOHUM'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'GUNGANG_BOHUM'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'YOYANG_BOHUM'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SANJAE_BOHUM'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'EMP_PAYROLL_SEL'
    object EMP_PAYROLL_SELID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_PAYROLL_SELWYEAR: TIntegerField
      FieldName = 'WYEAR'
    end
    object EMP_PAYROLL_SELWMONTH: TIntegerField
      Alignment = taCenter
      FieldName = 'WMONTH'
    end
    object EMP_PAYROLL_SELE_ID: TIntegerField
      FieldName = 'E_ID'
    end
    object EMP_PAYROLL_SELWORK_DAYS: TIntegerField
      FieldName = 'WORK_DAYS'
    end
    object EMP_PAYROLL_SELWORK_HOURS: TIntegerField
      FieldName = 'WORK_HOURS'
    end
    object EMP_PAYROLL_SELEXTEND_HOURS: TIntegerField
      FieldName = 'EXTEND_HOURS'
    end
    object EMP_PAYROLL_SELHOLIDAY_HOURS: TIntegerField
      FieldName = 'HOLIDAY_HOURS'
    end
    object EMP_PAYROLL_SELNIGHT_HOURS: TIntegerField
      FieldName = 'NIGHT_HOURS'
    end
    object EMP_PAYROLL_SELBASIC_PRICE: TIntegerField
      FieldName = 'BASIC_PRICE'
    end
    object EMP_PAYROLL_SELFAMILY_PRICE: TIntegerField
      FieldName = 'FAMILY_PRICE'
    end
    object EMP_PAYROLL_SELEXTEND_PRICE: TIntegerField
      FieldName = 'EXTEND_PRICE'
    end
    object EMP_PAYROLL_SELHOLIDAY_PRICE: TIntegerField
      FieldName = 'HOLIDAY_PRICE'
    end
    object EMP_PAYROLL_SELNIGHT_PRICE: TIntegerField
      FieldName = 'NIGHT_PRICE'
    end
    object EMP_PAYROLL_SELCASH_PRICE: TIntegerField
      FieldName = 'CASH_PRICE'
    end
    object EMP_PAYROLL_SELTOTAL_PRICE: TIntegerField
      FieldName = 'TOTAL_PRICE'
    end
    object EMP_PAYROLL_SELGONGJE_PRICE: TIntegerField
      FieldName = 'GONGJE_PRICE'
    end
    object EMP_PAYROLL_SELYOUNGSU_PRICE: TIntegerField
      FieldName = 'YOUNGSU_PRICE'
    end
    object EMP_PAYROLL_SELSODUKSE: TIntegerField
      FieldName = 'SODUKSE'
    end
    object EMP_PAYROLL_SELJUMINSE: TIntegerField
      FieldName = 'JUMINSE'
    end
    object EMP_PAYROLL_SELEXTRA_PRICE: TIntegerField
      FieldName = 'EXTRA_PRICE'
    end
    object EMP_PAYROLL_SELETC1_NAME: TStringField
      FieldName = 'ETC1_NAME'
      Size = 30
    end
    object EMP_PAYROLL_SELETC1_PRICE: TIntegerField
      FieldName = 'ETC1_PRICE'
    end
    object EMP_PAYROLL_SELETC2_NAME: TStringField
      FieldName = 'ETC2_NAME'
      Size = 30
    end
    object EMP_PAYROLL_SELETC2_PRICE: TIntegerField
      FieldName = 'ETC2_PRICE'
    end
    object EMP_PAYROLL_SELYUNGUM: TIntegerField
      FieldName = 'YUNGUM'
    end
    object EMP_PAYROLL_SELGOYONG_BOHUM: TIntegerField
      FieldName = 'GOYONG_BOHUM'
    end
    object EMP_PAYROLL_SELGUNGANG_BOHUM: TIntegerField
      FieldName = 'GUNGANG_BOHUM'
    end
    object EMP_PAYROLL_SELYOYANG_BOHUM: TIntegerField
      FieldName = 'YOYANG_BOHUM'
    end
    object EMP_PAYROLL_SELSANJAE_BOHUM: TIntegerField
      FieldName = 'SANJAE_BOHUM'
    end
  end
  object ds_EMP_PAYROLL_SEL: TDataSource
    DataSet = EMP_PAYROLL_SEL
    Left = 128
    Top = 184
  end
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    Left = 312
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 312
    Top = 184
  end
  object EMP_PAYROLL_INS: TUniStoredProc
    StoredProcName = 'EMP_PAYROLL_INS'
    Connection = dm.UniConnection1
    Left = 128
    Top = 232
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
      end
      item
        DataType = ftInteger
        Name = 'E_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WORK_DAYS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WORK_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EXTEND_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'HOLIDAY_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NIGHT_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BASIC_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EXTEND_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'HOLIDAY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NIGHT_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CASH_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GONGJE_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YOUNGSU_PRICE'
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
        Name = 'EXTRA_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ETC1_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'ETC1_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ETC2_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'ETC2_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YUNGUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GOYONG_BOHUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GUNGANG_BOHUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YOYANG_BOHUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SANJAE_BOHUM'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_PAYROLL_INS'
  end
  object EMP_BASIC_SEL: TUniStoredProc
    StoredProcName = 'EMP_BASIC_SEL'
    Connection = dm.UniConnection1
    Left = 128
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'E_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftDate
        Name = 'E_BIRTH'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'E_JOB'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'HOUR_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DAY_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'MONTH_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_HOUR'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'EMP_BASIC_SEL'
    object EMP_BASIC_SELID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_BASIC_SELE_NAME: TStringField
      FieldName = 'E_NAME'
    end
    object EMP_BASIC_SELE_BIRTH: TDateField
      FieldName = 'E_BIRTH'
    end
    object EMP_BASIC_SELSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object EMP_BASIC_SELE_JOB: TStringField
      FieldName = 'E_JOB'
      Size = 30
    end
    object EMP_BASIC_SELHOUR_PRICE: TIntegerField
      FieldName = 'HOUR_PRICE'
    end
    object EMP_BASIC_SELDAY_PRICE: TIntegerField
      FieldName = 'DAY_PRICE'
    end
    object EMP_BASIC_SELMONTH_PRICE: TIntegerField
      FieldName = 'MONTH_PRICE'
    end
    object EMP_BASIC_SELFAMILY_CNT: TIntegerField
      FieldName = 'FAMILY_CNT'
    end
    object EMP_BASIC_SELFAMILY_PRICE: TIntegerField
      FieldName = 'FAMILY_PRICE'
    end
    object EMP_BASIC_SELFAMILY_HOUR: TIntegerField
      FieldName = 'FAMILY_HOUR'
    end
  end
  object ds_EMP_BASIC_SEL: TDataSource
    DataSet = EMP_BASIC_SEL
    Left = 128
    Top = 376
  end
  object EMP_ATTENDING_SEL: TUniStoredProc
    StoredProcName = 'EMP_ATTENDING_SEL'
    Connection = dm.UniConnection1
    Left = 272
    Top = 328
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
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'WDATE'
        ParamType = ptOutput
      end
      item
        DataType = ftTime
        Name = 'IN_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftTime
        Name = 'OUT_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'W_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'W_REASON'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftInteger
        Name = 'W_HOUR'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'W_WEEK'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'EMP_ATTENDING_SEL'
    object EMP_ATTENDING_SELID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_ATTENDING_SELWDATE: TDateField
      FieldName = 'WDATE'
    end
    object EMP_ATTENDING_SELIN_TIME: TTimeField
      FieldName = 'IN_TIME'
    end
    object EMP_ATTENDING_SELOUT_TIME: TTimeField
      FieldName = 'OUT_TIME'
    end
    object EMP_ATTENDING_SELW_KIND: TIntegerField
      FieldName = 'W_KIND'
    end
    object EMP_ATTENDING_SELW_REASON: TStringField
      FieldName = 'W_REASON'
      Size = 200
    end
    object EMP_ATTENDING_SELW_HOUR: TIntegerField
      FieldName = 'W_HOUR'
    end
    object EMP_ATTENDING_SELW_WEEK: TIntegerField
      FieldName = 'W_WEEK'
    end
  end
  object ds_EMP_ATTENDING_SEL: TDataSource
    DataSet = EMP_ATTENDING_SEL
    Left = 272
    Top = 376
  end
  object EMP_BASIC_SEL_LOOKUP: TUniStoredProc
    StoredProcName = 'EMP_BASIC_SEL_LOOKUP'
    Connection = dm.UniConnection1
    Left = 128
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'E_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftDate
        Name = 'E_BIRTH'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'E_JOB'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'HOUR_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DAY_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'MONTH_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_HOUR'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'EMP_BASIC_SEL_LOOKUP'
    object EMP_BASIC_SEL_LOOKUPID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_BASIC_SEL_LOOKUPE_NAME: TStringField
      FieldName = 'E_NAME'
    end
    object EMP_BASIC_SEL_LOOKUPE_BIRTH: TDateField
      FieldName = 'E_BIRTH'
    end
    object EMP_BASIC_SEL_LOOKUPSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object EMP_BASIC_SEL_LOOKUPE_JOB: TStringField
      FieldName = 'E_JOB'
      Size = 30
    end
    object EMP_BASIC_SEL_LOOKUPHOUR_PRICE: TIntegerField
      FieldName = 'HOUR_PRICE'
    end
    object EMP_BASIC_SEL_LOOKUPDAY_PRICE: TIntegerField
      FieldName = 'DAY_PRICE'
    end
    object EMP_BASIC_SEL_LOOKUPMONTH_PRICE: TIntegerField
      FieldName = 'MONTH_PRICE'
    end
    object EMP_BASIC_SEL_LOOKUPFAMILY_CNT: TIntegerField
      FieldName = 'FAMILY_CNT'
    end
    object EMP_BASIC_SEL_LOOKUPFAMILY_PRICE: TIntegerField
      FieldName = 'FAMILY_PRICE'
    end
    object EMP_BASIC_SEL_LOOKUPFAMILY_HOUR: TIntegerField
      FieldName = 'FAMILY_HOUR'
    end
  end
  object ds_EMP_BASIC_SEL_LOOKUP: TDataSource
    DataSet = EMP_BASIC_SEL_LOOKUP
    Left = 128
    Top = 488
  end
  object EMP_PAYROLL_UPD: TUniStoredProc
    StoredProcName = 'EMP_PAYROLL_UPD'
    Connection = dm.UniConnection1
    Left = 128
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WMONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WORK_DAYS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WORK_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EXTEND_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'HOLIDAY_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NIGHT_HOURS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BASIC_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EXTEND_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'HOLIDAY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NIGHT_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CASH_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GONGJE_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YOUNGSU_PRICE'
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
      end>
    CommandStoredProcName = 'EMP_PAYROLL_UPD'
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44980.432926805560000000
    ReportOptions.LastChange = 44983.220412696760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 864
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
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
      object Memo7: TfrxMemoView
        Top = 159.330860000000000000
        Width = 718.110700000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          #49464#48512' '#45236#50669)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo29: TfrxMemoView
        Top = 626.890230000000000000
        Width = 718.110700000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#49328' '#48169#48277)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Top = 553.858690000000000000
        Width = 226.771800000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          #52488#44284#44540#47924#49884#44036#49688)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo28: TfrxMemoView
        Left = 491.457020000000000000
        Top = 553.858690000000000000
        Width = 226.771800000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          #51312#53748#54943#49688'('#52509#49884#44036')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo27: TfrxMemoView
        Left = 227.771800000000000000
        Top = 553.858690000000000000
        Width = 264.567100000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          #50672#44032#51068#49688)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo1: TfrxMemoView
        Left = 293.023810000000000000
        Top = 38.370130000000000000
        Width = 185.196970000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #50900' '#51076' '#44552' '#47749' '#49464' '#49436)
        ParentFont = False
      end
      object frxDBDataset1year_month: TfrxMemoView
        Left = 265.448980000000000000
        Top = 38.370130000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        DataField = 'year_month'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."year_month"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 483.779840000000000000
        Top = 70.944960000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648#44553#51068' : ')
        ParentFont = False
      end
      object frxDBDataset1jigubil: TfrxMemoView
        Left = 566.929500000000000000
        Top = 70.944960000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'jigubil'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."jigubil"]')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Top = 94.181200000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line2: TfrxLineView
        Top = 125.976500000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line3: TfrxLineView
        Top = 157.771800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line4: TfrxLineView
        Top = 189.567100000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line5: TfrxLineView
        Top = 220.362400000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line6: TfrxLineView
        Top = 254.157700000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line7: TfrxLineView
        Top = 287.953000000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line8: TfrxLineView
        Top = 319.748300000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line9: TfrxLineView
        Top = 353.543600000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line10: TfrxLineView
        Top = 387.338900000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line11: TfrxLineView
        Top = 420.134200000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line12: TfrxLineView
        Top = 450.929500000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line13: TfrxLineView
        Top = 481.724800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line14: TfrxLineView
        Top = 513.520100000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line15: TfrxLineView
        Left = 359.055350000000000000
        Top = 545.315400000000000000
        Width = 359.055350000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line16: TfrxLineView
        Top = 614.110700000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line17: TfrxLineView
        Top = 653.906000000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line18: TfrxLineView
        Top = 683.701300000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line19: TfrxLineView
        Top = 716.496600000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line20: TfrxLineView
        Top = 747.291900000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line21: TfrxLineView
        Top = 779.087200000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Top = 809.882500000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo3: TfrxMemoView
        Left = 22.677180000000000000
        Top = 101.519790000000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #49457#47749)
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 22.677180000000000000
        Top = 133.315090000000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #48512#49436)
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 321.260050000000000000
        Top = 101.519790000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #49373#45380#50900#51068'('#49324#48264')')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 355.716760000000000000
        Top = 133.315090000000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51649#44553)
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 130.047310000000000000
        Top = 194.905690000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648'    '#44553)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 486.354670000000000000
        Top = 195.905690000000000000
        Width = 83.149660000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44277'    '#51228)
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 36.692950000000000000
        Top = 228.700990000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51076#44552' '#54637#47785)
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 221.315090000000000000
        Top = 228.700990000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648#44553' '#44552#50529)
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 393.527830000000000000
        Top = 228.700990000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44277#51228' '#54637#47785)
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 585.709030000000000000
        Top = 228.700990000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #44277#51228' '#44552#50529)
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 46.141775000000000000
        Top = 262.496290000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44592#48376#44553)
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 32.913420000000000000
        Top = 295.291590000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44032#51313#49688#45817)
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 32.913420000000000000
        Top = 361.086890000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #47749#51208#55092#44032#48708)
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 393.527830000000000000
        Top = 262.496290000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44540#47196#49548#46301#49464)
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 393.527830000000000000
        Top = 295.291590000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#48169#49548#46301#49464)
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 393.527830000000000000
        Top = 327.086890000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44397#48124#50672#44552)
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 393.527830000000000000
        Top = 361.882190000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44256#50857#48372#54744)
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 393.527830000000000000
        Top = 393.677490000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744)
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 378.527830000000000000
        Top = 426.472790000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51109#44592#50836#50577#48372#54744)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 393.527830000000000000
        Top = 458.268090000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49328#51116#48372#54744)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 393.527830000000000000
        Top = 488.063390000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44277#51228#50529' '#44228)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 393.527830000000000000
        Top = 520.858690000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49892#49688#47161#50529)
        ParentFont = False
      end
      object Line23: TfrxLineView
        Left = 359.055350000000000000
        Top = 189.567100000000000000
        Height = 355.275820000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line24: TfrxLineView
        Left = 510.134200000000000000
        Top = 220.362400000000000000
        Height = 325.039580000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line25: TfrxLineView
        Left = 151.078850000000000000
        Top = 220.362400000000000000
        Height = 294.047244094488200000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object frxDBDataset1basic_price: TfrxMemoView
        Left = 196.535560000000000000
        Top = 262.496290000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        DataField = 'basic_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."basic_price"]')
        ParentFont = False
      end
      object frxDBDataset1ext_price: TfrxMemoView
        Left = 196.535560000000000000
        Top = 328.307360000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        DataField = 'ext_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."ext_price"]')
        ParentFont = False
      end
      object frxDBDataset1bonus: TfrxMemoView
        Left = 200.315090000000000000
        Top = 361.086890000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        DataField = 'bonus'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."bonus"]')
        ParentFont = False
      end
      object frxDBDataset1sodukse: TfrxMemoView
        Left = 555.590910000000000000
        Top = 262.496290000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        DataField = 'sodukse'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."sodukse"]')
        ParentFont = False
      end
      object frxDBDataset1juminse: TfrxMemoView
        Left = 555.590910000000000000
        Top = 295.291590000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        DataField = 'juminse'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."juminse"]')
        ParentFont = False
      end
      object frxDBDataset1gongje_total: TfrxMemoView
        Left = 555.590910000000000000
        Top = 488.063390000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        DataField = 'gongje_total'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."gongje_total"]')
        ParentFont = False
      end
      object frxDBDataset1net_price: TfrxMemoView
        Left = 555.590910000000000000
        Top = 520.858690000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        DataField = 'net_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."net_price"]')
        ParentFont = False
      end
      object frxDBDataset1ename: TfrxMemoView
        Left = 120.944960000000000000
        Top = 101.519790000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'ename'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."ename"]')
        ParentFont = False
      end
      object frxDBDataset1ebirth: TfrxMemoView
        Left = 503.354670000000000000
        Top = 101.519790000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'ebirth'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."ebirth"]')
        ParentFont = False
      end
      object Line26: TfrxLineView
        Left = 94.488250000000000000
        Top = 94.181200000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line27: TfrxLineView
        Left = 302.362400000000000000
        Top = 94.181200000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line28: TfrxLineView
        Left = 453.543600000000000000
        Top = 94.181200000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line29: TfrxLineView
        Top = 583.315400000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line30: TfrxLineView
        Top = 553.079160000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line31: TfrxLineView
        Top = 625.110700000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line32: TfrxLineView
        Left = 226.771800000000000000
        Top = 553.079160000000000000
        Height = 60.472480000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line33: TfrxLineView
        Left = 491.338900000000000000
        Top = 553.079160000000000000
        Height = 60.472480000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo30: TfrxMemoView
        Left = 37.795300000000000000
        Top = 660.465060000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44396#48516)
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 238.110390000000000000
        Top = 660.465060000000000000
        Width = 245.669450000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49328#52636#49885' '#46608#45716' '#49328#52636#48169#48277)
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 593.386210000000000000
        Top = 660.465060000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#44553#50529)
        ParentFont = False
      end
      object Line34: TfrxLineView
        Left = 151.181200000000000000
        Top = 653.906000000000000000
        Height = 321.260050000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line35: TfrxLineView
        Left = 566.929500000000000000
        Top = 653.906000000000000000
        Height = 321.260050000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo33: TfrxMemoView
        Left = 37.795300000000000000
        Top = 691.260360000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44592#48376#44553)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 18.897650000000000000
        Top = 723.055660000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49884#44036#50808#44540#47924#49688#45817)
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 37.795300000000000000
        Top = 785.850960000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #47749#51208#49688#45817)
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 37.795300000000000000
        Top = 754.425790000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44032#51313#49688#45817)
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 37.795300000000000000
        Top = 817.221090000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44397#48124#50672#44552)
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 37.795300000000000000
        Top = 917.016390000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44256#50857#48372#54744)
        ParentFont = False
      end
      object Line36: TfrxLineView
        Top = 842.835190000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line37: TfrxLineView
        Top = 876.850960000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line38: TfrxLineView
        Top = 910.866730000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line39: TfrxLineView
        Top = 941.102970000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo39: TfrxMemoView
        Left = 37.795300000000000000
        Top = 851.410020000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744)
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 37.795300000000000000
        Top = 885.425790000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51109#44592#50836#50577#48372#54744)
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 37.795300000000000000
        Top = 948.662030000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49328#51116#48372#54744)
        ParentFont = False
      end
      object frxDBDataset1ext_hours: TfrxMemoView
        Left = 75.031540000000000000
        Top = 588.606680000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'ext_hours'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."ext_hours"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset1yunga_days: TfrxMemoView
        Left = 302.362400000000000000
        Top = 588.606680000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        DataField = 'yunga_days'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."yunga_days"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset1jotoi_hours: TfrxMemoView
        Left = 551.811380000000000000
        Top = 588.606680000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        DataField = 'jotoi_hours'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."jotoi_hours"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset1calc_note1: TfrxMemoView
        Left = 158.740260000000000000
        Top = 691.260360000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note1'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note1"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset1calc_note2: TfrxMemoView
        Left = 158.740260000000000000
        Top = 723.055660000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note2'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note2"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset1calc_note3: TfrxMemoView
        Left = 158.740260000000000000
        Top = 754.425790000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note3'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note3"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset1calc_note4: TfrxMemoView
        Left = 158.740260000000000000
        Top = 785.850960000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note4'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note4"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo42: TfrxMemoView
        Left = 577.827150000000000000
        Top = 691.260360000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        DataField = 'basic_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."basic_price"]')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 578.268090000000000000
        Top = 723.055660000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        DataField = 'ext_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."ext_price"]')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 582.047620000000000000
        Top = 785.850960000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        DataField = 'bonus'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."bonus"]')
        ParentFont = False
      end
      object frxDBDataset1family_price: TfrxMemoView
        Left = 582.047620000000000000
        Top = 754.425790000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        DataField = 'family_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."family_price"]')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 11.338590000000000000
        Top = 982.677800000000000000
        Width = 600.945270000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #8251#54644#45817' '#49324#50629#51109' '#49345#54889#50640' '#46384#46972' '#44592#51116#44032' '#54596#50836#50630#45716' '#54637#47785#51060' '#51080#51012' '#49688' '#51080#49845#45768#45796'.')
        ParentFont = False
      end
      object frxDBDataset1etc1_name: TfrxMemoView
        Left = 3.779530000000000000
        Top = 394.834880000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        DataField = 'etc1_name'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."etc1_name"]')
        ParentFont = False
      end
      object frxDBDataset1etc2_name: TfrxMemoView
        Left = 3.779530000000000000
        Top = 427.071120000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        DataField = 'etc2_name'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."etc2_name"]')
        ParentFont = False
      end
      object frxDBDataset1etc1_price: TfrxMemoView
        Left = 196.535560000000000000
        Top = 395.834880000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        DataField = 'etc1_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."etc1_price"]')
        ParentFont = False
      end
      object frxDBDataset1etc2_price: TfrxMemoView
        Left = 192.756030000000000000
        Top = 427.071120000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'etc2_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."etc2_price"]')
        ParentFont = False
      end
      object frxDBDataset1yungum: TfrxMemoView
        Left = 551.811380000000000000
        Top = 328.819110000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        DataField = 'yungum'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yungum"]')
        ParentFont = False
      end
      object frxDBDataset1goyong: TfrxMemoView
        Left = 551.811380000000000000
        Top = 359.055350000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        DataField = 'goyong'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."goyong"]')
        ParentFont = False
      end
      object frxDBDataset1gungang: TfrxMemoView
        Left = 551.811380000000000000
        Top = 393.677490000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        DataField = 'gungang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."gungang"]')
        ParentFont = False
      end
      object frxDBDataset1yoyang: TfrxMemoView
        Left = 548.031850000000000000
        Top = 426.472790000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        DataField = 'yoyang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yoyang"]')
        ParentFont = False
      end
      object frxDBDataset1sanjae: TfrxMemoView
        Left = 551.811380000000000000
        Top = 458.268090000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        DataField = 'sanjae'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."sanjae"]')
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 30.236240000000000000
        Top = 328.819110000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49884#44036#50808#49688#45817)
        ParentFont = False
      end
      object frxDBDataset1family_price1: TfrxMemoView
        Left = 192.756030000000000000
        Top = 294.803340000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'family_price'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."family_price"]')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 30.236240000000000000
        Top = 488.063390000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#44553#50529' '#44228)
        ParentFont = False
      end
      object frxDBDataset1jigub_total: TfrxMemoView
        Left = 192.756030000000000000
        Top = 488.063390000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'jigub_total'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."jigub_total"]')
        ParentFont = False
      end
      object frxDBDataset1busu: TfrxMemoView
        Left = 105.826840000000000000
        Top = 132.283550000000000000
        Width = 185.196970000000000000
        Height = 18.897650000000000000
        DataField = 'busu'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."busu"]')
        ParentFont = False
      end
      object frxDBDataset1jikgub: TfrxMemoView
        Left = 476.220780000000000000
        Top = 132.283550000000000000
        Width = 211.653680000000000000
        Height = 18.897650000000000000
        DataField = 'jikgub'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."jikgub"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note5: TfrxMemoView
        Left = 158.740260000000000000
        Top = 817.221090000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note5'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note5"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note6: TfrxMemoView
        Left = 158.740260000000000000
        Top = 851.410020000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note6'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note6"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note7: TfrxMemoView
        Left = 158.740260000000000000
        Top = 885.425790000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note7'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note7"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note8: TfrxMemoView
        Left = 158.740260000000000000
        Top = 917.016390000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note8'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note8"]')
        ParentFont = False
      end
      object frxDBDataset1yungum1: TfrxMemoView
        Left = 582.047620000000000000
        Top = 817.221090000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        DataField = 'yungum'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yungum"]')
        ParentFont = False
      end
      object frxDBDataset1gungang1: TfrxMemoView
        Left = 578.268090000000000000
        Top = 851.410020000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        DataField = 'gungang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."gungang"]')
        ParentFont = False
      end
      object frxDBDataset1yoyang1: TfrxMemoView
        Left = 578.268090000000000000
        Top = 885.425790000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        DataField = 'yoyang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yoyang"]')
        ParentFont = False
      end
      object frxDBDataset1goyong1: TfrxMemoView
        Left = 578.268090000000000000
        Top = 917.016390000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        DataField = 'goyong'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '#,#'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."goyong"]')
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        Top = 7.559060000000000000
        Width = 718.110700000000000000
        Height = 967.559680000000000000
        Frame.Width = 2.000000000000000000
      end
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 864
    Top = 160
    object dxMemData1year_month: TIntegerField
      FieldName = 'year_month'
    end
    object dxMemData1jigubil: TDateField
      FieldName = 'jigubil'
    end
    object dxMemData1ename: TStringField
      FieldName = 'ename'
    end
    object dxMemData1ebirth: TStringField
      FieldName = 'ebirth'
    end
    object dxMemData1busu: TStringField
      FieldName = 'busu'
      Size = 30
    end
    object dxMemData1jikgub: TStringField
      FieldName = 'jikgub'
    end
    object dxMemData1basic_price: TIntegerField
      FieldName = 'basic_price'
    end
    object dxMemData1ext_price: TIntegerField
      FieldName = 'ext_price'
    end
    object dxMemData1bonus: TIntegerField
      FieldName = 'bonus'
    end
    object dxMemData1jigub_total: TIntegerField
      FieldName = 'jigub_total'
    end
    object dxMemData1sodukse: TIntegerField
      FieldName = 'sodukse'
    end
    object dxMemData1juminse: TIntegerField
      FieldName = 'juminse'
    end
    object dxMemData1gongje_total: TIntegerField
      FieldName = 'gongje_total'
    end
    object dxMemData1net_price: TIntegerField
      FieldName = 'net_price'
    end
    object dxMemData1ext_hours: TIntegerField
      FieldName = 'ext_hours'
    end
    object dxMemData1yunga_days: TIntegerField
      FieldName = 'yunga_days'
    end
    object dxMemData1jotoi_hours: TIntegerField
      FieldName = 'jotoi_hours'
    end
    object dxMemData1calc_note1: TStringField
      FieldName = 'calc_note1'
      Size = 100
    end
    object dxMemData1calc_note2: TStringField
      FieldName = 'calc_note2'
      Size = 100
    end
    object dxMemData1calc_note3: TStringField
      FieldName = 'calc_note3'
      Size = 100
    end
    object dxMemData1calc_note4: TStringField
      FieldName = 'calc_note4'
      Size = 100
    end
    object dxMemData1calc_note5: TStringField
      FieldName = 'calc_note5'
      Size = 100
    end
    object dxMemData1calc_note6: TStringField
      FieldName = 'calc_note6'
      Size = 100
    end
    object dxMemData1calc_note7: TStringField
      FieldName = 'calc_note7'
      Size = 100
    end
    object dxMemData1calc_note8: TStringField
      FieldName = 'calc_note8'
      Size = 100
    end
    object dxMemData1family_price: TIntegerField
      FieldName = 'family_price'
    end
    object dxMemData1etc1_price: TIntegerField
      FieldName = 'etc1_price'
    end
    object dxMemData1etc1_name: TStringField
      FieldName = 'etc1_name'
      Size = 30
    end
    object dxMemData1etc2_price: TIntegerField
      FieldName = 'etc2_price'
    end
    object dxMemData1etc2_name: TStringField
      FieldName = 'etc2_name'
      Size = 30
    end
    object dxMemData1yungum: TIntegerField
      FieldName = 'yungum'
    end
    object dxMemData1goyong: TIntegerField
      FieldName = 'goyong'
    end
    object dxMemData1gungang: TIntegerField
      FieldName = 'gungang'
    end
    object dxMemData1yoyang: TIntegerField
      FieldName = 'yoyang'
    end
    object dxMemData1sanjae: TIntegerField
      FieldName = 'sanjae'
    end
    object dxMemData1total_amount_string: TStringField
      DisplayWidth = 100
      FieldName = 'total_amount_string'
      Size = 100
    end
    object dxMemData1total_out_amount: TIntegerField
      FieldName = 'total_out_amount'
    end
  end
  object EMP_TAX_TABLE_SEL: TUniStoredProc
    StoredProcName = 'EMP_TAX_TABLE_SEL'
    Connection = dm.UniConnection1
    Left = 264
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'START_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'END_RICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY1'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY3'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY4'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY5'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY6'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY7'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY8'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY9'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY10'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY11'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'EMP_TAX_TABLE_SEL'
    object EMP_TAX_TABLE_SELID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_TAX_TABLE_SELSTART_PRICE: TIntegerField
      FieldName = 'START_PRICE'
    end
    object EMP_TAX_TABLE_SELEND_RICE: TIntegerField
      FieldName = 'END_RICE'
    end
    object EMP_TAX_TABLE_SELFAMILY1: TIntegerField
      FieldName = 'FAMILY1'
    end
    object EMP_TAX_TABLE_SELFAMILY2: TIntegerField
      FieldName = 'FAMILY2'
    end
    object EMP_TAX_TABLE_SELFAMILY3: TIntegerField
      FieldName = 'FAMILY3'
    end
    object EMP_TAX_TABLE_SELFAMILY4: TIntegerField
      FieldName = 'FAMILY4'
    end
    object EMP_TAX_TABLE_SELFAMILY5: TIntegerField
      FieldName = 'FAMILY5'
    end
    object EMP_TAX_TABLE_SELFAMILY6: TIntegerField
      FieldName = 'FAMILY6'
    end
    object EMP_TAX_TABLE_SELFAMILY7: TIntegerField
      FieldName = 'FAMILY7'
    end
    object EMP_TAX_TABLE_SELFAMILY8: TIntegerField
      FieldName = 'FAMILY8'
    end
    object EMP_TAX_TABLE_SELFAMILY9: TIntegerField
      FieldName = 'FAMILY9'
    end
    object EMP_TAX_TABLE_SELFAMILY10: TIntegerField
      FieldName = 'FAMILY10'
    end
    object EMP_TAX_TABLE_SELFAMILY11: TIntegerField
      FieldName = 'FAMILY11'
    end
  end
  object ds_EMP_TAX_TABLE_SEL: TDataSource
    DataSet = EMP_TAX_TABLE_SEL
    Left = 264
    Top = 488
  end
  object DataSource2: TDataSource
    DataSet = dxMemData1
    Left = 864
    Top = 208
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'year_month=year_month'
      'jigubil=jigubil'
      'ename=ename'
      'ebirth=ebirth'
      'busu=busu'
      'jikgub=jikgub'
      'basic_price=basic_price'
      'ext_price=ext_price'
      'bonus=bonus'
      'jigub_total=jigub_total'
      'sodukse=sodukse'
      'juminse=juminse'
      'gongje_total=gongje_total'
      'net_price=net_price'
      'ext_hours=ext_hours'
      'yunga_days=yunga_days'
      'jotoi_hours=jotoi_hours'
      'calc_note1=calc_note1'
      'calc_note2=calc_note2'
      'calc_note3=calc_note3'
      'calc_note4=calc_note4'
      'calc_note5=calc_note5'
      'calc_note6=calc_note6'
      'calc_note7=calc_note7'
      'calc_note8=calc_note8'
      'family_price=family_price'
      'etc1_price=etc1_price'
      'etc1_name=etc1_name'
      'etc2_price=etc2_price'
      'etc2_name=etc2_name'
      'yungum=yungum'
      'goyong=goyong'
      'gungang=gungang'
      'yoyang=yoyang'
      'sanjae=sanjae'
      'total_amount_string=total_amount_string'
      'total_out_amount=total_out_amount')
    DataSet = dxMemData1
    BCDToCurrency = False
    Left = 864
    Top = 112
  end
  object EMP_PAYROLL_CALC_DESC_SEL: TUniStoredProc
    StoredProcName = 'EMP_PAYROLL_CALC_DESC_SEL'
    Connection = dm.UniConnection1
    Left = 560
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAYID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PAY_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'BASIC_PAY'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'EXTEND_TIME'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'FAMILY_PAY'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'BONUS_PAY'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'YUNGUM'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'GUNGANG'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'YOYANG'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'GOYONG'
        ParamType = ptOutput
        Size = 100
      end>
    CommandStoredProcName = 'EMP_PAYROLL_CALC_DESC_SEL'
    object EMP_PAYROLL_CALC_DESC_SELID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_PAYROLL_CALC_DESC_SELPAY_ID: TIntegerField
      FieldName = 'PAY_ID'
    end
    object EMP_PAYROLL_CALC_DESC_SELBASIC_PAY: TStringField
      FieldName = 'BASIC_PAY'
      Size = 100
    end
    object EMP_PAYROLL_CALC_DESC_SELEXTEND_TIME: TStringField
      FieldName = 'EXTEND_TIME'
      Size = 100
    end
    object EMP_PAYROLL_CALC_DESC_SELFAMILY_PAY: TStringField
      FieldName = 'FAMILY_PAY'
      Size = 100
    end
    object EMP_PAYROLL_CALC_DESC_SELBONUS_PAY: TStringField
      FieldName = 'BONUS_PAY'
      Size = 100
    end
    object EMP_PAYROLL_CALC_DESC_SELYUNGUM: TStringField
      FieldName = 'YUNGUM'
      Size = 100
    end
    object EMP_PAYROLL_CALC_DESC_SELGUNGANG: TStringField
      FieldName = 'GUNGANG'
      Size = 100
    end
    object EMP_PAYROLL_CALC_DESC_SELYOYANG: TStringField
      FieldName = 'YOYANG'
      Size = 100
    end
    object EMP_PAYROLL_CALC_DESC_SELGOYONG: TStringField
      FieldName = 'GOYONG'
      Size = 100
    end
  end
  object ds_EMP_PAYROLL_CALC_DESC_SEL: TDataSource
    DataSet = EMP_PAYROLL_CALC_DESC_SEL
    Left = 560
    Top = 256
  end
  object EMP_PAYROLL_CALC_DESC_IU: TUniStoredProc
    StoredProcName = 'EMP_PAYROLL_CALC_DESC_IU'
    Connection = dm.UniConnection1
    Left = 560
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BASIC_PAY'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'EXTEND_TIME'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'FAMILY_PAY'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'BONUS_PAY'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'YUNGUM'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'GUNGANG'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'YOYANG'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'GOYONG'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'EMP_PAYROLL_CALC_DESC_IU'
  end
  object frxReport2: TfrxReport
    Version = '5.1.9'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44985.266758958340000000
    ReportOptions.LastChange = 44985.266758958340000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 952
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
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
      object Memo1: TfrxMemoView
        Left = 230.551330000000000000
        Top = 41.574830000000000000
        Width = 200.315090000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #51648' '#52636' '#44208' '#51032' '#49436)
        ParentFont = False
      end
      object frxDBDataset1busu: TfrxMemoView
        Left = 37.795300000000000000
        Top = 102.047310000000000000
        Width = 340.157700000000000000
        Height = 30.236240000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."busu"] '#51452#48124#51088#52824#54924)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Left = 408.189240000000000000
        Top = 86.929190000000000000
        Width = 18.897650000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #44208
          ''
          #51116)
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 457.323130000000000000
        Top = 82.929190000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #45812#45817#51088)
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 551.811380000000000000
        Top = 82.929190000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48512#54924#51109)
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 646.299630000000000000
        Top = 82.929190000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54924'  '#51109)
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 438.425480000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line2: TfrxLineView
        Left = 529.134200000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line3: TfrxLineView
        Left = 623.622450000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line4: TfrxLineView
        Left = 396.850650000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object frxDBDataset1total_amount_string: TfrxMemoView
        Left = 37.795300000000000000
        Top = 162.519790000000000000
        Width = 638.740570000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."total_amount_string"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line5: TfrxLineView
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line6: TfrxLineView
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line7: TfrxLineView
        Left = 438.425480000000000000
        Top = 105.826840000000000000
        Width = 279.685220000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line8: TfrxLineView
        Left = 188.976500000000000000
        Top = 75.590600000000000000
        Width = 529.134200000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line9: TfrxLineView
        Top = 75.590600000000000000
        Width = 188.976500000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line10: TfrxLineView
        Top = 37.795300000000000000
        Width = 188.976500000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line11: TfrxLineView
        Left = 188.976500000000000000
        Top = 37.795300000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line12: TfrxLineView
        Top = 37.795300000000000000
        Height = 944.882500000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line13: TfrxLineView
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line14: TfrxLineView
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo6: TfrxMemoView
        Left = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #48156#51032' '#48143' '#50896#51064#54665#50948)
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 415.748300000000000000
        Top = 200.315090000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648' '#52636' '#51068)
        ParentFont = False
      end
      object Line15: TfrxLineView
        Left = 188.976500000000000000
        Top = 188.976500000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line16: TfrxLineView
        Left = 377.953000000000000000
        Top = 188.976500000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line17: TfrxLineView
        Left = 529.134200000000000000
        Top = 188.976500000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo8: TfrxMemoView
        Left = 275.905690000000000000
        Top = 238.110390000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648' '#52636' '#45236' '#50669)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 173.858380000000000000
        Top = 275.905690000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648#52636#49464#48512#45236#50669)
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 495.118430000000000000
        Top = 275.905690000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #52292#51452'('#51648#44553#52376')')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 533.338900000000000000
        Top = 309.921460000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #49345#54840'/'#49457#47749'('#45824#54364')')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 648.961040000000000000
        Top = 294.803340000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#44553#48169#48277)
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 455.527830000000000000
        Top = 313.921460000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44552#50529)
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 238.110390000000000000
        Top = 309.921460000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49328#52636#45236#50669)
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 125.401670000000000000
        Top = 309.921460000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51201#50836)
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 65.590600000000000000
        Top = 309.921460000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48708#47785)
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 15.559060000000000000
        Top = 277.905690000000000000
        Width = 30.236240000000000000
        Height = 49.133890000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648#52636#44208#51032#48264#54840)
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 649.299630000000000000
        Top = 351.496290000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 649.299630000000000000
        Top = 388.512060000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#47196#45225#48512)
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 649.299630000000000000
        Top = 427.086890000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#47196#45225#48512)
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 649.299630000000000000
        Top = 464.882190000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 649.299630000000000000
        Top = 502.897960000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 649.299630000000000000
        Top = 540.472790000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 649.299630000000000000
        Top = 578.268090000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 65.929190000000000000
        Top = 351.496290000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44553#50668)
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 65.929190000000000000
        Top = 388.512060000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44553#50668)
        ParentFont = False
      end
      object frxDBDataset1jikgub: TfrxMemoView
        Left = 117.842610000000000000
        Top = 343.937230000000000000
        Width = 83.149660000000000000
        Height = 34.015770000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."jikgub"]'
          '[frxDBDataset1."year_month"]'#44553#50668)
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 115.952845000000000000
        Top = 388.512060000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44540#47196#49548#46301#49464)
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 115.952845000000000000
        Top = 427.086890000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#48169#49548#46301#49464)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 115.952845000000000000
        Top = 464.882190000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44397#48124#50672#44552)
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 115.952845000000000000
        Top = 502.897960000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744)
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 116.504020000000000000
        Top = 540.472790000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51109#44592#50836#50577#48372#54744)
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 115.952845000000000000
        Top = 578.268090000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44256#50857#48372#54744)
        ParentFont = False
      end
      object frxDBDataset1calc_note1: TfrxMemoView
        Left = 215.346630000000000000
        Top = 351.496290000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note1'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note1"]')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 215.346630000000000000
        Top = 388.512060000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44540#47196#49548#46301#44036#51060#49464#50529#54364' '#44592#51456)
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 215.346630000000000000
        Top = 427.086890000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44540#47196#49548#46301#49464'*10%')
        ParentFont = False
      end
      object frxDBDataset1calc_note5: TfrxMemoView
        Left = 215.346630000000000000
        Top = 464.882190000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note5'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note5"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note6: TfrxMemoView
        Left = 215.346630000000000000
        Top = 502.897960000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note6'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note6"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note7: TfrxMemoView
        Left = 215.346630000000000000
        Top = 540.472790000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note7'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note7"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note8: TfrxMemoView
        Left = 215.346630000000000000
        Top = 578.268090000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note8'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note8"]')
        ParentFont = False
      end
      object frxDBDataset1jigub_total: TfrxMemoView
        Left = 441.220780000000000000
        Top = 351.496290000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'jigub_total'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."jigub_total"]')
        ParentFont = False
      end
      object frxDBDataset1sodukse: TfrxMemoView
        Left = 441.220780000000000000
        Top = 388.512060000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'sodukse'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."sodukse"]')
        ParentFont = False
      end
      object frxDBDataset1juminse: TfrxMemoView
        Left = 441.220780000000000000
        Top = 427.086890000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'juminse'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."juminse"]')
        ParentFont = False
      end
      object frxDBDataset1yungum: TfrxMemoView
        Left = 441.220780000000000000
        Top = 464.882190000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'yungum'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yungum"]')
        ParentFont = False
      end
      object frxDBDataset1gungang: TfrxMemoView
        Left = 441.220780000000000000
        Top = 502.897960000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'gungang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."gungang"]')
        ParentFont = False
      end
      object frxDBDataset1yoyang: TfrxMemoView
        Left = 441.220780000000000000
        Top = 540.472790000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'yoyang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yoyang"]')
        ParentFont = False
      end
      object frxDBDataset1goyong: TfrxMemoView
        Left = 441.220780000000000000
        Top = 578.268090000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'goyong'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."goyong"]')
        ParentFont = False
      end
      object frxDBDataset1ename: TfrxMemoView
        Left = 541.709030000000000000
        Top = 351.496290000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        DataField = 'ename'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."ename"]')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 537.929500000000000000
        Top = 388.512060000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51032#51221#48512#49464#47924#49436)
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 537.929500000000000000
        Top = 427.086890000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51032#51221#48512#49884#51109)
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 537.929500000000000000
        Top = 464.882190000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44397#48124#50672#44552#44277#45800)
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 537.929500000000000000
        Top = 502.897960000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744#44277#45800)
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 537.929500000000000000
        Top = 540.472790000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744#44277#45800)
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 537.929500000000000000
        Top = 578.268090000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44540#47196#48373#51648#44277#45800)
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 6.118120000000000000
        Top = 351.496290000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'2'#54840)
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 6.118120000000000000
        Top = 388.512060000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'2'#54840)
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 6.118120000000000000
        Top = 427.086890000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'2'#54840)
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 6.118120000000000000
        Top = 464.882190000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'2'#54840)
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 6.118120000000000000
        Top = 502.897960000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'2'#54840)
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 6.118120000000000000
        Top = 540.472790000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'2'#54840)
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 6.118120000000000000
        Top = 578.268090000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'2'#54840)
        ParentFont = False
      end
      object Line18: TfrxLineView
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line19: TfrxLineView
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line20: TfrxLineView
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line21: TfrxLineView
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Top = 491.338900000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Top = 529.134200000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line24: TfrxLineView
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line25: TfrxLineView
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Left = 60.472480000000000000
        Top = 302.362400000000000000
        Width = 582.047620000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Left = 642.520100000000000000
        Top = 264.567100000000000000
        Height = 340.157700000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line28: TfrxLineView
        Left = 57.590600000000000000
        Top = 264.567100000000000000
        Height = 453.543600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo27: TfrxMemoView
        Left = 65.929190000000000000
        Top = 427.086890000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44553#50668)
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 65.929190000000000000
        Top = 464.882190000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44553#50668)
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 65.929190000000000000
        Top = 502.897960000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44553#50668)
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 65.929190000000000000
        Top = 540.472790000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44553#50668)
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 65.929190000000000000
        Top = 578.268090000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44553#50668)
        ParentFont = False
      end
      object Line29: TfrxLineView
        Left = 113.283550000000000000
        Top = 302.362400000000000000
        Height = 302.362400000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line30: TfrxLineView
        Left = 207.874150000000000000
        Top = 302.362400000000000000
        Height = 340.157700000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line31: TfrxLineView
        Left = 434.748300000000000000
        Top = 264.567100000000000000
        Height = 377.953000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line32: TfrxLineView
        Left = 529.236550000000000000
        Top = 302.362400000000000000
        Height = 340.157700000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object frxDBDataset1jigubil: TfrxMemoView
        Left = 548.031850000000000000
        Top = 200.315090000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'jigubil'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."jigubil"]')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 211.653680000000000000
        Top = 200.315090000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'jigubil'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."jigubil"]')
        ParentFont = False
      end
      object Line33: TfrxLineView
        Top = 982.677800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line34: TfrxLineView
        Left = 718.331170000000000000
        Top = 75.590600000000000000
        Height = 907.087200000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line35: TfrxLineView
        Top = 642.520100000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo54: TfrxMemoView
        Left = 132.283550000000000000
        Top = 616.283860000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #54633#44228)
        ParentFont = False
      end
      object Line36: TfrxLineView
        Top = 718.110700000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line37: TfrxLineView
        Top = 793.701300000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo55: TfrxMemoView
        Left = 15.118120000000000000
        Top = 665.638220000000000000
        Width = 30.236240000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51613#48729#51088#47308)
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 86.929190000000000000
        Top = 661.417750000000000000
        Width = 582.047620000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          
            #51228'1'#54840': '#44540#47924#49345#54889#48512', '#49884#44036#50808' '#44540#47924#49345#54889#54364', '#50896#52380#51669#49688#45225#48512#50689#49688#51613', '#44228#51340#49324#48376', '#44228#51340#51060#52404' '#54869#51064#51613', '#51076#44552#47749#49464#49436', 4'#45824#48372#54744#47308' '#44256 +
            #51648#45236#50669#49436)
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 222.992270000000000000
        Top = 735.008350000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50948' '#44552#50529#51012' '#51064#52636#54616#50668' '#51648#44553#54616#44256#51088' '#54633#45768#45796'.')
        ParentFont = False
      end
      object frxDBDataset1jigubil1: TfrxMemoView
        Left = 264.567100000000000000
        Top = 763.465060000000000000
        Width = 166.299320000000000000
        Height = 18.897650000000000000
        DataField = 'jigubil'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."jigubil"]')
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 22.677180000000000000
        Top = 812.598950000000000000
        Width = 684.094930000000000000
        Height = 117.165430000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '* '#44057#51008' '#45216#51676#50640' '#50668#47084' '#44148#51012' '#51648#52636#54616#45716' '#44221#50864' 1'#44060' '#51648#52636#44208#51032#49436#50640' '#51068#44292' '#44032#45733'('#51648#52636' '#45216#51676#44032' '#45796#47480' '#44221#50864' '#48520#44032')'
          '   '#8251' '#45216#51676#44032' '#46041#51068#54616#45908#46972#46020' '#51648#52636' '#54637#47785#51060' '#45796#47484' '#49884' '#48152#46300#49884' '#48516#47532#54616#50668' '#54408#51032#54644#50556' '#54632'.'
          '* '#44208#51116#46976': '#45800#52404#51032' '#51649#51228' '#46321' '#54788#54889#50640' '#46384#46972' '#49688#51221#54616#50668' '#49324#50857' '
          '* '#48156#51032' '#48143' '#50896#51064#54665#50948': '#51648#52636#44228#54925#51012' '#49688#47549#54620' '#45216#51676' '#46608#45716' '#54408#51032#54620' '#45216#51676
          '* '#51648#52636#48512#44592#51116#51068': '#53685#51109#50640#49436' '#51088#44552#51012' '#51064#52636#54620' '#45216#51676'('#54924#44228#51109#48512'-'#51648#52636#48512#50640' '#46321#51116#54620' '#45216#51676')'
          '* '#51613#48729#51088#47308': '#48708#47785#48324#47196' '#51648#52636#50640' '#54596#50836#54620' '#52397#44396', '#51613#48729#50640' '#54596#50836#54620' '#51088#47308#47484' '#44592#51116#54616#44256' '#54644#45817#51088#47308' '#52392#48512
          '* '#44036#51060#50689#49688#51613' '#52392#48512' '#48520#44032)
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 46.456710000000000000
        Top = 43.354360000000000000
        Width = 105.826840000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#52636#44208#51032#48264#54840
          #51228' 2 '#54840)
        ParentFont = False
      end
      object frxDBDataset1total_out_amount: TfrxMemoView
        Left = 441.205010000000000000
        Top = 615.063390000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'total_out_amount'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."total_out_amount"]')
        ParentFont = False
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '5.1.9'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44985.266758958300000000
    ReportOptions.LastChange = 44985.266758958300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1032
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
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
      object Memo1: TfrxMemoView
        Left = 230.551330000000000000
        Top = 41.574830000000000000
        Width = 200.315090000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #51648' '#52636' '#44208' '#51032' '#49436)
        ParentFont = False
      end
      object frxDBDataset1busu: TfrxMemoView
        Left = 37.795300000000000000
        Top = 102.047310000000000000
        Width = 340.157700000000000000
        Height = 30.236240000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."busu"] '#51452#48124#51088#52824#54924)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Left = 408.189240000000000000
        Top = 86.929190000000000000
        Width = 18.897650000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #44208
          ''
          #51116)
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 457.323130000000000000
        Top = 82.929190000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #45812#45817#51088)
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 551.811380000000000000
        Top = 82.929190000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48512#54924#51109)
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 646.299630000000000000
        Top = 82.929190000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54924'  '#51109)
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 438.425480000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line2: TfrxLineView
        Left = 529.134200000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line3: TfrxLineView
        Left = 623.622450000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line4: TfrxLineView
        Left = 396.850650000000000000
        Top = 75.590600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object frxDBDataset1total_amount_string: TfrxMemoView
        Left = 37.795300000000000000
        Top = 162.519790000000000000
        Width = 638.740570000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."total_amount_string"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line5: TfrxLineView
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line6: TfrxLineView
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line7: TfrxLineView
        Left = 438.425480000000000000
        Top = 105.826840000000000000
        Width = 279.685220000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line8: TfrxLineView
        Left = 188.976500000000000000
        Top = 75.590600000000000000
        Width = 529.134200000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line9: TfrxLineView
        Top = 75.590600000000000000
        Width = 188.976500000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line10: TfrxLineView
        Top = 37.795300000000000000
        Width = 188.976500000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line11: TfrxLineView
        Left = 188.976500000000000000
        Top = 37.795300000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line12: TfrxLineView
        Top = 37.795300000000000000
        Height = 944.882500000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line13: TfrxLineView
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line14: TfrxLineView
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo6: TfrxMemoView
        Left = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #48156#51032' '#48143' '#50896#51064#54665#50948)
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 415.748300000000000000
        Top = 200.315090000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648' '#52636' '#51068)
        ParentFont = False
      end
      object Line15: TfrxLineView
        Left = 188.976500000000000000
        Top = 188.976500000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line16: TfrxLineView
        Left = 377.953000000000000000
        Top = 188.976500000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line17: TfrxLineView
        Left = 529.134200000000000000
        Top = 188.976500000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo8: TfrxMemoView
        Left = 275.905690000000000000
        Top = 238.110390000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648' '#52636' '#45236' '#50669)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 173.858380000000000000
        Top = 275.905690000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648#52636#49464#48512#45236#50669)
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 495.118430000000000000
        Top = 275.905690000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #52292#51452'('#51648#44553#52376')')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 533.338900000000000000
        Top = 313.921460000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #49345#54840'/'#49457#47749'('#45824#54364')')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 648.961040000000000000
        Top = 294.803340000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#44553#48169#48277)
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 455.527830000000000000
        Top = 313.921460000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44552#50529)
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 238.110390000000000000
        Top = 313.921460000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49328#52636#45236#50669)
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 141.401670000000000000
        Top = 313.921460000000000000
        Width = 37.795300000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51201#50836)
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 65.590600000000000000
        Top = 313.921460000000000000
        Width = 37.795300000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48708#47785)
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 15.559060000000000000
        Top = 277.905690000000000000
        Width = 30.236240000000000000
        Height = 49.133890000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51648#52636#44208#51032#48264#54840)
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 649.299630000000000000
        Top = 351.882190000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 649.299630000000000000
        Top = 389.897960000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 649.299630000000000000
        Top = 426.472790000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 649.299630000000000000
        Top = 483.268090000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 142.952845000000000000
        Top = 344.882190000000000000
        Width = 34.015770000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44397#48124#50672#44552)
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 142.952845000000000000
        Top = 381.897960000000000000
        Width = 34.015770000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744)
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 137.283550000000000000
        Top = 420.472790000000000000
        Width = 45.354360000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51109#44592#50836#50577#48372#54744)
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 144.842610000000000000
        Top = 476.268090000000000000
        Width = 30.236240000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44256#50857#48372#54744)
        ParentFont = False
      end
      object frxDBDataset1calc_note5: TfrxMemoView
        Left = 215.346630000000000000
        Top = 351.882190000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note5'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note5"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note6: TfrxMemoView
        Left = 215.346630000000000000
        Top = 389.897960000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note6'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note6"]')
        ParentFont = False
      end
      object frxDBDataset1calc_note7: TfrxMemoView
        Left = 215.346630000000000000
        Top = 426.472790000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        DataField = 'calc_note7'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."calc_note7"]')
        ParentFont = False
      end
      object frxDBDataset1yungum: TfrxMemoView
        Left = 441.220780000000000000
        Top = 351.882190000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'yungum'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yungum"]')
        ParentFont = False
      end
      object frxDBDataset1gungang: TfrxMemoView
        Left = 441.220780000000000000
        Top = 389.897960000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'gungang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."gungang"]')
        ParentFont = False
      end
      object frxDBDataset1yoyang: TfrxMemoView
        Left = 441.220780000000000000
        Top = 426.472790000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'yoyang'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."yoyang"]')
        ParentFont = False
      end
      object frxDBDataset1goyong: TfrxMemoView
        Left = 441.220780000000000000
        Top = 464.268090000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'goyong'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."goyong"]')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 537.929500000000000000
        Top = 351.882190000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44397#48124#50672#44552#44277#45800)
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 537.929500000000000000
        Top = 389.897960000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744#44277#45800)
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 537.929500000000000000
        Top = 426.472790000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44148#44053#48372#54744#44277#45800)
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 537.929500000000000000
        Top = 483.268090000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44540#47196#48373#51648#44277#45800)
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 6.118120000000000000
        Top = 351.882190000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'3'#54840)
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 6.118120000000000000
        Top = 389.897960000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'3'#54840)
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 6.118120000000000000
        Top = 426.472790000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'3'#54840)
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 6.118120000000000000
        Top = 484.268090000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'3'#54840)
        ParentFont = False
      end
      object Line18: TfrxLineView
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line19: TfrxLineView
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line20: TfrxLineView
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line21: TfrxLineView
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Left = 188.976500000000000000
        Top = 491.338900000000000000
        Width = 340.157700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Top = 529.134200000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line24: TfrxLineView
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line25: TfrxLineView
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Left = 60.472480000000000000
        Top = 302.362400000000000000
        Width = 582.047620000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Left = 642.520100000000000000
        Top = 264.567100000000000000
        Height = 340.157700000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line28: TfrxLineView
        Left = 57.590600000000000000
        Top = 264.567100000000000000
        Height = 453.543600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo28: TfrxMemoView
        Left = 64.929190000000000000
        Top = 343.882190000000000000
        Width = 60.472480000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#54924#48372#54744#48512#45812#44552)
        ParentFont = False
      end
      object Line29: TfrxLineView
        Left = 132.283550000000000000
        Top = 302.362400000000000000
        Height = 302.362400000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line30: TfrxLineView
        Left = 187.874150000000000000
        Top = 302.362400000000000000
        Height = 340.157700000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line31: TfrxLineView
        Left = 434.748300000000000000
        Top = 264.567100000000000000
        Height = 377.953000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line32: TfrxLineView
        Left = 529.236550000000000000
        Top = 302.362400000000000000
        Height = 340.157700000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object frxDBDataset1jigubil: TfrxMemoView
        Left = 548.031850000000000000
        Top = 200.315090000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'jigubil'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."jigubil"]')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 211.653680000000000000
        Top = 200.315090000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'jigubil'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."jigubil"]')
        ParentFont = False
      end
      object Line33: TfrxLineView
        Top = 982.677800000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Line34: TfrxLineView
        Left = 718.331170000000000000
        Top = 75.590600000000000000
        Height = 907.087200000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 2.000000000000000000
      end
      object Line35: TfrxLineView
        Top = 642.520100000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo54: TfrxMemoView
        Left = 132.283550000000000000
        Top = 616.283860000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #54633#44228)
        ParentFont = False
      end
      object Line36: TfrxLineView
        Top = 718.110700000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line37: TfrxLineView
        Top = 793.701300000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo55: TfrxMemoView
        Left = 15.118120000000000000
        Top = 665.638220000000000000
        Width = 30.236240000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51613#48729#51088#47308)
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 86.929190000000000000
        Top = 673.417750000000000000
        Width = 582.047620000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #51228'3'#54840': 4'#45824#48372#54744#54633#49328#48372#54744#47308' '#44256#51648#45236#50669#49436', '#44228#51340#51060#52404' '#54869#51064#51613)
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 222.992270000000000000
        Top = 735.008350000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50948' '#44552#50529#51012' '#51064#52636#54616#50668' '#51648#44553#54616#44256#51088' '#54633#45768#45796'.')
        ParentFont = False
      end
      object frxDBDataset1jigubil1: TfrxMemoView
        Left = 264.567100000000000000
        Top = 763.465060000000000000
        Width = 166.299320000000000000
        Height = 18.897650000000000000
        DataField = 'jigubil'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."jigubil"]')
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 22.677180000000000000
        Top = 812.598950000000000000
        Width = 684.094930000000000000
        Height = 117.165430000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '* '#44057#51008' '#45216#51676#50640' '#50668#47084' '#44148#51012' '#51648#52636#54616#45716' '#44221#50864' 1'#44060' '#51648#52636#44208#51032#49436#50640' '#51068#44292' '#44032#45733'('#51648#52636' '#45216#51676#44032' '#45796#47480' '#44221#50864' '#48520#44032')'
          '   '#8251' '#45216#51676#44032' '#46041#51068#54616#45908#46972#46020' '#51648#52636' '#54637#47785#51060' '#45796#47484' '#49884' '#48152#46300#49884' '#48516#47532#54616#50668' '#54408#51032#54644#50556' '#54632'.'
          '* '#44208#51116#46976': '#45800#52404#51032' '#51649#51228' '#46321' '#54788#54889#50640' '#46384#46972' '#49688#51221#54616#50668' '#49324#50857' '
          '* '#48156#51032' '#48143' '#50896#51064#54665#50948': '#51648#52636#44228#54925#51012' '#49688#47549#54620' '#45216#51676' '#46608#45716' '#54408#51032#54620' '#45216#51676
          '* '#51648#52636#48512#44592#51116#51068': '#53685#51109#50640#49436' '#51088#44552#51012' '#51064#52636#54620' '#45216#51676'('#54924#44228#51109#48512'-'#51648#52636#48512#50640' '#46321#51116#54620' '#45216#51676')'
          '* '#51613#48729#51088#47308': '#48708#47785#48324#47196' '#51648#52636#50640' '#54596#50836#54620' '#52397#44396', '#51613#48729#50640' '#54596#50836#54620' '#51088#47308#47484' '#44592#51116#54616#44256' '#54644#45817#51088#47308' '#52392#48512
          '* '#44036#51060#50689#49688#51613' '#52392#48512' '#48520#44032)
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 46.456710000000000000
        Top = 43.354360000000000000
        Width = 105.826840000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51648#52636#44208#51032#48264#54840
          #51228' 3 '#54840)
        ParentFont = False
      end
      object frxDBDataset1total_out_amount: TfrxMemoView
        Left = 441.205010000000000000
        Top = 615.063390000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'total_out_amount'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."total_out_amount"]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 64.252010000000000000
        Top = 381.732530000000000000
        Width = 60.472480000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#54924#48372#54744#48512#45812#44552)
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 64.252010000000000000
        Top = 419.527830000000000000
        Width = 60.472480000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#54924#48372#54744#48512#45812#44552)
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 64.252010000000000000
        Top = 477.323130000000000000
        Width = 60.472480000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#54924#48372#54744#48512#45812#44552)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 64.252010000000000000
        Top = 534.118430000000000000
        Width = 60.472480000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#54924#48372#54744#48512#45812#44552)
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 7.559060000000000000
        Top = 537.897960000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51228'3'#54840)
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 142.952845000000000000
        Top = 533.677490000000000000
        Width = 34.015770000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49328#51116#48372#54744)
        ParentFont = False
      end
      object Line38: TfrxLineView
        Left = 265.464750000000000000
        Top = 453.543600000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo29: TfrxMemoView
        Left = 193.653680000000000000
        Top = 458.102660000000000000
        Width = 64.252010000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49892#50629#44553#50668#48372#54744#47308)
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 190.433210000000000000
        Top = 495.118430000000000000
        Width = 71.811070000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44256#50504#51649#45733
          #44060#48156#48372#54744#47308)
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 266.244280000000000000
        Top = 459.323130000000000000
        Width = 170.078850000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '2,211,220*0.9% +'
          #51116#49328#51221#48372#54744#47308'(1'#50900#48516#51068#54624#44228#49328')')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 264.567100000000000000
        Top = 495.118430000000000000
        Width = 170.078850000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '2,211,220*0.25% +'
          #51116#49328#51221#48372#54744#47308'(1'#50900#48516#51068#54624#44228#49328')')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 226.771800000000000000
        Top = 532.913730000000000000
        Width = 170.078850000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '2,211,220*1.06% +'
          #51116#49328#51221#48372#54744#47308'(1'#50900#48516#51068#54624#44228#49328')')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 441.205010000000000000
        Top = 500.897960000000000000
        Width = 79.370130000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '9,080')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 651.842920000000000000
        Top = 540.472790000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228#51340#51060#52404)
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 540.472790000000000000
        Top = 540.472790000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44540#47196#48373#51648#44277#45800)
        ParentFont = False
      end
      object frxDBDataset1sanjae: TfrxMemoView
        Left = 442.205010000000000000
        Top = 540.472790000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'sanjae'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.ThousandSeparator = ','
        DisplayFormat.FormatStr = '#,0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."sanjae"]')
        ParentFont = False
      end
    end
  end
  object EMP_ANNUAL_LEAVE_SEL: TUniStoredProc
    StoredProcName = 'EMP_ANNUAL_LEAVE_SEL'
    Connection = dm.UniConnection1
    Left = 560
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'WYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'W_YEAR'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'EMP_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ANN_LEAVE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'USED_LEAVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'EMP_ANNUAL_LEAVE_SEL'
    object EMP_ANNUAL_LEAVE_SELID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_ANNUAL_LEAVE_SELW_YEAR: TIntegerField
      FieldName = 'W_YEAR'
    end
    object EMP_ANNUAL_LEAVE_SELEMP_ID: TIntegerField
      FieldName = 'EMP_ID'
    end
    object EMP_ANNUAL_LEAVE_SELANN_LEAVE: TIntegerField
      FieldName = 'ANN_LEAVE'
    end
    object EMP_ANNUAL_LEAVE_SELUSED_LEAVE: TIntegerField
      FieldName = 'USED_LEAVE'
    end
  end
  object ds_EMP_ANNUAL_LEAVE_SEL: TDataSource
    DataSet = EMP_ANNUAL_LEAVE_SEL
    Left = 560
    Top = 136
  end
  object EMP_ANNUAL_LEAVE_INS: TUniStoredProc
    StoredProcName = 'EMP_ANNUAL_LEAVE_INS'
    Connection = dm.UniConnection1
    Left = 704
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'W_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EMP_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANN_LEAVE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USED_LEAVE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_ANNUAL_LEAVE_INS'
  end
  object EMP_ATTENDING_SEL_AL: TUniStoredProc
    StoredProcName = 'EMP_ATTENDING_SEL_AL'
    Connection = dm.UniConnection1
    Left = 704
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'WYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CNT'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'EMP_ATTENDING_SEL_AL'
    object EMP_ATTENDING_SEL_ALCNT: TIntegerField
      FieldName = 'CNT'
    end
  end
  object ds_EMP_ATTENDING_SEL_AL: TDataSource
    DataSet = EMP_ATTENDING_SEL_AL
    Left = 704
    Top = 184
  end
  object EMP_ANNUAL_LEAVE_UPD: TUniStoredProc
    StoredProcName = 'EMP_ANNUAL_LEAVE_UPD'
    Connection = dm.UniConnection1
    Left = 704
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'W_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EMP_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USED_LEAVE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_ANNUAL_LEAVE_UPD'
  end
end
