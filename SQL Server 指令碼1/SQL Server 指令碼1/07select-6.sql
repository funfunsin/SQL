select 學號,課程編號
from 班級
group by 學號,課程編號
having 學號='S002'


select 學號,課程編號
from 班級
where 學號='S002'
-------------------------------------------------
select 教授編號,課程編號,count(*) as 選課學生數
from 班級
where 教授編號='I003'
group by 教授編號,課程編號

select 教授編號,課程編號,count(*) as 選課學生數
from 班級
group by 教授編號,課程編號
having 教授編號='I003' and count(*)<3

select 教授編號,課程編號,count(*) as 選課學生數
from 班級
group by 教授編號,課程編號
having  count(*)<3

select 教授編號,課程編號,count(*) as 選課學生數
from 班級
group by 教授編號,課程編號
having  count(*)>=3


select 教授編號,count(學號)
from 班級
group by 教授編號

select 教授編號,課程編號,count(學號)
from 班級
group by 教授編號,課程編號

select 教授編號,課程編號,count(學號)
from 班級
group by 教授編號,課程編號
