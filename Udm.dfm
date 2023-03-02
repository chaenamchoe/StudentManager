object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 767
  Width = 1000
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 32
    Top = 16
  end
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'D:\fb_data\StudentManager\'#51032#51221#48512#49884'\'#49569#49328'2'#46041'\uijungbu.FDB'
    Username = 'sysdba'
    Server = '210.122.7.67'
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 64
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object q_CLASSROOM: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO CLASSROOM'
      '  (ID, DONG_ID, C_NAME, IDX)'
      'VALUES'
      '  (:ID, :DONG_ID, :C_NAME, :IDX)')
    SQLDelete.Strings = (
      'DELETE FROM CLASSROOM'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CLASSROOM'
      'SET'
      '  ID = :ID, DONG_ID = :DONG_ID, C_NAME = :C_NAME, IDX = :IDX'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CLASSROOM'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, DONG_ID, C_NAME, IDX FROM CLASSROOM'
      'WHERE'
      '  ID = :P_1_ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from CLASSROOM'
      'where dong_id = :dong_id'
      'order by id')
    MasterFields = 'ID'
    DetailFields = 'DONG_ID'
    OnNewRecord = q_CLASSROOMNewRecord
    Left = 256
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end>
    object q_CLASSROOMID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_CLASSROOMDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_CLASSROOMC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 30
    end
    object q_CLASSROOMIDX: TIntegerField
      Alignment = taCenter
      FieldName = 'IDX'
    end
  end
  object d_CLASSROOM: TDataSource
    DataSet = q_CLASSROOM
    Left = 256
    Top = 64
  end
  object t_DONG_CODE: TUniTable
    TableName = 'DONG_CODE'
    OrderFields = 'ID'
    Connection = UniConnection1
    KeyFields = 'ID'
    Left = 152
    Top = 16
    object t_DONG_CODEID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object t_DONG_CODEDONG: TStringField
      FieldName = 'DONG'
      Size = 30
    end
    object t_DONG_CODEGUGUN_ID: TIntegerField
      FieldName = 'GUGUN_ID'
    end
    object t_DONG_CODESIDO_ID: TIntegerField
      FieldName = 'SIDO_ID'
    end
  end
  object t_LOGIN_USER: TUniTable
    TableName = 'LOGIN_USER'
    Connection = UniConnection1
    KeyFields = 'ID'
    OnNewRecord = t_LOGIN_USERNewRecord
    Left = 455
    Top = 16
    object t_LOGIN_USERID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object t_LOGIN_USERDONG_ID: TStringField
      DisplayLabel = #49548#49549#47749
      FieldName = 'DONG_ID'
      Size = 17
    end
    object t_LOGIN_USERUSER_NAME: TStringField
      DisplayLabel = #49324#50857#51088#47749
      FieldName = 'USER_NAME'
    end
    object t_LOGIN_USERLOGIN_ID: TStringField
      DisplayLabel = #47196#44536#51064'ID'
      FieldName = 'LOGIN_ID'
    end
    object t_LOGIN_USERLOGIN_PASS: TStringField
      DisplayLabel = #54056#49828#50892#46300
      FieldName = 'LOGIN_PASS'
    end
    object t_LOGIN_USERUSER_KIND: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = #49324#50857#51088#44428#54620
      FieldName = 'USER_KIND'
    end
  end
  object t_DC_KIND: TUniTable
    TableName = 'DC_KIND'
    Connection = UniConnection1
    KeyFields = 'ID'
    OnNewRecord = t_DC_KINDNewRecord
    Left = 541
    Top = 16
    object t_DC_KINDID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object t_DC_KINDKIND_NAME: TStringField
      FieldName = 'KIND_NAME'
    end
  end
  object d_DONG_CODE: TDataSource
    DataSet = t_DONG_CODE
    Left = 152
    Top = 64
  end
  object d_LOGIN_USER: TDataSource
    DataSet = t_LOGIN_USER
    Left = 455
    Top = 64
  end
  object d_DC_KIND: TDataSource
    DataSet = t_DC_KIND
    Left = 541
    Top = 64
  end
  object q_LECTURE_look: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_ACTIVE'
      
        '  (ID, DONG_ID, L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_M' +
        'ONTH, START_DATE, TEACHER_ID, L_PRICE, CLASSROOM_ID, IS_ACTIVE, ' +
        'L_DURATION, L_TIME, L_TIME_START, L_TIME_END, END_DATE, PLAN_MEN' +
        ', REGIST_MEN, WAIT_MEN, DROP_MEN)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DA' +
        'YS, :L_MONTH, :START_DATE, :TEACHER_ID, :L_PRICE, :CLASSROOM_ID,' +
        ' :IS_ACTIVE, :L_DURATION, :L_TIME, :L_TIME_START, :L_TIME_END, :' +
        'END_DATE, :PLAN_MEN, :REGIST_MEN, :WAIT_MEN, :DROP_MEN)')
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
        'WAIT_MEN = :WAIT_MEN, DROP_MEN = :DROP_MEN'
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
        '_MEN, REGIST_MEN, WAIT_MEN, DROP_MEN FROM LECTURE_ACTIVE'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select distinct * from LECTURE_ACTIVE'
      'order by l_name')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    OnNewRecord = q_LECTURENewRecord
    Left = 337
    Top = 222
    object q_LECTURE_lookID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LECTURE_lookL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
  end
  object d_LECTURE_look: TDataSource
    DataSet = q_LECTURE_look
    Left = 337
    Top = 270
  end
  object t_TIME_START: TUniTable
    TableName = 'TIME_TABLE'
    Connection = UniConnection1
    KeyFields = 'ID'
    IndexFieldNames = 'ID'
    Left = 540
    Top = 119
    object t_TIME_STARTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object t_TIME_STARTTIME_STR: TStringField
      FieldName = 'TIME_STR'
      Size = 5
    end
  end
  object d_TIME_START: TDataSource
    DataSet = t_TIME_START
    Left = 540
    Top = 167
  end
  object t_TIME_END: TUniTable
    TableName = 'TIME_TABLE'
    Connection = UniConnection1
    KeyFields = 'ID'
    IndexFieldNames = 'ID'
    Left = 620
    Top = 119
    object t_TIME_ENDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object t_TIME_ENDTIME_STR: TStringField
      FieldName = 'TIME_STR'
      Size = 5
    end
  end
  object d_TIME_END: TDataSource
    DataSet = t_TIME_END
    Left = 620
    Top = 167
  end
  object q_TEACHER_LOOK: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO TEACHER'
      '  (ID, DONG_ID, T_NAME)'
      'VALUES'
      '  (:ID, :DONG_ID, :T_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM TEACHER'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE TEACHER'
      'SET'
      '  ID = :ID, DONG_ID = :DONG_ID, T_NAME = :T_NAME'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM TEACHER'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, DONG_ID, T_NAME FROM TEACHER'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select ID, DONG_ID, T_NAME from TEACHER'
      'where is_active = 1'
      'order by t_name')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 360
    Top = 114
    object StringField1: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object StringField2: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object StringField3: TStringField
      FieldName = 'T_NAME'
    end
  end
  object d_TEACHER_LOOK: TDataSource
    DataSet = q_TEACHER_LOOK
    Left = 360
    Top = 162
  end
  object UniSQL: TUniSQL
    Connection = UniConnection1
    SQL.Strings = (
      'select current_date from rdb$database')
    Left = 32
    Top = 240
  end
  object t_sido: TUniTable
    TableName = 'SIDO_TABLE'
    Connection = UniConnection1
    KeyFields = 'ID'
    Left = 554
    Top = 220
    object t_sidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object t_sidoSIDO_NAME: TStringField
      FieldName = 'SIDO_NAME'
      Size = 10
    end
  end
  object q_gugun: TUniQuery
    KeyFields = 'ID'
    Connection = UniConnection1
    SQL.Strings = (
      'select * from GUGUN_TABLE'
      'where sido_id = :sido_id')
    Left = 626
    Top = 220
    ParamData = <
      item
        DataType = ftInteger
        Name = 'sido_id'
        ParamType = ptInput
      end>
    object q_gugunID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_gugunSIDO_ID: TIntegerField
      FieldName = 'SIDO_ID'
    end
    object q_gugunGUGUN_NAME: TStringField
      FieldName = 'GUGUN_NAME'
    end
  end
  object d_sido: TDataSource
    DataSet = t_sido
    Left = 554
    Top = 268
  end
  object d_gugun: TDataSource
    DataSet = q_gugun
    Left = 626
    Top = 268
  end
  object d_dong: TDataSource
    DataSet = q_dong
    Left = 706
    Top = 268
  end
  object q_dong: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO DONG_CODE'
      '  (ID, DONG, GUGUN_ID, SIDO_ID)'
      'VALUES'
      '  (:ID, :DONG, :GUGUN_ID, :SIDO_ID)')
    SQLDelete.Strings = (
      'DELETE FROM DONG_CODE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE DONG_CODE'
      'SET'
      
        '  ID = :ID, DONG = :DONG, GUGUN_ID = :GUGUN_ID, SIDO_ID = :SIDO_' +
        'ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM DONG_CODE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, DONG, GUGUN_ID, SIDO_ID FROM DONG_CODE'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from dong_code'
      'where gugun_id = :gugun_id')
    Left = 706
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gugun_id'
      end>
    object q_dongID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_dongDONG: TStringField
      FieldName = 'DONG'
      Size = 30
    end
    object q_dongGUGUN_ID: TIntegerField
      FieldName = 'GUGUN_ID'
    end
    object q_dongSIDO_ID: TIntegerField
      FieldName = 'SIDO_ID'
    end
  end
  object q_LECTURE_VIEW_MONTH: TUniQuery
    KeyFields = 'ID'
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
    Connection = UniConnection1
    SQL.Strings = (
      'select * from LECTURE_WITH_TEACHER_VIEW'
      
        'where dong_id = :dong_id and l_year = :l_year and l_step = :l_st' +
        'ep')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 452
    Top = 222
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
    object StringField4: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object StringField5: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object IntegerField1: TIntegerField
      FieldName = 'L_YEAR'
    end
    object IntegerField2: TIntegerField
      FieldName = 'L_STEP'
    end
    object StringField6: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object IntegerField3: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object StringField7: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object IntegerField4: TIntegerField
      FieldName = 'L_MONTH'
    end
    object StringField8: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object FloatField1: TFloatField
      FieldName = 'L_PRICE'
    end
    object StringField9: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object IntegerField5: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object StringField10: TStringField
      FieldName = 'L_DURATION'
    end
    object StringField11: TStringField
      FieldName = 'T_NAME'
    end
    object StringField12: TStringField
      FieldName = 'BANK_NAME'
    end
    object StringField13: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object FloatField2: TFloatField
      FieldName = 'L_TIME'
    end
    object SmallintField1: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object SmallintField2: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object StringField14: TStringField
      FieldName = 'C_NAME'
      Size = 30
    end
    object IntegerField6: TIntegerField
      FieldName = 'ROOM_IDX'
    end
    object q_LECTURE_VIEW_MONTHSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_VIEW_MONTHEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
  end
  object d_LECTURE_VIEW_MONTH: TDataSource
    DataSet = q_LECTURE_VIEW_MONTH
    Left = 452
    Top = 270
  end
  object t_payback_reason: TUniTable
    TableName = 'PAYBACK_REASON'
    Connection = UniConnection1
    KeyFields = 'ID'
    OnNewRecord = t_payback_reasonNewRecord
    Left = 715
    Top = 119
    object t_payback_reasonID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object t_payback_reasonREASON_NAME: TStringField
      FieldName = 'REASON_NAME'
    end
  end
  object d_payback_reason: TDataSource
    DataSet = t_payback_reason
    Left = 715
    Top = 167
  end
  object q_basic_value: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO BASIC_VALUE'
      
        '  (ID, CITY_BOJO_PRICE, CITY_BOJO_PERCENT, CITY_BOJO_KIND, LECTU' +
        'RE_PRICE, LECTURE_PERCENT, LECTURE_KIND, DONG_ID, REGIST_MONEY_A' +
        'UTOADD, LECTURE_REPORT_JIGWI, LECTURE_REPORT_NAME, CASH_RECEIPT_' +
        'CONTACTS)'
      'VALUES'
      
        '  (:ID, :CITY_BOJO_PRICE, :CITY_BOJO_PERCENT, :CITY_BOJO_KIND, :' +
        'LECTURE_PRICE, :LECTURE_PERCENT, :LECTURE_KIND, :DONG_ID, :REGIS' +
        'T_MONEY_AUTOADD, :LECTURE_REPORT_JIGWI, :LECTURE_REPORT_NAME, :C' +
        'ASH_RECEIPT_CONTACTS)')
    SQLDelete.Strings = (
      'DELETE FROM BASIC_VALUE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE BASIC_VALUE'
      'SET'
      
        '  ID = :ID, CITY_BOJO_PRICE = :CITY_BOJO_PRICE, CITY_BOJO_PERCEN' +
        'T = :CITY_BOJO_PERCENT, '
      
        '  CITY_BOJO_KIND = :CITY_BOJO_KIND, LECTURE_PRICE = :LECTURE_PRI' +
        'CE, LECTURE_PERCENT = :LECTURE_PERCENT, '
      
        '  LECTURE_KIND = :LECTURE_KIND, DONG_ID = :DONG_ID, REGIST_MONEY' +
        '_AUTOADD = :REGIST_MONEY_AUTOADD, '
      
        '  LECTURE_REPORT_JIGWI = :LECTURE_REPORT_JIGWI, LECTURE_REPORT_N' +
        'AME = :LECTURE_REPORT_NAME, '
      
        '  CASH_RECEIPT_CONTACTS = :CASH_RECEIPT_CONTACTS, CENTER_CHIEF_N' +
        'AME = :CENTER_CHIEF_NAME'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM BASIC_VALUE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, CITY_BOJO_PRICE, CITY_BOJO_PERCENT, CITY_BOJO_KIND, L' +
        'ECTURE_PRICE, LECTURE_PERCENT, LECTURE_KIND, DONG_ID, REGIST_MON' +
        'EY_AUTOADD, LECTURE_REPORT_JIGWI, LECTURE_REPORT_NAME, CASH_RECE' +
        'IPT_CONTACTS FROM BASIC_VALUE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM BASIC_VALUE'
      ''
      ') q')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from basic_value')
    Left = 627
    Top = 14
    object q_basic_valueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_basic_valueCITY_BOJO_PRICE: TFloatField
      FieldName = 'CITY_BOJO_PRICE'
    end
    object q_basic_valueCITY_BOJO_PERCENT: TFloatField
      FieldName = 'CITY_BOJO_PERCENT'
    end
    object q_basic_valueCITY_BOJO_KIND: TIntegerField
      FieldName = 'CITY_BOJO_KIND'
    end
    object q_basic_valueLECTURE_PRICE: TFloatField
      FieldName = 'LECTURE_PRICE'
    end
    object q_basic_valueLECTURE_PERCENT: TFloatField
      FieldName = 'LECTURE_PERCENT'
    end
    object q_basic_valueLECTURE_KIND: TIntegerField
      FieldName = 'LECTURE_KIND'
    end
    object q_basic_valueDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_basic_valueREGIST_MONEY_AUTOADD: TSmallintField
      FieldName = 'REGIST_MONEY_AUTOADD'
    end
    object q_basic_valueLECTURE_REPORT_JIGWI: TStringField
      FieldName = 'LECTURE_REPORT_JIGWI'
    end
    object q_basic_valueLECTURE_REPORT_NAME: TStringField
      FieldName = 'LECTURE_REPORT_NAME'
      Size = 10
    end
    object q_basic_valueCASH_RECEIPT_CONTACTS: TStringField
      FieldName = 'CASH_RECEIPT_CONTACTS'
      Size = 30
    end
    object q_basic_valueMONEY_BACK_REPORT_WAY: TSmallintField
      FieldName = 'MONEY_BACK_REPORT_WAY'
    end
    object q_basic_valueCENTER_CHIEF_NAME: TStringField
      FieldName = 'CENTER_CHIEF_NAME'
    end
  end
  object d_basic_value: TDataSource
    DataSet = q_basic_value
    Left = 627
    Top = 62
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
    Connection = UniConnection1
    SQL.Strings = (
      'select '
      '    lecture_active.l_name,'
      '    REGISTED_LECTURE.lecture_id,'
      '    REGISTED_LECTURE.student_id,'
      '    REGISTED_LECTURE.p_date,'
      '    REGISTED_LECTURE.pay_amount,'
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
      '    REGISTED_LECTURE.reg_price1,'
      '    REGISTED_LECTURE.reg_price2,'
      '    REGISTED_LECTURE.reg_price3,'
      '    REGISTED_LECTURE.out_price1,'
      '    REGISTED_LECTURE.out_price2,'
      '    REGISTED_LECTURE.out_price3,'
      '    REGISTED_LECTURE.out_when,'
      '    REGISTED_LECTURE.bigo,'
      '    REGISTED_LECTURE.CASHBILL_REGISTED,'
      '    lecture_active.teacher_id,'
      '    students.s_name,'
      '    students.s_tel,'
      '    students.s_addr,'
      '    students.s_kind,'
      '    students.s_sex,'
      '    students.s_birth,'
      '    students.s_dong,'
      '    students.CASH_RECEIPT_NO,'
      '    students.CASH_RECEIPT_YESNO,'
      '    teacher.t_name,'
      '    teacher.t_sex,'
      '    teacher.t_tel,'
      '    teacher.bank_name,'
      '    teacher.bank_no,'
      '    REGISTED_LECTURE.id,'
      '    REGISTED_LECTURE.r_date2,'
      '    REGISTED_LECTURE.out_kind2,'
      '    REGISTED_LECTURE.out_when2,'
      '    REGISTED_LECTURE.out_amount2'
      'from teacher'
      
        '   inner join lecture_active on (teacher.id = lecture_active.tea' +
        'cher_id)'
      
        '   right outer join registed_lecture on (lecture_active.id = reg' +
        'isted_lecture.lecture_id)'
      
        '   inner join students on (registed_lecture.student_id = student' +
        's.id)'
      'where REGISTED_LECTURE.lecture_id = :lecture_id'
      'order by p_date, id')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 344
    Top = 327
    ParamData = <
      item
        DataType = ftString
        Name = 'lecture_id'
        ParamType = ptInput
      end>
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
    object q_REQUEST_VIEWPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,0'
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
    object q_REQUEST_VIEWOUT_PRICE1: TFloatField
      FieldName = 'OUT_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWOUT_PRICE2: TFloatField
      FieldName = 'OUT_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWOUT_PRICE3: TFloatField
      FieldName = 'OUT_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWOUT_WHEN: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_WHEN'
      ReadOnly = True
    end
    object q_REQUEST_VIEWBIGO: TStringField
      FieldName = 'BIGO'
      ReadOnly = True
    end
    object q_REQUEST_VIEWTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_REQUEST_VIEWT_NAME: TStringField
      FieldName = 'T_NAME'
      ReadOnly = True
    end
    object q_REQUEST_VIEWT_SEX: TStringField
      FieldName = 'T_SEX'
      ReadOnly = True
      Size = 4
    end
    object q_REQUEST_VIEWT_TEL: TStringField
      FieldName = 'T_TEL'
      ReadOnly = True
      Size = 30
    end
    object q_REQUEST_VIEWBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      ReadOnly = True
    end
    object q_REQUEST_VIEWBANK_NO: TStringField
      FieldName = 'BANK_NO'
      ReadOnly = True
      Size = 30
    end
    object q_REQUEST_VIEWCASHBILL_REGISTED: TSmallintField
      Alignment = taCenter
      FieldName = 'CASHBILL_REGISTED'
      ReadOnly = True
    end
    object q_REQUEST_VIEWR_DATE2: TStringField
      Alignment = taCenter
      FieldName = 'R_DATE2'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWOUT_KIND2: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_KIND2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_WHEN2: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_WHEN2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_AMOUNT2: TFloatField
      FieldName = 'OUT_AMOUNT2'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  object d_REQUEST_VIEW: TDataSource
    DataSet = q_REQUEST_VIEW
    Left = 344
    Top = 375
  end
  object q_REGISTED_LECTURE: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO REGISTED_LECTURE'
      
        '  (ID, DONG_ID, LECTURE_ID, STUDENT_ID, P_DATE, PAY_AMOUNT, IS_D' +
        'C, PAY_KIND, R_DATE, OUT_AMOUNT, REG_KIND, PAY_WAY, PAYBACK_WAY,' +
        ' PAYBACK_BANK, PAYBACK_BANKID, OUT_KIND)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :LECTURE_ID, :STUDENT_ID, :P_DATE, :PAY_AMOUNT' +
        ', :IS_DC, :PAY_KIND, :R_DATE, :OUT_AMOUNT, :REG_KIND, :PAY_WAY, ' +
        ':PAYBACK_WAY, :PAYBACK_BANK, :PAYBACK_BANKID, :OUT_KIND)')
    SQLDelete.Strings = (
      'DELETE FROM REGISTED_LECTURE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE REGISTED_LECTURE'
      'SET'
      
        '  ID = :ID, DONG_ID = :DONG_ID, LECTURE_ID = :LECTURE_ID, STUDEN' +
        'T_ID = :STUDENT_ID, P_DATE = :P_DATE, PAY_AMOUNT = :PAY_AMOUNT, ' +
        'IS_DC = :IS_DC, PAY_KIND = :PAY_KIND, R_DATE = :R_DATE, OUT_AMOU' +
        'NT = :OUT_AMOUNT, REG_KIND = :REG_KIND, PAY_WAY = :PAY_WAY, PAYB' +
        'ACK_WAY = :PAYBACK_WAY, PAYBACK_BANK = :PAYBACK_BANK, PAYBACK_BA' +
        'NKID = :PAYBACK_BANKID, OUT_KIND = :OUT_KIND'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM REGISTED_LECTURE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, DONG_ID, LECTURE_ID, STUDENT_ID, P_DATE, PAY_AMOUNT, ' +
        'IS_DC, PAY_KIND, R_DATE, OUT_AMOUNT, REG_KIND, PAY_WAY, PAYBACK_' +
        'WAY, PAYBACK_BANK, PAYBACK_BANKID, OUT_KIND FROM REGISTED_LECTUR' +
        'E'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from REGISTED_LECTURE'
      'where lecture_id = :lecture_id')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 224
    Top = 327
    ParamData = <
      item
        DataType = ftString
        Name = 'lecture_id'
        ParamType = ptInput
      end>
    object q_REGISTED_LECTUREID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_REGISTED_LECTUREDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_REGISTED_LECTURELECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_REGISTED_LECTURESTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object q_REGISTED_LECTUREPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
    end
    object q_REGISTED_LECTUREIS_DC: TSmallintField
      FieldName = 'IS_DC'
    end
    object q_REGISTED_LECTUREPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
    end
    object q_REGISTED_LECTUREOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
    end
    object q_REGISTED_LECTUREREG_KIND: TSmallintField
      FieldName = 'REG_KIND'
    end
    object q_REGISTED_LECTUREPAY_WAY: TSmallintField
      FieldName = 'PAY_WAY'
    end
    object q_REGISTED_LECTUREPAYBACK_WAY: TSmallintField
      FieldName = 'PAYBACK_WAY'
    end
    object q_REGISTED_LECTUREPAYBACK_BANK: TStringField
      FieldName = 'PAYBACK_BANK'
    end
    object q_REGISTED_LECTUREPAYBACK_BANKID: TStringField
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object q_REGISTED_LECTUREOUT_KIND: TSmallintField
      FieldName = 'OUT_KIND'
    end
    object q_REGISTED_LECTUREP_DATE: TStringField
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REGISTED_LECTURER_DATE: TStringField
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
  end
  object d_REGISTED_LECTURE: TDataSource
    DataSet = q_REGISTED_LECTURE
    Left = 224
    Top = 375
  end
  object q_STUDENTS: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO STUDENTS'
      
        '  (ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_KIND, BIGO, REG_' +
        'DATE, S_EMAIL, S_DONG, S_BIRTH)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :S_NAME, :S_TEL, :S_ADDR, :S_SEX, :S_KIND, :BI' +
        'GO, :REG_DATE, :S_EMAIL, :S_DONG, :S_BIRTH)')
    SQLDelete.Strings = (
      'DELETE FROM STUDENTS'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE STUDENTS'
      'SET'
      
        '  ID = :ID, DONG_ID = :DONG_ID, S_NAME = :S_NAME, S_TEL = :S_TEL' +
        ', S_ADDR = :S_ADDR, S_SEX = :S_SEX, S_KIND = :S_KIND, BIGO = :BI' +
        'GO, REG_DATE = :REG_DATE, S_EMAIL = :S_EMAIL, S_DONG = :S_DONG, ' +
        'S_BIRTH = :S_BIRTH'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM STUDENTS'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_KIND, BIGO, ' +
        'REG_DATE, S_EMAIL, S_DONG, S_BIRTH FROM STUDENTS'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from STUDENTS'
      'where dong_id = :dong_id'
      'order by s_name')
    Options.StrictUpdate = False
    Options.AutoPrepare = True
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 456
    Top = 114
    ParamData = <
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end>
    object q_STUDENTSID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_STUDENTSDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_STUDENTSS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_STUDENTSS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_STUDENTSS_ADDR: TStringField
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_STUDENTSS_SEX: TStringField
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_STUDENTSBIGO: TStringField
      FieldName = 'BIGO'
      Size = 50
    end
    object q_STUDENTSS_KIND: TSmallintField
      FieldName = 'S_KIND'
    end
    object q_STUDENTSREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_STUDENTSS_EMAIL: TStringField
      FieldName = 'S_EMAIL'
      Size = 50
    end
    object q_STUDENTSS_DONG: TStringField
      FieldName = 'S_DONG'
      Size = 17
    end
    object q_STUDENTSS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
  end
  object d_STUDENTS_SEL: TDataSource
    DataSet = STUDENTS_SEL
    Left = 152
    Top = 162
  end
  object UniConnection2: TUniConnection
    ProviderName = 'InterBase'
    LoginPrompt = False
    Left = 32
    Top = 120
  end
  object dxMemCityImageData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 32
    Top = 184
    object dxMemCityImageDataid: TIntegerField
      FieldName = 'id'
    end
    object dxMemCityImageDatacity_name: TStringField
      FieldName = 'city_name'
      Size = 30
    end
    object dxMemCityImageDatadong_name: TStringField
      FieldName = 'dong_name'
      Size = 30
    end
    object dxMemCityImageDatacity_image: TBlobField
      FieldName = 'city_image'
    end
  end
  object t_account_item: TUniTable
    TableName = 'ACCOUNT_ITEM'
    Connection = UniConnection1
    KeyFields = 'id'
    IndexFieldNames = 'id'
    OnNewRecord = t_account_itemNewRecord
    Left = 581
    Top = 416
    object t_account_itemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object t_account_itemITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
    end
    object t_account_itemKIND: TSmallintField
      FieldName = 'KIND'
    end
  end
  object t_account_subitem: TUniTable
    TableName = 'ACCOUNT_SUBITEM'
    Connection = UniConnection1
    MasterSource = d_account_item
    MasterFields = 'ID'
    DetailFields = 'ITEM_ID'
    KeyFields = 'id'
    IndexFieldNames = 'id'
    OnNewRecord = t_account_subitemNewRecord
    Left = 661
    Top = 416
    object t_account_subitemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object t_account_subitemITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object t_account_subitemSUB_NAME: TStringField
      FieldName = 'SUB_NAME'
    end
    object t_account_subitemKIND: TSmallintField
      FieldName = 'KIND'
    end
  end
  object t_account_detail: TUniTable
    TableName = 'ACCOUNT_DETAILITEM'
    Connection = UniConnection1
    MasterSource = d_account_subitem
    MasterFields = 'ID'
    DetailFields = 'SUBITEM_ID'
    KeyFields = 'id'
    IndexFieldNames = 'id'
    OnNewRecord = t_account_detailNewRecord
    Left = 741
    Top = 416
    object t_account_detailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object t_account_detailSUBITEM_ID: TIntegerField
      FieldName = 'SUBITEM_ID'
    end
    object t_account_detailDETAIL_NAME: TStringField
      FieldName = 'DETAIL_NAME'
    end
    object t_account_detailKIND: TSmallintField
      FieldName = 'KIND'
    end
  end
  object d_account_item: TDataSource
    DataSet = t_account_item
    Left = 581
    Top = 464
  end
  object d_account_subitem: TDataSource
    DataSet = t_account_subitem
    Left = 661
    Top = 464
  end
  object d_account_detail: TDataSource
    DataSet = t_account_detail
    Left = 741
    Top = 464
  end
  object q_account_expense_budget: TUniQuery
    KeyFields = 'id'
    SQLInsert.Strings = (
      'INSERT INTO ACCOUNT_EXPENSE_BUDGET'
      
        '  (ID, ACC_YEAR, ACC_ITEM, ACC_SUBITEM, ACC_DETAIL, ACC_BUDGET, ' +
        'ACC_DESCRIPT, ACC_EXPENSE, ACC_BIGO, ACC_DONG_ID, ACC_KIND)'
      'VALUES'
      
        '  (:ID, :ACC_YEAR, :ACC_ITEM, :ACC_SUBITEM, :ACC_DETAIL, :ACC_BU' +
        'DGET, :ACC_DESCRIPT, :ACC_EXPENSE, :ACC_BIGO, :ACC_DONG_ID, :ACC' +
        '_KIND)')
    SQLDelete.Strings = (
      'DELETE FROM ACCOUNT_EXPENSE_BUDGET'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE ACCOUNT_EXPENSE_BUDGET'
      'SET'
      
        '  ID = :ID, ACC_YEAR = :ACC_YEAR, ACC_ITEM = :ACC_ITEM, ACC_SUBI' +
        'TEM = :ACC_SUBITEM, ACC_DETAIL = :ACC_DETAIL, ACC_BUDGET = :ACC_' +
        'BUDGET, ACC_DESCRIPT = :ACC_DESCRIPT, ACC_EXPENSE = :ACC_EXPENSE' +
        ', ACC_BIGO = :ACC_BIGO, ACC_DONG_ID = :ACC_DONG_ID, ACC_KIND = :' +
        'ACC_KIND'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM ACCOUNT_EXPENSE_BUDGET'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, ACC_YEAR, ACC_ITEM, ACC_SUBITEM, ACC_DETAIL, ACC_BUDG' +
        'ET, ACC_DESCRIPT, ACC_EXPENSE, ACC_BIGO, ACC_DONG_ID, ACC_KIND F' +
        'ROM ACCOUNT_EXPENSE_BUDGET'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from account_expense_budget'
      
        'where acc_year = :acc_year and acc_dong_id = :dong_id and acc_ki' +
        'nd = :acc_kind'
      'order by ACC_YEAR, ACC_ITEM, ACC_SUBITEM, ACC_DETAIL')
    OnNewRecord = q_account_expense_budgetNewRecord
    Left = 72
    Top = 499
    ParamData = <
      item
        DataType = ftInteger
        Name = 'acc_year'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'acc_kind'
        ParamType = ptInput
      end>
    object q_account_expense_budgetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_account_expense_budgetACC_YEAR: TIntegerField
      FieldName = 'ACC_YEAR'
    end
    object q_account_expense_budgetACC_ITEM: TIntegerField
      FieldName = 'ACC_ITEM'
    end
    object q_account_expense_budgetACC_SUBITEM: TIntegerField
      FieldName = 'ACC_SUBITEM'
    end
    object q_account_expense_budgetACC_DETAIL: TIntegerField
      FieldName = 'ACC_DETAIL'
    end
    object q_account_expense_budgetACC_BUDGET: TFloatField
      FieldName = 'ACC_BUDGET'
      DisplayFormat = '#,'
    end
    object q_account_expense_budgetACC_DESCRIPT: TStringField
      FieldName = 'ACC_DESCRIPT'
      Size = 200
    end
    object q_account_expense_budgetACC_EXPENSE: TFloatField
      FieldName = 'ACC_EXPENSE'
      DisplayFormat = '#,'
    end
    object q_account_expense_budgetACC_BIGO: TStringField
      FieldName = 'ACC_BIGO'
      Size = 50
    end
    object q_account_expense_budgetACC_DONG_ID: TStringField
      FieldName = 'ACC_DONG_ID'
      Size = 17
    end
    object q_account_expense_budgetACC_KIND: TIntegerField
      FieldName = 'ACC_KIND'
    end
  end
  object d_account_expense_budget: TDataSource
    DataSet = q_account_expense_budget
    Left = 72
    Top = 547
  end
  object t_acc_itemlook: TUniTable
    TableName = 'ACCOUNT_ITEM'
    Connection = UniConnection1
    KeyFields = 'id'
    IndexFieldNames = 'id'
    OnNewRecord = t_account_itemNewRecord
    Left = 581
    Top = 512
    object IntegerField7: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField15: TStringField
      FieldName = 'ITEM_NAME'
    end
  end
  object t_acc_sublook: TUniTable
    TableName = 'ACCOUNT_SUBITEM'
    Connection = UniConnection1
    MasterFields = 'ID'
    DetailFields = 'ITEM_ID'
    KeyFields = 'id'
    IndexFieldNames = 'id'
    OnNewRecord = t_account_subitemNewRecord
    Left = 661
    Top = 512
    object IntegerField8: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object StringField16: TStringField
      FieldName = 'SUB_NAME'
    end
  end
  object t_acc_detaillook: TUniTable
    TableName = 'ACCOUNT_DETAILITEM'
    Connection = UniConnection1
    MasterFields = 'ID'
    DetailFields = 'SUBITEM_ID'
    KeyFields = 'id'
    IndexFieldNames = 'id'
    OnNewRecord = t_account_detailNewRecord
    Left = 741
    Top = 512
    object IntegerField10: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'SUBITEM_ID'
    end
    object StringField17: TStringField
      FieldName = 'DETAIL_NAME'
    end
  end
  object d_acc_itemlook: TDataSource
    DataSet = t_acc_itemlook
    Left = 581
    Top = 560
  end
  object d_acc_sublook: TDataSource
    DataSet = t_acc_sublook
    Left = 661
    Top = 560
  end
  object d_acc_detaillook: TDataSource
    DataSet = t_acc_detaillook
    Left = 741
    Top = 560
  end
  object q_money_inout: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO MONEY_INOUT'
      
        '  (ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_JUKY' +
        'O, IO_IN, IO_OUT, IO_REST, IO_DONG_ID, IO_KIND, IO_REG_LECTURE_I' +
        'D)'
      'VALUES'
      
        '  (:ID, :IO_DATE, :IO_ITEM_ID, :IO_SUBITEM_ID, :IO_DETAIL_ID, :I' +
        'O_JUKYO, :IO_IN, :IO_OUT, :IO_REST, :IO_DONG_ID, :IO_KIND, :IO_R' +
        'EG_LECTURE_ID)')
    SQLDelete.Strings = (
      'DELETE FROM MONEY_INOUT'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE MONEY_INOUT'
      'SET'
      
        '  ID = :ID, IO_DATE = :IO_DATE, IO_ITEM_ID = :IO_ITEM_ID, IO_SUB' +
        'ITEM_ID = :IO_SUBITEM_ID, IO_DETAIL_ID = :IO_DETAIL_ID, IO_JUKYO' +
        ' = :IO_JUKYO, IO_IN = :IO_IN, IO_OUT = :IO_OUT, IO_REST = :IO_RE' +
        'ST, IO_DONG_ID = :IO_DONG_ID, IO_KIND = :IO_KIND, IO_REG_LECTURE' +
        '_ID = :IO_REG_LECTURE_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM MONEY_INOUT'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_' +
        'JUKYO, IO_IN, IO_OUT, IO_REST, IO_DONG_ID, IO_KIND, IO_REG_LECTU' +
        'RE_ID FROM MONEY_INOUT'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from money_inout'
      
        'where io_dong_id = :dong_id and (io_date between :sdate and :eda' +
        'te)'
      'order by io_date')
    FetchRows = 1000
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    IndexFieldNames = 'ID'
    OnNewRecord = q_money_inoutNewRecord
    Left = 216
    Top = 514
    ParamData = <
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'sdate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'edate'
        ParamType = ptInput
      end>
    object q_money_inoutID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_money_inoutIO_DATE: TDateField
      FieldName = 'IO_DATE'
    end
    object q_money_inoutIO_ITEM_ID: TIntegerField
      FieldName = 'IO_ITEM_ID'
    end
    object q_money_inoutIO_SUBITEM_ID: TIntegerField
      FieldName = 'IO_SUBITEM_ID'
    end
    object q_money_inoutIO_DETAIL_ID: TIntegerField
      FieldName = 'IO_DETAIL_ID'
    end
    object q_money_inoutIO_JUKYO: TStringField
      FieldName = 'IO_JUKYO'
      Size = 50
    end
    object q_money_inoutIO_IN: TFloatField
      FieldName = 'IO_IN'
      DisplayFormat = '#,'
    end
    object q_money_inoutIO_OUT: TFloatField
      FieldName = 'IO_OUT'
      DisplayFormat = '#,'
    end
    object q_money_inoutIO_REST: TFloatField
      FieldName = 'IO_REST'
      DisplayFormat = '#,'
    end
    object q_money_inoutIO_DONG_ID: TStringField
      FieldName = 'IO_DONG_ID'
      Size = 17
    end
    object q_money_inoutIO_KIND: TSmallintField
      FieldName = 'IO_KIND'
    end
    object q_money_inoutIO_REG_LECTURE_ID: TStringField
      FieldName = 'IO_REG_LECTURE_ID'
      Size = 17
    end
  end
  object d_money_inout: TDataSource
    DataSet = q_money_inout
    Left = 216
    Top = 562
  end
  object q_money_inout2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO MONEY_INOUT'
      
        '  (ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_JUKY' +
        'O, IO_IN, IO_OUT, IO_REST, IO_DONG_ID, IO_KIND, IO_REG_LECTURE_I' +
        'D)'
      'VALUES'
      
        '  (:ID, :IO_DATE, :IO_ITEM_ID, :IO_SUBITEM_ID, :IO_DETAIL_ID, :I' +
        'O_JUKYO, :IO_IN, :IO_OUT, :IO_REST, :IO_DONG_ID, :IO_KIND, :IO_R' +
        'EG_LECTURE_ID)')
    SQLDelete.Strings = (
      'DELETE FROM MONEY_INOUT'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE MONEY_INOUT'
      'SET'
      
        '  ID = :ID, IO_DATE = :IO_DATE, IO_ITEM_ID = :IO_ITEM_ID, IO_SUB' +
        'ITEM_ID = :IO_SUBITEM_ID, IO_DETAIL_ID = :IO_DETAIL_ID, IO_JUKYO' +
        ' = :IO_JUKYO, IO_IN = :IO_IN, IO_OUT = :IO_OUT, IO_REST = :IO_RE' +
        'ST, IO_DONG_ID = :IO_DONG_ID, IO_KIND = :IO_KIND, IO_REG_LECTURE' +
        '_ID = :IO_REG_LECTURE_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM MONEY_INOUT'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_' +
        'JUKYO, IO_IN, IO_OUT, IO_REST, IO_DONG_ID, IO_KIND, IO_REG_LECTU' +
        'RE_ID FROM MONEY_INOUT'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      
        'select ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_' +
        'JUKYO, IO_IN + IO_OUT as PRICE, IO_DONG_ID FROM MONEY_INOUT'
      
        'where (io_dong_id = :dong_id) and (io_date between :sdate and :e' +
        'date) and (bank_id = :bank_id)'
      'order by io_date, id, io_item_id, io_subitem_id')
    FetchRows = 1000
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    OnNewRecord = q_money_inoutNewRecord
    Left = 320
    Top = 514
    ParamData = <
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'sdate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'edate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'bank_id'
        ParamType = ptInput
      end>
    object q_money_inout2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_money_inout2IO_DATE: TDateField
      Alignment = taCenter
      FieldName = 'IO_DATE'
    end
    object q_money_inout2IO_ITEM_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'IO_ITEM_ID'
    end
    object q_money_inout2IO_SUBITEM_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'IO_SUBITEM_ID'
    end
    object q_money_inout2IO_DETAIL_ID: TIntegerField
      FieldName = 'IO_DETAIL_ID'
    end
    object q_money_inout2IO_JUKYO: TStringField
      FieldName = 'IO_JUKYO'
      Size = 50
    end
    object q_money_inout2IO_DONG_ID: TStringField
      FieldName = 'IO_DONG_ID'
      Size = 17
    end
    object q_money_inout2PRICE: TFloatField
      FieldName = 'PRICE'
      ReadOnly = True
    end
  end
  object d_money_inout2: TDataSource
    DataSet = q_money_inout2
    Left = 320
    Top = 562
  end
  object t_classroom_look: TUniTable
    TableName = 'CLASSROOM'
    Connection = UniConnection1
    Left = 360
    Top = 16
    object t_classroom_lookID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object t_classroom_lookDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object t_classroom_lookC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 30
    end
    object t_classroom_lookIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
  object d_classroom_look: TDataSource
    DataSet = t_classroom_look
    Left = 360
    Top = 64
  end
  object q_expense_budget_dong: TUniQuery
    KeyFields = 'id'
    SQLInsert.Strings = (
      'INSERT INTO ACCOUNT_EXPENSE_BUDGET'
      
        '  (ID, ACC_YEAR, ACC_ITEM, ACC_SUBITEM, ACC_DETAIL, ACC_BUDGET, ' +
        'ACC_DESCRIPT, ACC_EXPENSE, ACC_BIGO, ACC_DONG_ID, ACC_KIND)'
      'VALUES'
      
        '  (:ID, :ACC_YEAR, :ACC_ITEM, :ACC_SUBITEM, :ACC_DETAIL, :ACC_BU' +
        'DGET, :ACC_DESCRIPT, :ACC_EXPENSE, :ACC_BIGO, :ACC_DONG_ID, :ACC' +
        '_KIND)')
    SQLDelete.Strings = (
      'DELETE FROM ACCOUNT_EXPENSE_BUDGET'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE ACCOUNT_EXPENSE_BUDGET'
      'SET'
      
        '  ID = :ID, ACC_YEAR = :ACC_YEAR, ACC_ITEM = :ACC_ITEM, ACC_SUBI' +
        'TEM = :ACC_SUBITEM, ACC_DETAIL = :ACC_DETAIL, ACC_BUDGET = :ACC_' +
        'BUDGET, ACC_DESCRIPT = :ACC_DESCRIPT, ACC_EXPENSE = :ACC_EXPENSE' +
        ', ACC_BIGO = :ACC_BIGO, ACC_DONG_ID = :ACC_DONG_ID, ACC_KIND = :' +
        'ACC_KIND'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM ACCOUNT_EXPENSE_BUDGET'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, ACC_YEAR, ACC_ITEM, ACC_SUBITEM, ACC_DETAIL, ACC_BUDG' +
        'ET, ACC_DESCRIPT, ACC_EXPENSE, ACC_BIGO, ACC_DONG_ID, ACC_KIND F' +
        'ROM ACCOUNT_EXPENSE_BUDGET'
      'WHERE'
      '  ID = :ID')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from account_expense_budget'
      
        'where acc_year = :acc_year and acc_kind = :acc_kind and acc_dong' +
        '_id like :dong_id'
      'order by ACC_YEAR, ACC_ITEM, ACC_SUBITEM, ACC_DETAIL')
    OnNewRecord = q_account_expense_budgetNewRecord
    Left = 72
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = 'acc_year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'acc_kind'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end>
    object IntegerField12: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField13: TIntegerField
      FieldName = 'ACC_YEAR'
    end
    object IntegerField14: TIntegerField
      FieldName = 'ACC_ITEM'
    end
    object IntegerField15: TIntegerField
      FieldName = 'ACC_SUBITEM'
    end
    object IntegerField16: TIntegerField
      FieldName = 'ACC_DETAIL'
    end
    object FloatField3: TFloatField
      FieldName = 'ACC_BUDGET'
      DisplayFormat = '#,'
    end
    object StringField18: TStringField
      FieldName = 'ACC_DESCRIPT'
      Size = 200
    end
    object FloatField4: TFloatField
      FieldName = 'ACC_EXPENSE'
      DisplayFormat = '#,'
    end
    object StringField19: TStringField
      FieldName = 'ACC_BIGO'
      Size = 50
    end
    object StringField20: TStringField
      FieldName = 'ACC_DONG_ID'
      Size = 17
    end
    object IntegerField17: TIntegerField
      FieldName = 'ACC_KIND'
    end
  end
  object d_expense_budget_dong: TDataSource
    DataSet = q_expense_budget_dong
    Left = 72
    Top = 640
  end
  object d_LECTURE: TDataSource
    DataSet = sp_lecture
    Left = 32
    Top = 352
  end
  object sp_lecture: TUniStoredProc
    StoredProcName = 'LECTURE_ACTIVE_SEL'
    Connection = UniConnection1
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    IndexFieldNames = 'L_IDX'
    Left = 32
    Top = 304
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
        DataType = ftString
        Name = 'TEACHER_ID2'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'TEACHER_ID3'
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
      end
      item
        DataType = ftString
        Name = 'PARENT_LECTURE_ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'LECTURE_ACTIVE_SEL'
    object sp_lectureID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object sp_lectureL_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'L_YEAR'
    end
    object sp_lectureL_STEP: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44592#49688
      FieldName = 'L_STEP'
    end
    object sp_lectureL_NAME: TStringField
      Alignment = taCenter
      DisplayLabel = #44053#51340#47749
      DisplayWidth = 60
      FieldName = 'L_NAME'
      Size = 60
    end
    object sp_lectureL_TIME_WEEK: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54924#49688'/'#51452
      FieldName = 'L_TIME_WEEK'
    end
    object sp_lectureL_DAYS: TStringField
      Alignment = taCenter
      DisplayLabel = #50836#51068
      FieldName = 'L_DAYS'
      Size = 15
    end
    object sp_lectureL_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44060#50900#49688
      FieldName = 'L_MONTH'
    end
    object sp_lectureSTART_DATE: TStringField
      Alignment = taCenter
      DisplayLabel = #49884#51089#51068#51088
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object sp_lectureTEACHER_ID: TStringField
      Alignment = taCenter
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object sp_lectureL_PRICE: TFloatField
      Alignment = taCenter
      DisplayLabel = #44053#51032#47308
      FieldName = 'L_PRICE'
      DisplayFormat = '#,0'
    end
    object sp_lectureCLASSROOM_ID: TStringField
      Alignment = taCenter
      DisplayLabel = #44053#51032#49892
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object sp_lectureIS_ACTIVE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_ACTIVE'
    end
    object sp_lectureL_DURATION: TStringField
      Alignment = taCenter
      DisplayLabel = #44053#51340#49884#44036
      FieldName = 'L_DURATION'
    end
    object sp_lectureL_TIME: TFloatField
      Alignment = taCenter
      DisplayLabel = #49884#44036
      FieldName = 'L_TIME'
      DisplayFormat = '#0.0'
    end
    object sp_lectureL_TIME_START: TSmallintField
      Alignment = taCenter
      DisplayLabel = #49884#51089#49884#44036
      FieldName = 'L_TIME_START'
    end
    object sp_lectureL_TIME_END: TSmallintField
      Alignment = taCenter
      DisplayLabel = #45149#49884#44036
      FieldName = 'L_TIME_END'
    end
    object sp_lectureEND_DATE: TStringField
      Alignment = taCenter
      DisplayLabel = #51333#47308#51068#51088
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object sp_lecturePLAN_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #51221#50896
      FieldName = 'PLAN_MEN'
    end
    object sp_lectureREGIST_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #46321#47197
      FieldName = 'REGIST_MEN'
    end
    object sp_lectureWAIT_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #45824#44592
      FieldName = 'WAIT_MEN'
    end
    object sp_lectureDROP_MEN: TSmallintField
      Alignment = taCenter
      DisplayLabel = #53748#44053
      FieldName = 'DROP_MEN'
    end
    object sp_lectureTOTAL_DAY: TIntegerField
      Alignment = taCenter
      DisplayLabel = #44053#51032#51068
      FieldName = 'TOTAL_DAY'
    end
    object sp_lectureTOTAL_TIME: TFloatField
      Alignment = taCenter
      DisplayLabel = #52509#49884#44036
      FieldName = 'TOTAL_TIME'
      DisplayFormat = '#0.0'
    end
    object sp_lectureTEACHER_PERCENT: TSmallintField
      Alignment = taCenter
      FieldName = 'TEACHER_PERCENT'
    end
    object sp_lectureCALC_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'CALC_KIND'
    end
    object sp_lectureMONTH1_DAYS: TSmallintField
      Alignment = taCenter
      FieldName = 'MONTH1_DAYS'
    end
    object sp_lectureMONTH2_DAYS: TSmallintField
      Alignment = taCenter
      FieldName = 'MONTH2_DAYS'
    end
    object sp_lectureMONTH3_DAYS: TSmallintField
      Alignment = taCenter
      FieldName = 'MONTH3_DAYS'
    end
    object sp_lectureL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
    object sp_lectureL_UID: TIntegerField
      FieldName = 'L_UID'
    end
    object sp_lectureMONTH1_PRICE: TFloatField
      Alignment = taCenter
      DisplayLabel = #49688#44053#47308'1'
      FieldName = 'MONTH1_PRICE'
      DisplayFormat = '#,0'
    end
    object sp_lectureMONTH2_PRICE: TFloatField
      Alignment = taCenter
      DisplayLabel = #49688#44053#47308'2'
      FieldName = 'MONTH2_PRICE'
      DisplayFormat = '#,0'
    end
    object sp_lectureMONTH3_PRICE: TFloatField
      Alignment = taCenter
      DisplayLabel = #49688#44053#47308'3'
      FieldName = 'MONTH3_PRICE'
      DisplayFormat = '#,0'
    end
    object sp_lecturePARENT_LECTURE_ID: TStringField
      FieldName = 'PARENT_LECTURE_ID'
      Size = 17
    end
    object sp_lectureTEACHER_ID2: TStringField
      Alignment = taCenter
      FieldName = 'TEACHER_ID2'
      Size = 17
    end
    object sp_lectureTEACHER_ID3: TStringField
      Alignment = taCenter
      FieldName = 'TEACHER_ID3'
      Size = 17
    end
  end
  object sp_teacher_dong: TUniStoredProc
    StoredProcName = 'TEACHER_SEL_DONG'
    Connection = UniConnection1
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 555
    Top = 318
    ParamData = <
      item
        DataType = ftString
        Name = 'TEACHER_DONG_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'T_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'T_IDNO'
        ParamType = ptOutput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'T_SEX'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftString
        Name = 'T_TEL'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'T_ADDR'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'T_EMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_NO'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'T_BIGO'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftFixedChar
        Name = 'T_BIRTH'
        ParamType = ptOutput
        Size = 10
      end>
    CommandStoredProcName = 'TEACHER_SEL_DONG'
    object sp_teacher_dongID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object sp_teacher_dongDONG_ID: TStringField
      DisplayLabel = #46041#47749
      FieldName = 'DONG_ID'
      Size = 17
    end
    object sp_teacher_dongT_NAME: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'T_NAME'
    end
    object sp_teacher_dongT_IDNO: TStringField
      DisplayLabel = #51452#48124#48264#54840
      FieldName = 'T_IDNO'
      Size = 15
    end
    object sp_teacher_dongT_SEX: TStringField
      DisplayLabel = #49457#48324
      FieldName = 'T_SEX'
      Size = 4
    end
    object sp_teacher_dongT_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'T_TEL'
      Size = 30
    end
    object sp_teacher_dongT_ADDR: TStringField
      DisplayLabel = #51452#49548
      FieldName = 'T_ADDR'
      Size = 50
    end
    object sp_teacher_dongT_EMAIL: TStringField
      DisplayLabel = #51060#47700#51068
      FieldName = 'T_EMAIL'
      Size = 50
    end
    object sp_teacher_dongBANK_NAME: TStringField
      DisplayLabel = #51008#54665#47749
      FieldName = 'BANK_NAME'
    end
    object sp_teacher_dongBANK_NO: TStringField
      DisplayLabel = #44228#51340#48264#54840
      FieldName = 'BANK_NO'
      Size = 30
    end
    object sp_teacher_dongT_BIGO: TStringField
      DisplayLabel = #48708#44256#49324#54637
      FieldName = 'T_BIGO'
      Size = 50
    end
    object sp_teacher_dongIS_ACTIVE: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54876#46041
      FieldName = 'IS_ACTIVE'
    end
    object sp_teacher_dongREG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'REG_DATE'
    end
    object sp_teacher_dongT_BIRTH: TStringField
      DisplayLabel = #49373#45380#50900#51068
      FieldName = 'T_BIRTH'
      FixedChar = True
      Size = 10
    end
    object sp_teacher_dongIDX: TIntegerField
      Alignment = taCenter
      FieldName = 'IDX'
    end
  end
  object d_teacher_dong: TDataSource
    DataSet = sp_teacher_dong
    Left = 555
    Top = 366
  end
  object sp_teacher_id: TUniStoredProc
    StoredProcName = 'TEACHER_SEL_ID'
    Connection = UniConnection1
    Left = 659
    Top = 318
    ParamData = <
      item
        DataType = ftString
        Name = 'TEACHER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'T_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'T_IDNO'
        ParamType = ptOutput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'T_SEX'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftString
        Name = 'T_TEL'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'T_ADDR'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'T_EMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_NO'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'T_BIGO'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftFixedChar
        Name = 'T_BIRTH'
        ParamType = ptOutput
        Size = 10
      end>
    CommandStoredProcName = 'TEACHER_SEL_ID'
    object sp_teacher_idID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object sp_teacher_idDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object sp_teacher_idT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object sp_teacher_idT_IDNO: TStringField
      FieldName = 'T_IDNO'
      Size = 15
    end
    object sp_teacher_idT_SEX: TStringField
      FieldName = 'T_SEX'
      Size = 4
    end
    object sp_teacher_idT_TEL: TStringField
      FieldName = 'T_TEL'
      Size = 30
    end
    object sp_teacher_idT_ADDR: TStringField
      FieldName = 'T_ADDR'
      Size = 50
    end
    object sp_teacher_idT_EMAIL: TStringField
      FieldName = 'T_EMAIL'
      Size = 50
    end
    object sp_teacher_idBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object sp_teacher_idBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object sp_teacher_idT_BIGO: TStringField
      FieldName = 'T_BIGO'
      Size = 50
    end
    object sp_teacher_idIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object sp_teacher_idREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object sp_teacher_idT_BIRTH: TStringField
      FieldName = 'T_BIRTH'
      FixedChar = True
      Size = 10
    end
  end
  object sp_teacher_iu: TUniStoredProc
    StoredProcName = 'TEACHER_IU'
    Connection = UniConnection1
    Left = 763
    Top = 318
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'T_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'T_IDNO'
        ParamType = ptInput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'T_SEX'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftString
        Name = 'T_TEL'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'T_ADDR'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'T_EMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_NO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'T_BIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'T_BIRTH'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'IDX'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'TEACHER_IU'
  end
  object d_teacher_id: TDataSource
    DataSet = sp_teacher_id
    Left = 659
    Top = 366
  end
  object STUDENTS_SEL: TUniStoredProc
    StoredProcName = 'STUDENTS_SEL'
    Connection = UniConnection1
    Left = 152
    Top = 114
    ParamData = <
      item
        DataType = ftString
        Name = 'STUDENT_DONG_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptOutput
        Size = 17
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
        DataType = ftString
        Name = 'S_SEX'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftSmallint
        Name = 'S_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'S_EMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'S_DONG'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftFixedChar
        Name = 'S_BIRTH'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_ID'
        ParamType = ptOutput
        Size = 30
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
      end>
    CommandStoredProcName = 'STUDENTS_SEL'
    object STUDENTS_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object STUDENTS_SELDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object STUDENTS_SELS_NAME: TStringField
      DisplayLabel = #49688#44053#51088#47749
      FieldName = 'S_NAME'
      Size = 30
    end
    object STUDENTS_SELS_TEL: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'S_TEL'
      Size = 30
    end
    object STUDENTS_SELS_ADDR: TStringField
      DisplayLabel = #51452#49548
      FieldName = 'S_ADDR'
      Size = 50
    end
    object STUDENTS_SELS_SEX: TStringField
      DisplayLabel = #49457#48324
      FieldName = 'S_SEX'
      Size = 4
    end
    object STUDENTS_SELS_KIND: TSmallintField
      DisplayLabel = #44396#48516
      FieldName = 'S_KIND'
    end
    object STUDENTS_SELBIGO: TStringField
      DisplayLabel = #48708#44256
      FieldName = 'BIGO'
      Size = 50
    end
    object STUDENTS_SELREG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'REG_DATE'
    end
    object STUDENTS_SELS_EMAIL: TStringField
      DisplayLabel = #51060#47700#51068
      FieldName = 'S_EMAIL'
      Size = 50
    end
    object STUDENTS_SELS_DONG: TStringField
      DisplayLabel = #46041#47749
      FieldName = 'S_DONG'
      Size = 17
    end
    object STUDENTS_SELS_BIRTH: TStringField
      DisplayLabel = #49373#45380#50900#51068
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object STUDENTS_SELBANK_NAME: TStringField
      DisplayLabel = #51008#54665#47749
      FieldName = 'BANK_NAME'
    end
    object STUDENTS_SELBANK_ID: TStringField
      DisplayLabel = #44228#51340#48264#54840
      FieldName = 'BANK_ID'
      Size = 30
    end
    object STUDENTS_SELCASH_RECEIPT_NO: TStringField
      FieldName = 'CASH_RECEIPT_NO'
      Size = 30
    end
    object STUDENTS_SELCASH_RECEIPT_YESNO: TSmallintField
      FieldName = 'CASH_RECEIPT_YESNO'
    end
  end
  object sp_students_iu: TUniStoredProc
    StoredProcName = 'STUDENTS_IU'
    Connection = UniConnection1
    Left = 248
    Top = 114
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'S_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'S_TEL'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'S_ADDR'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'S_SEX'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftSmallint
        Name = 'S_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'S_EMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'S_DONG'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftFixedChar
        Name = 'S_BIRTH'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BANK_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'BANK_ID'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'CASH_RECEIPT_NO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftSmallint
        Name = 'CASH_RECEIPT_YESNO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'STUDENTS_IU'
  end
  object STUDENTS_DEL: TUniStoredProc
    StoredProcName = 'STUDENTS_DEL'
    Connection = UniConnection1
    Left = 248
    Top = 162
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'STUDENTS_DEL'
  end
  object q_lecture_lookstep: TUniQuery
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
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LECTURE_ACTIVE'
      ''
      ') q')
    Connection = UniConnection1
    SQL.Strings = (
      'select ID, L_NAME from LECTURE_ACTIVE'
      'where l_year = :l_year and l_step = :l_step'
      'order by l_name')
    Left = 228
    Top = 222
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
    object q_lecture_lookstepID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_lecture_lookstepL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
  end
  object d_lecture_lookstep: TDataSource
    DataSet = q_lecture_lookstep
    Left = 228
    Top = 270
  end
  object UniSQLCREATE: TUniSQL
    Connection = UniConnection1
    Left = 24
    Top = 424
  end
  object UniScript1: TUniScript
    Connection = UniConnection1
    Left = 24
    Top = 480
  end
  object d_LECTURELIST_WITH_REGISTCOUNT: TDataSource
    DataSet = LECTURELIST_WITH_REGISTCOUNT
    Left = 240
    Top = 468
  end
  object q_lecture_select: TUniQuery
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
    Connection = UniConnection1
    SQL.Strings = (
      'select * from LECTURE_ACTIVE'
      'where l_year = :l_year and l_step = :l_step'
      'order by l_idx')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 451
    Top = 327
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
    object q_lecture_selectID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_lecture_selectDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_lecture_selectL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object q_lecture_selectL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object q_lecture_selectL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_lecture_selectL_TIME_WEEK: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object q_lecture_selectL_DAYS: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_lecture_selectL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object q_lecture_selectTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_lecture_selectL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_lecture_selectCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_lecture_selectIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object q_lecture_selectL_DURATION: TStringField
      FieldName = 'L_DURATION'
    end
    object q_lecture_selectL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object q_lecture_selectL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object q_lecture_selectL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object q_lecture_selectPLAN_MEN: TSmallintField
      Alignment = taCenter
      FieldName = 'PLAN_MEN'
    end
    object q_lecture_selectREGIST_MEN: TSmallintField
      Alignment = taCenter
      FieldName = 'REGIST_MEN'
    end
    object q_lecture_selectWAIT_MEN: TSmallintField
      Alignment = taCenter
      FieldName = 'WAIT_MEN'
    end
    object q_lecture_selectDROP_MEN: TSmallintField
      Alignment = taCenter
      FieldName = 'DROP_MEN'
    end
    object q_lecture_selectSTART_DATE: TStringField
      Alignment = taCenter
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_lecture_selectEND_DATE: TStringField
      Alignment = taCenter
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_lecture_selectL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
    object q_lecture_selectMONTH1_PRICE: TFloatField
      FieldName = 'MONTH1_PRICE'
    end
    object q_lecture_selectMONTH2_PRICE: TFloatField
      FieldName = 'MONTH2_PRICE'
    end
    object q_lecture_selectMONTH3_PRICE: TFloatField
      FieldName = 'MONTH3_PRICE'
    end
    object q_lecture_selectPARENT_LECTURE_ID: TStringField
      FieldName = 'PARENT_LECTURE_ID'
      Size = 17
    end
  end
  object sp_lecture_change: TUniStoredProc
    StoredProcName = 'LECTURE_ACTIVE_CHANGE_SEL'
    Connection = UniConnection1
    Left = 128
    Top = 230
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
        DataType = ftString
        Name = 'MASTER_ID'
        ParamType = ptOutput
        Size = 17
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
    CommandStoredProcName = 'LECTURE_ACTIVE_CHANGE_SEL'
    object sp_lecture_changeID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object sp_lecture_changeL_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'L_YEAR'
    end
    object sp_lecture_changeL_STEP: TIntegerField
      Alignment = taCenter
      FieldName = 'L_STEP'
    end
    object sp_lecture_changeL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object sp_lecture_changeL_TIME_WEEK: TIntegerField
      Alignment = taCenter
      FieldName = 'L_TIME_WEEK'
    end
    object sp_lecture_changeL_DAYS: TStringField
      Alignment = taCenter
      FieldName = 'L_DAYS'
      Size = 15
    end
    object sp_lecture_changeL_MONTH: TIntegerField
      Alignment = taCenter
      FieldName = 'L_MONTH'
    end
    object sp_lecture_changeSTART_DATE: TStringField
      Alignment = taCenter
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object sp_lecture_changeTEACHER_ID: TStringField
      Alignment = taCenter
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object sp_lecture_changeL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object sp_lecture_changeCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object sp_lecture_changeIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object sp_lecture_changeL_DURATION: TStringField
      FieldName = 'L_DURATION'
    end
    object sp_lecture_changeL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object sp_lecture_changeL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object sp_lecture_changeL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object sp_lecture_changeEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object sp_lecture_changePLAN_MEN: TSmallintField
      FieldName = 'PLAN_MEN'
    end
    object sp_lecture_changeREGIST_MEN: TSmallintField
      FieldName = 'REGIST_MEN'
    end
    object sp_lecture_changeWAIT_MEN: TSmallintField
      FieldName = 'WAIT_MEN'
    end
    object sp_lecture_changeDROP_MEN: TSmallintField
      FieldName = 'DROP_MEN'
    end
    object sp_lecture_changeTOTAL_DAY: TIntegerField
      Alignment = taCenter
      FieldName = 'TOTAL_DAY'
    end
    object sp_lecture_changeTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
    end
    object sp_lecture_changeTEACHER_PERCENT: TSmallintField
      FieldName = 'TEACHER_PERCENT'
    end
    object sp_lecture_changeCALC_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'CALC_KIND'
    end
    object sp_lecture_changeMONTH1_DAYS: TSmallintField
      Alignment = taCenter
      FieldName = 'MONTH1_DAYS'
    end
    object sp_lecture_changeMONTH2_DAYS: TSmallintField
      Alignment = taCenter
      FieldName = 'MONTH2_DAYS'
    end
    object sp_lecture_changeMONTH3_DAYS: TSmallintField
      Alignment = taCenter
      FieldName = 'MONTH3_DAYS'
    end
    object sp_lecture_changeMASTER_ID: TStringField
      FieldName = 'MASTER_ID'
      Size = 17
    end
    object sp_lecture_changeMONTH1_PRICE: TFloatField
      DisplayLabel = #49688#44053#47308'1'
      FieldName = 'MONTH1_PRICE'
      DisplayFormat = '#,0'
    end
    object sp_lecture_changeMONTH2_PRICE: TFloatField
      DisplayLabel = #49688#44053#47308'2'
      FieldName = 'MONTH2_PRICE'
      DisplayFormat = '#,0'
    end
    object sp_lecture_changeMONTH3_PRICE: TFloatField
      DisplayLabel = #49688#44053#47308'3'
      FieldName = 'MONTH3_PRICE'
      DisplayFormat = '#,0'
    end
  end
  object d_lecture_change: TDataSource
    DataSet = sp_lecture_change
    Left = 128
    Top = 278
  end
  object LECTURELIST_WITH_REGISTCOUNT: TUniStoredProc
    StoredProcName = 'LECTURELIST_WITH_REGISTCOUNT'
    Connection = UniConnection1
    Left = 240
    Top = 420
    ParamData = <
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
        Name = 'LMONTH'
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
        DataType = ftInteger
        Name = 'REG_COUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'L_IDX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LECTURELIST_WITH_REGISTCOUNT'
    object LECTURELIST_WITH_REGISTCOUNTID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LECTURELIST_WITH_REGISTCOUNTL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object LECTURELIST_WITH_REGISTCOUNTREG_COUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'REG_COUNT'
    end
    object LECTURELIST_WITH_REGISTCOUNTL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
  end
  object d_lecture_select: TDataSource
    DataSet = q_lecture_select
    Left = 451
    Top = 375
  end
  object LECTURELIST_WITH_OUTCOUNT: TUniStoredProc
    StoredProcName = 'LECTURELIST_WITH_OUTCOUNT'
    Connection = UniConnection1
    Left = 451
    Top = 420
    ParamData = <
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
        Name = 'LMONTH'
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
        DataType = ftInteger
        Name = 'REG_COUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'L_IDX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LECTURELIST_WITH_OUTCOUNT'
    object LECTURELIST_WITH_OUTCOUNTID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LECTURELIST_WITH_OUTCOUNTL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object LECTURELIST_WITH_OUTCOUNTREG_COUNT: TIntegerField
      Alignment = taCenter
      FieldName = 'REG_COUNT'
    end
    object LECTURELIST_WITH_OUTCOUNTL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
  end
  object d_LECTURELIST_WITH_OUTCOUNT: TDataSource
    DataSet = LECTURELIST_WITH_OUTCOUNT
    Left = 451
    Top = 468
  end
  object t_lecture_list: TUniTable
    TableName = 'LECTURE_LIST'
    Connection = UniConnection1
    IndexFieldNames = 'ID'
    Left = 710
    Top = 14
    object t_lecture_listID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object t_lecture_listLECTURE_NAME: TStringField
      FieldName = 'LECTURE_NAME'
      Size = 50
    end
    object t_lecture_listL_DESCRIPT: TMemoField
      FieldName = 'L_DESCRIPT'
      BlobType = ftMemo
    end
    object t_lecture_listL_KIND_CODE: TStringField
      FieldName = 'L_KIND_CODE'
      Size = 10
    end
    object t_lecture_listL_AREA_CODE: TStringField
      FieldName = 'L_AREA_CODE'
      Size = 10
    end
    object t_lecture_listL_QTY: TSmallintField
      FieldName = 'L_QTY'
    end
    object t_lecture_listREG_SDATE: TStringField
      FieldName = 'REG_SDATE'
      Size = 10
    end
    object t_lecture_listREG_EDATE: TStringField
      FieldName = 'REG_EDATE'
      Size = 10
    end
  end
  object d_lecture_list: TDataSource
    DataSet = t_lecture_list
    Left = 710
    Top = 62
  end
  object q_bank_account: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO BANK_ACCOUNT'
      '  (ID, BANK_NAME)'
      'VALUES'
      '  (:ID, :BANK_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM BANK_ACCOUNT'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE BANK_ACCOUNT'
      'SET'
      '  ID = :ID, BANK_NAME = :BANK_NAME'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM BANK_ACCOUNT'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, BANK_NAME FROM BANK_ACCOUNT'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM BANK_ACCOUNT'
      ''
      ') q')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from bank_account;')
    Left = 810
    Top = 117
    object q_bank_accountID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_bank_accountBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 30
    end
  end
  object d_bank_account: TDataSource
    DataSet = q_bank_account
    Left = 810
    Top = 165
  end
  object SMS_USER_SEL: TUniStoredProc
    StoredProcName = 'SMS_USER_SEL'
    Connection = UniConnection1
    Left = 864
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'UID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CERTKEY'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COPRNUM'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CORPNAME'
        ParamType = ptOutput
        Size = 70
      end
      item
        DataType = ftString
        Name = 'CEONAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BIZTYPE'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'BIZCLASS'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'POSTNUM'
        ParamType = ptOutput
        Size = 9
      end
      item
        DataType = ftString
        Name = 'ADDR1'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftString
        Name = 'ADDR2'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftString
        Name = 'MEMBERNAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'PWD'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'MASTER_TEL'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_USER_SEL'
    object SMS_USER_SELUID: TIntegerField
      FieldName = 'UID'
    end
    object SMS_USER_SELCERTKEY: TStringField
      FieldName = 'CERTKEY'
      Size = 50
    end
    object SMS_USER_SELCOPRNUM: TStringField
      FieldName = 'COPRNUM'
      Size = 10
    end
    object SMS_USER_SELCORPNAME: TStringField
      FieldName = 'CORPNAME'
      Size = 70
    end
    object SMS_USER_SELCEONAME: TStringField
      FieldName = 'CEONAME'
      Size = 30
    end
    object SMS_USER_SELBIZTYPE: TStringField
      FieldName = 'BIZTYPE'
      Size = 40
    end
    object SMS_USER_SELBIZCLASS: TStringField
      FieldName = 'BIZCLASS'
      Size = 40
    end
    object SMS_USER_SELPOSTNUM: TStringField
      FieldName = 'POSTNUM'
      Size = 9
    end
    object SMS_USER_SELADDR1: TStringField
      FieldName = 'ADDR1'
      Size = 200
    end
    object SMS_USER_SELADDR2: TStringField
      FieldName = 'ADDR2'
      Size = 200
    end
    object SMS_USER_SELMEMBERNAME: TStringField
      FieldName = 'MEMBERNAME'
      Size = 30
    end
    object SMS_USER_SELID: TStringField
      FieldName = 'ID'
    end
    object SMS_USER_SELPWD: TStringField
      FieldName = 'PWD'
    end
    object SMS_USER_SELTEL: TStringField
      FieldName = 'TEL'
    end
    object SMS_USER_SELEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object SMS_USER_SELMASTER_TEL: TStringField
      FieldName = 'MASTER_TEL'
    end
  end
  object ds_SMS_USER_SEL: TDataSource
    DataSet = SMS_USER_SEL
    Left = 864
    Top = 456
  end
  object CASHBILL_SEL: TUniStoredProc
    StoredProcName = 'CASHBILL_SEL'
    Connection = UniConnection1
    Left = 888
    Top = 200
    ParamData = <
      item
        DataType = ftDate
        Name = 'SDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'EDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CASHBILL_NO'
        ParamType = ptOutput
        Size = 24
      end
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'AMOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'TAX'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'SERVICE_CHARGE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DATA_STATUS'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'CASH_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'REF_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'REGIST_DT'
        ParamType = ptOutput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'ISSUE_DT'
        ParamType = ptOutput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'SEND_DT'
        ParamType = ptOutput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'CONFIRM_DT'
        ParamType = ptOutput
        Size = 14
      end
      item
        DataType = ftString
        Name = 'CONFIRM_NUM'
        ParamType = ptOutput
        Size = 10
      end>
    CommandStoredProcName = 'CASHBILL_SEL'
    object CASHBILL_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CASHBILL_SELCASHBILL_NO: TStringField
      FieldName = 'CASHBILL_NO'
      Size = 24
    end
    object CASHBILL_SELC_DATE: TDateField
      FieldName = 'C_DATE'
    end
    object CASHBILL_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object CASHBILL_SELAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object CASHBILL_SELTAX: TFloatField
      FieldName = 'TAX'
    end
    object CASHBILL_SELSERVICE_CHARGE: TFloatField
      FieldName = 'SERVICE_CHARGE'
    end
    object CASHBILL_SELDATA_STATUS: TIntegerField
      FieldName = 'DATA_STATUS'
    end
    object CASHBILL_SELMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 17
    end
    object CASHBILL_SELCASH_KIND: TSmallintField
      FieldName = 'CASH_KIND'
    end
    object CASHBILL_SELREF_UID: TStringField
      FieldName = 'REF_UID'
      Size = 17
    end
    object CASHBILL_SELREGIST_DT: TStringField
      FieldName = 'REGIST_DT'
      Size = 14
    end
    object CASHBILL_SELISSUE_DT: TStringField
      FieldName = 'ISSUE_DT'
      Size = 14
    end
    object CASHBILL_SELSEND_DT: TStringField
      FieldName = 'SEND_DT'
      Size = 14
    end
    object CASHBILL_SELCONFIRM_DT: TStringField
      FieldName = 'CONFIRM_DT'
      Size = 14
    end
    object CASHBILL_SELCONFIRM_NUM: TStringField
      FieldName = 'CONFIRM_NUM'
      Size = 10
    end
  end
  object ds_CASHBILL_SEL: TDataSource
    DataSet = CASHBILL_SEL
    Left = 888
    Top = 248
  end
  object CASHBILL_IU: TUniStoredProc
    StoredProcName = 'CASHBILL_IU'
    Connection = UniConnection1
    Left = 888
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'CASHBILL_NO'
        ParamType = ptInput
        Size = 24
      end
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'AMOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TAX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SERVICE_CHARGE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'CASH_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REF_UID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CASHBILL_IU'
  end
  object EMP_ATTENDING_INS: TUniStoredProc
    StoredProcName = 'EMP_ATTENDING_INS'
    Connection = UniConnection1
    Left = 216
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
        Name = 'E_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'WDATE'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'IN_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'OUT_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'W_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'W_REASON'
        ParamType = ptInput
        Size = 200
      end
      item
        DataType = ftInteger
        Name = 'W_WEEK'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'W_HOUR'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_ATTENDING_INS'
  end
  object EMP_ATTENDING_SEL: TUniStoredProc
    StoredProcName = 'EMP_ATTENDING_SEL'
    Connection = UniConnection1
    Left = 344
    Top = 624
    ParamData = <
      item
        DataType = ftDate
        Name = 'SDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'EDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'WDATE'
        ParamType = ptOutput
      end
      item
        DataType = ftTime
        Name = 'IN_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftTime
        Name = 'OUT_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'W_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'W_REASON'
        ParamType = ptOutput
        Size = 200
      end>
    CommandStoredProcName = 'EMP_ATTENDING_SEL'
    object EMP_ATTENDING_SELID: TIntegerField
      FieldName = 'ID'
    end
    object EMP_ATTENDING_SELWDATE: TDateField
      FieldName = 'WDATE'
    end
    object EMP_ATTENDING_SELIN_TIME: TTimeField
      FieldName = 'IN_TIME'
    end
    object EMP_ATTENDING_SELOUT_TIME: TTimeField
      FieldName = 'OUT_TIME'
    end
    object EMP_ATTENDING_SELW_KIND: TIntegerField
      FieldName = 'W_KIND'
    end
    object EMP_ATTENDING_SELW_REASON: TStringField
      FieldName = 'W_REASON'
      Size = 200
    end
  end
  object ds_EMP_ATTENDING_SEL: TDataSource
    DataSet = EMP_ATTENDING_SEL
    Left = 344
    Top = 672
  end
  object EMP_ATTENDING_UPD: TUniStoredProc
    StoredProcName = 'EMP_ATTENDING_UPD'
    Connection = UniConnection1
    Left = 216
    Top = 696
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'IN_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'OUT_TIME'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_ATTENDING_UPD'
  end
  object EMP_ATTENDING_SEL_ID: TUniStoredProc
    StoredProcName = 'EMP_ATTENDING_SEL_ID'
    Connection = UniConnection1
    Left = 448
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'WDATE'
        ParamType = ptOutput
      end
      item
        DataType = ftTime
        Name = 'IN_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftTime
        Name = 'OUT_TIME'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'W_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'W_REASON'
        ParamType = ptOutput
        Size = 200
      end>
    CommandStoredProcName = 'EMP_ATTENDING_SEL_ID'
    object EMP_ATTENDING_SEL_IDWDATE: TDateField
      FieldName = 'WDATE'
    end
    object EMP_ATTENDING_SEL_IDIN_TIME: TTimeField
      FieldName = 'IN_TIME'
    end
    object EMP_ATTENDING_SEL_IDOUT_TIME: TTimeField
      FieldName = 'OUT_TIME'
    end
    object EMP_ATTENDING_SEL_IDW_KIND: TIntegerField
      FieldName = 'W_KIND'
    end
    object EMP_ATTENDING_SEL_IDW_REASON: TStringField
      FieldName = 'W_REASON'
      Size = 200
    end
  end
  object ds_EMP_ATTENDING_SEL_ID: TDataSource
    DataSet = EMP_ATTENDING_SEL_ID
    Left = 448
    Top = 696
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 448
    Top = 600
  end
  object EMP_ATTENDING_IU: TUniStoredProc
    StoredProcName = 'EMP_ATTENDING_IU'
    Connection = UniConnection1
    Left = 72
    Top = 696
    ParamData = <
      item
        DataType = ftInteger
        Name = 'E_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'WDATE'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'IN_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'OUT_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'W_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'W_REASON'
        ParamType = ptInput
        Size = 200
      end
      item
        DataType = ftInteger
        Name = 'W_HOUR'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'W_WEEK'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EXT_HOUR'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'EMP_ATTENDING_IU'
  end
end
