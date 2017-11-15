--預存程序的回傳值
--return
create proc 新增課程
	@c_id char(5),
	@c_name varchar(30),
	@c_credite int
as
begin
	declare @error int
	insert into 課程 values(@c_id,@c_name,@c_credite)
	set @error=@@ERROR

	return @error
end

----------------------
alter proc 新增課程錯誤處理
	@c_id char(5),
	@c_name varchar(30),
	@c_credite int
as
begin
	declare @error int
	exec  @error=新增課程 @c_id,@c_name,@c_credite

	if @error=2627
		select '課程編號重複了!!'
	else if @error=0
		select '新增成功'
	else 
		select '非鍵值重複的錯誤!代號:' + cast(@error as varchar)
end

--要將資料回傳值顯示到前端 print改成select
--會出現結果表

exec 新增課程錯誤處理 'CS888','aaa',5



------------------
--output可把參數傳出
alter proc 薪水查詢
	@name varchar(12),
	@salary money output
as
begin
	select @salary=薪水 from 員工
	where 姓名=@name
end

-----

alter proc 加薪概算
	@name varchar(12)
as
begin
	declare @MySalary money
	exec 薪水查詢 @name, @salary=@MySalary output

	print @name + '試算加薪後的金額為'+cast(@MySalary*1.05 as varchar)+'元'
end


exec 加薪概算 '張無忌'


--------------------------------------
--內建預存程序

sp_rename 'Table_1' ,'tttttt'

sp_help

sp_helptext 員工薪資查詢

sp_columns 員工