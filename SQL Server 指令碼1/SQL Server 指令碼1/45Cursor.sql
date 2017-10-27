--declare @id char(5)  --宣告變數
--fast_forward 只能往前讀資料
--static
--keyset
--dynamic
-----------------宣告static資料指標-------------
declare stuedent_cursor cursor
static
for select 學號,姓名,電話 from 學生 where 電話 is not null

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
-----------------宣告keyset資料指標-------------
declare stuedent_cursor cursor
keyset
for select 學號,姓名,isnull(電話,'尚未填寫') from 學生

open stuedent_cursor
declare @id char(4),@name varchar(12),@tel varchar(15)
fetch first from  stuedent_cursor into @id,@name,@tel

while @@FETCH_STATUS<>-1
begin
	if @@FETCH_STATUS=-2
		print '當前資料遺失!!'
	else
		print 'id='+@id+', name='+@name+', tel='+@tel
	
	fetch next from  stuedent_cursor into @id,@name,@tel

end


close stuedent_cursor
deallocate  stuedent_cursor