CREATE TABLE dummy_table
(
  Parent_Key  Number(22) NOT NULL
  Surrogate_Key  Number(22) NOT NULL
  dummy_column_1  VARCHAR2(255)
)
tablepsace  DATA3
pctfree  10
initrans  2
maxtrans  255
storage (
  initial  64K
  next  1M
  minextents  1
  maxextents  unlimited
)
compress;
-- create or recreate primary, unique, and foreign key constraints
ALTER TABLE dummy_table
  add constraint y_y_y
    PRIMARY KEY(Parent_Key, Surrogate_Key)
  using  INDEX
  tablespace  INDEX 3
  pctfree  10
  initrans  2
  maxtrans  255
  storage (
    initial  64K
    next  1M
    minextents  1
    maxextents  unlimited
  );


  INSERT /*+append*/ INTO dummy_table_2 (
    xx_yy
    yy_zz
  )
  SELECT
    xr_xr
    dummy_database.record_key.nextval
    NULL
    CASE
      WHEN DENSE_RANK()OVER(PARTITION BY xr_xr, ORDER BY xr_xy) - 1 THEN 1
      ELSE 0
    END as CURRENT_FLAG
  from dummy_table
