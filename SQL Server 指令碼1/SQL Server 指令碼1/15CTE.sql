with 有姓名的教授
as
(
select 教授.*,員工.姓名
from 教授 inner join 員工
on 教授.身份證字號=員工.身份證字號)
select 學生.學號,學生.姓名,課程.*,有姓名的教授.*
from 學生 inner join 班級 on 學生.學號=班級.學號
inner join 課程 on 課程.課程編號=班級.課程編號
inner join 有姓名的教授 on 班級.教授編號=有姓名的教授.教授編號

----------------------------------------------

with 老闆
as
(
select 主管.員工字號,主管.姓名,主管.主管字號, 1 as 階層
from 主管 where 主管字號 is null
union all
select 主管.員工字號,主管.姓名,主管.主管字號, 階層+1
from 主管  inner join 老闆 on 老闆.員工字號=主管.主管字號
)
select * from 老闆 order by 階層