create or alter procedure STUDENTS_SEL (
    STUDENT_DONG_ID varchar(17))
returns (
    ID type of column STUDENTS.ID,
    DONG_ID type of column STUDENTS.DONG_ID,
    S_NAME type of column STUDENTS.S_NAME,
    S_TEL type of column STUDENTS.S_TEL,
    S_ADDR type of column STUDENTS.S_ADDR,
    S_SEX type of column STUDENTS.S_SEX,
    S_KIND type of column STUDENTS.S_KIND,
    BIGO type of column STUDENTS.BIGO,
    REG_DATE type of column STUDENTS.REG_DATE,
    S_EMAIL type of column STUDENTS.S_EMAIL,
    S_DONG type of column STUDENTS.S_DONG,
    S_BIRTH type of column STUDENTS.S_BIRTH,
    BANK_NAME type of column STUDENTS.BANK_NAME,
    BANK_ID type of column STUDENTS.BANK_ID,
    CASH_RECEIPT_NO type of column STUDENTS.CASH_RECEIPT_NO,
    CASH_RECEIPT_YESNO type of column STUDENTS.CASH_RECEIPT_YESNO)
as
begin
  for select id,
             dong_id,
             s_name,
             s_tel,
             s_addr,
             s_sex,
             s_kind,
             bigo,
             reg_date,
             s_email,
             s_dong,
             s_birth,
             bank_name,
             bank_id,
             cash_receipt_no,
             cash_receipt_yesno
      from students where dong_id = :student_dong_id
      into :id,
           :dong_id,
           :s_name,
           :s_tel,
           :s_addr,
           :s_sex,
           :s_kind,
           :bigo,
           :reg_date,
           :s_email,
           :s_dong,
           :s_birth,
           :bank_name,
           :bank_id,
           :cash_receipt_no,
           :cash_receipt_yesno
  do
  begin
    suspend;
  end
end