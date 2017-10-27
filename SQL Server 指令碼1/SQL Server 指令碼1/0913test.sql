--01
select distinct 學生.學號,學生.姓名,教授.*
from 學生 inner join 班級 on 學生.學號=班級.學號
inner join 教授 on 班級.教授編號=教授.教授編號
where 班級.教授編號='I001'


--02
select 班級.教授編號,班級.學號,班級.課程編號,班級.教室,課程.學分
from 班級 inner join 課程 on 班級.課程編號=課程.課程編號
where 課程.學分=4 and 班級.學號 in ('S001','S002','S003')


--03改寫
select 學生.學號,學生.姓名,課程.*,教授.*
from 教授 inner join (課程 inner join (學生 inner join 班級 on 學生.學號=班級.學號) on 班級.課程編號=課程.課程編號) on 班級.教授編號=教授.教授編號

select 學生.學號,學生.姓名,課程.*,教授.*,員工.*
from 員工 inner join
(教授 inner join (課程 inner join (學生 inner join 班級 on 學生.學號=班級.學號) on 班級.課程編號=課程.課程編號) on 班級.教授編號=教授.教授編號) on 員工.身份證字號=教授.身份證字號

--01改寫
select 教授.* 
from 教授
where exists (select * from 班級 where (教室='221-S' or 教室='100-M') and 教授.教授編號=班級.教授編號)

select distinct 教授.* 
from 教授 inner join 班級 on 教授.教授編號=班級.教授編號
where 教室 in ('221-S','100-M')

--02改寫
select 課程.* 
from 課程
where 課程編號 in (select 課程編號 from 班級 where 學號=(select 學號 from 學生 where 姓名='陳會安'))

select 課程.* 
from 班級 inner join 課程 on 課程.課程編號=班級.課程編號 inner join 學生 on 班級.學號=學生.學號
where 學生.姓名='陳會安'
