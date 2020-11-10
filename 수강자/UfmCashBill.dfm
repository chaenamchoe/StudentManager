object fmCashBill: TfmCashBill
  Left = 0
  Top = 0
  Caption = #54788#44552#50689#49688#51613#44288#47532
  ClientHeight = 674
  ClientWidth = 1206
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1206
    Height = 28
    Align = alTop
    TabOrder = 0
    object lbl9: TLabel
      AlignWithMargins = True
      Left = 427
      Top = 4
      Width = 30
      Height = 20
      Align = alLeft
      Caption = #44160#49353':'
      Layout = tlCenter
      ExplicitLeft = 274
      ExplicitHeight = 13
    end
    object lbl3: TLabel
      AlignWithMargins = True
      Left = 131
      Top = 4
      Width = 56
      Height = 20
      Align = alLeft
      Caption = #44144#47000#44592#44036':'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object btnRetrieve: TcxButton
      AlignWithMargins = True
      Left = 391
      Top = 2
      Width = 32
      Height = 24
      Hint = #51312#54924
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
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
      TabOrder = 0
      OnClick = btnRetrieveClick
      ExplicitLeft = 238
    end
    object edtSearch: TEdit
      AlignWithMargins = True
      Left = 461
      Top = 4
      Width = 80
      Height = 20
      Margins.Left = 1
      Align = alLeft
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
      ExplicitLeft = 308
      ExplicitHeight = 21
    end
    object btnSearch: TcxButton
      AlignWithMargins = True
      Left = 545
      Top = 2
      Width = 29
      Height = 24
      Hint = #44160#49353
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000D000000190000001A0000
        000E000000030000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
        478D0000000E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
        A5FF000000190000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
        A3FF0000001B0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
        A2FF000000190000000000000000000000000000000000000000000000000000
        00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
        A1FF0000001E0000000200000000000000000000000000000000000000000000
        00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
        A1FF081E3F8D0001021800000006000000010000000000000000000000000000
        000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
        C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
        0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
        CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
        000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
        D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
        34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
        D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
        7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
        DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
        B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
        FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
        C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
        C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
        455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
        FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
        000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
        A5DE286298D11D4872A410284164020509150000000400000001}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnSearchClick
      ExplicitLeft = 392
    end
    object btnSearchCancel: TcxButton
      AlignWithMargins = True
      Left = 575
      Top = 2
      Width = 29
      Height = 24
      Hint = #44160#49353#52712#49548
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000203110C50961910
        74DB0504172D000000000504172D181071DB100B4E9600000203000000000000
        000000000000000000040000000D0000001100000011120D55A1414FC0FF4762
        D6FF252390EE09062C5223238FEE415CD4FF3949BCFF110C539C000000000000
        0000000000000000000C3B73B7FF2C5CA8FF87A2CEFF312C99FF8596E1FF5B7C
        E6FF4F6DDEFF2F34A7FE4C6ADDFF5574E4FF7486DDFF1A1276DB000000000000
        0000000000000000000F255FA9FFC1E6F5FF9FD1EFFF7C92C6FF38369AEF8EA1
        E8FF5E7FE7FF5B7BE5FF5B7BE6FF8397E6FF312F93ED0504172A000000000000
        0000000000000000000E235CA7FFABE2F6FF5EB3E7FF86A4CDFF0B09305C4348
        B3FE83A0F1FF84A1F2FF829FF0FF4145B0FE0A082F5200000000000000000000
        0000000000010000000E225BA6FF8FD6F4FF96CCEEFF798EC3FF2F3191EF87A1
        EDFF97B2F6FFC1D0F8FF96B1F6FF859EECFF2D2E8EEE0403172D000000000000
        0001000000060B162549225AA6FF77CAEEFF90C9ECFF3333A9FFA8B7EFFFA4BC
        F8FFCAD3F5FF6261BBFEC7D1F4FFA2BBF8FFA6B5EEFF1F1A88E1000000010000
        000611233A633C75B7FB67A5D8FF7FC9EBFF94D1EDFF525FBEFF9C9CDAFFD6D9
        F3FF4744AAEF0C0B34534542A8EED1D5F1FF9597D6FF1613649F000000041123
        395E4885C3FF84CBEEFFC3EAF9FF8EDAF2FF81D0EEFF9DC7E9FF5867C5FF3738
        B3FF343F67910000000507061E2D221F92DE1614609300000203020406133468
        A5E882C8EBFFBAE9F9FFE2F7FDFF90DEF5FF4BC0E8FF79B7E4FF8AB2E0FF90BB
        E4FF809FC6F10305071500000001000000000000000000000000162C456A5797
        CEFF99E1F7FFDFF7FDFFF5FCFFFF8BDFF5FF4DC5EAFF4CA6DEFF2D74C6FF337E
        CCFF4083C6FF1428436C00000004000000000000000000000000284F7DB284C2
        E6FFC3EDFAFFE6F7FDFFE2F5FCFFDFF6FCFFDEF6FCFFD7F5FBFFB7DCF2FF8FC0
        E7FF5EA6DCFF254979B3000000060000000000000000000000003975B3F4D5EF
        FAFF9BB8DDFF648AC7FF1348A7FF114AA9FF144FADFF1856B1FF6698D1FF99C2
        E5FFC5ECF9FF3468AAEF000000060000000000000000000000001A3450735A91
        C5F9AAD2EBFFCEEAF7FFDCF1FAFFE2F5FBFFE0F5FBFFD6F2FBFFC2E7F6FF9CCC
        EAFF538CC2F918314D740000000300000000000000000000000000000003070D
        14211D3B597E2D5C8BBE32669BD53D7BBDFF3D7ABCFF31639AD52B5888BF1C38
        587F070E16250000000300000001000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnSearchCancelClick
      ExplicitLeft = 422
    end
    object btnCashIssue: TcxButton
      AlignWithMargins = True
      Left = 677
      Top = 2
      Width = 78
      Height = 24
      Margins.Left = 10
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #50689#49688#51613#48156#54665
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 4
      OnClick = btnCashIssueClick
      ExplicitLeft = 594
    end
    object dtp_sdate: TDateTimePicker
      AlignWithMargins = True
      Left = 193
      Top = 4
      Width = 99
      Height = 20
      Margins.Right = 0
      Align = alLeft
      Date = 41963.425637268520000000
      Time = 41963.425637268520000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 5
      OnCloseUp = dtp_sdateCloseUp
      ExplicitLeft = 40
    end
    object dtp_edate: TDateTimePicker
      AlignWithMargins = True
      Left = 292
      Top = 4
      Width = 98
      Height = 20
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Date = 41963.425637268520000000
      Time = 41963.425637268520000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 6
      OnCloseUp = dtp_edateCloseUp
      ExplicitLeft = 139
    end
    object btnCashbillDel: TcxButton
      AlignWithMargins = True
      Left = 837
      Top = 2
      Width = 78
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #50689#49688#51613#49325#51228
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 7
      OnClick = btnCashbillDelClick
      ExplicitLeft = 928
    end
    object btnViewCash: TcxButton
      AlignWithMargins = True
      Left = 757
      Top = 2
      Width = 78
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #50689#49688#51613#54869#51064
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 8
      OnClick = btnViewCashClick
      ExplicitLeft = 848
    end
    object btnGotoWeb: TcxButton
      AlignWithMargins = True
      Left = 917
      Top = 2
      Width = 52
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #50937
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        000C00000013000000130000000D000000030000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000A0C50
        2FC3166641FF166641FF0F482EC40000000C0000000000000000000000000000
        000000000001000000050000000E0000001400000016000000140000001B1273
        47FF33C58FFF19B474FF156844FF000000100000000000000000000000000000
        00020000000C0C0A054A5A321ABD7B4424EDD7C5BAFFC5B2A6F9978479DF1378
        4BFF3ACA98FF1EB87BFF166C47FF0000001A0000000C00000003000000030102
        011711241499474127FDB07A50FFC38F62FFE7D8CAFF18714BFF17714AFF1976
        4EFF23BE84FF22BB80FF18724BFF17704BFF176F4AFF000000090000000C122B
        17AA256140FF49916FFF7D7A54FFBE8451FFE7D5C5FF689A7EFF66BFA1FF7EE2
        C5FF6BDDBAFF5ED7B1FF4CCFA4FF4BAC89FF0A3823A30000000607110A4F2058
        36FF558B68FF60714DFF867B4FFFC28955FFDABA9BFFDCD1C2FF429171FFA6DC
        CCFF9EEDD8FF7EE5C8FF8DD1BCFF115034CD0002010F000000012C2B1AB25E6C
        4DFF968455FFCA955FFFDAA96FFFE4B67AFF90986BFFB3C9B7FFB2DCCDFF3A97
        73FFC2ECE1FFBBE9DCFF2C7856FB020A06290000000200000000926443E8CB9A
        69FFD3A16AFFE6BB80FFEAC48EFFEDCD9EFF90AB8DFF83D9BDFFC5E1D3FFA3C4
        B2FF45A280FF3D8E6EFF96A796F90000000E000000000000000060593CFA6782
        5DFFC4B07BFFECC996FFF2D9B3FFF2DAB5FFBCC6A7FF98B79DFFCDD0B4FFF7EC
        DBFF8DBCA4FF80B7A0FFB9C4BCFD0000000C0000000000000000275B3FE74FAE
        8BFF819C72FFF2DDB9FFF5E3C3FFF5E4C5FFF6E3C5FFEBE0C2FFAAC4ADFFB9CF
        BCFF90D9BFFF84D2B8FF64806CEE0000000A0000000000000000184C37AD4BAA
        87FF7BA077FFF7E8CDFFF7EAD0FFF8EBD3FFF8ECD3FFF8ECD3FFC7D7C2FFB5E0
        CFFF6FE3C2FF54BC9CFF2C3D2CAE000000060000000000000000091E1645477D
        5EFFBCBC8DFFCEDAC4FFC5DDCDFFD9E5D4FFFAF2DEFFFAF2DEFFF6EEDBFFD2DF
        C9FF6CC09EFF469B7BFF171A1247000000020000000000000000000000044147
        3499B2A47BFF8BC6A9FFD4F8EEFFD3E7DBFFFCF7E9FFFCF7E8FFD0E5D8FF93D6
        BCFF55BFA1FF2752409A00000005000000000000000000000000000000010504
        030A36402F814EA889FA8ADFC9FFC3E0CFFFFDFAEEFFFAF3E1FFB7C5A6FF519C
        7DFA235647820102010800000001000000000000000000000000000000000000
        0000000000020D201A32357C68AF599677E5D2AF88FFBC9D7AE68D755BAF1A1A
        1433000000030000000000000000000000000000000000000000}
      TabOrder = 9
      OnClick = btnGotoWebClick
      ExplicitLeft = 1008
    end
    object btnDelAll: TcxButton
      AlignWithMargins = True
      Left = 605
      Top = 2
      Width = 61
      Height = 24
      Hint = #49440#53469#51088#47308' '#49325#51228
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #49325#51228
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
      TabOrder = 10
      OnClick = btnDelAllClick
      ExplicitLeft = 489
    end
    object btnCheckStatus: TcxButton
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 35
      Height = 24
      Hint = #49352#47196#44256#52840
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000030000000B00000013000000190000001A0000
        00140000000B0000000300000000000000000000000000000000000000000000
        000000000000000000060402011C4827118B7C431ED2A65927FFA55927FF7E44
        1ED442230F7B0100000F0000000E000000070000000000000000000000000000
        000000000005120A05348A4F26DDC58A53FFDCB37CFFEFD298FFEFD198FFB676
        43FF2E1A0C62100904398F5127E10E05013A0000000600000000000000000000
        0002040201198D552BDCD1A169FFF1D6A5FFCE9E6EFFC08656FFBD8251FF613A
        1DA6000000227D4B26CBE2B97BFF5F290FCF0101001900000003000000000000
        00074C2F1B82C99765FFECD2A3FFB98154FB5238238A120C07300F0A06270201
        01194C2F1B88CE9D66FFF6DC9BFFBA8657FF3F1C0C910000000D000000000000
        000A8C5B36D0E3C598FFCB9D75FF573B258C0000000C00000003000000062014
        0C43BD875AFBF8E5BCFFF8DFA5FFF7E4BAFFA16540FC1C0E074C000000080000
        0014B37A4BFAF5E6BDFFBC8356FF0D0704300000000C00000003000000079666
        3FD5B87D4DFFBB8153FFF2D9A1FFB87D4DFFB87C4DFF9C6941DE845331D3A263
        3BFFBB8557FFF6E7BFFFBF8B5EFFA06238FF87522FDC00000006000000020000
        000B0D08042FA1653CFFF4DEAEFFB68155FA000000180000000A1F170F34C79D
        75FBFBF5DCFFFCF3CCFFFAF4DAFFB3855FFB21150C4100000004000000020000
        0009492C1886BA8B5EFFE7CEA7FF926B48CB0000000900000000000000045540
        2D77DDC1A2FFFDF7D9FFD4B598FF5037227F0202010C0D08041F110A05274B2D
        1986A1683EFAF3E4C3FFD8B692FF533F2C780000000400000000000000000000
        00058F6F50BCEFE1CDFF886343C20202010D58382091A3693CFFA66F43FFBE94
        6DFFF4E9D1FFE3CAADFFA47E5BD60504030E0000000100000000000000000000
        0001130F0B1DAB8863DA18130E242C1E1248B78B63FDF8F3E2FFF9F3E4FFEDDE
        C7FFDCC1A1FFA3815ED215110C22000000020000000000000000000000000000
        000000000001000000010101000342301E629A7B5CC2C6A078F9C6A078F9997B
        5DC3564634710504030A00000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000002000000020000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnCheckStatusClick
      ExplicitLeft = 1
    end
    object chkAutoUpdate: TcxCheckBox
      AlignWithMargins = True
      Left = 41
      Top = 4
      Align = alLeft
      Caption = #51088#46041#44081#49888
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 12
      Width = 84
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 28
    Width = 1206
    Height = 646
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridCashBill: TcxGridDBTableView
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
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dm.ds_CASHBILL_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.ShowHourglassCursor = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.Indicator = True
      object gridCashBillID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridCashBillCASH_KIND: TcxGridDBColumn
        Caption = #51088#47308#44396#48516
        DataBinding.FieldName = 'CASH_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = #54032#47588#44144#47000
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #52712#49548#44144#47000
            Value = 2
          end
          item
            Description = #48512#48516#52712#49548
            Value = 3
          end>
        OnCustomDrawCell = gridCashBillCASH_KINDCustomDrawCell
        HeaderAlignmentHorz = taCenter
      end
      object gridCashBillC_DATE: TcxGridDBColumn
        Caption = #44144#47000#51068#51088
        DataBinding.FieldName = 'C_DATE'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object gridCashBillMEMBER_ID: TcxGridDBColumn
        Caption = #49688#44053#49373
        DataBinding.FieldName = 'MEMBER_ID'
        HeaderAlignmentHorz = taCenter
        Width = 73
      end
      object gridCashBillCASHBILL_NO: TcxGridDBColumn
        Caption = #49888#48516#54869#51064#48264#54840
        DataBinding.FieldName = 'CASHBILL_NO'
        Width = 97
      end
      object gridCashBillITEM_NAME: TcxGridDBColumn
        Caption = #54408#47785#47749
        DataBinding.FieldName = 'ITEM_NAME'
        Width = 64
      end
      object gridCashBillAMOUNT: TcxGridDBColumn
        Caption = #44277#44553#44032#50529
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.DisplayFormat = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object gridCashBillTAX: TcxGridDBColumn
        Caption = #49464#50529
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.;-,0.'
        HeaderAlignmentHorz = taCenter
        Width = 61
      end
      object gridCashBillSERVICE_CHARGE: TcxGridDBColumn
        Caption = #48393#49324#47308
        DataBinding.FieldName = 'SERVICE_CHARGE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.;-,0.'
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 61
      end
      object gridCashBillDATA_STATUS: TcxGridDBColumn
        Caption = #49345#53468
        DataBinding.FieldName = 'DATA_STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #48120#46321#47197
            ImageIndex = 0
            Value = -21002
          end
          item
            Description = #51076#49884#51200#51109
            Value = 1000
          end
          item
            Description = #48156#54665#50756#47308
            Value = 2000
          end
          item
            Description = #51204#49569#50756#47308
            Value = 3000
          end
          item
            Description = #51204#49569#49892#54056
            Value = 4000
          end
          item
            Description = #52712#49548#52376#47532#51473
            Value = 5000
          end
          item
            Description = #52712#49548#50756#47308'('#51204#49569#51204')'
            Value = 6000
          end
          item
            Description = #52712#49548#50756#47308'('#51204#49569#54980')'
            Value = 7000
          end>
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object gridCashBillREGIST_DT: TcxGridDBColumn
        Caption = #46321#47197#51068#49884
        DataBinding.FieldName = 'REGIST_DT'
        Width = 110
      end
      object gridCashBillISSUE_DT: TcxGridDBColumn
        Caption = #48156#54665#51068#49884
        DataBinding.FieldName = 'ISSUE_DT'
        Width = 110
      end
      object gridCashBillSEND_DT: TcxGridDBColumn
        Caption = #51204#49569#51068#49884
        DataBinding.FieldName = 'SEND_DT'
        Width = 110
      end
      object gridCashBillCONFIRM_DT: TcxGridDBColumn
        Caption = #49849#51064#51068#49884
        DataBinding.FieldName = 'CONFIRM_DT'
        Width = 110
      end
      object gridCashBillCONFIRM_NUM: TcxGridDBColumn
        Caption = #49849#51064#48264#54840
        DataBinding.FieldName = 'CONFIRM_NUM'
      end
      object gridCashBillREF_UID: TcxGridDBColumn
        Caption = #52280#51312#48264#54840
        DataBinding.FieldName = 'REF_UID'
        Width = 145
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridCashBill
    end
  end
  object PanelMSG: TPanel
    Left = 376
    Top = 160
    Width = 361
    Height = 81
    Color = clRed
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 353
      Height = 73
      Align = alClient
      Caption = #54788#44552#50689#49688#51613
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 28
      ExplicitHeight = 129
      object Gauge1: TGauge
        Left = 40
        Top = 41
        Width = 281
        Height = 18
        Color = clBlack
        ForeColor = clBlue
        ParentColor = False
        Progress = 0
      end
      object Label1: TLabel
        Left = 40
        Top = 21
        Width = 217
        Height = 13
        Caption = #51089#50629' '#51652#54665#51473'... '#51104#49884' '#44592#45796#47140#51452#49464#50836'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object CASHBILL_DEL: TUniStoredProc
    StoredProcName = 'CASHBILL_DEL'
    Connection = dm.UniConnection1
    Left = 392
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CASHBILL_DEL'
  end
  object CASHBILL_STATUS_UPD: TUniStoredProc
    StoredProcName = 'CASHBILL_STATUS_UPD'
    Connection = dm.UniConnection1
    Left = 392
    Top = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REGIST_DT'
        ParamType = ptInput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'ISSUE_DT'
        ParamType = ptInput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'SEND_DT'
        ParamType = ptInput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'CONFIRM_DT'
        ParamType = ptInput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'CONFIRM_NUM'
        ParamType = ptInput
        Size = 10
      end>
    CommandStoredProcName = 'CASHBILL_STATUS_UPD'
  end
  object CASHBILL_DELALL: TUniStoredProc
    StoredProcName = 'CASHBILL_DELALL'
    Connection = dm.UniConnection1
    Left = 392
    Top = 408
    ParamData = <
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CASHBILL_DELALL'
  end
  object UPD_CASHBILL_STATUS: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'update REGISTED_LECTURE set cashbill_registed = :status'
      'where id = :id')
    Left = 392
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'status'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
  end
end
