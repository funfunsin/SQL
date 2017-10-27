create view view_班上生日清冊
as
select 學號,姓名,生日
from 學生
go

create view view_班上生日清冊_無key
as
select 姓名,生日
from 學生

----------------------------------------------
insert into view_班上生日清冊 values('S199','任我行','1990/8/9')


insert into view_班上生日清冊_無key values('任我行','1990/8/9')
--------------------------------------------------------------------
update view_班上生日清冊 set 生日='1990/8/19' 
where 學號='S199'

update view_班上生日清冊_無key set 生日='1990/8/29' 
where 姓名='任我行'