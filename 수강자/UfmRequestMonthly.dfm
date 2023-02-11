object fmRequestMonthly: TfmRequestMonthly
  Left = 0
  Top = 0
  Caption = #50900#48324#49688#44053#54788#54889
  ClientHeight = 665
  ClientWidth = 1208
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1208
    Height = 30
    Align = alTop
    TabOrder = 0
    object rbSelect: TcxRadioButton
      Left = 176
      Top = 6
      Width = 81
      Height = 17
      Caption = #49440#53469#44053#51340
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbSelectClick
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
    object rbAll: TcxRadioButton
      Left = 266
      Top = 6
      Width = 80
      Height = 17
      Caption = #51204#52404#44053#51340
      TabOrder = 1
      OnClick = rbAllClick
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
    object btnRetrieve: TcxButton
      Left = 363
      Top = 1
      Width = 34
      Height = 25
      Hint = #51312#54924
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
      TabOrder = 2
      OnClick = btnRetrieveClick
    end
    object btnRefreshData: TcxButton
      Left = 399
      Top = 1
      Width = 34
      Height = 25
      Hint = #49352#47196#44256#52840
      LookAndFeel.NativeStyle = False
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
      TabOrder = 3
      OnClick = btnRefreshDataClick
    end
    object btnExport: TcxButton
      Left = 971
      Top = 2
      Width = 34
      Height = 25
      Hint = #50641#49472#51200#51109
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
    object btnPrint: TcxButton
      Left = 1006
      Top = 2
      Width = 34
      Height = 25
      Hint = #49352#47196#44256#52840
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
    inline frmYearMonth1: TfrmYearMonth
      Left = 8
      Top = 3
      Width = 165
      Height = 24
      TabOrder = 6
      ExplicitLeft = 8
      ExplicitTop = 3
      inherited cbMonth: TComboBox
        OnChange = frmYearMonth1cbMonthChange
      end
    end
    object chkNoOut: TcxCheckBox
      Left = 480
      Top = 6
      Caption = #54872#48520#51088' '#51228#50808
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 7
      OnClick = chkNoOutClick
      Width = 105
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 1208
    Height = 635
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 281
      Top = 0
      Width = 2
      Height = 635
      ExplicitLeft = 297
      ExplicitHeight = 584
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 281
      Height = 635
      Align = alLeft
      TabOrder = 0
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 279
        Height = 633
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object gridLectureSelect: TcxGridDBTableView
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
          OnFocusedRecordChanged = gridLectureSelectFocusedRecordChanged
          DataController.DataSource = dm.d_LECTURELIST_WITH_REGISTCOUNT
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
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
              Column = gridLectureSelectREG_COUNT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridLectureSelectL_IDX: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'L_IDX'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object gridLectureSelectID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridLectureSelectL_NAME: TcxGridDBColumn
            Caption = #44053#51340#47749
            DataBinding.FieldName = 'L_NAME'
            HeaderAlignmentHorz = taCenter
            Width = 163
          end
          object gridLectureSelectREG_COUNT: TcxGridDBColumn
            Caption = #46321#47197
            DataBinding.FieldName = 'REG_COUNT'
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gridLectureSelect
        end
      end
    end
    object Panel4: TPanel
      Left = 283
      Top = 0
      Width = 925
      Height = 635
      Align = alClient
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 923
        Height = 633
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 0
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
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = d_REQUEST_VIEW
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0 '#47749
              Kind = skCount
              Column = gridRequestS_BIRTH
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
              Column = gridRequestOUT_AMOUNT
            end
            item
              Kind = skCount
              Column = gridRequestL_NAME
            end
            item
              Format = '#,0'
              Kind = skSum
              Column = gridRequestREG_PRICE1
            end
            item
              Format = '#,0'
              Kind = skSum
              Column = gridRequestREG_PRICE2
            end
            item
              Format = '#,0'
              Kind = skSum
              Column = gridRequestREG_PRICE3
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,0'
              Kind = skSum
              Column = gridRequestREG_PRICE1
            end
            item
              Format = '#,0'
              Kind = skSum
              Column = gridRequestREG_PRICE2
            end
            item
              Format = '#,0'
              Kind = skSum
              Column = gridRequestREG_PRICE3
            end
            item
              Format = '#,0'
              Kind = skCount
              Column = gridRequestS_NAME
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soNullIgnore]
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = gridRequestStylesGetContentStyle
          Styles.Group = cxStyleBlue
          object gridRequestrec_id: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'lec_id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object gridRequestL_YEAR: TcxGridDBColumn
            DataBinding.FieldName = 'L_YEAR'
            Visible = False
            VisibleForCustomization = False
          end
          object gridRequestL_STEP: TcxGridDBColumn
            DataBinding.FieldName = 'L_STEP'
            Visible = False
            VisibleForCustomization = False
          end
          object gridRequestL_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'L_NAME'
            Visible = False
            VisibleForCustomization = False
          end
          object gridRequestLECTURE_ID: TcxGridDBColumn
            Caption = #44053#51340#47749
            DataBinding.FieldName = 'LECTURE_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'L_NAME'
              end>
            Properties.ListSource = dm.d_LECTURE_look
          end
          object gridRequestSTUDENT_ID: TcxGridDBColumn
            DataBinding.FieldName = 'STUDENT_ID'
            Visible = False
            VisibleForCustomization = False
            Width = 109
          end
          object gridRequestP_DATE: TcxGridDBColumn
            Caption = #46321#47197#51068
            DataBinding.FieldName = 'P_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'mm-dd'
            HeaderAlignmentHorz = taCenter
            Width = 62
          end
          object gridRequestREG_KIND: TcxGridDBColumn
            Caption = #46321#47197
            DataBinding.FieldName = 'REG_KIND'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #46321#47197
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #51060#44053
                Value = 1
              end>
            HeaderAlignmentHorz = taCenter
            Width = 38
          end
          object gridRequestS_NAME: TcxGridDBColumn
            Caption = #49688#44053#51088#47749
            DataBinding.FieldName = 'S_NAME'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object gridRequestS_BIRTH: TcxGridDBColumn
            Caption = #49373#45380#50900#51068
            DataBinding.FieldName = 'S_BIRTH'
            HeaderAlignmentHorz = taCenter
            Width = 67
          end
          object gridRequestS_SEX: TcxGridDBColumn
            Caption = #49457#48324
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
            Width = 35
          end
          object gridRequestREG_PRICE1: TcxGridDBColumn
            Caption = #49688#44053#47308
            DataBinding.FieldName = 'REG_PRICE1'
            HeaderAlignmentHorz = taCenter
          end
          object gridRequestPAY_KIND: TcxGridDBColumn
            Caption = #44396#48516
            DataBinding.FieldName = 'PAY_KIND'
            PropertiesClassName = 'TcxImageComboBoxProperties'
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
            Width = 41
          end
          object gridRequestREG_MONTH: TcxGridDBColumn
            Caption = #49688#44053'1'#50900
            DataBinding.FieldName = 'REG_MONTH'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object gridRequestREG_MONTH2: TcxGridDBColumn
            Caption = #49688#44053'2'#50900
            DataBinding.FieldName = 'REG_MONTH2'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 52
          end
          object gridRequestREG_MONTH3: TcxGridDBColumn
            Caption = #49688#44053'3'#50900
            DataBinding.FieldName = 'REG_MONTH3'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object gridRequestPAY_WAY: TcxGridDBColumn
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
                Description = #48373#51648#52852#46300
                Value = 1
              end
              item
                Description = #44592#53440
                Value = 2
              end
              item
                Description = #52852#46300
                Value = 3
              end
              item
                Description = #51060#52404
                Value = 4
              end>
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 42
          end
          object gridRequestOUT_MONTH: TcxGridDBColumn
            Caption = #54872#48520
            DataBinding.FieldName = 'OUT_MONTH'
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object gridRequestOUT_MONTH2: TcxGridDBColumn
            Caption = #54872#48520
            DataBinding.FieldName = 'OUT_MONTH2'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object gridRequestOUT_MONTH3: TcxGridDBColumn
            Caption = #54872#48520
            DataBinding.FieldName = 'OUT_MONTH3'
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object gridRequestOUT_AMOUNT: TcxGridDBColumn
            Caption = #54872#48520#44552#50529
            DataBinding.FieldName = 'OUT_AMOUNT'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object gridRequestR_DATE: TcxGridDBColumn
            Caption = #53748#44053#51068#51088
            DataBinding.FieldName = 'R_DATE'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object gridRequestOUT_KIND: TcxGridDBColumn
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
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object gridRequestREG_PRICE2: TcxGridDBColumn
            Caption = #49688#44053#47308
            DataBinding.FieldName = 'REG_PRICE2'
            HeaderAlignmentHorz = taCenter
          end
          object gridRequestREG_PRICE3: TcxGridDBColumn
            Caption = #49688#44053#47308
            DataBinding.FieldName = 'REG_PRICE3'
            HeaderAlignmentHorz = taCenter
          end
          object gridRequestIS_DC: TcxGridDBColumn
            Caption = #44048#47732#50668#48512
            DataBinding.FieldName = 'IS_DC'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'KIND_NAME'
              end>
            Properties.ListSource = dm.d_DC_KIND
            OnCustomDrawCell = gridRequestIS_DCCustomDrawCell
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object gridRequestS_TEL: TcxGridDBColumn
            Caption = #51204#54868#48264#54840
            DataBinding.FieldName = 'S_TEL'
            HeaderAlignmentHorz = taCenter
            Width = 142
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
          object gridRequestPAYBACK_WAY: TcxGridDBColumn
            Caption = #54872#48520#44208#51116
            DataBinding.FieldName = 'PAYBACK_WAY'
            Visible = False
          end
          object gridRequestPAYBACK_BANK: TcxGridDBColumn
            Caption = #51008#54665#47749
            DataBinding.FieldName = 'PAYBACK_BANK'
            Visible = False
          end
          object gridRequestPAYBACK_BANKID: TcxGridDBColumn
            Caption = #44228#51340#48264#54840
            DataBinding.FieldName = 'PAYBACK_BANKID'
            Visible = False
          end
          object gridRequestS_ADDR: TcxGridDBColumn
            Caption = #51452#49548
            DataBinding.FieldName = 'S_ADDR'
            Width = 188
          end
          object gridRequestPAYBACK_BANKOWNER: TcxGridDBColumn
            Caption = #50696#44552#51452
            DataBinding.FieldName = 'PAYBACK_BANKOWNER'
            Visible = False
          end
          object gridRequestL_IDX: TcxGridDBColumn
            DataBinding.FieldName = 'L_IDX'
            SortIndex = 0
            SortOrder = soAscending
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gridRequest
        end
      end
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 488
    Top = 432
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
      ReportDocument.CreationDate = 44953.485521203710000000
      ReportTitle.AdjustOnReportScale = True
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#49324#49688#45817#51648#44553#54788#54889
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
      OptionsPreview.AutoHeight = False
      OptionsPreview.Visible = False
      OptionsSize.AutoWidth = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
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
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 17826200
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000001E1E1E7E3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000001E1E1E8100000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF000000001E1E1E813C3C3CFF1E1E1E81000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E8100000000000000003C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000003C3C3CFF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
      end>
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 960
    Top = 520
  end
  object q_REQUEST_VIEW: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_STUDENT_REQUEST_VIEW'
      
        '  (L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_MONTH, START_D' +
        'ATE, END_DATE, CLASSROOM_ID, IS_ACTIVE, DONG_ID, LECTURE_ID, STU' +
        'DENT_ID, P_DATE, PAY_AMOUNT, IS_DC, PAY_KIND, R_DATE, OUT_AMOUNT' +
        ', REG_KIND, PAY_WAY, PAYBACK_WAY, PAYBACK_BANK, PAYBACK_BANKID, ' +
        'OUT_KIND, PAYBACK_BANKOWNER, TEACHER_ID, S_NAME, S_TEL, S_ADDR, ' +
        'S_KIND, S_SEX, S_BIRTH, T_NAME, T_SEX, T_TEL, BANK_NAME, BANK_NO' +
        ', ID)'
      'VALUES'
      
        '  (:L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DAYS, :L_MONTH, :' +
        'START_DATE, :END_DATE, :CLASSROOM_ID, :IS_ACTIVE, :DONG_ID, :LEC' +
        'TURE_ID, :STUDENT_ID, :P_DATE, :PAY_AMOUNT, :IS_DC, :PAY_KIND, :' +
        'R_DATE, :OUT_AMOUNT, :REG_KIND, :PAY_WAY, :PAYBACK_WAY, :PAYBACK' +
        '_BANK, :PAYBACK_BANKID, :OUT_KIND, :PAYBACK_BANKOWNER, :TEACHER_' +
        'ID, :S_NAME, :S_TEL, :S_ADDR, :S_KIND, :S_SEX, :S_BIRTH, :T_NAME' +
        ', :T_SEX, :T_TEL, :BANK_NAME, :BANK_NO, :ID)')
    SQLDelete.Strings = (
      'DELETE FROM LECTURE_STUDENT_REQUEST_VIEW'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LECTURE_STUDENT_REQUEST_VIEW'
      'SET'
      
        '  L_YEAR = :L_YEAR, L_STEP = :L_STEP, L_NAME = :L_NAME, L_TIME_W' +
        'EEK = :L_TIME_WEEK, L_DAYS = :L_DAYS, L_MONTH = :L_MONTH, START_' +
        'DATE = :START_DATE, END_DATE = :END_DATE, CLASSROOM_ID = :CLASSR' +
        'OOM_ID, IS_ACTIVE = :IS_ACTIVE, DONG_ID = :DONG_ID, LECTURE_ID =' +
        ' :LECTURE_ID, STUDENT_ID = :STUDENT_ID, P_DATE = :P_DATE, PAY_AM' +
        'OUNT = :PAY_AMOUNT, IS_DC = :IS_DC, PAY_KIND = :PAY_KIND, R_DATE' +
        ' = :R_DATE, OUT_AMOUNT = :OUT_AMOUNT, REG_KIND = :REG_KIND, PAY_' +
        'WAY = :PAY_WAY, PAYBACK_WAY = :PAYBACK_WAY, PAYBACK_BANK = :PAYB' +
        'ACK_BANK, PAYBACK_BANKID = :PAYBACK_BANKID, OUT_KIND = :OUT_KIND' +
        ', PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER, TEACHER_ID = :TEACHER_' +
        'ID, S_NAME = :S_NAME, S_TEL = :S_TEL, S_ADDR = :S_ADDR, S_KIND =' +
        ' :S_KIND, S_SEX = :S_SEX, S_BIRTH = :S_BIRTH, T_NAME = :T_NAME, ' +
        'T_SEX = :T_SEX, T_TEL = :T_TEL, BANK_NAME = :BANK_NAME, BANK_NO ' +
        '= :BANK_NO, ID = :ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LECTURE_STUDENT_REQUEST_VIEW'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_MONTH, STA' +
        'RT_DATE, END_DATE, CLASSROOM_ID, IS_ACTIVE, DONG_ID, LECTURE_ID,' +
        ' STUDENT_ID, P_DATE, PAY_AMOUNT, IS_DC, PAY_KIND, R_DATE, OUT_AM' +
        'OUNT, REG_KIND, PAY_WAY, PAYBACK_WAY, PAYBACK_BANK, PAYBACK_BANK' +
        'ID, OUT_KIND, PAYBACK_BANKOWNER, TEACHER_ID, S_NAME, S_TEL, S_AD' +
        'DR, S_KIND, S_SEX, S_BIRTH, T_NAME, T_SEX, T_TEL, BANK_NAME, BAN' +
        'K_NO, ID FROM LECTURE_STUDENT_REQUEST_VIEW'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LECTURE_STUDENT_REQUEST_VIEW'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select '
      '    lecture_active.l_year,'
      '    lecture_active.l_step,'
      '    lecture_active.l_name,'
      '    REGISTED_LECTURE.lecture_id,'
      '    REGISTED_LECTURE.student_id,'
      '    REGISTED_LECTURE.p_date,'
      '    REGISTED_LECTURE.reg_price1,'
      '    REGISTED_LECTURE.reg_price2,'
      '    REGISTED_LECTURE.reg_price3,'
      '    REGISTED_LECTURE.is_dc,'
      '    REGISTED_LECTURE.pay_kind,'
      '    REGISTED_LECTURE.r_date,'
      '    REGISTED_LECTURE.out_amount,'
      '    REGISTED_LECTURE.reg_kind,'
      '    REGISTED_LECTURE.pay_way,'
      '    REGISTED_LECTURE.payback_way,'
      '    REGISTED_LECTURE.payback_bank,'
      '    REGISTED_LECTURE.payback_bankid,'
      '    REGISTED_LECTURE.out_kind,'
      '    REGISTED_LECTURE.payback_bankowner,'
      '    REGISTED_LECTURE.reg_month,'
      '    REGISTED_LECTURE.reg_month2,'
      '    REGISTED_LECTURE.reg_month3,'
      '    REGISTED_LECTURE.out_month,'
      '    REGISTED_LECTURE.out_month2,'
      '    REGISTED_LECTURE.out_month3,'
      '    students.s_name,'
      '    students.s_tel,'
      '    students.s_addr,'
      '    students.s_kind,'
      '    students.s_sex,'
      '    students.s_birth,'
      '    students.s_dong,'
      '    students.CASH_RECEIPT_NO,'
      '    students.CASH_RECEIPT_YESNO,'
      '    REGISTED_LECTURE.id'
      'from REGISTED_LECTURE'
      
        '   inner join lecture_active on (REGISTED_LECTURE.lecture_id = l' +
        'ecture_active.id)'
      
        '   inner join students on (REGISTED_LECTURE.student_id = student' +
        's.id)'
      'where (REGISTED_LECTURE.lecture_id like :lecture_id) and '
      '      (lecture_active.l_year = :l_year) and '
      '      (lecture_active.l_step = :l_step)'
      'order by p_date, id')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    AutoCalcFields = False
    Left = 336
    Top = 368
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
        Name = 'l_step'
        ParamType = ptInput
      end>
    object q_REQUEST_VIEWL_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'L_YEAR'
    end
    object q_REQUEST_VIEWL_STEP: TIntegerField
      Alignment = taCenter
      FieldName = 'L_STEP'
    end
    object q_REQUEST_VIEWL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWLECTURE_ID: TStringField
      Alignment = taCenter
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_REQUEST_VIEWSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object q_REQUEST_VIEWS_NAME: TStringField
      Alignment = taCenter
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWS_TEL: TStringField
      Alignment = taCenter
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_REQUEST_VIEWS_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'S_KIND'
    end
    object q_REQUEST_VIEWS_SEX: TStringField
      Alignment = taCenter
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_REQUEST_VIEWID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object q_REQUEST_VIEWPAY_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_KIND'
    end
    object q_REQUEST_VIEWOUT_AMOUNT: TFloatField
      Alignment = taCenter
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWREG_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_KIND'
    end
    object q_REQUEST_VIEWS_BIRTH: TStringField
      Alignment = taCenter
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWPAY_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
    end
    object q_REQUEST_VIEWPAYBACK_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAYBACK_WAY'
    end
    object q_REQUEST_VIEWPAYBACK_BANK: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANK'
    end
    object q_REQUEST_VIEWPAYBACK_BANKID: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object q_REQUEST_VIEWOUT_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_KIND'
    end
    object q_REQUEST_VIEWS_ADDR: TStringField
      Alignment = taCenter
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_REQUEST_VIEWP_DATE: TStringField
      Alignment = taCenter
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWR_DATE: TStringField
      Alignment = taCenter
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKOWNER'
      Size = 30
    end
    object q_REQUEST_VIEWIS_DC: TSmallintField
      Alignment = taCenter
      FieldName = 'IS_DC'
    end
    object q_REQUEST_VIEWCASH_RECEIPT_NO: TStringField
      Alignment = taCenter
      FieldName = 'CASH_RECEIPT_NO'
      ReadOnly = True
      Size = 30
    end
    object q_REQUEST_VIEWCASH_RECEIPT_YESNO: TSmallintField
      Alignment = taCenter
      FieldName = 'CASH_RECEIPT_YESNO'
      ReadOnly = True
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
      Alignment = taCenter
      FieldName = 'REG_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_MONTH3: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH2: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH3: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEWS_DONG: TStringField
      Alignment = taCenter
      FieldName = 'S_DONG'
      ReadOnly = True
      Size = 17
    end
    object q_REQUEST_VIEWREG_PRICE1: TFloatField
      FieldName = 'REG_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWREG_PRICE2: TFloatField
      FieldName = 'REG_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWREG_PRICE3: TFloatField
      FieldName = 'REG_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWrec_id: TIntegerField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'rec_id'
      Calculated = True
    end
  end
  object d_REQUEST_VIEW: TDataSource
    DataSet = REQUEST_MONTHLY_SEL
    Left = 336
    Top = 520
  end
  object REQUEST_MONTHLY_SEL: TUniStoredProc
    StoredProcName = 'REQUEST_MONTHLY_SEL'
    Connection = dm.UniConnection1
    Left = 336
    Top = 472
    ParamData = <
      item
        DataType = ftString
        Name = 'LECTUREID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'LYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LSTEP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTMONTH1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OUTMONTH2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORMONTH'
        ParamType = ptInput
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
        Name = 'L_IDX'
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
        Name = 'REG_PRICE1'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'REG_PRICE2'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'REG_PRICE3'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'IS_DC'
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
        DataType = ftSmallint
        Name = 'OUT_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'PAYBACK_BANKOWNER'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftSmallint
        Name = 'REG_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'REG_MONTH2'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'REG_MONTH3'
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
        Name = 'S_DONG'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CASH_RECEIPT_NO'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftSmallint
        Name = 'CASH_RECEIPT_YESNO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'REQUEST_MONTHLY_SEL'
    object REQUEST_MONTHLY_SELlec_id: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'lec_id'
      Calculated = True
    end
    object REQUEST_MONTHLY_SELL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object REQUEST_MONTHLY_SELL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object REQUEST_MONTHLY_SELL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object REQUEST_MONTHLY_SELLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object REQUEST_MONTHLY_SELSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object REQUEST_MONTHLY_SELP_DATE: TStringField
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object REQUEST_MONTHLY_SELREG_PRICE1: TFloatField
      FieldName = 'REG_PRICE1'
    end
    object REQUEST_MONTHLY_SELREG_PRICE2: TFloatField
      FieldName = 'REG_PRICE2'
    end
    object REQUEST_MONTHLY_SELREG_PRICE3: TFloatField
      FieldName = 'REG_PRICE3'
    end
    object REQUEST_MONTHLY_SELIS_DC: TSmallintField
      FieldName = 'IS_DC'
    end
    object REQUEST_MONTHLY_SELPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
    end
    object REQUEST_MONTHLY_SELR_DATE: TStringField
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object REQUEST_MONTHLY_SELOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
    end
    object REQUEST_MONTHLY_SELREG_KIND: TSmallintField
      FieldName = 'REG_KIND'
    end
    object REQUEST_MONTHLY_SELPAY_WAY: TSmallintField
      FieldName = 'PAY_WAY'
    end
    object REQUEST_MONTHLY_SELPAYBACK_WAY: TSmallintField
      FieldName = 'PAYBACK_WAY'
    end
    object REQUEST_MONTHLY_SELPAYBACK_BANK: TStringField
      FieldName = 'PAYBACK_BANK'
    end
    object REQUEST_MONTHLY_SELPAYBACK_BANKID: TStringField
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object REQUEST_MONTHLY_SELOUT_KIND: TSmallintField
      FieldName = 'OUT_KIND'
    end
    object REQUEST_MONTHLY_SELPAYBACK_BANKOWNER: TStringField
      FieldName = 'PAYBACK_BANKOWNER'
      Size = 30
    end
    object REQUEST_MONTHLY_SELREG_MONTH: TSmallintField
      FieldName = 'REG_MONTH'
    end
    object REQUEST_MONTHLY_SELREG_MONTH2: TSmallintField
      FieldName = 'REG_MONTH2'
    end
    object REQUEST_MONTHLY_SELREG_MONTH3: TSmallintField
      FieldName = 'REG_MONTH3'
    end
    object REQUEST_MONTHLY_SELOUT_MONTH: TSmallintField
      FieldName = 'OUT_MONTH'
    end
    object REQUEST_MONTHLY_SELOUT_MONTH2: TSmallintField
      FieldName = 'OUT_MONTH2'
    end
    object REQUEST_MONTHLY_SELOUT_MONTH3: TSmallintField
      FieldName = 'OUT_MONTH3'
    end
    object REQUEST_MONTHLY_SELS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 30
    end
    object REQUEST_MONTHLY_SELS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object REQUEST_MONTHLY_SELS_ADDR: TStringField
      FieldName = 'S_ADDR'
      Size = 50
    end
    object REQUEST_MONTHLY_SELS_KIND: TSmallintField
      FieldName = 'S_KIND'
    end
    object REQUEST_MONTHLY_SELS_SEX: TStringField
      FieldName = 'S_SEX'
      Size = 4
    end
    object REQUEST_MONTHLY_SELS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object REQUEST_MONTHLY_SELS_DONG: TStringField
      FieldName = 'S_DONG'
      Size = 17
    end
    object REQUEST_MONTHLY_SELCASH_RECEIPT_NO: TStringField
      FieldName = 'CASH_RECEIPT_NO'
      Size = 30
    end
    object REQUEST_MONTHLY_SELCASH_RECEIPT_YESNO: TSmallintField
      FieldName = 'CASH_RECEIPT_YESNO'
    end
    object REQUEST_MONTHLY_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object REQUEST_MONTHLY_SELL_IDX: TIntegerField
      FieldName = 'L_IDX'
    end
  end
end
