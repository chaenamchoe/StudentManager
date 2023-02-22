unit Udm;

interface

uses
  SysUtils, Classes, DB, Uni, MemDS, DBAccess, UniProvider, InterBaseUniProvider,
  Dialogs, Math, DateUtils, dxmdaset, DAScript, UniScript, BaroService_CASHBILL;

type
  TStudentInfo = record
    ID : string;
    DONG_ID : string;
    S_NAME : string;
    S_BIRTH : string;
    S_TEL : string;
    S_DONG : string;
    S_ADDR : string;
    S_EMAIL : string;
    S_SEX : string;
    S_KIND : integer;
    BIGO : string;
    REG_DATE : TDateTime;
    CASH_RECEIPT_NO : string;
    CASH_RECEIPT_YESNO : SmallInt;
  end;

type
  Tdm = class(TDataModule)
    InterBaseUniProvider1: TInterBaseUniProvider;
    UniConnection1: TUniConnection;
    q_CLASSROOM: TUniQuery;
    d_CLASSROOM: TDataSource;
    t_DONG_CODE: TUniTable;
    t_LOGIN_USER: TUniTable;
    t_DC_KIND: TUniTable;
    d_DONG_CODE: TDataSource;
    d_LOGIN_USER: TDataSource;
    d_DC_KIND: TDataSource;
    t_DONG_CODEID: TStringField;
    t_DONG_CODEDONG: TStringField;
    q_CLASSROOMID: TStringField;
    q_CLASSROOMDONG_ID: TStringField;
    q_CLASSROOMC_NAME: TStringField;
    t_LOGIN_USERID: TStringField;
    t_LOGIN_USERDONG_ID: TStringField;
    t_LOGIN_USERUSER_NAME: TStringField;
    t_LOGIN_USERLOGIN_ID: TStringField;
    t_LOGIN_USERLOGIN_PASS: TStringField;
    t_LOGIN_USERUSER_KIND: TIntegerField;
    t_DC_KINDID: TIntegerField;
    t_DC_KINDKIND_NAME: TStringField;
    q_LECTURE_look: TUniQuery;
    d_LECTURE_look: TDataSource;
    q_LECTURE_lookID: TStringField;
    q_LECTURE_lookL_NAME: TStringField;
    t_TIME_START: TUniTable;
    d_TIME_START: TDataSource;
    t_TIME_STARTID: TIntegerField;
    t_TIME_STARTTIME_STR: TStringField;
    t_TIME_END: TUniTable;
    d_TIME_END: TDataSource;
    t_TIME_ENDID: TIntegerField;
    t_TIME_ENDTIME_STR: TStringField;
    q_TEACHER_LOOK: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    d_TEACHER_LOOK: TDataSource;
    q_CLASSROOMIDX: TIntegerField;
    UniSQL: TUniSQL;
    t_sido: TUniTable;
    t_sidoID: TIntegerField;
    t_sidoSIDO_NAME: TStringField;
    q_gugun: TUniQuery;
    q_gugunID: TIntegerField;
    q_gugunSIDO_ID: TIntegerField;
    q_gugunGUGUN_NAME: TStringField;
    d_sido: TDataSource;
    d_gugun: TDataSource;
    d_dong: TDataSource;
    q_dong: TUniQuery;
    q_dongID: TStringField;
    q_dongDONG: TStringField;
    q_dongGUGUN_ID: TIntegerField;
    q_dongSIDO_ID: TIntegerField;
    q_LECTURE_VIEW_MONTH: TUniQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    IntegerField3: TIntegerField;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    StringField9: TStringField;
    IntegerField5: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField2: TFloatField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    StringField14: TStringField;
    IntegerField6: TIntegerField;
    d_LECTURE_VIEW_MONTH: TDataSource;
    t_payback_reason: TUniTable;
    d_payback_reason: TDataSource;
    t_payback_reasonID: TIntegerField;
    t_payback_reasonREASON_NAME: TStringField;
    q_LECTURE_VIEW_MONTHSTART_DATE: TStringField;
    q_LECTURE_VIEW_MONTHEND_DATE: TStringField;
    q_basic_value: TUniQuery;
    d_basic_value: TDataSource;
    q_basic_valueID: TIntegerField;
    q_basic_valueCITY_BOJO_PRICE: TFloatField;
    q_basic_valueCITY_BOJO_PERCENT: TFloatField;
    q_basic_valueCITY_BOJO_KIND: TIntegerField;
    q_basic_valueLECTURE_PRICE: TFloatField;
    q_basic_valueLECTURE_PERCENT: TFloatField;
    q_basic_valueLECTURE_KIND: TIntegerField;
    q_basic_valueDONG_ID: TStringField;
    q_REQUEST_VIEW: TUniQuery;
    q_REQUEST_VIEWL_NAME: TStringField;
    q_REQUEST_VIEWLECTURE_ID: TStringField;
    q_REQUEST_VIEWSTUDENT_ID: TStringField;
    q_REQUEST_VIEWPAY_AMOUNT: TFloatField;
    q_REQUEST_VIEWS_NAME: TStringField;
    q_REQUEST_VIEWS_TEL: TStringField;
    q_REQUEST_VIEWS_KIND: TSmallintField;
    q_REQUEST_VIEWS_SEX: TStringField;
    q_REQUEST_VIEWID: TStringField;
    q_REQUEST_VIEWPAY_KIND: TSmallintField;
    q_REQUEST_VIEWOUT_AMOUNT: TFloatField;
    q_REQUEST_VIEWREG_KIND: TSmallintField;
    q_REQUEST_VIEWS_BIRTH: TStringField;
    q_REQUEST_VIEWPAY_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_WAY: TSmallintField;
    q_REQUEST_VIEWPAYBACK_BANK: TStringField;
    q_REQUEST_VIEWPAYBACK_BANKID: TStringField;
    q_REQUEST_VIEWOUT_KIND: TSmallintField;
    q_REQUEST_VIEWS_ADDR: TStringField;
    q_REQUEST_VIEWP_DATE: TStringField;
    q_REQUEST_VIEWR_DATE: TStringField;
    d_REQUEST_VIEW: TDataSource;
    q_REGISTED_LECTURE: TUniQuery;
    q_REGISTED_LECTUREID: TStringField;
    q_REGISTED_LECTUREDONG_ID: TStringField;
    q_REGISTED_LECTURELECTURE_ID: TStringField;
    q_REGISTED_LECTURESTUDENT_ID: TStringField;
    q_REGISTED_LECTUREPAY_AMOUNT: TFloatField;
    q_REGISTED_LECTUREIS_DC: TSmallintField;
    q_REGISTED_LECTUREPAY_KIND: TSmallintField;
    q_REGISTED_LECTUREOUT_AMOUNT: TFloatField;
    q_REGISTED_LECTUREREG_KIND: TSmallintField;
    q_REGISTED_LECTUREPAY_WAY: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_WAY: TSmallintField;
    q_REGISTED_LECTUREPAYBACK_BANK: TStringField;
    q_REGISTED_LECTUREPAYBACK_BANKID: TStringField;
    q_REGISTED_LECTUREOUT_KIND: TSmallintField;
    q_REGISTED_LECTUREP_DATE: TStringField;
    q_REGISTED_LECTURER_DATE: TStringField;
    d_REGISTED_LECTURE: TDataSource;
    q_STUDENTS: TUniQuery;
    q_STUDENTSID: TStringField;
    q_STUDENTSDONG_ID: TStringField;
    q_STUDENTSS_NAME: TStringField;
    q_STUDENTSS_TEL: TStringField;
    q_STUDENTSS_ADDR: TStringField;
    q_STUDENTSS_SEX: TStringField;
    q_STUDENTSBIGO: TStringField;
    q_STUDENTSS_KIND: TSmallintField;
    q_STUDENTSREG_DATE: TDateField;
    q_STUDENTSS_EMAIL: TStringField;
    q_STUDENTSS_DONG: TStringField;
    q_STUDENTSS_BIRTH: TStringField;
    d_STUDENTS_SEL: TDataSource;
    UniConnection2: TUniConnection;
    dxMemCityImageData: TdxMemData;
    dxMemCityImageDatacity_image: TBlobField;
    dxMemCityImageDatacity_name: TStringField;
    dxMemCityImageDatadong_name: TStringField;
    dxMemCityImageDataid: TIntegerField;
    t_account_item: TUniTable;
    t_account_subitem: TUniTable;
    t_account_detail: TUniTable;
    d_account_item: TDataSource;
    d_account_subitem: TDataSource;
    d_account_detail: TDataSource;
    t_account_itemID: TIntegerField;
    t_account_itemITEM_NAME: TStringField;
    t_account_subitemID: TIntegerField;
    t_account_subitemITEM_ID: TIntegerField;
    t_account_subitemSUB_NAME: TStringField;
    t_account_detailID: TIntegerField;
    t_account_detailSUBITEM_ID: TIntegerField;
    t_account_detailDETAIL_NAME: TStringField;
    q_account_expense_budget: TUniQuery;
    d_account_expense_budget: TDataSource;
    q_account_expense_budgetID: TIntegerField;
    q_account_expense_budgetACC_YEAR: TIntegerField;
    q_account_expense_budgetACC_ITEM: TIntegerField;
    q_account_expense_budgetACC_SUBITEM: TIntegerField;
    q_account_expense_budgetACC_DETAIL: TIntegerField;
    q_account_expense_budgetACC_BUDGET: TFloatField;
    q_account_expense_budgetACC_DESCRIPT: TStringField;
    q_account_expense_budgetACC_EXPENSE: TFloatField;
    q_account_expense_budgetACC_BIGO: TStringField;
    q_account_expense_budgetACC_DONG_ID: TStringField;
    q_account_expense_budgetACC_KIND: TIntegerField;
    t_acc_itemlook: TUniTable;
    IntegerField7: TIntegerField;
    StringField15: TStringField;
    t_acc_sublook: TUniTable;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField16: TStringField;
    t_acc_detaillook: TUniTable;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField17: TStringField;
    d_acc_itemlook: TDataSource;
    d_acc_sublook: TDataSource;
    d_acc_detaillook: TDataSource;
    q_money_inout: TUniQuery;
    d_money_inout: TDataSource;
    q_money_inoutID: TIntegerField;
    q_money_inoutIO_DATE: TDateField;
    q_money_inoutIO_ITEM_ID: TIntegerField;
    q_money_inoutIO_SUBITEM_ID: TIntegerField;
    q_money_inoutIO_DETAIL_ID: TIntegerField;
    q_money_inoutIO_JUKYO: TStringField;
    q_money_inoutIO_IN: TFloatField;
    q_money_inoutIO_OUT: TFloatField;
    q_money_inoutIO_REST: TFloatField;
    q_money_inoutIO_DONG_ID: TStringField;
    q_money_inoutIO_KIND: TSmallintField;
    q_money_inoutIO_REG_LECTURE_ID: TStringField;
    t_account_itemKIND: TSmallintField;
    t_account_subitemKIND: TSmallintField;
    t_account_detailKIND: TSmallintField;
    q_basic_valueREGIST_MONEY_AUTOADD: TSmallintField;
    q_money_inout2: TUniQuery;
    d_money_inout2: TDataSource;
    q_money_inout2ID: TIntegerField;
    q_money_inout2IO_DATE: TDateField;
    q_money_inout2IO_ITEM_ID: TIntegerField;
    q_money_inout2IO_SUBITEM_ID: TIntegerField;
    q_money_inout2IO_DETAIL_ID: TIntegerField;
    q_money_inout2IO_JUKYO: TStringField;
    q_money_inout2IO_DONG_ID: TStringField;
    q_money_inout2PRICE: TFloatField;
    t_classroom_look: TUniTable;
    d_classroom_look: TDataSource;
    t_classroom_lookID: TStringField;
    t_classroom_lookDONG_ID: TStringField;
    t_classroom_lookC_NAME: TStringField;
    t_classroom_lookIDX: TIntegerField;
    q_expense_budget_dong: TUniQuery;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField3: TFloatField;
    StringField18: TStringField;
    FloatField4: TFloatField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField17: TIntegerField;
    d_expense_budget_dong: TDataSource;
    d_LECTURE: TDataSource;
    sp_lecture: TUniStoredProc;
    sp_lectureID: TStringField;
    sp_lectureL_YEAR: TIntegerField;
    sp_lectureL_STEP: TIntegerField;
    sp_lectureL_NAME: TStringField;
    sp_lectureL_TIME_WEEK: TIntegerField;
    sp_lectureL_DAYS: TStringField;
    sp_lectureL_MONTH: TIntegerField;
    sp_lectureSTART_DATE: TStringField;
    sp_lectureTEACHER_ID: TStringField;
    sp_lectureL_PRICE: TFloatField;
    sp_lectureCLASSROOM_ID: TStringField;
    sp_lectureIS_ACTIVE: TIntegerField;
    sp_lectureL_DURATION: TStringField;
    sp_lectureL_TIME: TFloatField;
    sp_lectureL_TIME_START: TSmallintField;
    sp_lectureL_TIME_END: TSmallintField;
    sp_lectureEND_DATE: TStringField;
    sp_lecturePLAN_MEN: TSmallintField;
    sp_lectureREGIST_MEN: TSmallintField;
    sp_lectureWAIT_MEN: TSmallintField;
    sp_lectureDROP_MEN: TSmallintField;
    sp_lectureTOTAL_DAY: TIntegerField;
    sp_lectureTOTAL_TIME: TFloatField;
    sp_teacher_dong: TUniStoredProc;
    d_teacher_dong: TDataSource;
    sp_teacher_dongID: TStringField;
    sp_teacher_dongDONG_ID: TStringField;
    sp_teacher_dongT_NAME: TStringField;
    sp_teacher_dongT_IDNO: TStringField;
    sp_teacher_dongT_SEX: TStringField;
    sp_teacher_dongT_TEL: TStringField;
    sp_teacher_dongT_ADDR: TStringField;
    sp_teacher_dongT_EMAIL: TStringField;
    sp_teacher_dongBANK_NAME: TStringField;
    sp_teacher_dongBANK_NO: TStringField;
    sp_teacher_dongT_BIGO: TStringField;
    sp_teacher_dongIS_ACTIVE: TIntegerField;
    sp_teacher_dongREG_DATE: TDateField;
    sp_teacher_dongT_BIRTH: TStringField;
    sp_teacher_id: TUniStoredProc;
    sp_teacher_iu: TUniStoredProc;
    d_teacher_id: TDataSource;
    sp_teacher_idID: TStringField;
    sp_teacher_idDONG_ID: TStringField;
    sp_teacher_idT_NAME: TStringField;
    sp_teacher_idT_IDNO: TStringField;
    sp_teacher_idT_SEX: TStringField;
    sp_teacher_idT_TEL: TStringField;
    sp_teacher_idT_ADDR: TStringField;
    sp_teacher_idT_EMAIL: TStringField;
    sp_teacher_idBANK_NAME: TStringField;
    sp_teacher_idBANK_NO: TStringField;
    sp_teacher_idT_BIGO: TStringField;
    sp_teacher_idIS_ACTIVE: TIntegerField;
    sp_teacher_idREG_DATE: TDateField;
    sp_teacher_idT_BIRTH: TStringField;
    STUDENTS_SEL: TUniStoredProc;
    STUDENTS_SELID: TStringField;
    STUDENTS_SELDONG_ID: TStringField;
    STUDENTS_SELS_NAME: TStringField;
    STUDENTS_SELS_TEL: TStringField;
    STUDENTS_SELS_ADDR: TStringField;
    STUDENTS_SELS_SEX: TStringField;
    STUDENTS_SELS_KIND: TSmallintField;
    STUDENTS_SELBIGO: TStringField;
    STUDENTS_SELREG_DATE: TDateField;
    STUDENTS_SELS_EMAIL: TStringField;
    STUDENTS_SELS_DONG: TStringField;
    STUDENTS_SELS_BIRTH: TStringField;
    STUDENTS_SELBANK_NAME: TStringField;
    STUDENTS_SELBANK_ID: TStringField;
    sp_students_iu: TUniStoredProc;
    STUDENTS_DEL: TUniStoredProc;
    q_basic_valueLECTURE_REPORT_JIGWI: TStringField;
    q_basic_valueLECTURE_REPORT_NAME: TStringField;
    q_lecture_lookstep: TUniQuery;
    q_lecture_lookstepID: TStringField;
    q_lecture_lookstepL_NAME: TStringField;
    d_lecture_lookstep: TDataSource;
    q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField;
    q_REQUEST_VIEWIS_DC: TSmallintField;
    UniSQLCREATE: TUniSQL;
    UniScript1: TUniScript;
    d_LECTURELIST_WITH_REGISTCOUNT: TDataSource;
    q_lecture_select: TUniQuery;
    q_lecture_selectID: TStringField;
    q_lecture_selectDONG_ID: TStringField;
    q_lecture_selectL_YEAR: TIntegerField;
    q_lecture_selectL_STEP: TIntegerField;
    q_lecture_selectL_NAME: TStringField;
    q_lecture_selectL_TIME_WEEK: TIntegerField;
    q_lecture_selectL_DAYS: TStringField;
    q_lecture_selectL_MONTH: TIntegerField;
    q_lecture_selectTEACHER_ID: TStringField;
    q_lecture_selectL_PRICE: TFloatField;
    q_lecture_selectCLASSROOM_ID: TStringField;
    q_lecture_selectIS_ACTIVE: TIntegerField;
    q_lecture_selectL_DURATION: TStringField;
    q_lecture_selectL_TIME: TFloatField;
    q_lecture_selectL_TIME_START: TSmallintField;
    q_lecture_selectL_TIME_END: TSmallintField;
    q_lecture_selectPLAN_MEN: TSmallintField;
    q_lecture_selectREGIST_MEN: TSmallintField;
    q_lecture_selectWAIT_MEN: TSmallintField;
    q_lecture_selectDROP_MEN: TSmallintField;
    q_lecture_selectSTART_DATE: TStringField;
    q_lecture_selectEND_DATE: TStringField;
    t_DONG_CODEGUGUN_ID: TIntegerField;
    t_DONG_CODESIDO_ID: TIntegerField;
    sp_lectureTEACHER_PERCENT: TSmallintField;
    STUDENTS_SELCASH_RECEIPT_NO: TStringField;
    STUDENTS_SELCASH_RECEIPT_YESNO: TSmallintField;
    q_REQUEST_VIEWCASH_RECEIPT_NO: TStringField;
    q_REQUEST_VIEWCASH_RECEIPT_YESNO: TSmallintField;
    q_basic_valueCASH_RECEIPT_CONTACTS: TStringField;
    q_REQUEST_VIEWREG_MONTH: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH: TSmallintField;
    q_REQUEST_VIEWREG_MONTH2: TSmallintField;
    q_REQUEST_VIEWREG_MONTH3: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH2: TSmallintField;
    q_REQUEST_VIEWOUT_MONTH3: TSmallintField;
    sp_lectureCALC_KIND: TSmallintField;
    sp_lectureMONTH1_DAYS: TSmallintField;
    sp_lectureMONTH2_DAYS: TSmallintField;
    sp_lectureMONTH3_DAYS: TSmallintField;
    sp_lecture_change: TUniStoredProc;
    d_lecture_change: TDataSource;
    sp_lecture_changeID: TStringField;
    sp_lecture_changeL_YEAR: TIntegerField;
    sp_lecture_changeL_STEP: TIntegerField;
    sp_lecture_changeL_NAME: TStringField;
    sp_lecture_changeL_TIME_WEEK: TIntegerField;
    sp_lecture_changeL_DAYS: TStringField;
    sp_lecture_changeL_MONTH: TIntegerField;
    sp_lecture_changeSTART_DATE: TStringField;
    sp_lecture_changeTEACHER_ID: TStringField;
    sp_lecture_changeL_PRICE: TFloatField;
    sp_lecture_changeCLASSROOM_ID: TStringField;
    sp_lecture_changeIS_ACTIVE: TIntegerField;
    sp_lecture_changeL_DURATION: TStringField;
    sp_lecture_changeL_TIME: TFloatField;
    sp_lecture_changeL_TIME_START: TSmallintField;
    sp_lecture_changeL_TIME_END: TSmallintField;
    sp_lecture_changeEND_DATE: TStringField;
    sp_lecture_changePLAN_MEN: TSmallintField;
    sp_lecture_changeREGIST_MEN: TSmallintField;
    sp_lecture_changeWAIT_MEN: TSmallintField;
    sp_lecture_changeDROP_MEN: TSmallintField;
    sp_lecture_changeTOTAL_DAY: TIntegerField;
    sp_lecture_changeTOTAL_TIME: TFloatField;
    sp_lecture_changeTEACHER_PERCENT: TSmallintField;
    sp_lecture_changeCALC_KIND: TSmallintField;
    sp_lecture_changeMONTH1_DAYS: TSmallintField;
    sp_lecture_changeMONTH2_DAYS: TSmallintField;
    sp_lecture_changeMONTH3_DAYS: TSmallintField;
    sp_lecture_changeMASTER_ID: TStringField;
    q_REQUEST_VIEWS_DONG: TStringField;
    LECTURELIST_WITH_REGISTCOUNT: TUniStoredProc;
    LECTURELIST_WITH_REGISTCOUNTID: TStringField;
    LECTURELIST_WITH_REGISTCOUNTL_NAME: TStringField;
    LECTURELIST_WITH_REGISTCOUNTREG_COUNT: TIntegerField;
    d_lecture_select: TDataSource;
    LECTURELIST_WITH_OUTCOUNT: TUniStoredProc;
    d_LECTURELIST_WITH_OUTCOUNT: TDataSource;
    LECTURELIST_WITH_OUTCOUNTID: TStringField;
    LECTURELIST_WITH_OUTCOUNTL_NAME: TStringField;
    LECTURELIST_WITH_OUTCOUNTREG_COUNT: TIntegerField;
    sp_lectureL_IDX: TSmallintField;
    q_lecture_selectL_IDX: TSmallintField;
    LECTURELIST_WITH_REGISTCOUNTL_IDX: TSmallintField;
    LECTURELIST_WITH_OUTCOUNTL_IDX: TSmallintField;
    t_lecture_list: TUniTable;
    d_lecture_list: TDataSource;
    t_lecture_listID: TIntegerField;
    t_lecture_listLECTURE_NAME: TStringField;
    sp_lectureL_UID: TIntegerField;
    q_REQUEST_VIEWREG_PRICE1: TFloatField;
    q_REQUEST_VIEWREG_PRICE2: TFloatField;
    q_REQUEST_VIEWREG_PRICE3: TFloatField;
    q_REQUEST_VIEWOUT_PRICE1: TFloatField;
    q_REQUEST_VIEWOUT_PRICE2: TFloatField;
    q_REQUEST_VIEWOUT_PRICE3: TFloatField;
    sp_lectureMONTH1_PRICE: TFloatField;
    sp_lectureMONTH2_PRICE: TFloatField;
    sp_lectureMONTH3_PRICE: TFloatField;
    sp_lecture_changeMONTH1_PRICE: TFloatField;
    sp_lecture_changeMONTH2_PRICE: TFloatField;
    sp_lecture_changeMONTH3_PRICE: TFloatField;
    sp_teacher_dongIDX: TIntegerField;
    q_bank_account: TUniQuery;
    d_bank_account: TDataSource;
    q_bank_accountID: TIntegerField;
    q_bank_accountBANK_NAME: TStringField;
    q_lecture_selectMONTH1_PRICE: TFloatField;
    q_lecture_selectMONTH2_PRICE: TFloatField;
    q_lecture_selectMONTH3_PRICE: TFloatField;
    q_lecture_selectPARENT_LECTURE_ID: TStringField;
    sp_lecturePARENT_LECTURE_ID: TStringField;
    q_REQUEST_VIEWOUT_WHEN: TSmallintField;
    SMS_USER_SEL: TUniStoredProc;
    SMS_USER_SELUID: TIntegerField;
    SMS_USER_SELCERTKEY: TStringField;
    SMS_USER_SELCOPRNUM: TStringField;
    SMS_USER_SELCORPNAME: TStringField;
    SMS_USER_SELCEONAME: TStringField;
    SMS_USER_SELBIZTYPE: TStringField;
    SMS_USER_SELBIZCLASS: TStringField;
    SMS_USER_SELPOSTNUM: TStringField;
    SMS_USER_SELADDR1: TStringField;
    SMS_USER_SELADDR2: TStringField;
    SMS_USER_SELMEMBERNAME: TStringField;
    SMS_USER_SELID: TStringField;
    SMS_USER_SELPWD: TStringField;
    SMS_USER_SELTEL: TStringField;
    SMS_USER_SELEMAIL: TStringField;
    SMS_USER_SELMASTER_TEL: TStringField;
    ds_SMS_USER_SEL: TDataSource;
    CASHBILL_SEL: TUniStoredProc;
    ds_CASHBILL_SEL: TDataSource;
    CASHBILL_SELID: TIntegerField;
    CASHBILL_SELCASHBILL_NO: TStringField;
    CASHBILL_SELC_DATE: TDateField;
    CASHBILL_SELITEM_NAME: TStringField;
    CASHBILL_SELAMOUNT: TFloatField;
    CASHBILL_SELTAX: TFloatField;
    CASHBILL_SELSERVICE_CHARGE: TFloatField;
    CASHBILL_SELDATA_STATUS: TIntegerField;
    CASHBILL_SELMEMBER_ID: TStringField;
    CASHBILL_SELCASH_KIND: TSmallintField;
    CASHBILL_SELREF_UID: TStringField;
    q_REQUEST_VIEWBIGO: TStringField;
    q_REQUEST_VIEWTEACHER_ID: TStringField;
    q_REQUEST_VIEWT_NAME: TStringField;
    q_REQUEST_VIEWT_SEX: TStringField;
    q_REQUEST_VIEWT_TEL: TStringField;
    q_REQUEST_VIEWBANK_NAME: TStringField;
    q_REQUEST_VIEWBANK_NO: TStringField;
    sp_lectureTEACHER_ID2: TStringField;
    sp_lectureTEACHER_ID3: TStringField;
    CASHBILL_IU: TUniStoredProc;
    q_REQUEST_VIEWCASHBILL_REGISTED: TSmallintField;
    CASHBILL_SELREGIST_DT: TStringField;
    CASHBILL_SELISSUE_DT: TStringField;
    CASHBILL_SELSEND_DT: TStringField;
    CASHBILL_SELCONFIRM_DT: TStringField;
    CASHBILL_SELCONFIRM_NUM: TStringField;
    t_lecture_listL_DESCRIPT: TMemoField;
    t_lecture_listL_KIND_CODE: TStringField;
    t_lecture_listL_AREA_CODE: TStringField;
    t_lecture_listL_QTY: TSmallintField;
    t_lecture_listREG_SDATE: TStringField;
    t_lecture_listREG_EDATE: TStringField;
    q_REQUEST_VIEWR_DATE2: TStringField;
    q_REQUEST_VIEWOUT_KIND2: TSmallintField;
    q_REQUEST_VIEWOUT_WHEN2: TSmallintField;
    q_REQUEST_VIEWOUT_AMOUNT2: TFloatField;
    q_basic_valueMONEY_BACK_REPORT_WAY: TSmallintField;
    EMP_ATTENDING_INS: TUniStoredProc;
    EMP_ATTENDING_SEL: TUniStoredProc;
    ds_EMP_ATTENDING_SEL: TDataSource;
    EMP_ATTENDING_SELID: TIntegerField;
    EMP_ATTENDING_SELWDATE: TDateField;
    EMP_ATTENDING_SELIN_TIME: TTimeField;
    EMP_ATTENDING_SELOUT_TIME: TTimeField;
    EMP_ATTENDING_SELW_KIND: TIntegerField;
    EMP_ATTENDING_SELW_REASON: TStringField;
    EMP_ATTENDING_UPD: TUniStoredProc;
    EMP_ATTENDING_SEL_ID: TUniStoredProc;
    ds_EMP_ATTENDING_SEL_ID: TDataSource;
    EMP_ATTENDING_SEL_IDWDATE: TDateField;
    EMP_ATTENDING_SEL_IDIN_TIME: TTimeField;
    EMP_ATTENDING_SEL_IDOUT_TIME: TTimeField;
    EMP_ATTENDING_SEL_IDW_KIND: TIntegerField;
    EMP_ATTENDING_SEL_IDW_REASON: TStringField;
    UniQuery1: TUniQuery;
    procedure q_CLASSROOMNewRecord(DataSet: TDataSet);
    procedure q_LECTURENewRecord(DataSet: TDataSet);
    procedure t_LOGIN_USERNewRecord(DataSet: TDataSet);
    procedure q_REGISTED_LECTURENewRecord(DataSet: TDataSet);
    procedure t_DC_KINDNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure q_LECTURE_ATTEND_DAYNewRecord(DataSet: TDataSet);
    procedure q_STUDENT_ATTENDANCENewRecord(DataSet: TDataSet);
    procedure t_payback_reasonNewRecord(DataSet: TDataSet);
    procedure t_account_itemNewRecord(DataSet: TDataSet);
    procedure t_account_subitemNewRecord(DataSet: TDataSet);
    procedure t_account_detailNewRecord(DataSet: TDataSet);
    procedure q_account_expense_budgetNewRecord(DataSet: TDataSet);
    procedure q_money_inoutNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    StudentInfo : TStudentInfo;
    procedure ActivateDatebase;
    procedure RetrieveDefaultData(dongID : string);
    function GetMaxID(table_name, field_name: string): Integer;
    procedure SaveStudentInfoToStructure(student_id : string);
    function GetClassroomIDX(RoomID, dongID: string): Integer;
    function GetTeacherName(TeacherID, dongID: string): string;
    function GetLectureName(LectureID: string): string;
    function CheckLoginIDisOK(LoginID : string) : Boolean;
    procedure InsertRegistedLecture(RECORD_UID, LECTURE_ID, STUDENT_ID, R_DATE, P_DATE,
      PAYBACK_BANK, PAYBACK_BANKID, CASH_RECEIPT: string; PAY_AMOUNT, OUT_AMOUNT, MON_PRICE1, MON_PRICE2, MON_PRICE3: Double;
      IS_DC, PAY_KIND, REG_KIND, PAY_WAY, PAYBACK_WAY, OUT_KIND, REG_MONTH, REG_MONTH2, REG_MONTH3,
      OUT_MONTH, OUT_MONTH2, OUT_MONTH3, CASH_REG_CODE : Integer);
    procedure InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND: Integer;
      IO_DATE: TDateTime; JUKYO, DONG_ID, REG_LECTURE_ID: string;
      IO_IN, IO_OUT, IO_REST: double);
    procedure UpdateMoneyINOUT(BANK_ID, ID, ITEM_ID, SUBITEM_ID, DETAIL_ID,
      KIND: Integer; IO_DATE: TDateTime; JUKYO, DONG_ID, REG_LECTURE_ID: string;
      IO_IN, IO_OUT, IO_REST: double);
    procedure DeleteMoneyINOUT(ID: integer);
    function RegistCashBill(CashBillNo, tbMgtKey, ref_id, Member_Name: string; Amount: Double) : Integer;
    function RegistCashBillService(MgtKey, CashBillNo, ItemName: string; Amount: Double): Integer;
    procedure InsertCashBill(C_KIND : Integer; S_TEL, MEMBER_ID, REF_UID: string; AMOUNT : Double);
    function RegistCashbillCancel(REF_UID: string): Integer;
    function RegistCashbillCancelPartial(REF_UID: string; AMOUNT: Double): Integer;
    procedure InsertEmpAttending;
    procedure InsertEmpLeaving(id : Integer);

  end;

