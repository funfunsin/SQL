--�ⵧ����g���@��
create proc delete_Staff
	@id char(10)
as
begin

	begin tran
	delete from �б� where �����Ҧr��=@id 
	if @@error=0
	begin
		delete from ���u where �����Ҧr��=@id 
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
	insert into ���u values(@id,@name,@city,@addr,@tel,@salary,@con,@tax)
	if @@ERROR=0
	begin
		insert into �б� values(@pid,@aa,@dept,@id)
		if @@ERROR=0
			commit tran
		else
			rollback
	end
	else
	rollback
end
-----------------------------------------
select * into �ǥ�2 from �ǥ�

select * into �Z��2 from �Z��

select * from �Z��2 where �Ǹ�='S003'
---------------------
begin tran
delete from �Z��2 where �Ǹ�='S003'
if @@error=0 and @@ROWCOUNT<3
begin
	delete from �ǥ�2 where �Ǹ�='S003'
	if @@error=0
		commit tran
	else
		rollback
end
else
	rollback
