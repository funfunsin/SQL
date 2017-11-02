--兩筆交易寫成一筆
create proc delete_Staff
	@id char(10)
as
begin

	begin tran
	delete from 教授 where 身份證字號=@id 
	if @@error=0
	begin
		delete from 員工 where 身份證字號=@id 
		if @@error=0
			commit tran
		else
			rollback
	end
	else
		rollback
	
end


exec delete_Staff 'A123456789'

---------------------------------------------------------
create proc new_prof
	@id char(10),
	@name varchar(12),
	@city char(5),
	@addr varchar(30),
	@tel char(12),
	@salary money,
	@con money,
	@tax money,
	@pid char(4),
	@aa varchar(10),
	@dept varchar(5)

as
begin
	begin tran
	insert into 員工 values(@id,@name,@city,@addr,@tel,@salary,@con,@tax)
	if @@ERROR=0
	begin
		insert into 教授 values(@pid,@aa,@dept,@id)
		if @@ERROR=0
			commit tran
		else
			rollback
	end
	else
	rollback
end
-----------------------------------------
select * into 學生2 from 學生

select * into 班級2 from 班級

select * from 班級2 where 學號='S003'
---------------------
begin tran
delete from 班級2 where 學號='S003'
if @@error=0 and @@ROWCOUNT<3
begin
	delete from 學生2 where 學號='S003'
	if @@error=0
		commit tran
	else
		rollback
end
else
	rollback