var
  dm: Tdm;

implementation

uses GlobalVar, UDB_Scripts;

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  try
    UniConnection1.Server := '210.122.7.67'; //'72.34.244.131'; //'66.232.140.44';
    UniConnection1.Port := 3050;
    UniConnection1.Database := 'd:\fb_data\StudentManager\' + LoginUserCityName + '\' + LoginUserDongName + '\' + 'uijungbu.FDB';
    UniConnection1.LoginPrompt := False;
    UniConnection1.ProviderName := 'InterBase';
    UniConnection1.Password := 'masterkey';
    UniConnection1.Username := 'sysdba';
    UniConnection1.Connected := True;

  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure Tdm.ActivateDatebase;
begin
  try
    t_sido.Active := True;
    t_DONG_CODE.Active := True;
    t_LOGIN_USER.Active := True;
    t_DC_KIND.Active := True;
    t_payback_reason.Active := True;
    q_bank_account.Active := True;
    t_account_item.Active := True;
    t_account_subitem.Active := True;
    t_account_detail.Active := True;
    t_acc_itemlook.Active := True;
    t_acc_sublook.Active := True;
    t_acc_detaillook.Active := True;
    t_TIME_START.Active := True;
    t_TIME_END.Active := True;
    q_basic_value.Active := True;
    t_classroom_look.Active := True;
    t_lecture_list.Active := True;
    q_CLASSROOM.ParamByName('dong_id').AsString := LoginUserDong;
    q_CLASSROOM.Active := True;
    q_TEACHER_LOOK.Active := True;
    q_LECTURE_look.Active := True;
    SMS_USER_SEL.Active := True;
    if INSERT_ATTEND_DATA = True then
      InsertEmpAttending;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure Tdm.RetrieveDefaultData(dongID: string);
