--����trigger
alter table ���u
	disable trigger ���u�ǥ�check

--�ҥ�trigger
alter table ���u
	enable trigger ���u�ǥ�check

--------------------------------------
--DDL trigger
--�S��instead
create trigger readonly_table on database
for drop_Table, alter_table
as
begin
	print '��ƪ�w�q�L�k�ק�ΧR��'
	rollback 
end

drop table ttttttt


