object fmLectureCopy: TfmLectureCopy
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44053#51340#48373#49324
  ClientHeight = 659
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 659
    Align = alLeft
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 479
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 7
        Width = 49
        Height = 13
        Caption = #45380#46020'/'#44592':'
      end
      object speYear: TSpinEdit
        Left = 55
        Top = 4
        Width = 56
        Height = 22
        MaxValue = 9999
        MinValue = 1000
        TabOrder = 0
        Value = 2013
        OnChange = speYearChange
      end
      object speStep: TSpinEdit
        Left = 111
        Top = 4
        Width = 44
        Height = 22
        MaxValue = 9999
        MinValue = 1
        TabOrder = 1
        Value = 1
        OnChange = speStepChange
      end
      object btnRetrieve: TBitBtn
        Left = 156
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
      object btnSelectAll: TBitBtn
        Left = 221
        Top = 2
        Width = 89
        Height = 25
        Caption = #51204#52404#49440#53469
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADA00000DADADADADAD0FFF0ADADADADADA0FFF0D0DADADADAD00000AD0D0DA
          DADAADADADAD00ADADADDA0ADAD000DADADAAD0DADADAD00000000000ADADA05
          5550AD0DADADAD055550DA0ADADADA000000ADADADA000ADADAD00000ADA00DA
          DADA0FFF0DA0A0ADADAD0FFF0A0ADADADADA00000DADADADADAD}
        TabOrder = 3
        OnClick = btnSelectAllClick
      end
      object btnCopy: TBitBtn
        Left = 340
        Top = 2
        Width = 89
        Height = 25
        Caption = #49440#53469#48373#49324
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADA444444444AADADAD4FFFFFFF4DDADADA4F0000
          0F4A0000004FFFFFFF4D0FFFFF4F00000F4A0F00004FFFFFFF4D0FFFFF4F00F4
          444A0F00004FFFF4F4AD0FFFFF4FFFF44ADA0F00F0444444ADAD0FFFF0F0DADA
          DADA0FFFF00DADADADAD000000DADADADADAADADADADADADADAD}
        TabOrder = 4
        OnClick = btnCopyClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 31
      Width = 479
      Height = 627
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
        DataController.DataSource = d_LECTURE_SRC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridLectureL_IDX: TcxGridDBColumn
          Caption = #48264#54840
          DataBinding.FieldName = 'L_IDX'
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
        object gridLectureID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 149
        end
        object gridLectureDONG_ID: TcxGridDBColumn
          DataBinding.FieldName = 'DONG_ID'
          Visible = False
        end
        object gridLectureL_YEAR: TcxGridDBColumn
          DataBinding.FieldName = 'L_YEAR'
          Width = 48
        end
        object gridLectureL_STEP: TcxGridDBColumn
          DataBinding.FieldName = 'L_STEP'
          Width = 37
        end
        object gridLectureL_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'L_NAME'
          Width = 136
        end
        object gridLectureL_TIME_WEEK: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME_WEEK'
          Width = 54
        end
        object gridLectureL_DAYS: TcxGridDBColumn
          DataBinding.FieldName = 'L_DAYS'
          Width = 52
        end
        object gridLectureL_DURATION: TcxGridDBColumn
          DataBinding.FieldName = 'L_DURATION'
          Width = 104
        end
        object gridLectureL_MONTH: TcxGridDBColumn
          DataBinding.FieldName = 'L_MONTH'
          Width = 47
        end
        object gridLectureSTART_DATE: TcxGridDBColumn
          Caption = #49884#51089#51068#51088
          DataBinding.FieldName = 'START_DATE'
          Width = 82
        end
        object gridLectureTEACHER_ID: TcxGridDBColumn
          DataBinding.FieldName = 'TEACHER_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'T_NAME'
            end>
        end
        object gridLectureL_PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'L_PRICE'
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
        end
        object gridLectureL_TIME: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME'
          Visible = False
        end
        object gridLectureL_TIME_START: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME_START'
          Visible = False
        end
        object gridLectureL_TIME_END: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME_END'
          Visible = False
        end
        object gridLectureEND_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'END_DATE'
          Visible = False
        end
        object gridLecturePLAN_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'PLAN_MEN'
          Visible = False
        end
        object gridLectureREGIST_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'REGIST_MEN'
          Visible = False
        end
        object gridLectureWAIT_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'WAIT_MEN'
          Visible = False
        end
        object gridLectureDROP_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'DROP_MEN'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridLecture
      end
    end
  end
  object Panel2: TPanel
    Left = 481
    Top = 0
    Width = 545
    Height = 659
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 543
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 7
        Width = 49
        Height = 13
        Caption = #45380#46020'/'#44592':'
      end
      object speYear2: TSpinEdit
        Left = 58
        Top = 4
        Width = 56
        Height = 22
        MaxValue = 9999
        MinValue = 1000
        TabOrder = 0
        Value = 2013
        OnChange = speYear2Change
      end
      object speStep2: TSpinEdit
        Left = 114
        Top = 4
        Width = 56
        Height = 22
        MaxValue = 9999
        MinValue = 1
        TabOrder = 1
        Value = 1
        OnChange = speStep2Change
      end
      object btnRetrieve2: TBitBtn
        Left = 171
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
        OnClick = btnRetrieve2Click
      end
      object btnSelectAll2: TBitBtn
        Left = 235
        Top = 2
        Width = 89
        Height = 25
        Caption = #51204#52404#49440#53469
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADA00000DADADADADAD0FFF0ADADADADADA0FFF0D0DADADADAD00000AD0D0DA
          DADAADADADAD00ADADADDA0ADAD000DADADAAD0DADADAD00000000000ADADA05
          5550AD0DADADAD055550DA0ADADADA000000ADADADA000ADADAD00000ADA00DA
          DADA0FFF0DA0A0ADADAD0FFF0A0ADADADADA00000DADADADADAD}
        TabOrder = 3
        OnClick = btnSelectAll2Click
      end
      object btnDelSelect: TBitBtn
        Left = 325
        Top = 2
        Width = 100
        Height = 25
        Caption = #49440#53469#49325#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
          DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
          DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
          0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
        TabOrder = 4
        OnClick = btnDelSelectClick
      end
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 31
      Width = 543
      Height = 627
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object gridLecture2: TcxGridDBTableView
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
        DataController.DataSource = d_LECTURE_DEST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridLecture2L_IDX: TcxGridDBColumn
          Caption = #48264#54840
          DataBinding.FieldName = 'L_IDX'
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'DONG_ID'
          Visible = False
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'L_YEAR'
          Width = 50
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'L_STEP'
          Width = 37
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'L_NAME'
          Width = 136
        end
        object cxGridDBColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME_WEEK'
          Width = 54
        end
        object cxGridDBColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'L_DAYS'
          Width = 49
        end
        object cxGridDBColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'L_DURATION'
          Width = 104
        end
        object cxGridDBColumn10: TcxGridDBColumn
          DataBinding.FieldName = 'L_MONTH'
          Width = 47
        end
        object cxGridDBColumn11: TcxGridDBColumn
          Caption = #49884#51089#51068#51088
          DataBinding.FieldName = 'START_DATE'
          Width = 82
        end
        object cxGridDBColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'TEACHER_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'T_NAME'
            end>
        end
        object cxGridDBColumn13: TcxGridDBColumn
          DataBinding.FieldName = 'L_PRICE'
        end
        object cxGridDBColumn14: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSROOM_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'C_NAME'
            end>
          Properties.ListSource = dm.d_CLASSROOM
        end
        object cxGridDBColumn15: TcxGridDBColumn
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
        end
        object gridLecture2L_TIME: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME'
          Visible = False
        end
        object gridLecture2L_TIME_START: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME_START'
          Visible = False
        end
        object gridLecture2L_TIME_END: TcxGridDBColumn
          DataBinding.FieldName = 'L_TIME_END'
          Visible = False
        end
        object gridLecture2END_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'END_DATE'
          Visible = False
        end
        object gridLecture2PLAN_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'PLAN_MEN'
          Visible = False
        end
        object gridLecture2REGIST_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'REGIST_MEN'
          Visible = False
        end
        object gridLecture2WAIT_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'WAIT_MEN'
          Visible = False
        end
        object gridLecture2DROP_MEN: TcxGridDBColumn
          DataBinding.FieldName = 'DROP_MEN'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gridLecture2
      end
    end
  end
  object q_LECTURE_SRC: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_ACTIVE'
      
        '  (ID, DONG_ID, L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_M' +
        'ONTH, START_DATE, TEACHER_ID, L_PRICE, CLASSROOM_ID, IS_ACTIVE, ' +
        'L_DURATION, L_TIME, L_TIME_START, L_TIME_END, END_DATE, PLAN_MEN' +
        ', REGIST_MEN, WAIT_MEN, DROP_MEN, TOTAL_DAY, TOTAL_TIME, TEACHER' +
        '_PERCENT, CALC_KIND, MONTH1_DAYS, MONTH2_DAYS, MONTH3_DAYS, L_ID' +
        'X, L_UID, MONTH1_PRICE, MONTH2_PRICE, MONTH3_PRICE)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DA' +
        'YS, :L_MONTH, :START_DATE, :TEACHER_ID, :L_PRICE, :CLASSROOM_ID,' +
        ' :IS_ACTIVE, :L_DURATION, :L_TIME, :L_TIME_START, :L_TIME_END, :' +
        'END_DATE, :PLAN_MEN, :REGIST_MEN, :WAIT_MEN, :DROP_MEN, :TOTAL_D' +
        'AY, :TOTAL_TIME, :TEACHER_PERCENT, :CALC_KIND, :MONTH1_DAYS, :MO' +
        'NTH2_DAYS, :MONTH3_DAYS, :L_IDX, :L_UID, :MONTH1_PRICE, :MONTH2_' +
        'PRICE, :MONTH3_PRICE)')
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
        'AY, TOTAL_TIME = :TOTAL_TIME, TEACHER_PERCENT = :TEACHER_PERCENT' +
        ', CALC_KIND = :CALC_KIND, MONTH1_DAYS = :MONTH1_DAYS, MONTH2_DAY' +
        'S = :MONTH2_DAYS, MONTH3_DAYS = :MONTH3_DAYS, L_IDX = :L_IDX, L_' +
        'UID = :L_UID, MONTH1_PRICE = :MONTH1_PRICE, MONTH2_PRICE = :MONT' +
        'H2_PRICE, MONTH3_PRICE = :MONTH3_PRICE'
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
        '_MEN, REGIST_MEN, WAIT_MEN, DROP_MEN, TOTAL_DAY, TOTAL_TIME, TEA' +
        'CHER_PERCENT, CALC_KIND, MONTH1_DAYS, MONTH2_DAYS, MONTH3_DAYS, ' +
        'L_IDX, L_UID, MONTH1_PRICE, MONTH2_PRICE, MONTH3_PRICE FROM LECT' +
        'URE_ACTIVE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LECTURE_ACTIVE'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from LECTURE_ACTIVE'
      'where l_year = :l_year and l_step = :l_step'
      'order by l_idx')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 120
    Top = 408
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
    object q_LECTURE_SRCID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LECTURE_SRCDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_LECTURE_SRCL_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'L_YEAR'
    end
    object q_LECTURE_SRCL_STEP: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44592#49688
      FieldName = 'L_STEP'
    end
    object q_LECTURE_SRCL_NAME: TStringField
      DisplayLabel = #44053#51340#47749
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_LECTURE_SRCL_TIME_WEEK: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54924#49688'/'#51452
      FieldName = 'L_TIME_WEEK'
    end
    object q_LECTURE_SRCL_DAYS: TStringField
      DisplayLabel = #50836#51068
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_LECTURE_SRCL_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44060#50900#49688
      FieldName = 'L_MONTH'
    end
    object q_LECTURE_SRCTEACHER_ID: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_LECTURE_SRCL_PRICE: TFloatField
      DisplayLabel = #44053#51032#47308
      FieldName = 'L_PRICE'
      DisplayFormat = '#,'
    end
    object q_LECTURE_SRCCLASSROOM_ID: TStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_LECTURE_SRCIS_ACTIVE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = #49345#53468
      FieldName = 'IS_ACTIVE'
    end
    object q_LECTURE_SRCL_DURATION: TStringField
      DisplayLabel = #49884#44036
      FieldName = 'L_DURATION'
    end
    object q_LECTURE_SRCL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object q_LECTURE_SRCL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object q_LECTURE_SRCL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object q_LECTURE_SRCPLAN_MEN: TSmallintField
      FieldName = 'PLAN_MEN'
    end
    object q_LECTURE_SRCREGIST_MEN: TSmallintField
      FieldName = 'REGIST_MEN'
    end
    object q_LECTURE_SRCWAIT_MEN: TSmallintField
      FieldName = 'WAIT_MEN'
    end
    object q_LECTURE_SRCDROP_MEN: TSmallintField
      FieldName = 'DROP_MEN'
    end
    object q_LECTURE_SRCSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_SRCEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_SRCTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object q_LECTURE_SRCTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
    end
    object q_LECTURE_SRCTEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
    object q_LECTURE_SRCCALC_KIND: TSmallintField
      FieldName = 'CALC_KIND'
    end
    object q_LECTURE_SRCMONTH1_DAYS: TSmallintField
      FieldName = 'MONTH1_DAYS'
    end
    object q_LECTURE_SRCMONTH2_DAYS: TSmallintField
      FieldName = 'MONTH2_DAYS'
    end
    object q_LECTURE_SRCMONTH3_DAYS: TSmallintField
      FieldName = 'MONTH3_DAYS'
    end
    object q_LECTURE_SRCL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
    object q_LECTURE_SRCL_UID: TIntegerField
      FieldName = 'L_UID'
    end
    object q_LECTURE_SRCMONTH1_PRICE: TFloatField
      FieldName = 'MONTH1_PRICE'
    end
    object q_LECTURE_SRCMONTH2_PRICE: TFloatField
      FieldName = 'MONTH2_PRICE'
    end
    object q_LECTURE_SRCMONTH3_PRICE: TFloatField
      FieldName = 'MONTH3_PRICE'
    end
  end
  object d_LECTURE_SRC: TDataSource
    DataSet = q_LECTURE_SRC
    Left = 120
    Top = 456
  end
  object q_LECTURE_DEST: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_ACTIVE'
      
        '  (ID, DONG_ID, L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_M' +
        'ONTH, START_DATE, TEACHER_ID, L_PRICE, CLASSROOM_ID, IS_ACTIVE, ' +
        'L_DURATION, L_TIME, L_TIME_START, L_TIME_END, END_DATE, PLAN_MEN' +
        ', REGIST_MEN, WAIT_MEN, DROP_MEN, TOTAL_DAY, TOTAL_TIME, TEACHER' +
        '_PERCENT, CALC_KIND, MONTH1_DAYS, MONTH2_DAYS, MONTH3_DAYS, L_ID' +
        'X, L_UID, MONTH1_PRICE, MONTH2_PRICE, MONTH3_PRICE)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DA' +
        'YS, :L_MONTH, :START_DATE, :TEACHER_ID, :L_PRICE, :CLASSROOM_ID,' +
        ' :IS_ACTIVE, :L_DURATION, :L_TIME, :L_TIME_START, :L_TIME_END, :' +
        'END_DATE, :PLAN_MEN, :REGIST_MEN, :WAIT_MEN, :DROP_MEN, :TOTAL_D' +
        'AY, :TOTAL_TIME, :TEACHER_PERCENT, :CALC_KIND, :MONTH1_DAYS, :MO' +
        'NTH2_DAYS, :MONTH3_DAYS, :L_IDX, :L_UID, :MONTH1_PRICE, :MONTH2_' +
        'PRICE, :MONTH3_PRICE)')
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
        'AY, TOTAL_TIME = :TOTAL_TIME, TEACHER_PERCENT = :TEACHER_PERCENT' +
        ', CALC_KIND = :CALC_KIND, MONTH1_DAYS = :MONTH1_DAYS, MONTH2_DAY' +
        'S = :MONTH2_DAYS, MONTH3_DAYS = :MONTH3_DAYS, L_IDX = :L_IDX, L_' +
        'UID = :L_UID, MONTH1_PRICE = :MONTH1_PRICE, MONTH2_PRICE = :MONT' +
        'H2_PRICE, MONTH3_PRICE = :MONTH3_PRICE'
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
        '_MEN, REGIST_MEN, WAIT_MEN, DROP_MEN, TOTAL_DAY, TOTAL_TIME, TEA' +
        'CHER_PERCENT, CALC_KIND, MONTH1_DAYS, MONTH2_DAYS, MONTH3_DAYS, ' +
        'L_IDX, L_UID, MONTH1_PRICE, MONTH2_PRICE, MONTH3_PRICE FROM LECT' +
        'URE_ACTIVE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LECTURE_ACTIVE'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from LECTURE_ACTIVE'
      'where l_year = :l_year and l_step = :l_step'
      'order by l_idx')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 576
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
    object q_LECTURE_DESTID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LECTURE_DESTDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_LECTURE_DESTL_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'L_YEAR'
    end
    object q_LECTURE_DESTL_STEP: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44592#49688
      FieldName = 'L_STEP'
    end
    object q_LECTURE_DESTL_NAME: TStringField
      DisplayLabel = #44053#51340#47749
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_LECTURE_DESTL_TIME_WEEK: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54924#49688'/'#51452
      FieldName = 'L_TIME_WEEK'
    end
    object q_LECTURE_DESTL_DAYS: TStringField
      DisplayLabel = #50836#51068
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_LECTURE_DESTL_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44060#50900#49688
      FieldName = 'L_MONTH'
    end
    object q_LECTURE_DESTTEACHER_ID: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_LECTURE_DESTL_PRICE: TFloatField
      DisplayLabel = #44053#51032#47308
      FieldName = 'L_PRICE'
      DisplayFormat = '#,'
    end
    object q_LECTURE_DESTCLASSROOM_ID: TStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_LECTURE_DESTIS_ACTIVE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = #49345#53468
      FieldName = 'IS_ACTIVE'
    end
    object q_LECTURE_DESTL_DURATION: TStringField
      DisplayLabel = #49884#44036
      FieldName = 'L_DURATION'
    end
    object q_LECTURE_DESTL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object q_LECTURE_DESTL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object q_LECTURE_DESTL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object q_LECTURE_DESTPLAN_MEN: TSmallintField
      FieldName = 'PLAN_MEN'
    end
    object q_LECTURE_DESTREGIST_MEN: TSmallintField
      FieldName = 'REGIST_MEN'
    end
    object q_LECTURE_DESTWAIT_MEN: TSmallintField
      FieldName = 'WAIT_MEN'
    end
    object q_LECTURE_DESTDROP_MEN: TSmallintField
      FieldName = 'DROP_MEN'
    end
    object q_LECTURE_DESTSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_DESTEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_DESTTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object q_LECTURE_DESTTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
    end
    object q_LECTURE_DESTTEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
    object q_LECTURE_DESTCALC_KIND: TSmallintField
      FieldName = 'CALC_KIND'
    end
    object q_LECTURE_DESTMONTH1_DAYS: TSmallintField
      FieldName = 'MONTH1_DAYS'
    end
    object q_LECTURE_DESTMONTH2_DAYS: TSmallintField
      FieldName = 'MONTH2_DAYS'
    end
    object q_LECTURE_DESTMONTH3_DAYS: TSmallintField
      FieldName = 'MONTH3_DAYS'
    end
    object q_LECTURE_DESTL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
    object q_LECTURE_DESTL_UID: TIntegerField
      FieldName = 'L_UID'
    end
    object q_LECTURE_DESTMONTH1_PRICE: TFloatField
      FieldName = 'MONTH1_PRICE'
    end
    object q_LECTURE_DESTMONTH2_PRICE: TFloatField
      FieldName = 'MONTH2_PRICE'
    end
    object q_LECTURE_DESTMONTH3_PRICE: TFloatField
      FieldName = 'MONTH3_PRICE'
    end
  end
  object d_LECTURE_DEST: TDataSource
    DataSet = q_LECTURE_DEST
    Left = 576
    Top = 464
  end
end