begin
end;

procedure Tdm.q_account_expense_budgetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsInteger := GetMaxID('ACCOUNT_EXPENSE_BUDGET', 'id');
end;

procedure Tdm.q_CLASSROOMNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure Tdm.q_LECTURENewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure Tdm.q_LECTURE_ATTEND_DAYNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure Tdm.q_money_inoutNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsInteger := GetMaxID('MONEY_INOUT', 'id');
end;

procedure Tdm.q_REGISTED_LECTURENewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure Tdm.q_STUDENT_ATTENDANCENewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure Tdm.t_account_detailNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsInteger := GetMaxID('ACCOUNT_DETAILITEM', 'id');
end;

procedure Tdm.t_account_itemNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsInteger := GetMaxID('ACCOUNT_ITEM', 'id');
end;

procedure Tdm.t_account_subitemNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsInteger := GetMaxID('ACCOUNT_SUBITEM', 'id');
end;

procedure Tdm.t_DC_KINDNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsInteger := GetMaxID('dc_kind', 'id');
end;

function Tdm.GetMaxID(table_name, field_name : string) : Integer;
var
  q : TUniQuery;
begin
  q := TUniQuery.Create(nil);
  with q do begin
    Connection := UniConnection1;
    SQL.Clear;
    SQL.Text := 'select max(' + field_name + ') as ID from ' + table_name;
    Active := True;
  end;
  Result := q.FieldByName('id').AsInteger + 1;
