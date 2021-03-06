select 班級.學號,學生.姓名,學生.性別,班級.教授編號,
員工.姓名,教授.科系,教授.職稱,
班級.課程編號,課程.名稱,課程.學分,班級.上課時間,班級.教室
from 學生 inner join 班級 on 學生.學號=班級.學號
inner join 課程 on 課程.課程編號=班級.課程編號
inner join 教授 on 教授.教授編號=班級.教授編號
inner join 員工 on 員工.身份證字號=教授.身份證字號
where 班級.學號='S001'
order by 班級.學號

---------------------------------------------------------------
select 班級.學號,學生.姓名,學生.性別,班級.教授編號,
員工.姓名,教授.科系,教授.職稱,
班級.課程編號,課程.名稱,課程.學分,班級.上課時間,班級.教室
from 員工 inner join (教授 inner join (課程 inner join 
(學生 inner join 班級 on 學生.學號=班級.學號) on 課程.課程編號=班級.課程編號) 
on 教授.教授編號=班級.教授編號) on 員工.身份證字號=教授.身份證字號
where 班級.學號='S001'
order by 班級.學號

------------------------------------------------------------

select 班級.學號,學生.姓名,學生.性別,班級.教授編號,
員工.姓名,教授.科系,教授.職稱,
班級.課程編號,課程.名稱,課程.學分,班級.上課時間,班級.教室
from 班級,學生,課程,教授,員工
where 班級.學號=學生.學號 and 班級.課程編號=課程.課程編號 and 班級.教授編號=教授.教授編號
and 教授.身份證字號=員工.身份證字號
order by 班級.學號

-------------------------------------------------------------

select *
from 員工 left outer join 教授 on 員工.身份證字號=教授.身份證字號


select *
from 員工 right join 教授 on 員工.身份證字號=教授.身份證字號




----------------------------------------------------------------------------