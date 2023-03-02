object fmLectureReport: TfmLectureReport
  Left = 0
  Top = 0
  Caption = #44053#51340#48372#44256#49436
  ClientHeight = 707
  ClientWidth = 1152
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1152
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 248
      Top = 8
      Width = 47
      Height = 13
      Caption = #52636#47141#50900':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 824
      Top = 8
      Width = 69
      Height = 13
      Caption = #54168#51060#51648#46972#51064':'
    end
    object btnRetrieve: TBitBtn
      Left = 179
      Top = 2
      Width = 60
      Height = 25
      Caption = #51312#54924
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
        FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
        FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
        FF0A444444444444444D444444444444444A444444444444444D}
      TabOrder = 0
      OnClick = btnRetrieveClick
    end
    object btnExport: TBitBtn
      Left = 986
      Top = 2
      Width = 99
      Height = 25
      Caption = #50641#49472#51200#51109
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADADADAD00000000000000006666007777777706E
        EF0AA0E6666606EEF0ADDA0E66606EEF060AADA0E606EEF0000DDADA006EEF0A
        DADAADAD06EEF00DADADDAD06EEF0670DADAAD06EEF0E6670DADD06EEF0A0E66
        70DA0FFFF0ADA0EEEE0D00000ADADA00000AADADADADADADADAD}
      TabOrder = 1
    end
    object btnDailyReport: TBitBtn
      Left = 363
      Top = 2
      Width = 108
      Height = 25
      Caption = #50868#50689#51068#51648
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000084
        840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
        3333330000000000033330313131313010330000000000000103013131355531
        0003031313122213010300000000000001100131313131301010300000000003
        0100330666666660301044446000002203033333066666663033444444000002
        2203333333066666633044444444000000003333333333333333}
      TabOrder = 2
      OnClick = btnDailyReportClick
    end
    object cbMonth: TComboBox
      Left = 297
      Top = 4
      Width = 58
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 4
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 3
      Text = '1'#50900
      Items.Strings = (
        '1'#50900
        '2'#50900
        '3'#50900
        '4'#50900
        '5'#50900
        '6'#50900
        '7'#50900
        '8'#50900
        '9'#50900
        '10'#50900
        '11'#50900
        '12'#50900)
    end
    object btnAttendFront: TBitBtn
      Left = 594
      Top = 2
      Width = 111
      Height = 25
      Caption = #52636#49437#48512#50526#47732
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000084
        840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
        3333330000000000033330313131313010330000000000000103013131355531
        0003031313122213010300000000000001100131313131301010300000000003
        0100330666666660301044446000002203033333066666663033444444000002
        2203333333066666633044444444000000003333333333333333}
      TabOrder = 4
      OnClick = btnAttendFrontClick
    end
    object btnAttendList: TBitBtn
      Left = 706
      Top = 2
      Width = 111
      Height = 25
      Caption = #52636#49437#48512#52636#47141
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000084
        840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
        3333330000000000033330313131313010330000000000000103013131355531
        0003031313122213010300000000000001100131313131301010300000000003
        0100330666666660301044446000002203033333066666663033444444000002
        2203333333066666633044444444000000003333333333333333}
      TabOrder = 5
      OnClick = btnAttendListClick
    end
    inline frmYearQuarter1: TfrmYearQuarter
      Left = 11
      Top = 4
      Width = 164
      Height = 23
      TabOrder = 6
      ExplicitLeft = 11
      ExplicitTop = 4
      inherited cbYear: TComboBox
        OnChange = frmYearQuarter1cbYearChange
      end
      inherited cbQuarter: TComboBox
        OnChange = frmYearQuarter1cbQuarterChange
      end
    end
    object btnSaveColumn: TcxButton
      Left = 1089
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
      TabOrder = 7
      OnClick = btnSaveColumnClick
    end
    object btnTeacherAttend: TBitBtn
      Left = 477
      Top = 2
      Width = 113
      Height = 25
      Caption = #44053#49324#52636#49437#48512
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000084
        840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
        3333330000000000033330313131313010330000000000000103013131355531
        0003031313122213010300000000000001100131313131301010300000000003
        0100330666666660301044446000002203033333066666663033444444000002
        2203333333066666633044444444000000003333333333333333}
      TabOrder = 8
      OnClick = btnTeacherAttendClick
    end
    object cbLines: TcxImageComboBox
      Left = 899
      Top = 4
      EditValue = 1.100000000000000000
      Properties.DropDownRows = 15
      Properties.Items = <
        item
          Description = '15'#46972#51064
          ImageIndex = 0
          Value = 1.500000000000000000
        end
        item
          Description = '16'#46972#51064
          Value = 1.400000000000000000
        end
        item
          Description = '17'#46972#51064
          Value = 1.300000000000000000
        end
        item
          Description = '18'#46972#51064
          Value = 1.250000000000000000
        end
        item
          Description = '19'#46972#51064
          Value = 1.150000000000000000
        end
        item
          Description = '20'#46972#51064
          Value = 1.100000000000000000
        end
        item
          Description = '21'#46972#51064
          Value = 1.050000000000000000
        end
        item
          Description = '22'#46972#51064
          Value = 1.000000000000000000
        end
        item
          Description = '23'#46972#51064
          Value = 0.950000000000000000
        end
        item
          Description = '24'#46972#51064
          Value = 0.925000000000000000
        end
        item
          Description = '25'#46972#51064
          Value = 0.900000000000000000
        end>
      TabOrder = 9
      Width = 65
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1152
    Height = 678
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridLecture: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dm.d_LECTURE
      DataController.Filter.AutoDataSetFilter = True
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#'#47749
          Kind = skCount
          Column = gridLectureL_NAME
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #44053#51340#49688': #,'
          Kind = skCount
          Column = gridLectureL_NAME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridLectureID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridLectureL_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'L_YEAR'
        Visible = False
        Width = 50
      end
      object gridLectureL_STEP: TcxGridDBColumn
        Caption = #48516#44592
        DataBinding.FieldName = 'L_STEP'
        Visible = False
        Width = 40
      end
      object gridLectureL_IDX: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'L_IDX'
        HeaderAlignmentHorz = taCenter
        Width = 46
      end
      object gridLectureL_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'L_NAME'
        Width = 146
      end
      object gridLecturePLAN_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_MEN'
        Width = 40
      end
      object gridLectureL_TIME_WEEK: TcxGridDBColumn
        Caption = #51452#54924
        DataBinding.FieldName = 'L_TIME_WEEK'
        Width = 40
      end
      object gridLectureL_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'L_DAYS'
        Width = 59
      end
      object gridLectureL_DURATION: TcxGridDBColumn
        Caption = #44053#51032#49884#44036
        DataBinding.FieldName = 'L_DURATION'
        Width = 98
      end
      object gridLectureL_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'L_TIME'
        Width = 40
      end
      object gridLectureL_MONTH: TcxGridDBColumn
        Caption = #44060#50900
        DataBinding.FieldName = 'L_MONTH'
        Width = 40
      end
      object gridLectureTOTAL_DAY: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_DAY'
        Width = 45
      end
      object gridLectureTOTAL_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_TIME'
        Width = 49
      end
      object gridLectureSTART_DATE: TcxGridDBColumn
        Caption = #44060#44053#51068#51088
        DataBinding.FieldName = 'START_DATE'
        Width = 80
      end
      object gridLectureEND_DATE: TcxGridDBColumn
        Caption = #51333#44053#51068#51088
        DataBinding.FieldName = 'END_DATE'
        Width = 80
      end
      object gridLectureTEACHER_ID: TcxGridDBColumn
        Caption = #44053#49324#47749'1'
        DataBinding.FieldName = 'TEACHER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'T_NAME'
          end>
        Properties.ListSource = dm.d_TEACHER_LOOK
        Width = 70
      end
      object gridLectureTEACHER_ID2: TcxGridDBColumn
        Caption = #44053#49324#47749'2'
        DataBinding.FieldName = 'TEACHER_ID2'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'T_NAME'
          end>
        Properties.ListSource = dm.d_TEACHER_LOOK
        Width = 70
      end
      object gridLectureTEACHER_ID3: TcxGridDBColumn
        Caption = #44053#49324#47749'3'
        DataBinding.FieldName = 'TEACHER_ID3'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'T_NAME'
          end>
        Properties.ListSource = dm.d_TEACHER_LOOK
        Width = 70
      end
      object gridLectureL_PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'L_PRICE'
        Width = 60
      end
      object gridLectureCLASSROOM_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CLASSROOM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListSource = dm.d_CLASSROOM
      end
      object gridLectureIS_ACTIVE: TcxGridDBColumn
        Caption = #44053#51340#49345#53468
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #44053#51032#51473
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #51333#47308
            Value = 1
          end>
        Width = 60
      end
      object gridLectureL_TIME_START: TcxGridDBColumn
        DataBinding.FieldName = 'L_TIME_START'
        Visible = False
        VisibleForCustomization = False
      end
      object gridLectureL_TIME_END: TcxGridDBColumn
        DataBinding.FieldName = 'L_TIME_END'
        Visible = False
        VisibleForCustomization = False
      end
      object gridLectureREGIST_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'REGIST_MEN'
        Width = 41
      end
      object gridLectureWAIT_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'WAIT_MEN'
        Visible = False
        Width = 41
      end
      object gridLectureDROP_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'DROP_MEN'
        Width = 37
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridLecture
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 864
    Top = 528
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 368
    Top = 472
    object dxMemData1year_month: TStringField
      FieldName = 'year_month'
    end
    object dxMemData1l_name: TStringField
      FieldName = 'l_name'
      Size = 30
    end
    object dxMemData1weekday: TStringField
      FieldName = 'weekday'
    end
    object dxMemData1l_hour: TStringField
      DisplayWidth = 15
      FieldName = 'l_hour'
      Size = 15
    end
    object dxMemData1man_cnt: TIntegerField
      FieldName = 'man_cnt'
    end
    object dxMemData1teacher_name: TStringField
      FieldName = 'teacher_name'
      Size = 10
    end
    object dxMemData1teacher_tel: TStringField
      FieldName = 'teacher_tel'
    end
    object dxMemData1l_place: TStringField
      FieldName = 'l_place'
    end
    object dxMemData1dong_jigwi: TStringField
      FieldName = 'dong_jigwi'
    end
    object dxMemData1dong_name: TStringField
      FieldName = 'dong_name'
      Size = 10
    end
    object dxMemData1l_period: TStringField
      FieldName = 'l_period'
      Size = 25
    end
    object dxMemData1user_dong_name: TStringField
      FieldName = 'user_dong_name'
      Size = 10
    end
    object dxMemData1month1: TStringField
      FieldName = 'month1'
      Size = 10
    end
    object dxMemData1month2: TStringField
      FieldName = 'month2'
      Size = 10
    end
    object dxMemData1month3: TStringField
      FieldName = 'month3'
      Size = 10
    end
    object dxMemData1line_limit: TIntegerField
      FieldName = 'line_limit'
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42072.920026504600000000
    ReportOptions.LastChange = 43773.538798587960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 376
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Color = clNone
      object Shape3: TfrxShapeView
        Left = 3.779530000000000000
        Top = 146.401670000000000000
        Width = 90.708720000000000000
        Height = 110.740157480000000000
        Fill.BackColor = clBtnFace
        Frame.Color = clNone
      end
      object Shape6: TfrxShapeView
        Left = 1.559060000000000000
        Top = 267.126160000000000000
        Width = 714.331170000000000000
        Height = 35.149557480000000000
        Fill.BackColor = clBtnFace
        Frame.Color = clNone
      end
      object Shape5: TfrxShapeView
        Left = 454.323130000000000000
        Top = 77.370130000000000000
        Width = 36.661417322834650000
        Height = 68.031496062992130000
        Fill.BackColor = clBtnFace
        Frame.Color = clNone
      end
      object Shape4: TfrxShapeView
        Left = 491.677490000000000000
        Top = 77.149660000000000000
        Width = 222.992270000000000000
        Height = 23.810967480000000000
        Fill.BackColor = clBtnFace
        Frame.Color = clNone
      end
      object Shape1: TfrxShapeView
        Left = 2.000000000000000000
        Top = 74.370130000000000000
        Width = 714.331170000000000000
        Height = 185.196970000000000000
        Frame.Style = fsDouble
      end
      object Memo1: TfrxMemoView
        Left = 61.708720000000000000
        Top = 84.354360000000000000
        Width = 230.551330000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = #55092#47676#46181#44540#54756#46300#46972#51064
        Font.Style = []
        Memo.UTF8W = (
          #54532#47196#44536#47016' '#50868#50689#51068#51648)
        ParentFont = False
      end
      object frxDBDataset1year_month: TfrxMemoView
        Left = 84.622140000000000000
        Top = 117.047310000000000000
        Width = 158.740260000000000000
        Height = 22.677180000000000000
        DataField = 'year_month'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."year_month"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 14.133890000000000000
        Top = 168.858380000000000000
        Width = 68.031540000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44053#51340#47749)
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 303.921460000000000000
        Top = 146.858380000000000000
        Width = 60.472480000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          #50868#50689
          #49884#44036)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Left = 593.590910000000000000
        Top = 211.212740000000000000
        Width = 49.133890000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          #49688#44053#51064#50896)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 14.133890000000000000
        Top = 221.771800000000000000
        Width = 68.031540000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44053#49324#47749)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 233.921460000000000000
        Top = 210.771800000000000000
        Width = 68.031540000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          #50672#46973#52376)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 531.134200000000000000
        Top = 146.519790000000000000
        Width = 49.133890000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          #44053#51032
          #51109#49548)
        ParentFont = False
        VAlign = vaCenter
      end
      object Line1: TfrxLineView
        Left = 4.795300000000000000
        Top = 210.433210000000000000
        Width = 710.551640000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line2: TfrxLineView
        Left = 93.842610000000000000
        Top = 146.181200000000000000
        Height = 111.496062992126000000
        Color = clBlack
        Diagonal = True
      end
      object Line3: TfrxLineView
        Left = 302.362400000000000000
        Top = 146.181200000000000000
        Height = 111.496062992126000000
        Color = clBlack
        Diagonal = True
      end
      object Line4: TfrxLineView
        Left = 364.968770000000000000
        Top = 146.181200000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line5: TfrxLineView
        Left = 580.283860000000000000
        Top = 146.181200000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line6: TfrxLineView
        Left = 233.874150000000000000
        Top = 210.433210000000000000
        Height = 47.244094490000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line7: TfrxLineView
        Left = 452.779840000000000000
        Top = 210.433210000000000000
        Height = 47.244094488188980000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object frxDBDataset1l_name: TfrxMemoView
        Left = 102.047310000000000000
        Top = 168.858380000000000000
        Width = 192.756030000000000000
        Height = 18.897650000000000000
        DataField = 'l_name'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."l_name"]')
        ParentFont = False
      end
      object frxDBDataset1weekday: TfrxMemoView
        Left = 418.543600000000000000
        Top = 154.519790000000000000
        Width = 102.047310000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."weekday"]'#50836#51068)
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 371.409710000000000000
        Top = 154.740260000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #47588#51452)
        ParentFont = False
      end
      object frxDBDataset1l_hour: TfrxMemoView
        Left = 371.409710000000000000
        Top = 180.976500000000000000
        Width = 154.960730000000000000
        Height = 18.897650000000000000
        DataField = 'l_hour'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."l_hour"]')
        ParentFont = False
      end
      object frxDBDataset1man_cnt: TfrxMemoView
        Left = 650.858690000000000000
        Top = 221.771800000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Visible = False
        DataField = 'man_cnt'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."man_cnt"]')
        ParentFont = False
      end
      object frxDBDataset1teacher_name: TfrxMemoView
        Left = 101.047310000000000000
        Top = 215.771800000000000000
        Width = 128.504020000000000000
        Height = 37.795300000000000000
        DataField = 'teacher_name'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."teacher_name"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset1teacher_tel: TfrxMemoView
        Left = 309.921460000000000000
        Top = 221.771800000000000000
        Width = 136.063080000000000000
        Height = 22.677180000000000000
        DataField = 'teacher_tel'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."teacher_tel"]')
        ParentFont = False
      end
      object frxDBDataset1l_place: TfrxMemoView
        Left = 586.386210000000000000
        Top = 157.519790000000000000
        Width = 120.944960000000000000
        Height = 41.574830000000000000
        DataField = 'l_place'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."l_place"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Shape2: TfrxShapeView
        Left = 1.000000000000000000
        Top = 266.464750000000000000
        Width = 714.331170000000000000
        Height = 744.567410000000000000
        Frame.Width = 1.500000000000000000
      end
      object Line9: TfrxLineView
        Left = 2.000000000000000000
        Top = 303.260050000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo10: TfrxMemoView
        Left = 4.559060000000000000
        Top = 275.472440940000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #51068#51088)
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 98.149660000000000000
        Top = 275.472440940000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #44053#51032#49884#44036)
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 226.417440000000000000
        Top = 275.472440940000000000
        Width = 200.315090000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #51452'  '#50836'  '#45236'  '#50857)
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 485.645950000000000000
        Top = 275.472440940000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #52636#49437#51064#50896)
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 643.386210000000000000
        Top = 275.472440940000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #44053#49324#54869#51064)
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 568.401980000000000000
        Top = 275.472440940000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #53945#51060#49324#54637)
        ParentFont = False
      end
      object Line10: TfrxLineView
        Left = 638.622450000000000000
        Top = 266.464750000000000000
        Height = 744.567410000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line11: TfrxLineView
        Left = 561.134200000000000000
        Top = 266.464750000000000000
        Height = 744.567410000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line12: TfrxLineView
        Left = 482.645950000000000000
        Top = 266.464750000000000000
        Height = 744.567410000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line13: TfrxLineView
        Left = 47.590600000000000000
        Top = 266.464750000000000000
        Height = 744.567410000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line14: TfrxLineView
        Left = 177.078850000000000000
        Top = 266.464750000000000000
        Height = 744.567410000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line15: TfrxLineView
        Left = 1.889763780000000000
        Top = 348.850650000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line16: TfrxLineView
        Left = 1.889763780000000000
        Top = 397.543600000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line17: TfrxLineView
        Left = 1.889763780000000000
        Top = 445.236550000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line18: TfrxLineView
        Left = 1.889763780000000000
        Top = 491.929500000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line19: TfrxLineView
        Left = 1.889763780000000000
        Top = 537.622450000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line20: TfrxLineView
        Left = 1.889763780000000000
        Top = 585.315400000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line21: TfrxLineView
        Left = 1.889763780000000000
        Top = 633.008350000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Left = 1.889763780000000000
        Top = 680.701300000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Left = 1.889763780000000000
        Top = 727.394250000000000000
        Width = 712.440944880000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line24: TfrxLineView
        Top = 774.024120000000000000
        Width = 714.330708661417000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line25: TfrxLineView
        Top = 822.717070000000000000
        Width = 714.330708661417000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Top = 869.410020000000000000
        Width = 714.330708661417000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Top = 918.102970000000000000
        Width = 714.330708660000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line28: TfrxLineView
        Left = 94.488250000000000000
        Top = 265.567100000000000000
        Height = 744.567410000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo16: TfrxMemoView
        Left = 48.913420000000000000
        Top = 275.472440940000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #54924#52264)
        ParentFont = False
      end
      object Line29: TfrxLineView
        Left = 3.779530000000000000
        Top = 145.842610000000000000
        Width = 710.551640000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line8: TfrxLineView
        Left = 529.134200000000000000
        Top = 146.401670000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line30: TfrxLineView
        Left = 594.047620000000000000
        Top = 209.874150000000000000
        Height = 47.244094488188980000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line31: TfrxLineView
        Left = 642.520100000000000000
        Top = 210.653680000000000000
        Height = 47.244094488188980000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo17: TfrxMemoView
        Left = 454.323130000000000000
        Top = 211.433210000000000000
        Width = 52.913420000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          #44053#51032
          #54943#49688)
        ParentFont = False
        VAlign = vaCenter
      end
      object Line32: TfrxLineView
        Left = 506.457020000000000000
        Top = 209.874150000000000000
        Height = 47.244094488188980000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line33: TfrxLineView
        Left = 453.953000000000000000
        Top = 76.590600000000000000
        Height = 69.165354330708660000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line34: TfrxLineView
        Left = 491.748300000000000000
        Top = 76.590600000000000000
        Height = 69.165354330708660000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line35: TfrxLineView
        Left = 643.520100000000000000
        Top = 76.590600000000000000
        Height = 69.165354330708660000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line36: TfrxLineView
        Left = 566.929500000000000000
        Top = 76.590600000000000000
        Height = 69.165354330708660000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line37: TfrxLineView
        Left = 493.118430000000000000
        Top = 102.047310000000000000
        Width = 222.992270000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo18: TfrxMemoView
        Left = 464.102660000000000000
        Top = 92.929190000000000000
        Width = 18.897650000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          #54869
          #51064)
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 499.118430000000000000
        Top = 80.370130000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #45812#45817#51088)
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 574.488560000000000000
        Top = 80.370130000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48512#54924#51109)
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 649.299630000000000000
        Top = 80.370130000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54924' '#51109)
        ParentFont = False
      end
      object Line38: TfrxLineView
        Top = 963.780150000000000000
        Width = 714.330708660000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'year_month=year_month'
      'l_name=l_name'
      'weekday=weekday'
      'l_hour=l_hour'
      'man_cnt=man_cnt'
      'teacher_name=teacher_name'
      'teacher_tel=teacher_tel'
      'l_place=l_place'
      'dong_jigwi=dong_jigwi'
      'dong_name=dong_name'
      'l_period=l_period'
      'user_dong_name=user_dong_name'
      'month1=month1'
      'month2=month2'
      'month3=month3'
      'line_limit=line_limit')
    DataSet = dxMemData1
    BCDToCurrency = False
    Left = 368
    Top = 424
  end
  object q_teacher: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select t_name, t_tel from teacher'
      'where id = :t_id')
    Left = 416
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 't_id'
        ParamType = ptInput
      end>
    object q_teacherT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object q_teacherT_TEL: TStringField
      FieldName = 'T_TEL'
      Size = 30
    end
  end
  object d_teacher: TDataSource
    DataSet = q_teacher
    Left = 416
    Top = 216
  end
  object q_classroom: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select c_name from classroom where id = :c_id')
    Left = 512
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'c_id'
        ParamType = ptInput
      end>
    object q_classroomC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 30
    end
  end
  object d_classroom: TDataSource
    DataSet = q_classroom
    Left = 512
    Top = 216
  end
  object dxMemData2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 496
    Top = 472
    object dxMemData2l_student: TStringField
      FieldName = 'l_student'
      Size = 10
    end
    object dxMemData2l_tel: TStringField
      FieldName = 'l_tel'
    end
    object dxMemData2seq_no: TIntegerField
      FieldName = 'seq_no'
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'l_student=l_student'
      'l_tel=l_tel'
      'seq_no=seq_no')
    DataSet = dxMemData2
    BCDToCurrency = False
    Left = 496
    Top = 424
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
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LECTURE_STUDENT_REQUEST_VIEW'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from LECTURE_STUDENT_REQUEST_VIEW'
      'where lecture_id = :lecture_id and l_year = :l_year '
      'and l_step = :l_step')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 144
    Top = 312
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
      FieldName = 'L_YEAR'
    end
    object q_REQUEST_VIEWL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object q_REQUEST_VIEWL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWL_TIME_WEEK: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object q_REQUEST_VIEWL_DAYS: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_REQUEST_VIEWL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object q_REQUEST_VIEWCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_REQUEST_VIEWIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object q_REQUEST_VIEWLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_REQUEST_VIEWSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object q_REQUEST_VIEWPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_REQUEST_VIEWS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_REQUEST_VIEWS_KIND: TSmallintField
      FieldName = 'S_KIND'
    end
    object q_REQUEST_VIEWS_SEX: TStringField
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_REQUEST_VIEWT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object q_REQUEST_VIEWT_SEX: TStringField
      FieldName = 'T_SEX'
      Size = 4
    end
    object q_REQUEST_VIEWT_TEL: TStringField
      FieldName = 'T_TEL'
      Size = 30
    end
    object q_REQUEST_VIEWBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object q_REQUEST_VIEWBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
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
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWREG_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_KIND'
    end
    object q_REQUEST_VIEWS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWPAY_WAY: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PAY_WAY'
    end
    object q_REQUEST_VIEWPAYBACK_WAY: TSmallintField
      FieldName = 'PAYBACK_WAY'
    end
    object q_REQUEST_VIEWPAYBACK_BANK: TStringField
      FieldName = 'PAYBACK_BANK'
    end
    object q_REQUEST_VIEWPAYBACK_BANKID: TStringField
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object q_REQUEST_VIEWOUT_KIND: TSmallintField
      FieldName = 'OUT_KIND'
    end
    object q_REQUEST_VIEWS_ADDR: TStringField
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_REQUEST_VIEWSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWP_DATE: TStringField
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWR_DATE: TStringField
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_REQUEST_VIEWL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
    object q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField
      FieldName = 'PAYBACK_BANKOWNER'
      Size = 30
    end
    object q_REQUEST_VIEWREG_MONTH: TSmallintField
      FieldName = 'REG_MONTH'
    end
    object q_REQUEST_VIEWREG_MONTH2: TSmallintField
      FieldName = 'REG_MONTH2'
    end
    object q_REQUEST_VIEWREG_MONTH3: TSmallintField
      FieldName = 'REG_MONTH3'
    end
    object q_REQUEST_VIEWOUT_MONTH: TSmallintField
      FieldName = 'OUT_MONTH'
    end
    object q_REQUEST_VIEWOUT_MONTH2: TSmallintField
      FieldName = 'OUT_MONTH2'
    end
    object q_REQUEST_VIEWOUT_MONTH3: TSmallintField
      FieldName = 'OUT_MONTH3'
    end
    object q_REQUEST_VIEWREG_PRICE1: TFloatField
      FieldName = 'REG_PRICE1'
    end
    object q_REQUEST_VIEWREG_PRICE2: TFloatField
      FieldName = 'REG_PRICE2'
    end
    object q_REQUEST_VIEWREG_PRICE3: TFloatField
      FieldName = 'REG_PRICE3'
    end
    object q_REQUEST_VIEWOUT_PRICE1: TFloatField
      FieldName = 'OUT_PRICE1'
    end
    object q_REQUEST_VIEWOUT_PRICE2: TFloatField
      FieldName = 'OUT_PRICE2'
    end
    object q_REQUEST_VIEWOUT_PRICE3: TFloatField
      FieldName = 'OUT_PRICE3'
    end
  end
  object d_REQUEST_VIEW: TDataSource
    DataSet = q_REQUEST_VIEW
    Left = 144
    Top = 360
  end
  object q_LECTURE_ATTEND_DAY: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_ATTENDANCE_DAY'
      '  (ID, LECTURE_ID, A_DATE)'
      'VALUES'
      '  (:ID, :LECTURE_ID, :A_DATE)')
    SQLDelete.Strings = (
      'DELETE FROM LECTURE_ATTENDANCE_DAY'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LECTURE_ATTENDANCE_DAY'
      'SET'
      '  ID = :ID, LECTURE_ID = :LECTURE_ID, A_DATE = :A_DATE'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LECTURE_ATTENDANCE_DAY'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, LECTURE_ID, A_DATE FROM LECTURE_ATTENDANCE_DAY'
      'WHERE'
      '  ID = :P_1_ID')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from LECTURE_ATTENDANCE_DAY'
      
        'where lecture_id = :lecture_id and Extract(YEAR from A_DATE) = :' +
        'L_YEAR and Extract(MONTH from A_DATE) = :L_MONTH'
      'order by LECTURE_ID, A_DATE')
    Left = 144
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'lecture_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_MONTH'
        ParamType = ptInput
      end>
    object q_LECTURE_ATTEND_DAYID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LECTURE_ATTEND_DAYLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_LECTURE_ATTEND_DAYA_DATE: TDateField
      FieldName = 'A_DATE'
    end
  end
  object d_LECTURE_ATTEND_DAY: TDataSource
    DataSet = q_LECTURE_ATTEND_DAY
    Left = 144
    Top = 464
  end
  object dxMemData3: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F0C00000002000000010009006461795F7374723100
      02000000010009006461795F737472320002000000010009006461795F737472
      330002000000010009006461795F737472340002000000010009006461795F73
      7472350006000000010009006461795F73747236000200000001000900646179
      5F737472370002000000010009006461795F7374723800020000000100090064
      61795F73747239000200000001000A006461795F737472313000020000000100
      0A006461795F7374723131000200000001000A006461795F7374723132000101
      000000310000000000000000000000}
    SortOptions = []
    Left = 624
    Top = 472
    object dxMemData3day_str1: TStringField
      FieldName = 'day_str1'
      Size = 2
    end
    object dxMemData3day_str2: TStringField
      FieldName = 'day_str2'
      Size = 2
    end
    object dxMemData3day_str3: TStringField
      FieldName = 'day_str3'
      Size = 2
    end
    object dxMemData3day_str4: TStringField
      FieldName = 'day_str4'
      Size = 2
    end
    object dxMemData3day_str5: TStringField
      FieldName = 'day_str5'
      Size = 2
    end
    object dxMemData3day_str6: TStringField
      DisplayWidth = 2
      FieldName = 'day_str6'
      Size = 2
    end
    object dxMemData3day_str7: TStringField
      FieldName = 'day_str7'
      Size = 2
    end
    object dxMemData3day_str8: TStringField
      FieldName = 'day_str8'
      Size = 2
    end
    object dxMemData3day_str9: TStringField
      FieldName = 'day_str9'
      Size = 2
    end
    object dxMemData3day_str10: TStringField
      FieldName = 'day_str10'
      Size = 2
    end
    object dxMemData3day_str11: TStringField
      FieldName = 'day_str11'
      Size = 2
    end
    object dxMemData3day_str12: TStringField
      FieldName = 'day_str12'
      Size = 2
    end
    object dxMemData3day_str13: TStringField
      FieldName = 'day_str13'
      Size = 2
    end
    object dxMemData3day_str14: TStringField
      FieldName = 'day_str14'
      Size = 2
    end
    object dxMemData3day_str15: TStringField
      FieldName = 'day_str15'
      Size = 2
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'day_str1=day_str1'
      'day_str2=day_str2'
      'day_str3=day_str3'
      'day_str4=day_str4'
      'day_str5=day_str5'
      'day_str6=day_str6'
      'day_str7=day_str7'
      'day_str8=day_str8'
      'day_str9=day_str9'
      'day_str10=day_str10'
      'day_str11=day_str11'
      'day_str12=day_str12'
      'day_str13=day_str13'
      'day_str14=day_str14'
      'day_str15=day_str15')
    DataSet = dxMemData3
    BCDToCurrency = False
    Left = 624
    Top = 424
  end
  object dxMemData4: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 752
    Top = 472
    object dxMemData4l_name: TStringField
      FieldName = 'l_name'
      Size = 30
    end
    object dxMemData4t_name: TStringField
      FieldName = 't_name'
    end
    object dxMemData4l_days: TIntegerField
      FieldName = 'l_days'
    end
    object dxMemData4year_month: TStringField
      FieldName = 'year_month'
      Size = 15
    end
    object dxMemData4busu_name: TStringField
      FieldName = 'busu_name'
      Size = 30
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'l_name=l_name'
      't_name=t_name'
      'l_days=l_days'
      'year_month=year_month'
      'busu_name=busu_name')
    DataSet = dxMemData4
    BCDToCurrency = False
    Left = 752
    Top = 424
  end
  object frxReport2: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42073.755173078700000000
    ReportOptions.LastChange = 42094.576367187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 496
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 342.078850000000000000
          Top = 13.677180000000000000
          Width = 325.039580000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44053#49324' '#52636#44540#44288#47532#48512)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 66.141732280000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Shape2: TfrxShapeView
          Left = 0.338590000000000000
          Top = 0.779530000000000000
          Width = 1046.929810000000000000
          Height = 64.252010000000000000
        end
        object Line4: TfrxLineView
          Left = 151.732283460000000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 332.323283120000000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 364.920165993809500000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 397.517048867619000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 430.113931741428600000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 462.710814615238100000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 495.307697489047600000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 527.904580362857100000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line41: TfrxLineView
          Left = 560.501463236666700000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 593.098346110476200000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 625.695228984285700000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          Left = 658.292111858095200000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxDBDataset2l_student: TfrxMemoView
          Left = 48.559060000000000000
          Top = 17.338590000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."l_name"]')
          ParentFont = False
        end
        object frxDBDataset2l_tel: TfrxMemoView
          Left = 160.047310000000000000
          Top = 4.338590000000000000
          Width = 56.692950000000000000
          Height = 56.692950000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."t_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Left = 221.976500000000000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 264.758761040000000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 41.716513460000000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxDBDataset2seq_no: TfrxMemoView
          Left = 5.559060000000000000
          Top = 17.338590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'RecId'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."RecId"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 690.888994731904800000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 723.485877605714300000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 756.082760479523800000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 788.679643353333300000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 821.276526227142900000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 853.873409100952400000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          Left = 886.470291974761900000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          Left = 919.067174848571400000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line50: TfrxLineView
          Left = 951.664057722381000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line52: TfrxLineView
          Left = 984.260940596190500000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 264.779530000000000000
          Top = 34.015770000000000000
          Width = 780.472458030000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 269.126160000000000000
          Top = 9.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          Memo.UTF8W = (
            #44053#49324#49436#47749)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 268.346630000000000000
          Top = 40.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54869#51064#51088)
          ParentFont = False
        end
        object frxDBDataset4l_days: TfrxMemoView
          Left = 227.110390000000000000
          Top = 22.677180000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'l_days'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."l_days"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 1016.857823470000000000
          Top = 0.488250000000000000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 396.850650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 939.559680000000000000
          Top = 1.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 107.716557400000000000
        Top = 98.267780000000000000
        Width = 1046.929810000000000000
        object frxDBDataset1l_name: TfrxMemoView
          Left = 21.677180000000000000
          Top = 8.850340000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset4."busu_name"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 0.377952760000000000
          Top = 34.527520000000000000
          Width = 1046.929810000000000000
          Height = 71.811045590000000000
        end
        object Line1: TfrxLineView
          Left = 151.590600000000000000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo4: TfrxMemoView
          Left = 163.779530000000000000
          Top = 59.488088900000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #44053#49324#47749)
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 332.301858760000000000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 364.891940247619000000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 397.482021735238100000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 430.072103222857100000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 462.662184710476200000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 495.252266198095200000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 527.842347685714300000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 560.432429173333300000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 593.022510660952400000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 625.612592148571400000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 658.202673636190500000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 58.385900000000000000
          Top = 59.488088900000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #44053#51340#47749)
          ParentFont = False
        end
        object frxDBDataset1year_month: TfrxMemoView
          Left = 868.811380000000000000
          Top = 9.070810000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."year_month"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 221.976500000000000000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 264.751619590000000000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 41.574830000000000000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo5: TfrxMemoView
          Left = 9.779530000000000000
          Top = 59.488088900000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 690.792755123809500000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 723.382836611428600000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 755.972918099047600000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 788.562999586666700000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 821.153081074285700000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 853.743162561904800000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Left = 886.333244049523800000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          Left = 918.923325537142900000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line49: TfrxLineView
          Left = 951.513407024761900000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          Left = 984.103488512381000000
          Top = 34.527520000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 266.346630000000000000
          Top = 71.811070000000000000
          Width = 780.472458030000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 226.110390000000000000
          Top = 51.133890000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #50868#50689)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 225.551330000000000000
          Top = 69.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51068#49688)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 283.464750000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #45216#51676)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 283.464750000000000000
          Top = 79.370130000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #50836#51068)
          ParentFont = False
        end
        object Line54: TfrxLineView
          Left = 1016.693570000000000000
          Top = 35.015770000000000000
          Height = 71.811045590000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42073.731508032400000000
    ReportOptions.LastChange = 42073.753718680600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 624
    Top = 376
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
        Left = 226.771800000000000000
        Top = 177.637910000000000000
        Width = 260.787570000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          #52636'  '#49437'  '#48512)
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        Left = 75.590600000000000000
        Top = 378.157700000000000000
        Width = 566.929500000000000000
        Height = 170.078850000000000000
      end
      object Line1: TfrxLineView
        Left = 75.590600000000000000
        Top = 434.850650000000000000
        Width = 566.929500000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line2: TfrxLineView
        Left = 75.590600000000000000
        Top = 491.543600000000000000
        Width = 566.929500000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line3: TfrxLineView
        Left = 264.567100000000000000
        Top = 378.157700000000000000
        Height = 170.078850000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo2: TfrxMemoView
        Left = 90.267780000000000000
        Top = 394.055350000000000000
        Width = 162.519790000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54532#47196#44536#47016#47749)
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 90.708720000000000000
        Top = 449.968770000000000000
        Width = 162.519790000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44592'      '#44036)
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 90.708720000000000000
        Top = 506.661720000000000000
        Width = 162.519790000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44053'      '#49324)
        ParentFont = False
      end
      object frxDBDataset1l_name: TfrxMemoView
        Left = 275.685220000000000000
        Top = 394.834880000000000000
        Width = 355.275820000000000000
        Height = 30.236240000000000000
        DataField = 'l_name'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."l_name"]')
        ParentFont = False
      end
      object frxDBDataset1l_period: TfrxMemoView
        Left = 272.905690000000000000
        Top = 450.527830000000000000
        Width = 359.055350000000000000
        Height = 30.236240000000000000
        DataField = 'l_period'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."l_period"]')
        ParentFont = False
      end
      object frxDBDataset1teacher_name: TfrxMemoView
        Left = 273.905690000000000000
        Top = 507.441250000000000000
        Width = 359.055350000000000000
        Height = 30.236240000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #48148#53461#52404
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."teacher_name"]([frxDBDataset1."teacher_tel"])')
        ParentFont = False
      end
      object frxDBDataset1user_dong_name: TfrxMemoView
        Left = 75.590600000000000000
        Top = 797.480830000000000000
        Width = 566.929500000000000000
        Height = 49.133890000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -37
        Font.Name = #48148#53461#52404
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."user_dong_name"] '#51452#48124#51088#52824#49468#53552)
        ParentFont = False
      end
    end
  end
  object frxReport4: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42073.755173078700000000
    ReportOptions.LastChange = 42098.627155787000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 752
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 37.795275590551200000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object frxDBDataset2l_student: TfrxMemoView
          Left = 41.559060000000000000
          Width = 79.370130000000000000
          Height = 37.795275590000000000
          DataField = 'l_student'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."l_student"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2l_tel: TfrxMemoView
          Left = 121.047310000000000000
          Width = 109.606370000000000000
          Height = 37.795275590000000000
          DataField = 'l_tel'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."l_tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2seq_no: TfrxMemoView
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          DataField = 'seq_no'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."seq_no"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 231.330860000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 265.346630000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 299.362400000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 333.378170000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 367.393940000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 401.409710000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 435.425480000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 469.441250000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 503.457020000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 537.472790000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 571.488560000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 605.504330000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 639.520100000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 673.535870000000000000
          Width = 41.574830000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 170.078740160000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 263.567100000000000000
          Top = 60.984230000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #52636'  '#49437'  '#48512)
          ParentFont = False
        end
        object frxDBDataset1l_name: TfrxMemoView
          Left = 76.370130000000000000
          Top = 56.716450000000000000
          Width = 173.858380000000000000
          Height = 37.795300000000000000
          DataField = 'l_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."l_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 41.559060000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49457#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 121.047310000000000000
          Top = 132.283550000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1year_month: TfrxMemoView
          Left = 268.008040000000000000
          Top = 102.291280000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'year_month'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."year_month"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 132.283550000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 231.330860000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 265.346630000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 299.362400000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 333.378170000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 367.393940000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 401.409710000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 435.425480000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 469.441250000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 503.457020000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 537.472790000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 571.488560000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 605.504330000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 639.520100000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 673.535870000000000000
          Top = 132.283550000000000000
          Width = 41.574830000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1teacher_name: TfrxMemoView
          Left = 76.370130000000000000
          Top = 94.267780000000000000
          Width = 173.858380000000000000
          Height = 34.015770000000000000
          DataField = 'teacher_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #48148#53461#52404
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."teacher_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #48148#53461#52404
          Font.Style = []
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44053#51340#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #48148#53461#52404
          Font.Style = []
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44053#49324#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Top = 56.692950000000000000
          Width = 253.228510000000000000
          Height = 71.811070000000000000
        end
        object Line5: TfrxLineView
          Left = 75.590600000000000000
          Top = 56.692950000000000000
          Height = 71.811070000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Top = 94.488250000000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Left = 715.086614173228300000
          Top = 132.283550000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
end
