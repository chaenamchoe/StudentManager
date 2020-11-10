object fmLecturePivot: TfmLecturePivot
  Left = 0
  Top = 0
  Caption = #44053#51340#51333#54633#53685#44228
  ClientHeight = 616
  ClientWidth = 1019
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
    Width = 1019
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
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
      Left = 114
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
    object speYear: TSpinEdit
      Left = 52
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2015
    end
    object speStep: TSpinEdit
      Left = 151
      Top = 4
      Width = 42
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnRetrieve: TBitBtn
      Left = 237
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
    object speStep2: TSpinEdit
      Left = 194
      Top = 4
      Width = 42
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
    object btnExport: TBitBtn
      Left = 764
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
      TabOrder = 4
      OnClick = btnExportClick
    end
    object btnPrint: TBitBtn
      Left = 863
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
      TabOrder = 5
      OnClick = btnPrintClick
    end
    object chkColumnGrandTotal: TCheckBox
      Left = 338
      Top = 6
      Width = 97
      Height = 17
      Caption = #52509#44228#48372#51060#44592
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = chkColumnGrandTotalClick
    end
  end
  object cxDBPivotGrid1: TcxDBPivotGrid
    Left = 0
    Top = 29
    Width = 1019
    Height = 587
    Align = alClient
    DataSource = d_LECTURE_COMBINE_VIEW
    Groups = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsCustomize.QuickCustomization = False
    OptionsView.ColumnFields = False
    OptionsView.ColumnGrandTotalText = #52509#44228
    OptionsView.ColumnTotalsLocation = ctlNear
    OptionsView.DataFields = False
    OptionsView.FilterFields = False
    OptionsView.FilterSeparator = False
    OptionsView.MarkNarrowCells = True
    OptionsView.RowFields = False
    OptionsView.RowGrandTotalText = #52509#44228
    OptionsView.RowGrandTotalWidth = 161
    OptionsView.RowTotalsLocation = rtlNear
    TabOrder = 1
    object cxDBPivotGrid1Field1: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      DataBinding.FieldName = 'LECTURE_L_STEP'
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taTopJustify
      Properties.Items = <
        item
          Description = '1/4'#48516#44592
          ImageIndex = 0
          Value = 1
        end
        item
          Description = '2/4'#48516#44592
          Value = 2
        end
        item
          Description = '3/4'#48516#44592
          Value = 3
        end
        item
          Description = '4/4'#48516#44592
          Value = 4
        end>
      Visible = True
      Width = 80
      UniqueName = 'L_NAME'
    end
    object cxDBPivotGrid1Field2: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 2
      DataBinding.FieldName = 'LECTURE_L_NAME'
      Visible = True
      Width = 150
      UniqueName = 'L_TIME'
    end
    object cxDBPivotGrid1Field3: TcxDBPivotGridField
      AreaIndex = 0
      DataBinding.FieldName = 'LECTURE_CLASSROOM_ID'
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'C_NAME'
        end>
      Properties.ListSource = dm.d_CLASSROOM
      Visible = True
      UniqueName = 'CLASSROOM_ID'
    end
    object cxDBPivotGrid1Field4: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      DataBinding.FieldName = 'REGISTED_PAY_AMOUNT'
      ImageAlign = taCenter
      Visible = True
      UniqueName = #49688#44053#47308
    end
    object cxDBPivotGrid1Field5: TcxDBPivotGridField
      AreaIndex = 2
      DataBinding.FieldName = 'REGISTED_IS_DC'
      Visible = True
      UniqueName = #44048#47732
    end
    object cxDBPivotGrid1Field6: TcxDBPivotGridField
      Area = faData
      AreaIndex = 1
      DataBinding.FieldName = 'REGISTED_OUT_AMOUNT'
      ImageAlign = taCenter
      Visible = True
      UniqueName = #54872#48520#44552#50529
    end
    object cxDBPivotGrid1Field7: TcxDBPivotGridField
      AreaIndex = 1
      DataBinding.FieldName = 'REGISTED_OUT_KIND'
      Visible = True
      UniqueName = #53748#44053#49324#50976
    end
    object cxDBPivotGrid1Field8: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      DataBinding.FieldName = 'STUDENT_S_KIND'
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.Alignment.Horz = taCenter
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KIND_NAME'
        end>
      Properties.ListSource = dm.d_DC_KIND
      Visible = True
      UniqueName = #44048#47732#44396#48516
    end
    object cxDBPivotGrid1Field9: TcxDBPivotGridField
      AreaIndex = 3
      DataBinding.FieldName = 'STUDENT_S_DONG'
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DONG'
        end>
      Properties.ListSource = dm.d_DONG_CODE
      Visible = True
      UniqueName = #46041#47749'('#49688#44053#51088')'
    end
    object cxDBPivotGrid1Field10: TcxDBPivotGridField
      AreaIndex = 4
      DataBinding.FieldName = 'STUDENT_S_SEX'
      Visible = True
      UniqueName = #49457#48324'('#49688#44053#51088')'
    end
    object cxDBPivotGrid1Field11: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #44053#51340'No'
      DataBinding.FieldName = 'LECTURE_L_IDX'
      GroupIntervalRange = 1
      MinWidth = 0
      Visible = True
      Width = 1
      UniqueName = #44053#51340'No'
    end
  end
  object q_LECTURE_COMBINE_VIEW: TUniQuery
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
      
        'where REGISTED_DONG_ID = :dong_id and LECTURE_L_YEAR = :l_year a' +
        'nd '
      'LECTURE_L_STEP >= :l_step1 and LECTURE_L_STEP <= :l_step2'
      'order by LECTURE_L_YEAR, LECTURE_L_STEP, LECTURE_L_IDX')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 200
    Top = 336
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
        DataType = ftInteger
        Name = 'l_step1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_step2'
        ParamType = ptInput
      end>
    object q_LECTURE_COMBINE_VIEWROOM_C_NAME: TStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'ROOM_C_NAME'
      Size = 30
    end
    object q_LECTURE_COMBINE_VIEWROOM_IDX: TIntegerField
      FieldName = 'ROOM_IDX'
    end
    object q_LECTURE_COMBINE_VIEWTEACHER_T_NAME: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_T_NAME'
    end
    object q_LECTURE_COMBINE_VIEWTEACHER_T_SEX: TStringField
      DisplayLabel = #49457#48324'('#44053#49324')'
      FieldName = 'TEACHER_T_SEX'
      Size = 4
    end
    object q_LECTURE_COMBINE_VIEWTEACHER_T_BIRTH: TStringField
      DisplayLabel = #49373#45380#50900#51068'('#44053#49324')'
      FieldName = 'TEACHER_T_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_COMBINE_VIEWTEACHER_T_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840'('#44053#49324')'
      FieldName = 'TEACHER_T_TEL'
      Size = 30
    end
    object q_LECTURE_COMBINE_VIEWTEACHER_T_EMAIL: TStringField
      DisplayLabel = #51060#47700#51068'('#44053#49324')'
      FieldName = 'TEACHER_T_EMAIL'
      Size = 50
    end
    object q_LECTURE_COMBINE_VIEWSTUDENT_S_NAME: TStringField
      DisplayLabel = #49688#44053#51088#47749
      FieldName = 'STUDENT_S_NAME'
      Size = 30
    end
    object q_LECTURE_COMBINE_VIEWSTUDENT_S_KIND: TSmallintField
      DisplayLabel = #44048#47732#44396#48516
      FieldName = 'STUDENT_S_KIND'
    end
    object q_LECTURE_COMBINE_VIEWSTUDENT_S_SEX: TStringField
      DisplayLabel = #49457#48324'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_SEX'
      Size = 4
    end
    object q_LECTURE_COMBINE_VIEWSTUDENT_REG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'STUDENT_REG_DATE'
    end
    object q_LECTURE_COMBINE_VIEWSTUDENT_S_DONG: TStringField
      DisplayLabel = #46041#47749'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_DONG'
      Size = 17
    end
    object q_LECTURE_COMBINE_VIEWSTUDENT_S_BIRTH: TStringField
      DisplayLabel = #49373#45380#50900#51068'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_COMBINE_VIEWSTUDENT_S_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840'('#49688#44053#51088')'
      FieldName = 'STUDENT_S_TEL'
      Size = 30
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_ID: TStringField
      FieldName = 'REGISTED_ID'
      Size = 17
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_DONG_ID: TStringField
      FieldName = 'REGISTED_DONG_ID'
      Size = 17
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_LECTURE_ID: TStringField
      FieldName = 'REGISTED_LECTURE_ID'
      Size = 17
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_STUDENT_ID: TStringField
      FieldName = 'REGISTED_STUDENT_ID'
      Size = 17
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_P_DATE: TStringField
      DisplayLabel = #44208#51116'('#46321#47197#51068')'
      FieldName = 'REGISTED_P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_PAY_AMOUNT: TFloatField
      DisplayLabel = #49688#44053#47308
      FieldName = 'REGISTED_PAY_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_IS_DC: TSmallintField
      DisplayLabel = #44048#47732
      FieldName = 'REGISTED_IS_DC'
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_PAY_KIND: TSmallintField
      DisplayLabel = #44208#51116#44396#48516
      FieldName = 'REGISTED_PAY_KIND'
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_R_DATE: TStringField
      DisplayLabel = #54872#48520#51068#51088
      FieldName = 'REGISTED_R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_OUT_AMOUNT: TFloatField
      DisplayLabel = #54872#48520#44552#50529
      FieldName = 'REGISTED_OUT_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_REG_KIND: TSmallintField
      DisplayLabel = #46321#47197#44396#48516
      FieldName = 'REGISTED_REG_KIND'
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_PAY_WAY: TSmallintField
      DisplayLabel = #44208#51116#48169#48277
      FieldName = 'REGISTED_PAY_WAY'
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_PAYBACK_WAY: TSmallintField
      DisplayLabel = #54872#48520#48169#48277
      FieldName = 'REGISTED_PAYBACK_WAY'
    end
    object q_LECTURE_COMBINE_VIEWREGISTED_OUT_KIND: TSmallintField
      DisplayLabel = #53748#44053#49324#50976
      FieldName = 'REGISTED_OUT_KIND'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_YEAR: TIntegerField
      DisplayLabel = #45380#46020
      FieldName = 'LECTURE_L_YEAR'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_STEP: TIntegerField
      DisplayLabel = #48516#44592
      FieldName = 'LECTURE_L_STEP'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_NAME: TStringField
      DisplayLabel = #44053#51340#47749
      FieldName = 'LECTURE_L_NAME'
      Size = 30
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_TIME_WEEK: TIntegerField
      DisplayLabel = #49884#44036'('#51452#45817')'
      FieldName = 'LECTURE_L_TIME_WEEK'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_DAYS: TStringField
      DisplayLabel = #51068#49688
      FieldName = 'LECTURE_L_DAYS'
      Size = 15
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_MONTH: TIntegerField
      DisplayLabel = #44060#50900#49688
      FieldName = 'LECTURE_L_MONTH'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_START_DATE: TStringField
      DisplayLabel = #44060#44053#51068
      FieldName = 'LECTURE_START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_TEACHER_ID: TStringField
      FieldName = 'LECTURE_TEACHER_ID'
      Size = 17
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_PRICE: TFloatField
      DisplayLabel = #44053#51340#49688#44053#47308
      FieldName = 'LECTURE_L_PRICE'
      DisplayFormat = '#,'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_CLASSROOM_ID: TStringField
      DisplayLabel = #44053#51032#49892
      FieldName = 'LECTURE_CLASSROOM_ID'
      Size = 17
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_DURATION: TStringField
      DisplayLabel = #44053#51032#49884#44036
      FieldName = 'LECTURE_L_DURATION'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_TIME: TFloatField
      DisplayLabel = #49884#44036'('#49688')'
      FieldName = 'LECTURE_L_TIME'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_TIME_START: TSmallintField
      FieldName = 'LECTURE_L_TIME_START'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_TIME_END: TSmallintField
      FieldName = 'LECTURE_L_TIME_END'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_END_DATE: TStringField
      DisplayLabel = #51333#44053#51068
      FieldName = 'LECTURE_END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_PLAN_MEN: TSmallintField
      DisplayLabel = #51221#50896
      FieldName = 'LECTURE_PLAN_MEN'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_REGIST_MEN: TSmallintField
      DisplayLabel = #46321#47197#51064#50896
      FieldName = 'LECTURE_REGIST_MEN'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_WAIT_MEN: TSmallintField
      DisplayLabel = #45824#44592#51088#49688
      FieldName = 'LECTURE_WAIT_MEN'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_DROP_MEN: TSmallintField
      DisplayLabel = #53748#44053#51088#49688
      FieldName = 'LECTURE_DROP_MEN'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_TOTAL_DAY: TIntegerField
      DisplayLabel = #52509#44053#51032#51068
      FieldName = 'LECTURE_TOTAL_DAY'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_TOTAL_TIME: TFloatField
      DisplayLabel = #52509#44053#51032#49884#44036
      FieldName = 'LECTURE_TOTAL_TIME'
    end
    object q_LECTURE_COMBINE_VIEWLECTURE_L_IDX: TSmallintField
      FieldName = 'LECTURE_L_IDX'
    end
  end
  object d_LECTURE_COMBINE_VIEW: TDataSource
    DataSet = q_LECTURE_COMBINE_VIEW
    Left = 200
    Top = 384
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 200
    Top = 440
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42301.350025439820000000
      OptionsExpanding.AutoExpandColumns = True
      OptionsExpanding.AutoExpandRows = True
      OptionsOnEveryPage.FilterBar = False
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      BuiltInReportLink = True
    end
  end
end
