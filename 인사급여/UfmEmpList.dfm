object fmEmpList: TfmEmpList
  Left = 0
  Top = 0
  Caption = #51649#50896#44288#47532
  ClientHeight = 723
  ClientWidth = 1229
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
    Width = 1229
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitTop = 8
    ExplicitWidth = 1269
    object btnRetrieve: TcxButton
      Left = 104
      Top = 4
      Width = 68
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
      TabOrder = 0
      OnClick = btnRetrieveClick
    end
    object btnDelete: TcxButton
      Left = 178
      Top = 4
      Width = 71
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
      TabOrder = 1
      OnClick = btnDeleteClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 936
    Height = 690
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    ExplicitWidth = 945
    object gridEmp: TcxGridDBTableView
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
      OnFocusedRecordChanged = gridEmpFocusedRecordChanged
      DataController.DataSource = ds_EMP_BASIC_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridEmpID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        Width = 46
      end
      object gridEmpE_NAME: TcxGridDBColumn
        Caption = #49457#47749
        DataBinding.FieldName = 'E_NAME'
        Width = 83
      end
      object gridEmpE_BIRTH: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'E_BIRTH'
        Width = 88
      end
      object gridEmpSTART_DATE: TcxGridDBColumn
        Caption = #44256#50857#45380#50900#51068
        DataBinding.FieldName = 'START_DATE'
        Width = 92
      end
      object gridEmpE_JOB: TcxGridDBColumn
        Caption = #51333#49324#50629#47924
        DataBinding.FieldName = 'E_JOB'
        Width = 139
      end
      object gridEmpHOUR_PRICE: TcxGridDBColumn
        Caption = #44592#48376#49884#44036#44553
        DataBinding.FieldName = 'HOUR_PRICE'
      end
      object gridEmpDAY_PRICE: TcxGridDBColumn
        Caption = #44592#48376#51068#44553
        DataBinding.FieldName = 'DAY_PRICE'
      end
      object gridEmpMONTH_PRICE: TcxGridDBColumn
        Caption = #44592#48376#50900#44553
        DataBinding.FieldName = 'MONTH_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
      end
      object gridEmpFAMILY_CNT: TcxGridDBColumn
        Caption = #48512#50577#44032#51313#49688
        DataBinding.FieldName = 'FAMILY_CNT'
      end
      object gridEmpFAMILY_PRICE: TcxGridDBColumn
        Caption = '1'#51064#45817#51648#44553#50529
        DataBinding.FieldName = 'FAMILY_PRICE'
        Width = 85
      end
      object gridEmpFAMILY_HOUR: TcxGridDBColumn
        Caption = #44228#49328#49884#44036
        DataBinding.FieldName = 'FAMILY_HOUR'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridEmp
    end
  end
  object Panel2: TPanel
    Left = 936
    Top = 33
    Width = 293
    Height = 690
    Align = alRight
    TabOrder = 2
    ExplicitLeft = 976
    object Label3: TLabel
      Left = 22
      Top = 389
      Width = 249
      Height = 85
      Caption = #46321#47197#48169#48277':'#13#10#54596#50836#54620' '#54637#47785#51012' '#51077#47141#54620' '#54980' '#46321#47197#48260#53948' '#53364#47533'.'#13#10#13#10#49688#51221#48169#48277':'#13#10#49688#51221#54624' '#45236#50857#51012' '#51077#47141#54620' '#54980' '#49688#51221#48260#53948' '#53364#47533'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -15
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 281
      Height = 361
      Align = alCustom
      Caption = #51312#54924'/'#49688#51221
      TabOrder = 0
      object Label1: TLabel
        Left = 57
        Top = 32
        Width = 28
        Height = 17
        Caption = #49457#47749
      end
      object Label2: TLabel
        Left = 31
        Top = 57
        Width = 56
        Height = 17
        Caption = #49373#45380#50900#51068
      end
      object Label4: TLabel
        Left = 18
        Top = 84
        Width = 70
        Height = 17
        Caption = #44256#50857#50672#50900#51068
      end
      object Label5: TLabel
        Left = 31
        Top = 111
        Width = 56
        Height = 17
        Caption = #51333#49324#50629#47924
      end
      object Label6: TLabel
        Left = 18
        Top = 139
        Width = 70
        Height = 17
        Caption = #44592#48376#49884#44036#44553
      end
      object Label7: TLabel
        Left = 31
        Top = 165
        Width = 56
        Height = 17
        Caption = #44592#48376#51068#44553
      end
      object Label8: TLabel
        Left = 31
        Top = 192
        Width = 56
        Height = 17
        Caption = #44592#48376#50900#44553
      end
      object Label9: TLabel
        Left = 18
        Top = 219
        Width = 70
        Height = 17
        Caption = #48512#50577#44032#51313#49688
      end
      object Label10: TLabel
        Left = 11
        Top = 246
        Width = 79
        Height = 17
        Caption = '1'#51064#45817#51648#44553#50529
      end
      object Label11: TLabel
        Left = 31
        Top = 273
        Width = 56
        Height = 17
        Caption = #44228#49328#49884#44036
      end
      object E_NAME: TEdit
        Left = 93
        Top = 29
        Width = 173
        Height = 25
        TabOrder = 0
      end
      object E_JOB: TEdit
        Left = 93
        Top = 108
        Width = 173
        Height = 25
        TabOrder = 1
      end
      object E_BIRTH: TcxDateEdit
        Left = 93
        Top = 54
        TabOrder = 2
        Width = 121
      end
      object START_DATE: TcxDateEdit
        Left = 93
        Top = 81
        TabOrder = 3
        Width = 121
      end
      object HOUR_PRICE: TcxCurrencyEdit
        Left = 93
        Top = 135
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        TabOrder = 4
        Width = 100
      end
      object DAY_PRICE: TcxCurrencyEdit
        Left = 93
        Top = 162
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        TabOrder = 5
        Width = 100
      end
      object MONTH_PRICE: TcxCurrencyEdit
        Left = 93
        Top = 189
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        TabOrder = 6
        Width = 100
      end
      object FAMILY_CNT: TcxCurrencyEdit
        Left = 93
        Top = 216
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        TabOrder = 7
        Width = 100
      end
      object FAMILY_PRICE: TcxCurrencyEdit
        Left = 93
        Top = 243
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        TabOrder = 8
        Width = 100
      end
      object FAMILY_HOUR: TcxCurrencyEdit
        Left = 93
        Top = 270
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        TabOrder = 9
        Width = 100
      end
      object btnAdd: TcxButton
        Left = 83
        Top = 310
        Width = 61
        Height = 25
        Hint = #49888#44508#44053#51340#46321#47197
        Caption = #46321#47197
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
        TabOrder = 10
        OnClick = btnAddClick
      end
      object btnEdit: TcxButton
        Left = 146
        Top = 310
        Width = 61
        Height = 25
        Hint = #49440#53469#44053#51340#49688#51221
        Caption = #49688#51221
        LookAndFeel.NativeStyle = False
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
        TabOrder = 11
        OnClick = btnEditClick
      end
    end
  end
  object EMP_BASIC_SEL: TUniStoredProc
    StoredProcName = 'EMP_BASIC_SEL'
    Connection = dm.UniConnection1
    Left = 136
    Top = 192
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
      Alignment = taCenter
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
      DisplayFormat = '#,0'
    end
    object EMP_BASIC_SELDAY_PRICE: TIntegerField
      FieldName = 'DAY_PRICE'
      DisplayFormat = '#,0'
    end
    object EMP_BASIC_SELMONTH_PRICE: TIntegerField
      FieldName = 'MONTH_PRICE'
    end
    object EMP_BASIC_SELFAMILY_CNT: TIntegerField
      FieldName = 'FAMILY_CNT'
    end
    object EMP_BASIC_SELFAMILY_PRICE: TIntegerField
      FieldName = 'FAMILY_PRICE'
      DisplayFormat = '#,0'
    end
    object EMP_BASIC_SELFAMILY_HOUR: TIntegerField
      FieldName = 'FAMILY_HOUR'
    end
  end
  object ds_EMP_BASIC_SEL: TDataSource
    DataSet = EMP_BASIC_SEL
    Left = 136
    Top = 240
  end
  object EMP_BASIC_INS: TUniStoredProc
    StoredProcName = 'EMP_BASIC_INS'
    Connection = dm.UniConnection1
    Left = 136
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'E_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftDate
        Name = 'E_BIRTH'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'E_JOB'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'HOUR_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DAY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MONTH_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_CNT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_HOUR'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_BASIC_INS'
  end
  object EMP_BASIC_UPD: TUniStoredProc
    StoredProcName = 'EMP_BASIC_UPD'
    Connection = dm.UniConnection1
    Left = 136
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'E_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftDate
        Name = 'E_BIRTH'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'E_JOB'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'HOUR_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DAY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MONTH_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_CNT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FAMILY_HOUR'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_BASIC_UPD'
  end
  object EMP_BASIC_DEL: TUniStoredProc
    StoredProcName = 'EMP_BASIC_DEL'
    Connection = dm.UniConnection1
    Left = 136
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_BASIC_DEL'
  end
end
