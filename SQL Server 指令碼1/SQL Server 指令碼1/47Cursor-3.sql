--更新與刪除
--並行控制
declare staff_cursor cursor
scroll_locks
for select 身份證字號,姓名,薪水 from 員工
for update of 薪水
open staff_cursor
declare @id char(4),@name varchar(12),@salary money
if @@CURSOR_ROWS>0
begin
	fetch first from staff_cursor into @id,@name,@salary
	while @@FETCH_STATUS=0
	begin
		print '目前薪水為:'+cast(@salary as varchar)
		set @salary=@salary*1.03
		update 員工 set 薪水=@salary
		where current of staff_cursor
		print '加薪後的薪水為:'+cast(@salary as varchar)
		fetch next from staff_cursor into @id,@name,@salary
	end
end
close staff_cursor
deallocate staff_cursor 

select 身份證字號,姓名,薪水 from 員工