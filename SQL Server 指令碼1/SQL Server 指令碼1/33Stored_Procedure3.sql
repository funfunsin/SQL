create proc 學生查詢
	@s_name varchar(12)
as
begin
	select * from 學生
	where 姓名=@s_name 
end
go

exec 學生查詢 @s_name='張無忌'
exec 學生查詢 '張無忌'


declare @s_name varchar(12)
set @s_name='張無忌'

select * from 學生
	where 姓名=@s_name 