--with rollup 會有統記小計
select 教授編號,課程編號,count(*) as 選課學生數
from 班級
group by 教授編號,課程編號 with rollup


--with cube 
select 教授編號,課程編號,count(*) as 選課學生數
from 班級
group by 教授編號,課程編號 with cube


--grouping sets
select 教授編號,課程編號,count(*) as 選課學生數
from 班級
group by grouping sets
(
	(教授編號,課程編號)
)


select 教授編號,課程編號,count(*) as 選課學生數
from 班級
group by grouping sets
(
	(教授編號,課程編號),
	(教授編號)
)


select 教授編號,課程編號,count(*) as 選課學生數
from 班級
where 教授編號 in ('I001','I003')
group by grouping sets
(
	(教授編號,課程編號),
	(教授編號)
)