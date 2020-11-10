object fmLectureCopyDialog: TfmLectureCopyDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44053#51340#48373#49324
  ClientHeight = 225
  ClientWidth = 431
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 401
    Height = 185
    Caption = #48373#49324#44053#51340' '#49444#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 52
      Height = 13
      Caption = #50896#48376#44053#51340
    end
    object Label2: TLabel
      Left = 208
      Top = 32
      Width = 52
      Height = 13
      Caption = #45824#49345#44053#51340
    end
    object Label3: TLabel
      Left = 32
      Top = 72
      Width = 349
      Height = 39
      Caption = 
        #50896#48376#44053#51340#50752' '#45824#49345#44053#51340#51032' '#45380#46020#50752' '#48516#44592#47484' '#49440#53469#54616#44256' '#54869#51064#54616#49464#50836'.'#13#10#45824#49345#44053#51340#44032' '#51060#48120' '#51080#45716' '#44221#50864#45716' '#54644#45817' '#44053#51340#47484' '#47676#51200' '#49325#51228#54620' '#54980 +
        #50640#13#10#44053#51340#48373#49324#47484' '#51652#54665#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object speYear: TSpinEdit
      Left = 84
      Top = 29
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2013
    end
    object speStep: TSpinEdit
      Left = 140
      Top = 29
      Width = 44
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object speYear2: TSpinEdit
      Left = 269
      Top = 29
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 2
      Value = 2013
    end
    object speStep2: TSpinEdit
      Left = 325
      Top = 29
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
    object btnCopy: TBitBtn
      Left = 152
      Top = 130
      Width = 89
      Height = 25
      Caption = #48373#49324#49892#54665
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
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select count(*) as cnt from lecture_active'
      'where l_year = :l_year and l_step = :l_step')
    Left = 80
    Top = 136
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
  end
  object LECTURE_ACTIVE_DEL_MONTH: TUniStoredProc
    StoredProcName = 'LECTURE_ACTIVE_DEL_MONTH'
    Connection = dm.UniConnection1
    Left = 264
    Top = 160
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
      end>
    CommandStoredProcName = 'LECTURE_ACTIVE_DEL_MONTH'
  end
  object SP_LECTURE_COPY: TUniStoredProc
    StoredProcName = 'SP_LECTURE_COPY'
    Connection = dm.UniConnection1
    Left = 360
    Top = 136
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
        Name = 'N_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'N_STEP'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'NEW_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'START_DATE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'END_DATE'
        ParamType = ptInput
        Size = 10
      end>
    CommandStoredProcName = 'SP_LECTURE_COPY'
  end
  object LECTURE_ACTIVE_SEL: TUniStoredProc
    StoredProcName = 'LECTURE_ACTIVE_SEL'
    Connection = dm.UniConnection1
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 40
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IL_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IL_STEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
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
        DataType = ftString
        Name = 'TEACHER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftFloat
        Name = 'L_PRICE'
        ParamType = ptOutput
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
        DataType = ftString
        Name = 'L_DURATION'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftFloat
        Name = 'L_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'L_TIME_START'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'L_TIME_END'
        ParamType = ptOutput
      end
      item
        DataType = ftFixedChar
        Name = 'END_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'PLAN_MEN'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'REGIST_MEN'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'WAIT_MEN'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'DROP_MEN'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'TOTAL_DAY'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'TEACHER_PERCENT'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'CALC_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'MONTH1_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'MONTH2_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'MONTH3_DAYS'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'L_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'L_UID'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH1_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH2_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'MONTH3_PRICE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LECTURE_ACTIVE_SEL'
    object LECTURE_ACTIVE_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LECTURE_ACTIVE_SELL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object LECTURE_ACTIVE_SELL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object LECTURE_ACTIVE_SELL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object LECTURE_ACTIVE_SELL_TIME_WEEK: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object LECTURE_ACTIVE_SELL_DAYS: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object LECTURE_ACTIVE_SELL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object LECTURE_ACTIVE_SELSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object LECTURE_ACTIVE_SELTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object LECTURE_ACTIVE_SELL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object LECTURE_ACTIVE_SELCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object LECTURE_ACTIVE_SELIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object LECTURE_ACTIVE_SELL_DURATION: TStringField
      FieldName = 'L_DURATION'
    end
    object LECTURE_ACTIVE_SELL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object LECTURE_ACTIVE_SELL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object LECTURE_ACTIVE_SELL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object LECTURE_ACTIVE_SELEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object LECTURE_ACTIVE_SELPLAN_MEN: TSmallintField
      FieldName = 'PLAN_MEN'
    end
    object LECTURE_ACTIVE_SELREGIST_MEN: TSmallintField
      FieldName = 'REGIST_MEN'
    end
    object LECTURE_ACTIVE_SELWAIT_MEN: TSmallintField
      FieldName = 'WAIT_MEN'
    end
    object LECTURE_ACTIVE_SELDROP_MEN: TSmallintField
      FieldName = 'DROP_MEN'
    end
    object LECTURE_ACTIVE_SELTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object LECTURE_ACTIVE_SELTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
    end
    object LECTURE_ACTIVE_SELTEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
    object LECTURE_ACTIVE_SELCALC_KIND: TSmallintField
      FieldName = 'CALC_KIND'
    end
    object LECTURE_ACTIVE_SELMONTH1_DAYS: TSmallintField
      FieldName = 'MONTH1_DAYS'
    end
    object LECTURE_ACTIVE_SELMONTH2_DAYS: TSmallintField
      FieldName = 'MONTH2_DAYS'
    end
    object LECTURE_ACTIVE_SELMONTH3_DAYS: TSmallintField
      FieldName = 'MONTH3_DAYS'
    end
    object LECTURE_ACTIVE_SELL_IDX: TSmallintField
      FieldName = 'L_IDX'
    end
    object LECTURE_ACTIVE_SELL_UID: TIntegerField
      FieldName = 'L_UID'
    end
    object LECTURE_ACTIVE_SELMONTH1_PRICE: TFloatField
      FieldName = 'MONTH1_PRICE'
    end
    object LECTURE_ACTIVE_SELMONTH2_PRICE: TFloatField
      FieldName = 'MONTH2_PRICE'
    end
    object LECTURE_ACTIVE_SELMONTH3_PRICE: TFloatField
      FieldName = 'MONTH3_PRICE'
    end
  end
end
