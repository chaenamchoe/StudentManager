object fmRegistedByLecture: TfmRegistedByLecture
  Left = 0
  Top = 0
  Caption = #44053#51340#53685#54633#51312#54924
  ClientHeight = 634
  ClientWidth = 1038
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1038
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 13
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
      Left = 107
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
      Left = 187
      Top = 8
      Width = 11
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object speYear: TSpinEdit
      Left = 49
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2013
    end
    object speStep: TSpinEdit
      Left = 142
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 4
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnRetrieve: TBitBtn
      Left = 246
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
      TabOrder = 3
      OnClick = btnRetrieveClick
    end
    object chkGroup: TCheckBox
      Left = 393
      Top = 6
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
      OnClick = chkGroupClick
    end
    object chkFilter: TCheckBox
      Left = 327
      Top = 6
      Width = 51
      Height = 17
      Caption = #54596#53552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = chkFilterClick
    end
    object speStep2: TSpinEdit
      Left = 201
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 4
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object btnExport: TBitBtn
      Left = 704
      Top = 2
      Width = 105
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
      TabOrder = 6
      OnClick = btnExportClick
    end
    object chkExpandGroup: TCheckBox
      Left = 453
      Top = 6
      Width = 111
      Height = 17
      Caption = #44536#47353#51204#52404#54869#51109
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = chkExpandGroupClick
    end
    object btnPrint: TBitBtn
      Left = 809
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
      TabOrder = 8
      OnClick = btnPrintClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1038
    Height = 605
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'SevenClassic'
    object gridRequest: TcxGridDBTableView
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
      DataController.DataSource = D_COMBIND_ALLDATA_VIEW
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0 '#47749
          Kind = skCount
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '0 '#47749
          Kind = skCount
          Position = spFooter
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREGISTED_PAY_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridRequestREGISTED_PAY_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Position = spFooter
          Column = gridRequestREGISTED_OUT_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREGISTED_OUT_AMOUNT
        end
        item
          Format = '#,'
          Kind = skAverage
          Position = spFooter
          Column = gridRequestLECTURE_TOTAL_DAY
        end
        item
          Format = '#,'
          Kind = skAverage
          Column = gridRequestLECTURE_TOTAL_DAY
        end
        item
          Format = '#,'
          Kind = skAverage
          Position = spFooter
          Column = gridRequestLECTURE_DROP_MEN
        end
        item
          Format = '#,'
          Kind = skAverage
          Column = gridRequestLECTURE_DROP_MEN
        end
        item
          Format = '#,'
          Kind = skAverage
          Position = spFooter
          Column = gridRequestLECTURE_WAIT_MEN
        end
        item
          Format = '#,'
          Kind = skAverage
          Column = gridRequestLECTURE_WAIT_MEN
        end
        item
          Format = '#,'
          Kind = skAverage
          Position = spFooter
          Column = gridRequestLECTURE_REGIST_MEN
        end
        item
          Format = '#,'
          Kind = skAverage
          Column = gridRequestLECTURE_REGIST_MEN
        end
        item
          Format = '#,.0'
          Kind = skAverage
          Position = spFooter
          Column = gridRequestLECTURE_TOTAL_TIME
        end
        item
          Format = '#,.0'
          Kind = skAverage
          Column = gridRequestLECTURE_TOTAL_TIME
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = #52509':'
        end
        item
          Format = '0 '#47749
          Kind = skCount
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Kind = skSum
        end
        item
          Format = '#,'
          Column = gridRequestREGISTED_PAY_AMOUNT
        end
        item
          Format = '#,'
          Column = gridRequestREGISTED_OUT_AMOUNT
        end
        item
          Format = '#,'
          Column = gridRequestLECTURE_TOTAL_DAY
        end
        item
          Format = '#,'
          Column = gridRequestLECTURE_DROP_MEN
        end
        item
          Format = '#,'
          Column = gridRequestLECTURE_WAIT_MEN
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object gridRequestLECTURE_L_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_YEAR'
        Width = 47
      end
      object gridRequestLECTURE_L_STEP: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_STEP'
        Width = 37
      end
      object gridRequestLECTURE_L_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_NAME'
        Width = 137
      end
      object gridRequestLECTURE_L_TIME_WEEK: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_TIME_WEEK'
        Width = 38
      end
      object gridRequestLECTURE_L_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_DAYS'
        Width = 40
      end
      object gridRequestLECTURE_L_MONTH: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_MONTH'
        Width = 39
      end
      object gridRequestLECTURE_START_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_START_DATE'
        Width = 83
      end
      object gridRequestLECTURE_END_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_END_DATE'
        Width = 86
      end
      object gridRequestROOM_C_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ROOM_C_NAME'
        Width = 114
      end
      object gridRequestROOM_IDX: TcxGridDBColumn
        DataBinding.FieldName = 'ROOM_IDX'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestTEACHER_T_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_T_NAME'
        Width = 69
      end
      object gridRequestTEACHER_T_SEX: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_T_SEX'
      end
      object gridRequestTEACHER_T_BIRTH: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_T_BIRTH'
      end
      object gridRequestTEACHER_T_TEL: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_T_TEL'
        Width = 127
      end
      object gridRequestTEACHER_T_EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_T_EMAIL'
        Width = 145
      end
      object gridRequestSTUDENT_S_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_S_NAME'
        Width = 63
      end
      object gridRequestSTUDENT_S_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_S_KIND'
      end
      object gridRequestSTUDENT_S_SEX: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_S_SEX'
      end
      object gridRequestSTUDENT_REG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_REG_DATE'
        Width = 81
      end
      object gridRequestSTUDENT_S_DONG: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_S_DONG'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DONG'
          end>
        Properties.ListSource = dm.d_DONG_CODE
        Width = 97
      end
      object gridRequestSTUDENT_S_BIRTH: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_S_BIRTH'
        Width = 85
      end
      object gridRequestSTUDENT_S_TEL: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_S_TEL'
        Width = 128
      end
      object gridRequestREGISTED_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestREGISTED_DONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_DONG_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestREGISTED_LECTURE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_LECTURE_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestREGISTED_STUDENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_STUDENT_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestREGISTED_P_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_P_DATE'
        Width = 81
      end
      object gridRequestREGISTED_PAY_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_PAY_AMOUNT'
      end
      object gridRequestREGISTED_IS_DC: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_IS_DC'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListSource = dm.d_DC_KIND
        Width = 102
      end
      object gridRequestREGISTED_PAY_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_PAY_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #46321#47197
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #54872#48520
            Value = 1
          end
          item
            Description = #45824#44592
            Value = 2
          end>
      end
      object gridRequestREGISTED_R_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_R_DATE'
        Width = 91
      end
      object gridRequestREGISTED_OUT_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_OUT_AMOUNT'
      end
      object gridRequestREGISTED_REG_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_REG_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #49888#44508
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #51116#44053
            Value = 1
          end>
      end
      object gridRequestREGISTED_PAY_WAY: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_PAY_WAY'
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
          end>
      end
      object gridRequestREGISTED_PAYBACK_WAY: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_PAYBACK_WAY'
        PropertiesClassName = 'TcxImageComboBoxProperties'
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
      end
      object gridRequestREGISTED_OUT_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTED_OUT_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'REASON_NAME'
          end>
        Properties.ListSource = dm.d_payback_reason
        Width = 87
      end
      object gridRequestLECTURE_TEACHER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_TEACHER_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestLECTURE_L_PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_PRICE'
        Width = 88
      end
      object gridRequestLECTURE_CLASSROOM_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_CLASSROOM_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestLECTURE_L_DURATION: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_DURATION'
        Width = 106
      end
      object gridRequestLECTURE_L_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_TIME'
        Width = 44
      end
      object gridRequestLECTURE_L_TIME_START: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_TIME_START'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestLECTURE_L_TIME_END: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_L_TIME_END'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestLECTURE_PLAN_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_PLAN_MEN'
        Width = 41
      end
      object gridRequestLECTURE_REGIST_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_REGIST_MEN'
        Width = 49
      end
      object gridRequestLECTURE_WAIT_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_WAIT_MEN'
        Width = 47
      end
      object gridRequestLECTURE_DROP_MEN: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_DROP_MEN'
        Width = 48
      end
      object gridRequestLECTURE_TOTAL_DAY: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_TOTAL_DAY'
        Width = 57
      end
      object gridRequestLECTURE_TOTAL_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_TOTAL_TIME'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridRequest
    end
  end
  object q_COMBIND_ALLDATA_VIEW: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMBIND_ALLDATA_VIEW'
      
        '  (ROOM_C_NAME, ROOM_IDX, TEACHER_T_NAME, TEACHER_T_SEX, TEACHER' +
        '_T_BIRTH, TEACHER_T_TEL, TEACHER_T_EMAIL, STUDENT_S_NAME, STUDEN' +
        'T_S_KIND, STUDENT_S_SEX, STUDENT_REG_DATE, STUDENT_S_DONG, STUDE' +
        'NT_S_BIRTH, STUDENT_S_TEL, REGISTED_ID, REGISTED_DONG_ID, REGIST' +
        'ED_LECTURE_ID, REGISTED_STUDENT_ID, REGISTED_P_DATE, REGISTED_PA' +
        'Y_AMOUNT, REGISTED_IS_DC, REGISTED_PAY_KIND, REGISTED_R_DATE, RE' +
        'GISTED_OUT_AMOUNT, REGISTED_REG_KIND, REGISTED_PAY_WAY, REGISTED' +
        '_PAYBACK_WAY, REGISTED_OUT_KIND, LECTURE_L_YEAR, LECTURE_L_STEP,' +
        ' LECTURE_L_NAME, LECTURE_L_TIME_WEEK, LECTURE_L_DAYS, LECTURE_L_' +
        'MONTH, LECTURE_START_DATE, LECTURE_TEACHER_ID, LECTURE_L_PRICE, ' +
        'LECTURE_CLASSROOM_ID, LECTURE_L_DURATION, LECTURE_L_TIME, LECTUR' +
        'E_L_TIME_START, LECTURE_L_TIME_END, LECTURE_END_DATE, LECTURE_PL' +
        'AN_MEN, LECTURE_REGIST_MEN, LECTURE_WAIT_MEN, LECTURE_DROP_MEN, ' +
        'LECTURE_TOTAL_DAY, LECTURE_TOTAL_TIME)'
      'VALUES'
      
        '  (:ROOM_C_NAME, :ROOM_IDX, :TEACHER_T_NAME, :TEACHER_T_SEX, :TE' +
        'ACHER_T_BIRTH, :TEACHER_T_TEL, :TEACHER_T_EMAIL, :STUDENT_S_NAME' +
        ', :STUDENT_S_KIND, :STUDENT_S_SEX, :STUDENT_REG_DATE, :STUDENT_S' +
        '_DONG, :STUDENT_S_BIRTH, :STUDENT_S_TEL, :REGISTED_ID, :REGISTED' +
        '_DONG_ID, :REGISTED_LECTURE_ID, :REGISTED_STUDENT_ID, :REGISTED_' +
        'P_DATE, :REGISTED_PAY_AMOUNT, :REGISTED_IS_DC, :REGISTED_PAY_KIN' +
        'D, :REGISTED_R_DATE, :REGISTED_OUT_AMOUNT, :REGISTED_REG_KIND, :' +
        'REGISTED_PAY_WAY, :REGISTED_PAYBACK_WAY, :REGISTED_OUT_KIND, :LE' +
        'CTURE_L_YEAR, :LECTURE_L_STEP, :LECTURE_L_NAME, :LECTURE_L_TIME_' +
        'WEEK, :LECTURE_L_DAYS, :LECTURE_L_MONTH, :LECTURE_START_DATE, :L' +
        'ECTURE_TEACHER_ID, :LECTURE_L_PRICE, :LECTURE_CLASSROOM_ID, :LEC' +
        'TURE_L_DURATION, :LECTURE_L_TIME, :LECTURE_L_TIME_START, :LECTUR' +
        'E_L_TIME_END, :LECTURE_END_DATE, :LECTURE_PLAN_MEN, :LECTURE_REG' +
        'IST_MEN, :LECTURE_WAIT_MEN, :LECTURE_DROP_MEN, :LECTURE_TOTAL_DA' +
        'Y, :LECTURE_TOTAL_TIME)')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from COMBIND_ALLDATA_VIEW'
      
        'WHERE REGISTED_DONG_ID = :DONG_ID AND LECTURE_L_YEAR = :L_YEAR A' +
        'ND (LECTURE_L_STEP BETWEEN :L_STEP1 AND :L_STEP2)'
      'ORDER BY LECTURE_L_YEAR, LECTURE_L_STEP, LECTURE_L_NAME')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 352
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_STEP1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'L_STEP2'
        ParamType = ptInput
      end>
    object q_COMBIND_ALLDATA_VIEWROOM_C_NAME: TStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'ROOM_C_NAME'
      Size = 30
    end
    object q_COMBIND_ALLDATA_VIEWROOM_IDX: TIntegerField
      FieldName = 'ROOM_IDX'
    end
    object q_COMBIND_ALLDATA_VIEWTEACHER_T_NAME: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_T_NAME'
    end
    object q_COMBIND_ALLDATA_VIEWTEACHER_T_SEX: TStringField
      DisplayLabel = #49457#48324'('#44053#49324')'
      FieldName = 'TEACHER_T_SEX'
      Size = 4
    end
    object q_COMBIND_ALLDATA_VIEWTEACHER_T_BIRTH: TStringField
      DisplayLabel = #49373#45380#50900#51068'('#44053#49324')'
      FieldName = 'TEACHER_T_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_COMBIND_ALLDATA_VIEWTEACHER_T_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840'('#44053#49324')'
      FieldName = 'TEACHER_T_TEL'
      Size = 30
    end
    object q_COMBIND_ALLDATA_VIEWTEACHER_T_EMAIL: TStringField
      DisplayLabel = #51060#47700#51068'('#44053#49324')'
      FieldName = 'TEACHER_T_EMAIL'
      Size = 50
    end
    object q_COMBIND_ALLDATA_VIEWSTUDENT_S_NAME: TStringField
      DisplayLabel = #49688#44053#51088#47749
      FieldName = 'STUDENT_S_NAME'
      Size = 30
    end
    object q_COMBIND_ALLDATA_VIEWSTUDENT_S_KIND: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #49688#44053#51088#44396#48516
      FieldName = 'STUDENT_S_KIND'
    end
    object q_COMBIND_ALLDATA_VIEWSTUDENT_S_SEX: TStringField
      DisplayLabel = #49457#48324'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_SEX'
      Size = 4
    end
    object q_COMBIND_ALLDATA_VIEWSTUDENT_REG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088'('#49688#44053#51088')'
      FieldName = 'STUDENT_REG_DATE'
    end
    object q_COMBIND_ALLDATA_VIEWSTUDENT_S_DONG: TStringField
      DisplayLabel = #46041#47749'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_DONG'
      Size = 17
    end
    object q_COMBIND_ALLDATA_VIEWSTUDENT_S_BIRTH: TStringField
      DisplayLabel = #49373#45380#50900#51068'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_COMBIND_ALLDATA_VIEWSTUDENT_S_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_TEL'
      Size = 30
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_ID: TStringField
      FieldName = 'REGISTED_ID'
      Size = 17
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_DONG_ID: TStringField
      FieldName = 'REGISTED_DONG_ID'
      Size = 17
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_LECTURE_ID: TStringField
      FieldName = 'REGISTED_LECTURE_ID'
      Size = 17
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_STUDENT_ID: TStringField
      FieldName = 'REGISTED_STUDENT_ID'
      Size = 17
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_P_DATE: TStringField
      DisplayLabel = #44208#51116#51068#51088
      FieldName = 'REGISTED_P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_PAY_AMOUNT: TFloatField
      DisplayLabel = #45225#51077#44552#50529
      FieldName = 'REGISTED_PAY_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_IS_DC: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #54624#51064#44396#48516
      FieldName = 'REGISTED_IS_DC'
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_PAY_KIND: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #46321#47197'/'#45824#44592
      FieldName = 'REGISTED_PAY_KIND'
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_R_DATE: TStringField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'REGISTED_R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_OUT_AMOUNT: TFloatField
      DisplayLabel = #54872#48520#44552#50529
      FieldName = 'REGISTED_OUT_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_REG_KIND: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #49888#44508'/'#51116#44053
      FieldName = 'REGISTED_REG_KIND'
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_PAY_WAY: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #44208#51116#48169#48277
      FieldName = 'REGISTED_PAY_WAY'
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_PAYBACK_WAY: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #54872#48520#48169#48277
      FieldName = 'REGISTED_PAYBACK_WAY'
    end
    object q_COMBIND_ALLDATA_VIEWREGISTED_OUT_KIND: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #53748#44053#49324#50976
      FieldName = 'REGISTED_OUT_KIND'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'LECTURE_L_YEAR'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_STEP: TIntegerField
      Alignment = taCenter
      DisplayLabel = #48516#44592
      FieldName = 'LECTURE_L_STEP'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_NAME: TStringField
      DisplayLabel = #44053#51340#47749
      FieldName = 'LECTURE_L_NAME'
      Size = 30
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME_WEEK: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49884#44036
      FieldName = 'LECTURE_L_TIME_WEEK'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_DAYS: TStringField
      DisplayLabel = #50836#51068
      FieldName = 'LECTURE_L_DAYS'
      Size = 15
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44060#50900
      FieldName = 'LECTURE_L_MONTH'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_START_DATE: TStringField
      DisplayLabel = #44060#44053#51068#51088
      FieldName = 'LECTURE_START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_TEACHER_ID: TStringField
      FieldName = 'LECTURE_TEACHER_ID'
      Size = 17
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_PRICE: TFloatField
      DisplayLabel = #49688#44053#47308
      FieldName = 'LECTURE_L_PRICE'
      DisplayFormat = '#,'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_CLASSROOM_ID: TStringField
      FieldName = 'LECTURE_CLASSROOM_ID'
      Size = 17
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_DURATION: TStringField
      DisplayLabel = #44053#51032#49884#44036
      FieldName = 'LECTURE_L_DURATION'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME: TFloatField
      Alignment = taCenter
      DisplayLabel = #49884#44036
      FieldName = 'LECTURE_L_TIME'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME_START: TSmallintField
      FieldName = 'LECTURE_L_TIME_START'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_L_TIME_END: TSmallintField
      FieldName = 'LECTURE_L_TIME_END'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_END_DATE: TStringField
      DisplayLabel = #51333#44053#51068#51088
      FieldName = 'LECTURE_END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_PLAN_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #51221#50896
      FieldName = 'LECTURE_PLAN_MEN'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_REGIST_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #46321#47197#51088
      FieldName = 'LECTURE_REGIST_MEN'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_WAIT_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #45824#44592#51088
      FieldName = 'LECTURE_WAIT_MEN'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_DROP_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #53748#44053#51088
      FieldName = 'LECTURE_DROP_MEN'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_TOTAL_DAY: TIntegerField
      Alignment = taCenter
      DisplayLabel = #52509#44053#51032#51068
      FieldName = 'LECTURE_TOTAL_DAY'
    end
    object q_COMBIND_ALLDATA_VIEWLECTURE_TOTAL_TIME: TFloatField
      Alignment = taCenter
      DisplayLabel = #52509#44053#51032#49884#44036
      FieldName = 'LECTURE_TOTAL_TIME'
    end
  end
  object D_COMBIND_ALLDATA_VIEW: TDataSource
    DataSet = q_COMBIND_ALLDATA_VIEW
    Left = 352
    Top = 472
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 352
    Top = 376
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
      ReportDocument.CreationDate = 42568.206165787040000000
      ReportTitle.AdjustOnReportScale = True
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#49324#49688#45817#51648#44553#54788#54889
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.AutoHeight = False
      OptionsPreview.Visible = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
end
