declare @proc_name varchar(30)
set @proc_name='學生選課資料明細'
exec @proc_name
go 


declare @table_name varchar(30)
set @table_name='學生'
--select * from @table_name
exec ('select * from '+@table_name)
go

