object fmTimeTable: TfmTimeTable
  Left = 0
  Top = 0
  Caption = #44053#51032#49884#44036#54364
  ClientHeight = 631
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 55
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
      Left = 147
      Top = 4
      Width = 44
      Height = 22
      MaxValue = 4
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnMakeTable: TBitBtn
      Left = 193
      Top = 2
      Width = 105
      Height = 25
      Caption = #49884#44036#54364#51312#54924
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADA444444444AADADAD4FFFFFFF4DDADADA4F0000
        0F4A0000004FFFFFFF4D0FFFFF4F00000F4A0F00004FFFFFFF4D0FFFFF4F00F4
        444A0F00004FFFF4F4AD0FFFFF4FFFF44ADA0F00F0444444ADAD0FFFF0F0DADA
        DADA0FFFF00DADADADAD000000DADADADADAADADADADADADADAD}
      TabOrder = 2
      OnClick = btnMakeTableClick
    end
    object btnSaveExcel: TBitBtn
      Left = 601
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
      TabOrder = 3
      OnClick = btnSaveExcelClick
    end
  end
  object q_LECTURE_VIEW: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_WITH_TEACHER_VIEW'
      
        '  (ID, DONG_ID, L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_M' +
        'ONTH, START_DATE, TEACHER_ID, L_PRICE, CLASSROOM_ID, IS_ACTIVE, ' +
        'L_DURATION, L_TIME, L_TIME_START, L_TIME_END, END_DATE, T_NAME, ' +
        'BANK_NAME, BANK_NO, C_NAME, ROOM_IDX)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DA' +
        'YS, :L_MONTH, :START_DATE, :TEACHER_ID, :L_PRICE, :CLASSROOM_ID,' +
        ' :IS_ACTIVE, :L_DURATION, :L_TIME, :L_TIME_START, :L_TIME_END, :' +
        'END_DATE, :T_NAME, :BANK_NAME, :BANK_NO, :C_NAME, :ROOM_IDX)')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from LECTURE_WITH_TEACHER_VIEW'
      
        'where dong_id = :dong_id and l_year = :l_year and l_step = :l_st' +
        'ep')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 128
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dong_id'
      end
      item
        DataType = ftUnknown
        Name = 'l_year'
      end
      item
        DataType = ftUnknown
        Name = 'l_step'
      end>
    object q_LECTURE_VIEWID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object q_LECTURE_VIEWDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_LECTURE_VIEWL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object q_LECTURE_VIEWL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object q_LECTURE_VIEWL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_LECTURE_VIEWL_TIME_WEEK: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object q_LECTURE_VIEWL_DAYS: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_LECTURE_VIEWL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object q_LECTURE_VIEWTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_LECTURE_VIEWL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_LECTURE_VIEWCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_LECTURE_VIEWIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object q_LECTURE_VIEWL_DURATION: TStringField
      FieldName = 'L_DURATION'
    end
    object q_LECTURE_VIEWT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object q_LECTURE_VIEWBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object q_LECTURE_VIEWBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_LECTURE_VIEWL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object q_LECTURE_VIEWL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object q_LECTURE_VIEWL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object q_LECTURE_VIEWC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 30
    end
    object q_LECTURE_VIEWROOM_IDX: TIntegerField
      FieldName = 'ROOM_IDX'
    end
    object q_LECTURE_VIEWSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_VIEWEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
  end
  object d_LECTURE_VIEW: TDataSource
    DataSet = q_LECTURE_VIEW
    Left = 128
    Top = 192
  end
end
