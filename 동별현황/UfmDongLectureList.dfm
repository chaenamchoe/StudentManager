object fmDongLectureList: TfmDongLectureList
  Left = 0
  Top = 0
  Caption = #44053#51340#54788#54889
  ClientHeight = 667
  ClientWidth = 1030
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1030
    Height = 638
    Align = alClient
    TabOrder = 0
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
      DataController.DataSource = d_LECTURE
      DataController.Filter.AutoDataSetFilter = True
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
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
      object gridLectureDONG_ID: TcxGridDBColumn
        Caption = #46041#47749
        DataBinding.FieldName = 'DONG_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DONG'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dm.d_DONG_CODE
        Width = 89
      end
      object gridLectureL_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'L_YEAR'
        Width = 50
      end
      object gridLectureL_STEP: TcxGridDBColumn
        Caption = #48516#44592
        DataBinding.FieldName = 'L_STEP'
        Width = 40
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
        Caption = #44053#51032#51068
        DataBinding.FieldName = 'TOTAL_DAY'
        Width = 45
      end
      object gridLectureTOTAL_TIME: TcxGridDBColumn
        Caption = #52509#49884#44036
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
        Properties.ListSource = dm.d_classroom_look
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
        Width = 41
      end
      object gridLectureDROP_MEN: TcxGridDBColumn
        Caption = #53748#44053
        DataBinding.FieldName = 'DROP_MEN'
        Width = 37
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridLecture
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1030
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 33
      Height = 13
      Caption = #45380#46020':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 112
      Top = 7
      Width = 33
      Height = 13
      Caption = #48516#44592':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 241
      Top = 8
      Width = 33
      Height = 13
      Caption = #46041#47749':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object speYear: TSpinEdit
      Left = 52
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2013
    end
    object speStep: TSpinEdit
      Left = 148
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 4
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnRetrieve: TBitBtn
      Left = 389
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
      TabOrder = 2
      OnClick = btnRetrieveClick
    end
    object chkFilter: TCheckBox
      Left = 479
      Top = 7
      Width = 51
      Height = 17
      Caption = #54596#53552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object chkGroup: TCheckBox
      Left = 537
      Top = 7
      Width = 51
      Height = 17
      Caption = #44536#47353
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object btnExport: TBitBtn
      Left = 776
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
      TabOrder = 5
      OnClick = btnExportClick
    end
    object btnPrint: TBitBtn
      Left = 875
      Top = 2
      Width = 78
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
      TabOrder = 6
      OnClick = btnPrintClick
    end
    object speStep2: TSpinEdit
      Left = 192
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 4
      MinValue = 1
      TabOrder = 7
      Value = 1
    end
    object cbDong: TcxLookupComboBox
      Left = 276
      Top = 4
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DONG'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_DONG_CODE
      EditValue = ''
      TabOrder = 8
      Width = 112
    end
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
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41974.426694444450000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#51340#46321#47197#54788#54889
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
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
  object q_LECTURE: TUniQuery
    UpdatingTable = 'LECTURE_ACTIVE'
    KeyFields = 'id'
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_ACTIVE'
      
        '  (ID, DONG_ID, L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_M' +
        'ONTH, START_DATE, TEACHER_ID, L_PRICE, CLASSROOM_ID, IS_ACTIVE, ' +
        'L_DURATION, L_TIME, L_TIME_START, L_TIME_END, END_DATE, PLAN_MEN' +
        ', REGIST_MEN, WAIT_MEN, DROP_MEN, TOTAL_DAY, TOTAL_TIME)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DA' +
        'YS, :L_MONTH, :START_DATE, :TEACHER_ID, :L_PRICE, :CLASSROOM_ID,' +
        ' :IS_ACTIVE, :L_DURATION, :L_TIME, :L_TIME_START, :L_TIME_END, :' +
        'END_DATE, :PLAN_MEN, :REGIST_MEN, :WAIT_MEN, :DROP_MEN, :TOTAL_D' +
        'AY, :TOTAL_TIME)')
    SQLDelete.Strings = (
      'DELETE FROM LECTURE_ACTIVE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LECTURE_ACTIVE'
      'SET'
      
        '  ID = :ID, DONG_ID = :DONG_ID, L_YEAR = :L_YEAR, L_STEP = :L_ST' +
        'EP, L_NAME = :L_NAME, L_TIME_WEEK = :L_TIME_WEEK, L_DAYS = :L_DA' +
        'YS, L_MONTH = :L_MONTH, START_DATE = :START_DATE, TEACHER_ID = :' +
        'TEACHER_ID, L_PRICE = :L_PRICE, CLASSROOM_ID = :CLASSROOM_ID, IS' +
        '_ACTIVE = :IS_ACTIVE, L_DURATION = :L_DURATION, L_TIME = :L_TIME' +
        ', L_TIME_START = :L_TIME_START, L_TIME_END = :L_TIME_END, END_DA' +
        'TE = :END_DATE, PLAN_MEN = :PLAN_MEN, REGIST_MEN = :REGIST_MEN, ' +
        'WAIT_MEN = :WAIT_MEN, DROP_MEN = :DROP_MEN, TOTAL_DAY = :TOTAL_D' +
        'AY, TOTAL_TIME = :TOTAL_TIME'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LECTURE_ACTIVE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, DONG_ID, L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS,' +
        ' L_MONTH, START_DATE, TEACHER_ID, L_PRICE, CLASSROOM_ID, IS_ACTI' +
        'VE, L_DURATION, L_TIME, L_TIME_START, L_TIME_END, END_DATE, PLAN' +
        '_MEN, REGIST_MEN, WAIT_MEN, DROP_MEN, TOTAL_DAY, TOTAL_TIME FROM' +
        ' LECTURE_ACTIVE'
      'WHERE'
      '  ID = :ID')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from LECTURE_ACTIVE'
      
        'where dong_id like :dong_id and l_year = :l_year and l_step >= :' +
        'l_step1 and l_step <= :l_step2'
      'order by dong_id, l_name, l_step')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    IndexFieldNames = 'L_NAME'
    Left = 256
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_year'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'l_step1'
      end
      item
        DataType = ftUnknown
        Name = 'l_step2'
      end>
    object q_LECTUREID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LECTUREDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_LECTUREL_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'L_YEAR'
    end
    object q_LECTUREL_STEP: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44592#49688
      FieldName = 'L_STEP'
    end
    object q_LECTUREL_NAME: TStringField
      DisplayLabel = #44053#51340#47749
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_LECTUREL_TIME_WEEK: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54924#49688'/'#51452
      FieldName = 'L_TIME_WEEK'
    end
    object q_LECTUREL_DAYS: TStringField
      DisplayLabel = #50836#51068
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_LECTUREL_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44060#50900#49688
      FieldName = 'L_MONTH'
    end
    object q_LECTURETEACHER_ID: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_LECTUREL_PRICE: TFloatField
      DisplayLabel = #44053#51032#47308
      FieldName = 'L_PRICE'
      DisplayFormat = '#,'
    end
    object q_LECTURECLASSROOM_ID: TStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_LECTUREIS_ACTIVE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_ACTIVE'
    end
    object q_LECTUREL_DURATION: TStringField
      DisplayLabel = #44053#51340#49884#44036
      FieldName = 'L_DURATION'
    end
    object q_LECTUREL_TIME: TFloatField
      Alignment = taCenter
      DisplayLabel = #49884#44036
      FieldName = 'L_TIME'
    end
    object q_LECTUREL_TIME_START: TSmallintField
      Alignment = taCenter
      DisplayLabel = #49884#51089#49884#44036
      FieldName = 'L_TIME_START'
    end
    object q_LECTUREL_TIME_END: TSmallintField
      Alignment = taCenter
      DisplayLabel = #45149#49884#44036
      FieldName = 'L_TIME_END'
    end
    object q_LECTUREPLAN_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #51221#50896
      FieldName = 'PLAN_MEN'
    end
    object q_LECTUREREGIST_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #46321#47197
      FieldName = 'REGIST_MEN'
    end
    object q_LECTUREWAIT_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #45824#44592
      FieldName = 'WAIT_MEN'
    end
    object q_LECTUREDROP_MEN: TSmallintField
      Alignment = taCenter
      FieldName = 'DROP_MEN'
    end
    object q_LECTURESTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTUREEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURETOTAL_DAY: TIntegerField
      Alignment = taCenter
      FieldName = 'TOTAL_DAY'
    end
    object q_LECTURETOTAL_TIME: TFloatField
      Alignment = taCenter
      FieldName = 'TOTAL_TIME'
    end
  end
  object d_LECTURE: TDataSource
    DataSet = q_LECTURE
    Left = 256
    Top = 480
  end
end
