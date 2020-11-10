/*1. 강좌자료에 강사수당 퍼센트가 없는 경우 */
UPDATE LECTURE_ACTIVE SET TEACHER_PERCENT = 70;

/*2. 강좌에 이강관련 정보를 저장하기 위한 초기설정. */
/*//등록구분을 등록/이강으로 표시하기위한 작업*/
update registed_lecture set reg_kind = 0;
update lecture_active set calc_kind = 0, month1_days = 0, month2_days = 0, month3_days = 0;

/*3. 강좌등록자료에 해당 필드값 업데이트.*/
update REGISTED_LECTURE set reg_month = 1, reg_month2 = 1, reg_month3 = 1;
update REGISTED_LECTURE set out_month = 0, out_month2 = 0, out_month3 = 0;

update REGISTED_LECTURE set out_month = 1, out_month2 = 1, out_month3 = 1 where pay_kind = 3;
update REGISTED_LECTURE set out_month = 0, out_month2 = 1, out_month3 = 1 where pay_kind = 2;
update REGISTED_LECTURE set out_month = 0, out_month2 = 0, out_month3 = 1 where pay_kind = 1;

/* time_table 테이블을 열어서 모든데이터를 삭제한 후 스크립트로 데이터입력 */
/*3. LECTURE_ACTIVE_UPDATE_TIME 파일을 불러서 스크립트로 실행할 것.

4. 은행별 코드값을 등록할 것.
bank_code_insert.sql 파일을 실행...
*/

