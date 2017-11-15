--資料表值函數--
--回傳值是一個資料表
------------------------------------------------------
create function fnProfessor
	(@salary money)
	returns table
return(
select 員工.身份證字號,員工.姓名,教授.教授編號,教授.科系,員工.薪水
from 教授 inner join 員工 on 教授.身份證字號=員工.身份證字號
where 員工.薪水>=@salary
)

select *
from dbo.fnProfessor(50000)

select *
from dbo.fnProfessor(70000) as 教授
inner join 班級 on 班級.教授編號=教授.教授編號
inner join 課程 on 班級.課程編號=課程.課程編號
------------------------------------------------------

select 身份證字號,姓名,電話 from 員工
order by 身份證字號
offset 3 rows
fetch next 3 rows only
------------------------------------------------------
create function fnOffset
(@m int, @n int)
returns @resultTable table(
	sn int identity,
	id char(10),
	name varchar(12),
	tel varchar(20)
)
begin
	insert into @resultTable
	select 身份證字號,姓名,電話 from 員工

	
	delete @resultTable
	where sn<@m or sn>@n

	return
end

select *
from dbo.fnOffset(4,6)







