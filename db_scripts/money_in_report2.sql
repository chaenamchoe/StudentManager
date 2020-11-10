SET TERM # ;
CREATE GENERATOR GEN_MONEY_IN_REPORT2_ID;
#
CREATE TABLE MONEY_IN_REPORT2 (
    ID          INTEGER NOT NULL,
    M_YEAR      INTEGER,
    BALUI_DATE  DATE,
    IN_DATE     DATE,
    REG_DATE1   DATE,
    REG_DATE2   DATE,
    IN_AMOUNT   DOUBLE PRECISION,
    UNIQ_ID     VARCHAR(17),
    DONG_ID     VARCHAR(17),
    BIGO        VARCHAR(100),
    M_DATE      DATE,
    IN_LIST     VARCHAR(500)
);
#
ALTER TABLE MONEY_IN_REPORT2 ADD CONSTRAINT PK_MONEY_IN_REPORT2 PRIMARY KEY (ID);
#
CREATE OR ALTER TRIGGER MONEY_IN_REPORT2_BI FOR MONEY_IN_REPORT2
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_money_in_report2_id,1);
end
#
SET TERM ; #
