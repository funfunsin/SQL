--declare @id char(5)  --�ŧi�ܼ�
--fast_forward �u�੹�eŪ���
--static
--keyset
--dynamic
-----------------�ŧistatic��ƫ���-------------
declare stuedent_cursor cursor
static
for select �Ǹ�,�m�W,�q�� from �ǥ� where �q�� is not null

open stuedent_cursor

declare @id char(4),@name varchar(12),@tel varchar(15)
fetch first from  stuedent_cursor into @id,@name,@tel
while @@fetch_status=0
begin 
	print 'id='+@id+', name='+@name+', tel='+@tel
	
	fetch next from  stuedent_cursor into @id,@name,@tel

end

close stuedent_cursor
deallocate  stuedent_cursor
go
-----------------�ŧikeyset��ƫ���-------------
declare stuedent_cursor cursor
keyset
for select �Ǹ�,�m�W,isnull(�q��,'�|����g') from �ǥ�

open stuedent_cursor
declare @id char(4),@name varchar(12),@tel varchar(15)
fetch first from  stuedent_cursor into @id,@name,@tel

while @@FETCH_STATUS<>-1
begin
	if @@FETCH_STATUS=-2
		print '��e��ƿ�!!'
	else
		print 'id='+@id+', name='+@name+', tel='+@tel
	
	fetch next from  stuedent_cursor into @id,@name,@tel

end


close stuedent_cursor
deallocate  stuedent_cursor