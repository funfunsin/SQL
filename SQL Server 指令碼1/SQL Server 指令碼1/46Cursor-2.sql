--fetch first  --���ʦܲĤ@��
--fetch last  --���ʦ̫ܳ�@��
--fetch next  --���ʦܤU�@��
--fetch prior  --���ʦܤW�@��

--fetch absolute 3 --���ʦܲ�3�����(�����m)
--fetch relative -3 --���ʦܬ۹��۫e���Ъ���m(���Ʃ��e,�t�Ʃ���)
----------------------------------------------------------------------
declare staff_cursor cursor
static
for select �����Ҧr��,�m�W from ���u
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
for select �����Ҧr��,�m�W from ���u
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