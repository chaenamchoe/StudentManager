CREATE OR ALTER VIEW LECTURE_REGISTED_TOTAL_VIEW(
    ID,
    DONG_ID,
    L_YEAR,
    L_STEP,
    L_NAME,
    PLAN_MEN,
    L_IDX,
    PAY_AMOUNT,
    IS_DC,
    OUT_AMOUNT,
    REG_MONTH,
    REG_MONTH2,
    REG_MONTH3,
    OUT_MONTH,
    OUT_MONTH2,
    OUT_MONTH3)
AS
select 
    lecture_active.id,
    lecture_active.dong_id,
    lecture_active.l_year,
    lecture_active.l_step,
    lecture_active.l_name,
    lecture_active.plan_men,
    lecture_active.l_idx,
    registed_lecture.pay_amount,
    registed_lecture.is_dc,
    registed_lecture.out_amount,
    registed_lecture.reg_month,
    registed_lecture.reg_month2,
    registed_lecture.reg_month3,
    registed_lecture.out_month,
    registed_lecture.out_month2,
    registed_lecture.out_month3
from registed_lecture
   inner join lecture_active on (registed_lecture.lecture_id = lecture_active.id)
;
