object fmTeacherExtrapay: TfmTeacherExtrapay
  Left = 0
  Top = 0
  Caption = #49688#45817#44048#47732#48372#51204#54788#54889
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
      OnClick = btnSaveColumnClick
    end
    inline frmYearMonth1: TfrmYearMonth
      Left = 12
      Top = 4
      Width = 164
      Height = 23
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
      OnClick = btnAttendListClick
    end
    object btnCalc: TcxButton
      Left = 326
      Top = 2
      Width = 92
      Height = 25
      Caption = #49688#45817#51116#44228#49328
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 5
      OnClick = btnCalcClick
    end
    object btnCreateNew: TcxButton
      Left = 245
      Top = 2
      Width = 80
      Height = 25
      Caption = #49688#45817#49373#49457
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 6
      OnClick = btnCreateNewClick
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
      DataController.DataSource = ds_TEACHER_EXTRAPAY_SEL
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          OnGetText = gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText
          Column = gridExtrapayNET_PRICE
        end
        item
          Format = '#,0'
          Kind = skSum
          OnGetText = gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems1GetText
          Column = gridExtrapaySODUKSE
        end
        item
          Format = '#,0'
          Kind = skSum
          OnGetText = gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems2GetText
          Column = gridExtrapayJUMINSE
        end
        item
          Format = '#,0'
          Kind = skSum
          OnGetText = gridExtrapayTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems3GetText
          Column = gridExtrapayTOTAL_PRICE
        end
        item
          Format = '#,0 '#47749
          Kind = skCount
          Column = gridExtrapayTEACHER_ID
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = gridExtrapayColumn1
        end>
      DataController.Summary.SummaryGroups = <>
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
        DataBinding.FieldName = 'TEACHER_IDX'
        Visible = False
        SortIndex = 0
        SortOrder = soAscending
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
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object gridExtrapayColumn1: TcxGridDBColumn
        Caption = 'No'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDataText = gridExtrapayColumn1GetDataText
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
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 91
      end
      object gridExtrapayNET_PRICE: TcxGridDBColumn
        Caption = #51648#44553#50529
        DataBinding.FieldName = 'NET_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Properties.UseThousandSeparator = True
        OnCustomDrawCell = gridExtrapayNET_PRICECustomDrawCell
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
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
        Options.CellMerging = True
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
        Options.CellMerging = True
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
        Options.CellMerging = True
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
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridExtrapay
    end
  end
  object cxGrid2: TcxGrid
    Left = 536
    Top = 288
    Width = 569
    Height = 200
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
      DataController.DataSource = ds_TEACHER_EXTRAPAY_CALCTOTAL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Column = gridTotalSUM_OF_TOTAL_AMOUNT
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridTotalSUM_OF_SODUK
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridTotalSUM_OF_JUMIN
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridTotalSUM_OF_NET_AMOUNT
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
      object gridTotalTEACHER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_ID'
        Width = 125
      end
      object gridTotalSUM_OF_TOTAL_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'SUM_OF_TOTAL_AMOUNT'
        Width = 92
      end
      object gridTotalSUM_OF_SODUK: TcxGridDBColumn
        DataBinding.FieldName = 'SUM_OF_SODUK'
        Width = 92
      end
      object gridTotalSUM_OF_JUMIN: TcxGridDBColumn
        DataBinding.FieldName = 'SUM_OF_JUMIN'
        Width = 90
      end
      object gridTotalSUM_OF_NET_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'SUM_OF_NET_AMOUNT'
        Width = 92
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
    Left = 696
    Top = 472
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
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
      ReportDocument.CreationDate = 44987.648102326390000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#51340#46321#47197#54788#54889
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
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
    Left = 848
    Top = 496
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
      TextColor = clBlue
    end
  end
  object TEACHER_EXTRAPAY_SEL: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_SEL'
    Connection = dm.UniConnection1
    Left = 296
    Top = 224
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
  end
  object ds_TEACHER_EXTRAPAY_SEL: TDataSource
    DataSet = TEACHER_EXTRAPAY_SEL
    Left = 296
    Top = 272
  end
  object TEACHER_EXTRAPAY_UPD: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_UPD'
    Connection = dm.UniConnection1
    Left = 456
    Top = 224
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
    Left = 456
    Top = 272
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
    Top = 168
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
  object ds_TEACHER_EXTRAPAY_CALCTOTAL: TDataSource
    DataSet = TEACHER_EXTRAPAY_CALCTOTAL
    Left = 728
    Top = 192
  end
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    Left = 728
    Top = 240
  end
  object TEACHER_EXTRAPAY_CALCTOTAL: TUniStoredProc
    StoredProcName = 'TEACHER_EXTRAPAY_CALCTOTAL'
    Connection = dm.UniConnection1
    Left = 728
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PMONTH'
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
        Name = 'SUM_OF_TOTAL_AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SUM_OF_SODUK'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SUM_OF_JUMIN'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SUM_OF_NET_AMOUNT'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'TEACHER_EXTRAPAY_CALCTOTAL'
    object TEACHER_EXTRAPAY_CALCTOTALTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object TEACHER_EXTRAPAY_CALCTOTALSUM_OF_TOTAL_AMOUNT: TIntegerField
      FieldName = 'SUM_OF_TOTAL_AMOUNT'
    end
    object TEACHER_EXTRAPAY_CALCTOTALSUM_OF_SODUK: TIntegerField
      FieldName = 'SUM_OF_SODUK'
    end
    object TEACHER_EXTRAPAY_CALCTOTALSUM_OF_JUMIN: TIntegerField
      FieldName = 'SUM_OF_JUMIN'
    end
    object TEACHER_EXTRAPAY_CALCTOTALSUM_OF_NET_AMOUNT: TIntegerField
      FieldName = 'SUM_OF_NET_AMOUNT'
    end
  end
end
