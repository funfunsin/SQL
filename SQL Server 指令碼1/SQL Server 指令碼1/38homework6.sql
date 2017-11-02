--檢查課程編號是否重複的函數
create function fnCheckCourseID
	(@id char(5))
	returns char(1)
as
begin
	declare @a char(5)
	select @a=課程編號	from 課程
	where 課程編號=@id

	if @@ROWCOUNT=0
		return '1'

	return '0'
end

--測試用
select dbo.fnCheckCourseID('CS888')

--------------------------------------
--新增課程資料預存程序
alter proc addCourse
	@id char(5),
	@name varchar(30),
	@c int
as
begin
	if dbo.fnCheckCourseID(@id)='1'
		insert into 課程 values(@id,@name,@c)
end

--測試用
exec addCourse 'CS999', 'abcde', 3