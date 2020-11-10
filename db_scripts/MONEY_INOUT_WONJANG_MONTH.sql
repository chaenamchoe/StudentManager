create or alter procedure MONEY_INOUT_WONJANG_MONTH (
    DONG_ID varchar(17),
    BANK_KIND integer,
    SYEAR integer,
    EYEAR integer,
    START_MONTH integer,
    END_MONTH integer,
    START_DATE date)
returns (
    ID integer,
    IO_DATE date,
    IO_ITEM_ID integer,
    IO_SUBITEM_ID integer,
    IO_DETAIL_ID integer,
    IO_JUKYO varchar(50),
    IO_IN double precision,
    IO_OUT double precision,
    IO_REST double precision,
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
  from MONEY_INOUT  where (BANK_ID = :bank_kind) and (IO_DATE < :start_date)
  into :V_IN, :V_OUT ;
  IO_JUKYO = '';
  IO_IN = V_IN;
  IO_OUT = V_OUT;
  IO_REST = V_IN - V_OUT;
  DATA_KIND = 0;
  IWOL_REST = IO_REST;
  suspend;
  while ((syear <= eyear) and (start_month <= end_month)) do
  begin
      for select ID, IO_DATE, IO_ITEM_ID, IO_SUBITEM_ID, IO_DETAIL_ID, IO_JUKYO, IO_IN, IO_OUT, IO_DONG_ID, IO_KIND, IO_REG_LECTURE_ID
          from MONEY_INOUT where (BANK_ID = :bank_kind) and (Extract(year from IO_DATE) = :syear and Extract(month from IO_DATE) = :start_month)
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
      select    iif(sum(IO_IN)>0,sum(IO_IN),0), iif(sum(IO_OUT)>0,sum(IO_OUT),0)
      from MONEY_INOUT where (BANK_ID = :bank_kind) and (Extract(year from IO_DATE) = :syear and Extract(month from IO_DATE) = :start_month)
      into :C_IN, :C_OUT;
      IO_JUKYO    = 'Month Total';
      IO_IN      = C_IN;
      IO_OUT     = C_OUT;
      IO_REST = IWOL_REST;
      DATA_KIND = 2;
      if ((c_in + c_out) > 0) then begin
          suspend;
          IO_IN      = V_IN + C_IN;
          IO_OUT     = V_OUT + C_OUT;
          IO_REST = IO_IN - IO_OUT;
          DATA_KIND = 3;
          v_in = IO_IN;
          v_out = IO_OUT;
          suspend;
      end
      if ((syear < eyear) and (start_month = end_month)) then begin
        syear = syear + 1;
        start_month = 1;
      end else
        start_month = start_month + 1;

  end
  IO_JUKYO = 'Grand Total';
  IO_IN = V_IN + C_IN;
  IO_OUT = V_OUT + C_OUT;
  IO_REST = IWOL_REST;
  DATA_KIND = 4;
  suspend;
end