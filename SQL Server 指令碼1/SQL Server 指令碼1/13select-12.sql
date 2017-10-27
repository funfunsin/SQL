--exists
select * from 學生
where exists
(select * from 班級
where 課程編號='CS222' and 學生.學號=班級.學號)


select * from 課程
where exists
(select * from 班級
where 教室='100-M' or 教室='221-S' and 課程.課程編號=班級.課程編號)

select * from 課程
where exists
(select * from 班級
where 教室 in ('100-M','221-S') and 課程.課程編號=班級.課程編號)
--------------------------------------------------------------------------
--in

select * from 課程
where 課程編號 in
(select 課程編號 from 班級
where 學號=(select 學號 from 學生
where 姓名='周杰輪'))

select * from 課程
where 課程編號 not in
(select 課程編號 from 班級
where 學號=(select 學號 from 學生
where 姓名='周杰輪'))

select 課程.* from 課程 
inner join 班級 on 課程.課程編號=班級.課程編號
inner join 學生 on 學生.學號=班級.學號
where 姓名='周杰輪'


select 課程.* from 課程 
except
select 課程.* from 課程 
inner join 班級 on 課程.課程編號=班級.課程編號
inner join 學生 on 學生.學號=班級.學號
where 姓名='周杰輪'

------------------------
--all
select 姓名,薪水 from 員工
where 薪水 >=all (select 薪水 from 員工 where 城市='台北')
--where 薪水>=80000 and 薪水>=50000 and 薪水>=35000

--any 或 some
select 姓名,薪水 from 員工
where 薪水 >=any (select 薪水 from 員工 where 城市='台北')
--where 薪水>=80000 or 薪水>=50000 or 薪水>=35000



