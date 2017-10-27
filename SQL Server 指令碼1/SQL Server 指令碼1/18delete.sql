delete from 學生
where 學號='S013'

--delete from 學生

delete from 學生
where 姓名=(select 姓名 from 員工 where 身份證字號='H098765432')


delete from 班級
from 班級 inner join 教授 on 班級.教授編號=教授.教授編號
where 教授.科系='CIS' and 班級.教室='500-K'