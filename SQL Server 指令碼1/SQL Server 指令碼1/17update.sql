--修改
update 課程 
set 學分=4
where 課程編號='CS213'

update 課程備份
set 學分=學分+1
--where 課程編號='CS213'

--運用子查詢在修改指令上
update 學生
set 姓名=(select 姓名 from 員工 where 身份證字號='H098765432')
where 學號='S016'

update 課程備份
set 學分=3
from ( select 課程編號,COUNT(*) as 選課人數
from 班級
group by 課程編號 ) as 選課
where 選課.選課人數>3 and 課程備份.課程編號=選課.課程編號

update 課程
set 學分=8
where 課程編號 in (select distinct 課程編號 from 課程備份)


update 班級 set 上課時間='09:00am'
from 班級 inner join 教授 on 班級.教授編號=教授.教授編號
where 教授.科系='CIS' and 班級.教室='500-K'
