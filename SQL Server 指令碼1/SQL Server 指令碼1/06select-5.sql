select 學分
from 課程
group by 學分

select count(*) as 員工人數,max(薪水) as 最高薪資,min(薪水) as 最低薪資,
avg(薪水) as 公司平均薪水,sum(薪水) as 公司每月人事成本,
max(薪水)-min(薪水) as 高低薪落差,
avg(薪水)-min(薪水) as 低薪相對於平均薪資差額,
max(薪水)-avg(薪水) as 高薪相對於平均薪資差額
from 員工

select 學號,count(學號) as 選課數
from 班級
where 學號='S004'
group by 學號
having count(學號)<3

select 學號,count(學號) as 選課數
from 班級
group by 學號
having count(學號)<3 and 學號='S004'