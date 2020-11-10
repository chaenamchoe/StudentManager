create or alter procedure SP_GET_ANALYSE_TOTAL2 (
    DONG_ID varchar(17),
    L_YEAR integer,
    L_STEP1 integer)
returns (
    R_L_ID varchar(17),
    R_L_IDX integer,
    R_LECTURENAME varchar(30),
    R_PLAN integer,
    R_REGIST integer,
    R_COMMON integer,
    R_DROP integer,
    R_DC integer,
    R_DC_KIND1 integer,
    R_DC_KIND2 integer,
    R_DC_KIND3 integer,
    R_DC_KIND4 integer,
    R_DC_KIND5 integer,
    R_DC_KIND6 integer,
    R_DC_KIND7 integer,
    R_DC_KIND8 integer)
as
declare variable V_ID varchar(17);
declare variable V_NAME varchar(30);
declare variable V_PLAN integer;
declare variable V_REG_ALL integer;
declare variable V_DC_ALL integer;
declare variable V_OUT_ALL integer;
declare variable V_DC_KIND1 integer;
declare variable V_DC_KIND2 integer;
declare variable V_DC_KIND3 integer;
declare variable V_DC_KIND4 integer;
declare variable V_DC_KIND5 integer;
declare variable V_DC_KIND6 integer;
declare variable V_DC_KIND7 integer;
declare variable V_DC_KIND8 integer;
begin
  for
      select ID, L_IDX, L_NAME, PLAN_MEN
      from lecture_active
      where DONG_ID = :dong_id and l_year = :l_year and l_step = :l_step1
      order by l_idx
      into :v_id, :r_l_idx, :v_name, :v_plan
   do
   begin
      /* All Registed Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id
      into :v_reg_all;
      /* All DC Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc > 1 and is_dc < 8
      into :v_dc_all;
      /* All OUT Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and out_amount > 0
      into :v_out_all;
      /* All DC Kind1 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 2
      into :v_dc_kind1;
      /* All DC Kind2 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 3
      into :v_dc_kind2;
      /* All DC Kind3 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 4
      into :v_dc_kind3;
      /* All DC Kind4 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 5
      into :v_dc_kind4;
      /* All DC Kind5 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 6
      into :v_dc_kind5;
      /* All DC Kind6 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 7
      into :v_dc_kind6;
      /* All DC Kind7 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 8
      into :v_dc_kind7;
      /* All DC Kind8 Count */
      select iif(count(id) > 0, count(id), 0) r_count from LECTURE_REGISTED_TOTAL_VIEW
      where id = :v_id and is_dc = 9
      into :v_dc_kind8;

      R_L_ID = v_id;
      r_lecturename = v_name;
      R_PLAN = v_plan;
      R_REGIST = v_reg_all;
      r_common = v_reg_all - v_dc_all;
      R_DROP = v_out_all;
      R_DC = v_dc_all;
      r_dc_kind1 = v_dc_kind1;
      r_dc_kind2 = v_dc_kind2;
      r_dc_kind3 = v_dc_kind3;
      r_dc_kind4 = v_dc_kind4;
      r_dc_kind5 = v_dc_kind5;
      r_dc_kind6 = v_dc_kind6;
      r_dc_kind7 = v_dc_kind7;
      r_dc_kind8 = v_dc_kind8;

      suspend;
   end
end