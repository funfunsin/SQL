--子查詢(subquery)
select 姓名,電話,薪水
from 員工
where 薪水>50000


select 姓名,電話,薪水
from 員工
where 薪水>(select avg(薪水) from 員工)

select 員工.姓名,員工.電話,員工.薪水
from 員工 inner join 員工 as a on 員工.身份證字號<>a.身份證字號
group by 員工.姓名,員工.電話,員工.薪水
having 員工.薪水>avg(a.薪水)

select 員工.姓名,員工.電話,員工.薪水
from 員工, 員工 as a
--where 員工.身份證字號<>a.身份證字號
group by 員工.姓名,員工.電話,員工.薪水
having 員工.薪水>avg(a.薪水)


select a.姓名,a.電話,a.薪水
from
(select * from 員工 where 薪水>50000) as a


select a.b from (select avg(薪水) as b from 員工) as a
------------------------------------

select 班級.* from 班級 inner join 學生 on 班級.學號=學生.學號
where 學生.姓名='陳會安'

select * from 班級
where 學號=(select 學號 from 學生 where 姓名='陳會安')

----------------------------------------

select 班級.學號,學生.姓名,COUNT(*) as 選課數 
from 班級 inner join 學生 on 班級.學號=學生.學號
where 班級.學號=(select 學號 from 學生 where 姓名='陳會安')
group by 班級.學號,學生.姓名


select 班級.學號,學生.姓名,COUNT(*) as 選課數 
from 班級 inner join 學生 on 班級.學號=學生.學號
where 姓名='陳會安'
group by 班級.學號,學生.姓名


select 姓名,城市 from 員工
order by 城市



select 姓名,城市 from 員工
where 員工.城市 in
(select 城市 from 員工
group by 城市
having count(城市)>1)


select distinct 員工.姓名,員工.城市 
from 員工 inner join 員工 as a
on 員工.身份證字號<>a.身份證字號 and 員工.城市=a.城市
--group by 員工.姓名,員工.城市 


select 員工.姓名,員工.城市 
from 員工 inner join 員工 as a
on  員工.城市=a.城市
group by 員工.姓名,員工.城市 
having count(*)>
