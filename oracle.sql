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


  INSERT /*+APPEND*/ INTO dummy_table_2 (
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


  SELECT first_name, last_name, primary_address
  FROM dummy_table_2
  WHERE first_name LIKE 'K%';

  SELECT first_name, last_name, salary
  FROM dummy_table_2
  WHERE salary BETWEEN 50000 AND 100000;

  SELECT first_name, last_name, salary, department_id
  FROM dummy_table_2
  WHERE (salary BETWEEN 50000 AND 100000) AND department_id BETWEEN 1 AND 50;


  -- Verification Script
  SELECT 'new_table' new_table, old_count, new_count, match_count
    ,CASE
      WHEN old_count = new_count
      AND new_count = match_count
      THEN 'OK'
      ELSE 'FAIL'
    end PassFail
  FROM
  (
    SELECT
    (SELECT COUNT(*) FROM old_table) old_count
    ,(SELECT COUNT(*) FROM new_table) new_count
    ,(SELECT COUNT(*) FROM
        (SELECT
          p.xr_xr
        FROM old_table p
        INTERSECT
        SELECT
          c.xr_xr
        FROM new_table c)
      ), match_count
      FROM dual
  );
