--撈報表 用到聚合函數(彙總函數)

--count()
select count(學號) as 學生人數
from 學生

select count(*) as 員工人數
from 員工

select count(*) as 高薪員工人數
from 員工
where 薪水>=50000


--sum()
select sum(薪水) as 公司每月人事成本
from 員工


--avg()
select avg(薪水) as 公司平均人事成本
from 員工


--max()
select max(薪水) as 最高薪資
from 員工


--min()
select min(薪水) as 最低薪資
from 員工



select count(*) as 員工人數,
max(薪水) as 最高薪資,
min(薪水) as 最低薪資,
avg(薪水) as 公司平均薪水,
sum(薪水) as 公司每月人事成本,
max(薪水)-min(薪水) as 高低薪落差,
avg(薪水)-min(薪水) as 低薪相對於平均薪資差額,
max(薪水)-avg(薪水) as 高薪相對於平均薪資差額
from 員工

