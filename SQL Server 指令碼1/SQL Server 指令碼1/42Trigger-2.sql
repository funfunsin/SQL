--after trigger
--for insert
create trigger ��Ҽ�check on �Z��
after insert
as
begin
	if (select count(*) from �Z��
	where �Ǹ�=(select �Ǹ� from inserted)) >4
	begin
		print '�w��4���ҵ{�F,�Х��h��A�i��[��!!'
		rollback
	end
end


insert into �Z�� values('I001','S001','CS999','1900-01-01 12:00:00.000','180-M')

--------------------------------------------------------------------------
--for update
alter trigger �Ǥ���check on �ҵ{
after update
as
begin
	declare @new int, @old int
	select @old=�Ǥ� from deleted
	select @new=�Ǥ� from inserted

	if @new < @old
	begin
		print '�Ǥ��Ƥ��i���Ǥ��٧C!!��Ǥ��Ƭ�:'+cast(@old as varchar)+'�Ǥ�'
		rollback
	end
end

update �ҵ{ set �Ǥ�=3
where �ҵ{�s��='CS652'

-----------------------------------------------------------------------
--for delete,update
create trigger ���u�ǥ�check on ���u
after delete,update
as
begin
	if exists(
		select * from �ǥ�
		where �m�W=(select �m�W from deleted)
	)
	begin
		rollback
	end

end

delete ���u
where �����Ҧr��='F332213046'

update ���u set �~��='10000000'
where �����Ҧr��='F332213046'

