create or alter procedure MONEY_INOUT_WONJANG_DAY (
    DONG_ID varchar(17),
    START_DATE date,
    END_DATE date,
    BANK_KIND integer)
returns (
    ID integer,
    IO_DATE date,
    IO_ITEM_ID integer,
    IO_SUBITEM_ID integer,
    IO_DETAIL_ID integer,
    IO_JUKYO varchar(50),
    IO_IN float,
    IO_OUT float,
    IO_REST float,
    IO_DONG_ID varchar(17),
    IO_KIND smallint,
    DATA_KIND integer,
    IO_REG_LECTURE_ID varchar(17))
as
declare variable V_IN double precision;
declare variable V_OUT double precision;
declare variable C_IN double precision;
declare variable C_OUT double precision;
declare variable IWOL_REST double precision;
begin
  V_IN = 0;
  V_OUT = 0;
  select iif(sum(IO_IN) >0,sum(IO_IN),0), iif(sum(IO_OUT)>0,sum(IO_OUT),0)
  from MONEY_INOUT  where IO_DONG_ID = :DONG_ID and bank_id = :bank_kind and IO_DATE < :start_date
  into :V_IN, :V_OUT ;
  IO_JUKYO = '';
  IO_IN = V_IN;
  IO_OUT = V_OUT;
  IO_REST = V_IN - V_OUT;
  DATA_KIND = 0;
  IWOL_REST = IO_REST;
  suspend;
  for select ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_JUKYO, IO_IN, IO_OUT, IO_DONG_ID, IO_KIND, IO_REG_LECTURE_ID
      from MONEY_INOUT where (IO_DONG_ID = :DONG_ID) and (bank_id = :bank_kind) and (IO_DATE between :start_date and :end_date)
      order by IO_DATE, ID
      into :ID, :IO_DATE, :IO_ITEM_ID, :IO_SUBITEM_ID, :IO_DETAIL_ID, :IO_JUKYO, :IO_IN, :IO_OUT, :IO_DONG_ID, :IO_KIND, :IO_REG_LECTURE_ID
  do
  begin
    IO_REST = (IWOL_REST + IO_IN) - IO_OUT;
    DATA_KIND = 1; 
    suspend;
    IWOL_REST = IO_REST;
  end
  ID = null;
  IO_DATE = null;
  IO_ITEM_ID = null;
  IO_SUBITEM_ID = null;
  IO_DETAIL_ID = null;
  IO_IN = 0;
  IO_OUT = 0;
  IO_REST = 0;
  select iif(sum(IO_IN)>0,sum(IO_IN),0), iif(sum(IO_OUT)>0,sum(IO_OUT),0)
  from MONEY_INOUT where (IO_DONG_ID = :DONG_ID) and (bank_id = :bank_kind) and (IO_DATE between :start_date and :end_date)
  into :C_IN, :C_OUT;
  IO_JUKYO    = '';
  IO_IN      = C_IN;
  IO_OUT     = C_OUT;
  IO_REST = IO_IN - IO_OUT;
  DATA_KIND = 2;
  suspend;
  IO_JUKYO = '';
  IO_IN = V_IN + C_IN;
  IO_OUT = V_OUT + C_OUT;
  IO_REST = IO_IN - IO_OUT;
  DATA_KIND = 3;
  suspend;
end