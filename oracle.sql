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
