object fmOutList: TfmOutList
  Left = 0
  Top = 0
  Caption = #53748#44053#51088#54788#54889'('#46321#47197#51068')'
  ClientHeight = 647
  ClientWidth = 1089
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
    Width = 1089
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 43
      Height = 13
      Caption = #46321#47197#51068':'
    end
    object btnSaveColumn: TcxButton
      Left = 919
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
      Visible = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 63
      Top = 3
      Width = 96
      Height = 23
      Date = 42076.980453622690000000
      Time = 42076.980453622690000000
      TabOrder = 1
      OnCloseUp = DateTimePicker1CloseUp
    end
    object DateTimePicker2: TDateTimePicker
      Left = 158
      Top = 3
      Width = 96
      Height = 23
      Date = 42076.980453622690000000
      Time = 42076.980453622690000000
      TabOrder = 2
      OnCloseUp = DateTimePicker2CloseUp
    end
    object btnRetrieve: TcxButton
      Left = 256
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
      Left = 750
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
      Left = 850
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
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1089
    Height = 618
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
      DataController.DataSource = d_REQUEST_VIEW
      DataController.Summary.DefaultGroupSummaryItems = <>
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
          Column = gridOutListOUT_MONTH
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridOutListOUT_MONTH2
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridOutListOUT_MONTH3
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
      object gridOutListR_NO: TcxGridDBColumn
        Caption = 'NO'
        DataBinding.FieldName = 'R_NO'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridOutListL_YEAR: TcxGridDBColumn
        Caption = #45380#46020
        DataBinding.FieldName = 'L_YEAR'
        HeaderAlignmentHorz = taCenter
        Width = 49
      end
      object gridOutListL_STEP: TcxGridDBColumn
        Caption = #48516#44592
        DataBinding.FieldName = 'L_STEP'
        HeaderAlignmentHorz = taCenter
        Width = 35
      end
      object gridOutListP_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'P_DATE'
        Width = 80
      end
      object gridOutListL_NAME: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'L_NAME'
        Width = 159
      end
      object gridOutListS_NAME: TcxGridDBColumn
        Caption = #49457#47749
        DataBinding.FieldName = 'S_NAME'
        Width = 74
      end
      object gridOutListS_BIRTH: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'S_BIRTH'
        Width = 76
      end
      object gridOutListS_TEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'S_TEL'
        Width = 129
      end
      object gridOutListS_ADDR: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'S_ADDR'
        Width = 166
      end
      object gridOutListS_KIND: TcxGridDBColumn
        Caption = #44048#47732#45236#50669
        DataBinding.FieldName = 'S_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListSource = dm.d_DC_KIND
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
      object gridOutListOUT_MONTH: TcxGridDBColumn
        Caption = #53748#44053'1'
        DataBinding.FieldName = 'OUT_MONTH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridOutListOUT_MONTH2: TcxGridDBColumn
        Caption = #53748#44053'2'
        DataBinding.FieldName = 'OUT_MONTH2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 50
      end
      object gridOutListOUT_MONTH3: TcxGridDBColumn
        Caption = #53748#44053'3'
        DataBinding.FieldName = 'OUT_MONTH3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 50
      end
      object gridOutListR_DATE: TcxGridDBColumn
        Caption = #53748#44053#51068#51088
        DataBinding.FieldName = 'R_DATE'
        Width = 87
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
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'REASON_NAME'
          end>
        Properties.ListSource = dm.d_payback_reason
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
          end>
        Width = 64
      end
      object gridOutListPAYBACK_BANK: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'PAYBACK_BANK'
        Width = 74
      end
      object gridOutListPAYBACK_BANKOWNER: TcxGridDBColumn
        Caption = #50696#44552#51452
        DataBinding.FieldName = 'PAYBACK_BANKOWNER'
        Width = 70
      end
      object gridOutListPAYBACK_BANKID: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'PAYBACK_BANKID'
        Width = 137
      end
      object gridOutListID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridOutList
    end
  end
  object d_REQUEST_VIEW: TDataSource
    DataSet = SP_STUDENT_OUTLIST
    Left = 224
    Top = 352
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
      ReportDocument.CreationDate = 42128.407913831020000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#51340#46321#47197#54788#54889
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
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
    Left = 952
    Top = 504
  end
  object SP_STUDENT_OUTLIST: TUniStoredProc
    StoredProcName = 'SP_STUDENT_OUTLIST'
    Connection = dm.UniConnection1
    Left = 224
    Top = 304
    ParamData = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'R_NO'
        ParamType = ptOutput
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
        Name = 'L_TIME_WEEK'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'L_DAYS'
        ParamType = ptOutput
        Size = 15
      end
      item
        DataType = ftInteger
        Name = 'L_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftFixedChar
        Name = 'START_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftFixedChar
        Name = 'END_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CLASSROOM_ID'
        ParamType = ptOutput
        Size = 17
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
        Name = 'DONG_ID'
        ParamType = ptOutput
        Size = 17
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
        DataType = ftFixedChar
        Name = 'R_DATE'
        ParamType = ptOutput
        Size = 10
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
        Name = 'OUT_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'OUT_MONTH2'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'OUT_MONTH3'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'TEACHER_ID'
        ParamType = ptOutput
        Size = 17
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
        Name = 'T_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'T_SEX'
        ParamType = ptOutput
        Size = 4
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
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'SP_STUDENT_OUTLIST'
    object SP_STUDENT_OUTLISTL_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'L_YEAR'
    end
    object SP_STUDENT_OUTLISTL_STEP: TIntegerField
      Alignment = taCenter
      FieldName = 'L_STEP'
    end
    object SP_STUDENT_OUTLISTL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object SP_STUDENT_OUTLISTL_TIME_WEEK: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object SP_STUDENT_OUTLISTL_DAYS: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object SP_STUDENT_OUTLISTL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object SP_STUDENT_OUTLISTSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object SP_STUDENT_OUTLISTEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object SP_STUDENT_OUTLISTCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object SP_STUDENT_OUTLISTIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object SP_STUDENT_OUTLISTL_PRICE: TFloatField
      FieldName = 'L_PRICE'
      DisplayFormat = '#,'
    end
    object SP_STUDENT_OUTLISTDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object SP_STUDENT_OUTLISTLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object SP_STUDENT_OUTLISTSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object SP_STUDENT_OUTLISTP_DATE: TStringField
      Alignment = taCenter
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object SP_STUDENT_OUTLISTPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,'
    end
    object SP_STUDENT_OUTLISTPAY_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_KIND'
    end
    object SP_STUDENT_OUTLISTR_DATE: TStringField
      Alignment = taCenter
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object SP_STUDENT_OUTLISTOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,'
    end
    object SP_STUDENT_OUTLISTREG_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_KIND'
    end
    object SP_STUDENT_OUTLISTPAY_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
    end
    object SP_STUDENT_OUTLISTPAYBACK_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAYBACK_WAY'
    end
    object SP_STUDENT_OUTLISTPAYBACK_BANK: TStringField
      FieldName = 'PAYBACK_BANK'
    end
    object SP_STUDENT_OUTLISTPAYBACK_BANKID: TStringField
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object SP_STUDENT_OUTLISTPAYBACK_BANKOWNER: TStringField
      FieldName = 'PAYBACK_BANKOWNER'
      Size = 30
    end
    object SP_STUDENT_OUTLISTOUT_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_KIND'
    end
    object SP_STUDENT_OUTLISTOUT_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH'
    end
    object SP_STUDENT_OUTLISTTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object SP_STUDENT_OUTLISTS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 30
    end
    object SP_STUDENT_OUTLISTS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object SP_STUDENT_OUTLISTS_ADDR: TStringField
      FieldName = 'S_ADDR'
      Size = 50
    end
    object SP_STUDENT_OUTLISTS_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'S_KIND'
    end
    object SP_STUDENT_OUTLISTS_SEX: TStringField
      Alignment = taCenter
      FieldName = 'S_SEX'
      Size = 4
    end
    object SP_STUDENT_OUTLISTS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object SP_STUDENT_OUTLISTT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object SP_STUDENT_OUTLISTT_SEX: TStringField
      FieldName = 'T_SEX'
      Size = 4
    end
    object SP_STUDENT_OUTLISTT_TEL: TStringField
      FieldName = 'T_TEL'
      Size = 30
    end
    object SP_STUDENT_OUTLISTBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object SP_STUDENT_OUTLISTBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object SP_STUDENT_OUTLISTID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object SP_STUDENT_OUTLISTR_NO: TIntegerField
      Alignment = taCenter
      FieldName = 'R_NO'
    end
    object SP_STUDENT_OUTLISTOUT_MONTH2: TSmallintField
      FieldName = 'OUT_MONTH2'
    end
    object SP_STUDENT_OUTLISTOUT_MONTH3: TSmallintField
      FieldName = 'OUT_MONTH3'
    end
  end
end
