CREATE OR ALTER VIEW LECTURE_STUDENT_REQUEST_VIEW(
    L_YEAR,
    L_STEP,
    L_NAME,
    L_TIME_WEEK,
    L_DAYS,
    L_MONTH,
    START_DATE,
    END_DATE,
    CLASSROOM_ID,
    IS_ACTIVE,
    L_PRICE,
    L_IDX,
    DONG_ID,
    LECTURE_ID,
    STUDENT_ID,
    P_DATE,
    PAY_AMOUNT,
    PAY_KIND,
    R_DATE,
    OUT_AMOUNT,
    REG_KIND,
    PAY_WAY,
    PAYBACK_WAY,
    PAYBACK_BANK,
    PAYBACK_BANKID,
    PAYBACK_BANKOWNER,
    OUT_KIND,
    REG_MONTH,
    REG_MONTH2,
    REG_MONTH3,
    OUT_MONTH,
    OUT_MONTH2,
    OUT_MONTH3,
    TEACHER_ID,
    S_NAME,
    S_TEL,
    S_ADDR,
    S_KIND,
    S_SEX,
    S_BIRTH,
    T_NAME,
    T_SEX,
    T_TEL,
    BANK_NAME,
    BANK_NO,
    ID)
AS
select 
    lecture_active.l_year,
    lecture_active.l_step,
    lecture_active.l_name,
    lecture_active.l_time_week,
    lecture_active.l_days,
    lecture_active.l_month,
    lecture_active.start_date,
    lecture_active.end_date,
    lecture_active.classroom_id,
    lecture_active.is_active,
    lecture_active.l_price,
    lecture_active.l_idx, 
    REGISTED_LECTURE.dong_id,
    REGISTED_LECTURE.lecture_id,
    REGISTED_LECTURE.student_id,
    REGISTED_LECTURE.p_date,
    REGISTED_LECTURE.pay_amount,
    REGISTED_LECTURE.pay_kind,
    REGISTED_LECTURE.r_date,
    REGISTED_LECTURE.out_amount,
    REGISTED_LECTURE.reg_kind,
    REGISTED_LECTURE.pay_way,
    REGISTED_LECTURE.payback_way,
    REGISTED_LECTURE.payback_bank,
    REGISTED_LECTURE.payback_bankid,
    REGISTED_LECTURE.PAYBACK_BANKOWNER,
    REGISTED_LECTURE.out_kind,
    REGISTED_LECTURE.REG_MONTH,
    REGISTED_LECTURE.REG_MONTH2,
    REGISTED_LECTURE.REG_MONTH3,
    REGISTED_LECTURE.OUT_MONTH,
    REGISTED_LECTURE.OUT_MONTH2,
    REGISTED_LECTURE.OUT_MONTH3,
    lecture_active.teacher_id,
    students.s_name,
    students.s_tel,
    students.s_addr,
    students.s_kind,
    students.s_sex,
    students.s_birth,
    teacher.t_name,
    teacher.t_sex,
    teacher.t_tel,
    teacher.bank_name,
    teacher.bank_no,
    REGISTED_LECTURE.id
from REGISTED_LECTURE
   inner join lecture_active on (REGISTED_LECTURE.lecture_id = lecture_active.id)
   inner join teacher on (lecture_active.teacher_id = teacher.id)
   inner join students on (REGISTED_LECTURE.student_id = students.id)
   order by lecture_active.l_idx
;
