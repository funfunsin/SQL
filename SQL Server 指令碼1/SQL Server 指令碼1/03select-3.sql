--where子句 有條件的查詢
--字串用'單引號' 數值不用
select *
from 學生
where 學號='S002'

select *
from 員工
where 薪水>=50000

--日期時間跟字串一樣用單引號
select *
from 學生
where 生日='1991/5/3'

select *
from 學生
where 生日>'1991-5-03'