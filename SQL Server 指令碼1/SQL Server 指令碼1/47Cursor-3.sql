--��s�P�R��
--�æ汱��
declare staff_cursor cursor
scroll_locks
for select �����Ҧr��,�m�W,�~�� from ���u
for update of �~��
open staff_cursor
declare @id char(4),@name varchar(12),@salary money
if @@CURSOR_ROWS>0
begin
	fetch first from staff_cursor into @id,@name,@salary
	while @@FETCH_STATUS=0
	begin
		print '�ثe�~����:'+cast(@salary as varchar)
		set @salary=@salary*1.03
		update ���u set �~��=@salary
		where current of staff_cursor
		print '�[�~�᪺�~����:'+cast(@salary as varchar)
		fetch next from staff_cursor into @id,@name,@salary
	end
end
close staff_cursor
deallocate staff_cursor 

select �����Ҧr��,�m�W,�~�� from ���u