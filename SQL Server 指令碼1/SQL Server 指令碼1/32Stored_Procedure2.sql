declare @proc_name varchar(30)
set @proc_name='�ǥͿ�Ҹ�Ʃ���'
exec @proc_name
go 


declare @table_name varchar(30)
set @table_name='�ǥ�'
--select * from @table_name
exec ('select * from '+@table_name)
go

