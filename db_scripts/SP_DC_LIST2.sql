create or alter procedure SP_DC_LIST2 (
    IYEAR integer,
    ISTEP integer,
    IMONTH integer)
returns (
    L_YEAR integer,
    L_STEP integer,
    L_NAME varchar(30),
    L_PRICE float,
    DONG_ID varchar(17),
    LECTURE_ID varchar(17),
    STUDENT_ID varchar(17),
    P_DATE char(10),
    PAY_AMOUNT float,
    PAY_KIND smallint,
    REG_KIND smallint,
    PAY_WAY smallint,
    S_NAME varchar(30),
    S_TEL varchar(30),
    S_ADDR varchar(50),
    S_KIND smallint,
    S_SEX varchar(4),
    S_BIRTH char(10),
    ID varchar(17),
    MONTHLY_FEE double precision)
as
declare variable MONTH_CONDITION varchar(100);
BEGIN
    if (imonth = 1) then
        month_condition = '(REGISTED_LECTURE.reg_month = 1) and (REGISTED_LECTURE.out_month = 0)';
    if (imonth = 2) then
        month_condition = '(REGISTED_LECTURE.reg_month2 = 1) and (REGISTED_LECTURE.out_month2 = 0)';
    if (imonth = 3) then
        month_condition = '(REGISTED_LECTURE.reg_month3 = 1) and (REGISTED_LECTURE.out_month3 = 0)';
    FOR
      EXECUTE STATEMENT 'select
        lecture_active.l_year,
        lecture_active.l_step,
        lecture_active.l_name,
        lecture_active.l_price,
        REGISTED_LECTURE.dong_id,
        REGISTED_LECTURE.lecture_id,
        REGISTED_LECTURE.student_id,
        REGISTED_LECTURE.p_date,
        REGISTED_LECTURE.pay_amount,
        REGISTED_LECTURE.pay_kind,
        REGISTED_LECTURE.reg_kind,
        REGISTED_LECTURE.pay_way,
        REGISTED_LECTURE.id,
        students.s_name,
        students.s_tel,
        students.s_addr,
        students.s_kind,
        students.s_sex,
        students.s_birth,
        ((lecture_active.L_PRICE / 2) / 3) AS MONTHLY_FEE
    from REGISTED_LECTURE
       inner join lecture_active on (REGISTED_LECTURE.lecture_id = lecture_active.id)
       inner join students on (REGISTED_LECTURE.student_id = students.id)
    where (lecture_active.l_year = '
    ||:iyear||') and (lecture_active.l_step = '
    ||:istep||') and (students.s_kind > 1) and (students.s_kind < 8) and (lecture_active.L_PRICE > 0) and'
    ||:month_condition||' order by REGISTED_LECTURE.lecture_id, REGISTED_LECTURE.id'
    INTO :L_YEAR,
         :L_STEP,
         :L_NAME,
         :L_PRICE,
         :DONG_ID,
         :LECTURE_ID,
         :STUDENT_ID,
         :P_DATE,
         :PAY_AMOUNT,
         :PAY_KIND,
         :REG_KIND,
         :PAY_WAY,
         :ID,
         :S_NAME,
         :S_TEL,
         :S_ADDR,
         :S_KIND,
         :S_SEX,
         :S_BIRTH,
         :MONTHLY_FEE
      DO
      BEGIN
        SUSPEND;
      END
END