end;
procedure Tdm.t_LOGIN_USERNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure Tdm.t_payback_reasonNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsInteger := GetMaxID('PAYBACK_REASON', 'id');
end;

procedure Tdm.SaveStudentInfoToStructure(student_id: string);
var
  Query : TUniQuery;
  cnt : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT * from STUDENTS ');
      SQL.Add('where ID = :ID');
      ParamByName('ID').AsString := student_id;
      Active := True;
    end;
    cnt := Query.RecordCount;
    if cnt > 0 then begin
      StudentInfo.ID      := Query.FieldByName('ID').AsString;
      StudentInfo.DONG_ID := Query.FieldByName('DONG_ID').AsString;
      StudentInfo.S_NAME  := Query.FieldByName('S_NAME').AsString;
      StudentInfo.S_BIRTH := Query.FieldByName('S_BIRTH').AsString;
      StudentInfo.S_TEL   := Query.FieldByName('S_TEL').AsString;
      StudentInfo.S_ADDR  := Query.FieldByName('S_ADDR').AsString;
      StudentInfo.S_EMAIL := Query.FieldByName('S_EMAIL').AsString;
      StudentInfo.S_SEX   := Query.FieldByName('S_SEX').AsString;
      StudentInfo.S_KIND  := Query.FieldByName('S_KIND').AsInteger;
      StudentInfo.BIGO    := Query.FieldByName('BIGO').AsString;
      StudentInfo.S_DONG  := Query.FieldByName('S_DONG').AsString;
      StudentInfo.REG_DATE := Query.FieldByName('REG_DATE').AsDateTime;
      StudentInfo.CASH_RECEIPT_NO := Query.FieldByName('CASH_RECEIPT_NO').AsString;
      StudentInfo.CASH_RECEIPT_YESNO := Query.FieldByName('CASH_RECEIPT_YESNO').AsInteger;
    end;
  finally
    Query.Free;
  end;
