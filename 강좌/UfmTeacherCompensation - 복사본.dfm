object fmTeacherCompensation: TfmTeacherCompensation
  Left = 0
  Top = 0
  Caption = #49688#45817#44048#47732#48372#51204#54788#54889
  ClientHeight = 636
  ClientWidth = 985
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
    Width = 985
    Height = 29
    Align = alTop
    TabOrder = 0
    object btnRetrieve: TBitBtn
      Left = 177
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
      Left = 540
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
      OnClick = btnExportClick
    end
    object btnAttendList: TBitBtn
      Left = 639
      Top = 2
      Width = 82
      Height = 25
      Caption = #52636#47141
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
      OnClick = btnAttendListClick
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
      TabOrder = 3
      Visible = False
    end
    inline frmYearMonth1: TfrmYearMonth
      Left = 12
      Top = 4
      Width = 164
      Height = 23
      TabOrder = 4
      ExplicitLeft = 12
      ExplicitTop = 4
      ExplicitWidth = 164
      ExplicitHeight = 23
      inherited cbMonth: TComboBox
        OnChange = frmYearMonth1cbMonthChange
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 985
    Height = 607
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridCompensation: TcxGridDBTableView
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
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0 '#47749
          Kind = skCount
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridCompensationreg_count
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridCompensationdc_count
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridCompensationkind1_cnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridCompensationkind2_cnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridCompensationkind3_cnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridCompensationkind4_cnt
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridCompensationkind5_cnt
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridCompensationtotal_price
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
      object gridCompensationRecId: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'RecId'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 52
      end
      object gridCompensationlecture_id: TcxGridDBColumn
        DataBinding.FieldName = 'lecture_id'
        Visible = False
        Width = 121
      end
      object gridCompensationlecture_name: TcxGridDBColumn
        Caption = #44284#47785#47749
        DataBinding.FieldName = 'lecture_name'
        Width = 157
      end
      object gridCompensationteacher_name: TcxGridDBColumn
        Caption = #44053#49324
        DataBinding.FieldName = 'teacher_name'
        Width = 85
      end
      object gridCompensationreg_count: TcxGridDBColumn
        Caption = #49688#44053#51064#50896
        DataBinding.FieldName = 'reg_count'
        HeaderAlignmentHorz = taCenter
      end
      object gridCompensationdc_count: TcxGridDBColumn
        Caption = #44048#47732#51064#50896
        DataBinding.FieldName = 'dc_count'
        HeaderAlignmentHorz = taCenter
      end
      object gridCompensationkind1_cnt: TcxGridDBColumn
        Caption = #49688#44553#51088
        DataBinding.FieldName = 'kind1_cnt'
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object gridCompensationkind2_cnt: TcxGridDBColumn
        Caption = #50976#44277#51088
        DataBinding.FieldName = 'kind2_cnt'
        HeaderAlignmentHorz = taCenter
        Width = 57
      end
      object gridCompensationkind3_cnt: TcxGridDBColumn
        Caption = #45432#51064
        DataBinding.FieldName = 'kind3_cnt'
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object gridCompensationkind4_cnt: TcxGridDBColumn
        Caption = #51109#50528#51064
        DataBinding.FieldName = 'kind4_cnt'
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
      object gridCompensationkind5_cnt: TcxGridDBColumn
        Caption = #45796#51088#45376
        DataBinding.FieldName = 'kind5_cnt'
        HeaderAlignmentHorz = taCenter
        Width = 57
      end
      object gridCompensationkind_cnt6: TcxGridDBColumn
        Caption = #44592#53440
        DataBinding.FieldName = 'kind_cnt6'
        Visible = False
      end
      object gridCompensationlecture_price: TcxGridDBColumn
        Caption = #49688#44053#47308'('#50900')'
        DataBinding.FieldName = 'lecture_price'
        HeaderAlignmentHorz = taCenter
      end
      object gridCompensationcompan_price: TcxGridDBColumn
        Caption = #48372#51204#44552#50529
        DataBinding.FieldName = 'compan_price'
        HeaderAlignmentHorz = taCenter
      end
      object gridCompensationtotal_price: TcxGridDBColumn
        Caption = #44552#50529
        DataBinding.FieldName = 'total_price'
        HeaderAlignmentHorz = taCenter
        Width = 87
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridCompensation
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
      ReportDocument.CreationDate = 42112.431874803240000000
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
    Left = 296
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptInput
        Size = 17
      end
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
        DataType = ftSmallint
        Name = 'TEACHER_PERCENT'
        ParamType = ptOutput
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
      end>
    CommandStoredProcName = 'SP_GET_COMPANSATION'
  end
  object d_SP_GET_COMPANSATION: TDataSource
    DataSet = SP_GET_COMPANSATION
    Left = 296
    Top = 376
  end
end
