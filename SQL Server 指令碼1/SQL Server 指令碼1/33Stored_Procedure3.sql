create proc �ǥͬd��
	@s_name varchar(12)
as
begin
	select * from �ǥ�
	where �m�W=@s_name 
end
go

exec �ǥͬd�� @s_name='�i�L��'
exec �ǥͬd�� '�i�L��'


declare @s_name varchar(12)
set @s_name='�i�L��'

select * from �ǥ�
	where �m�W=@s_name 