--fetch first  --移動至第一筆
--fetch last  --移動至最後一筆
--fetch next  --移動至下一筆
--fetch prior  --移動至上一筆

--fetch absolute 3 --移動至第3筆資料(絕對位置)
--fetch relative -3 --移動至相對於自前指標的位置(正數往前,負數往後)
----------------------------------------------------------------------
declare staff_cursor cursor
static
for select 身份證字號,姓名 from 員工
open staff_cursor
declare @id char(10), @name varchar(12), @inc int
if @@cursor_rows>0
begin
	set @inc=@@cursor_rows/3
	fetch first from staff_cursor into @id,@name
	while @@FETCH_STATUS=0
	begin
		print @name
		fetch relative @inc from staff_cursor into @id,@name
	end

end



close staff_cursor
deallocate staff_cursor
go
----------------------------------------------------------------------------

declare staff_cursor cursor
static
for select 身份證字號,姓名 from 員工
open staff_cursor
declare @id char(10), @name varchar(12), @inc int
if @@cursor_rows>0
begin
	--set @inc=@@cursor_rows/3
	fetch last from staff_cursor into @id,@name
	while @@FETCH_STATUS=0
	begin
		print @name
		
		fetch prior from staff_cursor into @id,@name
	end

end
close staff_cursor
deallocate staff_cursor

---------------------------------------------------------------------
--