--停用trigger
alter table 員工
	disable trigger 員工學生check

--啟用trigger
alter table 員工
	enable trigger 員工學生check

--------------------------------------
--DDL trigger
--沒有instead
create trigger readonly_table on database
for drop_Table, alter_table
as
begin
	print '資料表定義無法修改或刪除'
	rollback 
end

drop table ttttttt