end;

procedure Tdm.InsertRegistedLecture(RECORD_UID, LECTURE_ID, STUDENT_ID, R_DATE, P_DATE, PAYBACK_BANK, PAYBACK_BANKID, CASH_RECEIPT : string;
      PAY_AMOUNT, OUT_AMOUNT, MON_PRICE1, MON_PRICE2, MON_PRICE3 : Double; IS_DC, PAY_KIND, REG_KIND, PAY_WAY,PAYBACK_WAY, OUT_KIND,
      REG_MONTH, REG_MONTH2, REG_MONTH3, OUT_MONTH, OUT_MONTH2, OUT_MONTH3, CASH_REG_CODE : Integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := dm.UniConnection1;
      SQL.Clear;
      SQL.Add('INSERT INTO REGISTED_LECTURE ');
      SQL.Add('(ID, DONG_ID, LECTURE_ID, STUDENT_ID, P_DATE, PAY_AMOUNT, IS_DC, ');
      SQL.Add('PAY_KIND, R_DATE, OUT_AMOUNT, REG_KIND, PAY_WAY, ');
      SQL.Add('PAYBACK_WAY, PAYBACK_BANK, PAYBACK_BANKID, OUT_KIND, ');
      SQL.Add('REG_PRICE1, REG_PRICE2, REG_PRICE3, ');
      SQL.Add('OUT_PRICE1, OUT_PRICE2, OUT_PRICE3, ');
      SQL.Add('REG_MONTH, REG_MONTH2, REG_MONTH3, OUT_MONTH, OUT_MONTH2, OUT_MONTH3, BIGO, CASHBILL_REGISTED) ');
      SQL.Add('VALUES (:ID, :DONG_ID, :LECTURE_ID, :STUDENT_ID, :P_DATE, :PAY_AMOUNT, :IS_DC, ');
      SQL.Add(':PAY_KIND, :R_DATE, :OUT_AMOUNT, :REG_KIND, :PAY_WAY, ');
      SQL.Add(':PAYBACK_WAY, :PAYBACK_BANK, :PAYBACK_BANKID, :OUT_KIND, ');
      SQL.Add(':REG_PRICE1, :REG_PRICE2, :REG_PRICE3, 0, 0, 0, ');
      SQL.Add(':REG_MONTH, :REG_MONTH2, :REG_MONTH3, :OUT_MONTH, :OUT_MONTH2, :OUT_MONTH3, :BIGO, :CASHBILL_REGISTED)');

      ParamByName('ID').AsString := RECORD_UID;
      ParamByName('DONG_ID').AsString := LoginUserDong;
      ParamByName('LECTURE_ID').AsString := LECTURE_ID;
      ParamByName('STUDENT_ID').AsString := STUDENT_ID;
      ParamByName('P_DATE').AsString := P_DATE;
      ParamByName('PAY_AMOUNT').AsFloat := PAY_AMOUNT;
      ParamByName('IS_DC').AsInteger := IS_DC;
      ParamByName('PAY_KIND').AsInteger := PAY_KIND;
      ParamByName('R_DATE').AsString := R_DATE;
      ParamByName('OUT_AMOUNT').AsFloat := OUT_AMOUNT;
      ParamByName('REG_KIND').AsInteger := REG_KIND;
      ParamByName('PAY_WAY').AsInteger := PAY_WAY;
      ParamByName('PAYBACK_WAY').AsInteger := PAYBACK_WAY;
      ParamByName('PAYBACK_BANK').AsString := PAYBACK_BANK;
      ParamByName('PAYBACK_BANKID').AsString := PAYBACK_BANKID;
      ParamByName('OUT_KIND').AsInteger := OUT_KIND;
      ParamByName('REG_MONTH').AsInteger := REG_MONTH;
      ParamByName('REG_MONTH2').AsInteger := REG_MONTH2;
      ParamByName('REG_MONTH3').AsInteger := REG_MONTH3;
      ParamByName('REG_PRICE1').AsFloat := MON_PRICE1;
      ParamByName('REG_PRICE2').AsFloat := MON_PRICE2;
      ParamByName('REG_PRICE3').AsFloat := MON_PRICE3;
      ParamByName('OUT_MONTH').AsInteger := OUT_MONTH;
      ParamByName('OUT_MONTH2').AsInteger := OUT_MONTH2;
      ParamByName('OUT_MONTH3').AsInteger := OUT_MONTH3;
      ParamByName('BIGO').AsString := CASH_RECEIPT;
      ParamByName('CASHBILL_REGISTED').AsInteger := CASH_REG_CODE;
      Execute;
    end;
  finally
    Query.Free;
  end;

end;

function Tdm.RegistCashBill(CashBillNo, tbMgtKey, ref_id, Member_Name : string; Amount : Double) : integer;
var
  CERTKEY : WideString;			//인증키
  CorpNum : WideString;			//연계사업자 사업자번호 ('-' 제외, 10자리)
  ID : WideString;          //연계사업자 아이디
  SMSSendYN : Boolean;         //발행 알림문자 전송여부 (발행비용과 별도로 과금됨)
  MailTitle : WideString;   //발행 알림메일의 제목 (공백의 경우 바로빌 기본값으로 전송됨.)
  i, cnt, success, sidx : Integer;
  ItemName : string;
begin
  CERTKEY := SMS_USER_SELCERTKEY.Value;
  CorpNum := SMS_USER_SELCOPRNUM.Value;
  ID := SMS_USER_SELID.Value;
  SMSSendYN := False;
  MailTitle := '';
  success := 0;
  ItemName := Trim(Member_Name) + ' 수강료';

  if RegistCashBillService(tbMgtKey, CashBillNo, ItemName, Amount) = 1 then
    Result := GetBaroService_CASHBILLSoap(true).IssueCashBill(CERTKEY, CorpNum, ID, tbMgtKey, SMSSendYN, MailTitle);
end;

function Tdm.RegistCashBillService(MgtKey, CashBillNo, ItemName : string; Amount:Double) : Integer;
var
  CERTKEY : WideString;					//인증키
  clsCashBill : CashBill;				//현금영수증 클래스
begin
  CERTKEY := SMS_USER_SELCERTKEY.Value;
  clsCashBill := CashBill.Create;
  clsCashBill.MgtKey := MgtKey;						//자체문서관리번호
	//가맹점 정보
	clsCashBill.FranchiseCorpNum := SMS_USER_SELCOPRNUM.Value;							//가맹점 사업자번호
	clsCashBill.FranchiseMemberID := SMS_USER_SELID.Value;						//가맹점 바로빌 회원 아이디
	clsCashBill.FranchiseCorpName := SMS_USER_SELCORPNAME.Value;	//가맹점 회사명
	clsCashBill.FranchiseCEOName := SMS_USER_SELCEONAME.Value;				//가맹점 대표자명
	clsCashBill.FranchiseAddr := SMS_USER_SELADDR1.Value + ' ' + SMS_USER_SELADDR2.Value;		//가맹점 주소
	clsCashBill.FranchiseTel := SMS_USER_SELTEL.Value;			//가맹점 전화번호
	//소비자 정보
	clsCashBill.IdentityNum := StringReplace(CashBillNo, '-', '', [rfReplaceAll, rfIgnoreCase]); 	//소비자 신분확인번호 (';-'; 를 제외한 주민등록번호/사업자번호/휴대폰번호/카드번호 중 택1)
	clsCashBill.HP := '';														//소비자 휴대폰번호 (문자 전송시 활용)
	clsCashBill.Fax := '';													//소비자 팩스번호 (팩스 전송시 활용)
	clsCashBill.Email := '';												//소비자 이메일 (이메일 전송시 활용)
	//현금영수증 기본정보
	clsCashBill.TradeType := 'N';										//거래구분 : N-승인거래, D-취소거래
	clsCashBill.TradeUsage := '1';									//거래용도 : 1-소득공제용, 2-지출증빙용 (신분확인번호가 사업자번호인 경우 지출증빙용으로)
	clsCashBill.TradeMethod := '5';									//거래방법 : 1-카드, 3-주민등록번호, 4-사업자번호, 5-휴대폰번호
	clsCashBill.CancelType := '';										//취소사유 : 1-거래취소, 2-오류발행, 3-기타 (거래구분이 취소거래일 경우에만 작성)
	clsCashBill.CancelNTSConfirmNum := '';					//취소할 원본 현금영수증의 국세청 승인번호
	clsCashBill.CancelNTSConfirmDate := '';					//취소할 원본 현금영수증의 국세청 승인일자 (YYYYMMDD)
	clsCashBill.TradeDate := '';										//거래일자 (YYYYMMDD), 공백입력 시 Today로 작성됨.
	clsCashBill.ItemName := ItemName;											//품목명
	clsCashBill.Amount := FloatToStr(AMOUNT);									//공급가액
	clsCashBill.Tax := '0';											//부가세
	clsCashBill.ServiceCharge := '0';							//봉사료

  Result := GetBaroService_CASHBILLSoap(true).RegistCashBill(CERTKEY, clsCashBill.FranchiseCorpNum, clsCashBill.FranchiseMemberID, clsCashBill);
end;

function Tdm.RegistCashbillCancel(REF_UID : string) : Integer;
var
  BS : BaroService_CASHBILLSoap;
  CERTKEY : WideString;			//인증키
  CorpNum : WideString;			//연계사업자 사업자번호 ('-' 제외, 10자리)
  ID : WideString;          //연계사업자 아이디
begin
  BS := GetBaroService_CASHBILLSoap(true);
  CERTKEY := SMS_USER_SELCERTKEY.Value;
  CorpNum := SMS_USER_SELCOPRNUM.Value;
  ID := SMS_USER_SELID.Value;

  Result := BS.CancelCashBill(CERTKEY, CorpNum, ID, REF_UID, '1', False, '');
end;

function Tdm.RegistCashbillCancelPartial(REF_UID : string; AMOUNT : Double) : Integer;
var
  BS : BaroService_CASHBILLSoap;
  CERTKEY : WideString;			//인증키
  CorpNum : WideString;			//연계사업자 사업자번호 ('-' 제외, 10자리)
  ID : WideString;          //연계사업자 아이디
begin
  BS := GetBaroService_CASHBILLSoap(true);
  CERTKEY := SMS_USER_SELCERTKEY.Value;
  CorpNum := SMS_USER_SELCOPRNUM.Value;
  ID := SMS_USER_SELID.Value;

  Result := BS.CancelCashBillPartial(CERTKEY, CorpNum, ID, REF_UID, '1', FloatToStr(AMOUNT), '0', '0', False, '');
end;

procedure Tdm.InsertCashBill(C_KIND : Integer; S_TEL, MEMBER_ID, REF_UID : string; AMOUNT : Double);
begin
  CASHBILL_IU.ParamByName('CASHBILL_NO').Value := StringReplace(S_TEL, '-', '', [rfReplaceAll]);
  CASHBILL_IU.ParamByName('C_DATE').Value := Date;
  CASHBILL_IU.ParamByName('ITEM_NAME').Value := ' 수강료';
  CASHBILL_IU.ParamByName('AMOUNT').Value := AMOUNT;
  CASHBILL_IU.ParamByName('TAX').Value := 0;
  CASHBILL_IU.ParamByName('SERVICE_CHARGE').Value := 0;
  CASHBILL_IU.ParamByName('DATA_STATUS').Value := 1;
  CASHBILL_IU.ParamByName('MEMBER_ID').Value := MEMBER_ID;
  CASHBILL_IU.ParamByName('CASH_KIND').Value := C_KIND; //1=수련비 2=판매
  CASHBILL_IU.ParamByName('REF_UID').Value := REF_UID;
  CASHBILL_IU.ExecProc;

end;

function Tdm.CheckLoginIDisOK(LoginID: string): Boolean;
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT * from LOGIN_USER ');
      SQL.Add('where LOGIN_ID = :LOGIN_ID');
      ParamByName('LOGIN_ID').AsString := LOGINID;
      Active := True;
    end;
    if Query.RecordCount > 0 then
      Result := False
    else
      Result := True;
  finally
    Query.Free;
  end;
end;

function Tdm.GetClassroomIDX(RoomID, dongID: string): Integer;
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT IDX from CLASSROOM ');
      SQL.Add('where DONG_ID = :DONG and ID = :ID');
      ParamByName('DONG').AsString := dongID;
      ParamByName('ID').AsString := RoomID;
      Active := True;
    end;
    if Query.RecordCount > 0 then begin
      Result := Query.FieldByName('idx').AsInteger;
    end else
      Result := 0;
  finally
    Query.Free;
  end;
end;

function Tdm.GetTeacherName(TeacherID, dongID: string): string;
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT T_NAME from TEACHER ');
      SQL.Add('where DONG_ID = :DONG and ID = :ID');
      ParamByName('DONG').AsString := dongID;
      ParamByName('ID').AsString := TeacherID;
      Active := True;
    end;
    if Query.RecordCount > 0 then begin
      Result := Query.FieldByName('T_NAME').AsString;
    end else
      Result := '';
  finally
    Query.Free;
  end;
end;

function Tdm.GetLectureName(LectureID: string): string;
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      Connection := UniConnection1;
      SQL.Clear;
      SQL.Add('SELECT L_NAME from LECTURE_ACTIVE ');
      SQL.Add('where ID = :ID');
      ParamByName('ID').AsString := LectureID;
      Active := True;
    end;
    if Query.RecordCount > 0 then begin
      Result := Query.FieldByName('L_NAME').AsString;
    end else
      Result := '';
  finally
    Query.Free;
  end;
end;

procedure Tdm.InsertMoneyINOUT(BANK_ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND : Integer;
        IO_DATE : TDateTime; JUKYO, DONG_ID, REG_LECTURE_ID : string;
        IO_IN, IO_OUT, IO_REST : double)  ;
var
  Query : TUniQuery;
  IN_Price, OUT_Price : Double;
  ID : integer;
begin
  Query := TUniQuery.Create(Self);
  try
    ID := GetMaxID('MONEY_INOUT', 'id');
    with Query do begin
      connection := dm.UniConnection1;
      SQL.Add('INSERT INTO MONEY_INOUT ');
      SQL.Add('(ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_JUKYO, ');
      SQL.Add('IO_IN, IO_OUT, IO_REST, IO_DONG_ID, IO_KIND, IO_REG_LECTURE_ID, BANK_ID) ');
      SQL.Add('VALUES ');
      SQL.Add('(:ID, :IO_DATE, :ITEM_ID, :SUBITEM_ID, :DETAIL_ID, :JUKYO, ');
      SQL.Add(':IO_IN, :IO_OUT, :IO_REST, :DONG_ID, :KIND, :REG_LECTURE_ID, :BANK_ID)');
      ParamByName('ID').AsInteger := ID;
      ParamByName('IO_DATE').AsDateTime := IO_DATE;
      ParamByName('ITEM_ID').AsInteger := ITEM_ID;
      ParamByName('SUBITEM_ID').AsInteger := SUBITEM_ID;
      ParamByName('DETAIL_ID').AsInteger := DETAIL_ID;
      ParamByName('JUKYO').AsString := JUKYO;
      ParamByName('IO_IN').AsFloat := IO_IN;
      ParamByName('IO_OUT').AsFloat := IO_OUT;
      ParamByName('IO_REST').AsFloat := IO_REST;
      ParamByName('DONG_ID').AsString := LoginUserDong;
      ParamByName('KIND').AsInteger := KIND;
      ParamByName('REG_LECTURE_ID').AsString := REG_LECTURE_ID;
      ParamByName('BANK_ID').AsInteger := BANK_ID;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure Tdm.UpdateMoneyINOUT(BANK_ID, ID, ITEM_ID, SUBITEM_ID, DETAIL_ID, KIND : Integer;
   IO_DATE : TDateTime; JUKYO, DONG_ID, REG_LECTURE_ID : string;
   IO_IN, IO_OUT, IO_REST : double)  ;
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      connection := UniConnection1;
      SQL.Add('UPDATE MONEY_INOUT SET ');
      SQL.Add('IO_DATE = :IO_DATE, IO_ITEM_ID = :ITEM_ID, IO_SUBITEM_ID = :SUBITEM_ID, ');
      SQL.Add('IO_DETAIL_ID = :DETAIL_ID, IO_JUKYO = :JUKYO, ');
      SQL.Add('IO_IN = :IO_IN, IO_OUT = :IO_OUT, IO_REST = :IO_REST, ');
      SQL.Add('IO_DONG_ID = :DONG_ID, IO_KIND = :KIND, IO_REG_LECTURE_ID = :REG_LECTURE_ID, ');
      SQL.Add('BANK_ID = :BANK_ID ');
      SQL.Add('WHERE ID = :ID ');
      ParamByName('ID').AsInteger := ID;
      ParamByName('IO_DATE').AsDateTime := IO_DATE;
      ParamByName('ITEM_ID').AsInteger := ITEM_ID;
      ParamByName('SUBITEM_ID').AsInteger := SUBITEM_ID;
      ParamByName('DETAIL_ID').AsInteger := DETAIL_ID;
      ParamByName('JUKYO').AsString := JUKYO;
      ParamByName('IO_IN').AsFloat := IO_IN;
      ParamByName('IO_OUT').AsFloat := IO_OUT;
      ParamByName('IO_REST').AsFloat := IO_REST;
      ParamByName('KIND').AsInteger := KIND;
      ParamByName('DONG_ID').AsString := DONG_ID;
      ParamByName('REG_LECTURE_ID').AsString := REG_LECTURE_ID;
      ParamByName('BANK_ID').AsInteger := BANK_ID;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure Tdm.DeleteMoneyINOUT(ID : integer);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(Self);
  try
    with Query do begin
      connection := UniConnection1;
      SQL.Add('DELETE FROM MONEY_INOUT Where ID = :ID ');
      ParamByName('ID').AsInteger := ID;
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure Tdm.InsertEmpAttending;
begin
  EMP_ATTENDING_INS.ParamByName('WDATE').Value := Date;
  EMP_ATTENDING_INS.ParamByName('IN_TIME').Value := Now;
  EMP_ATTENDING_INS.ParamByName('OUT_TIME').Clear;
  EMP_ATTENDING_INS.ParamByName('W_KIND').Value := 0;
  EMP_ATTENDING_INS.ParamByName('W_REASON').Value := '';
  EMP_ATTENDING_INS.ExecProc;
  EMP_ATTENDING_SEL.ParamByName('SDATE').Value := Date;
  EMP_ATTENDING_SEL.ParamByName('EDATE').Value := Date;
  EMP_ATTENDING_SEL.Open;
  ds_EMP_ATTENDING_SEL.DataSet.Refresh;
end;

procedure Tdm.InsertEmpLeaving(id : Integer);
begin
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('update emp_attending set out_time = :out_time where (id = :id);');
  UniQuery1.ParamByName('out_time').Value := Now;
  UniQuery1.ParamByName('id').Value := id;
  UniQuery1.ExecSQL;
end;

end.
