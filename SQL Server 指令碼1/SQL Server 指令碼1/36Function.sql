--�¶q�Ȩ��--
------------------------------------------------------
--�إߨS���Ѽƪ����
create function fnGetSalary()
	returns money
as
begin
	declare @salary money
	select @salary=�~�� from ���u
	return @salary
end
-------------------------------------
select �~�� from ���u

select dbo.fnGetSalary()
-------------------------------------
--�إߨS�����Ѽƪ���Ƭd�߭��u�b�ұo
create function fnSeacherSalary
	(@id char(10))
	returns money
as
begin
	declare @salary money
	select @salary=(�~��-���|-�O�I) from ���u
	where �����Ҧr��=@id

	if @@ROWCOUNT=0
		return 0
	return @salary
end
---------------------------------------------
--�إߨ��o���u�b�ұo���w�s�{��
create proc GetSalary
	@name varchar(12)
as
declare @id varchar(12),@salary money
select @id=�����Ҧr�� from ���u where �m�W=@name
if @@ROWCOUNT=0
	print '�S���o����u'
else
begin
	select @salary=dbo.fnSeacherSalary(@id)
	if @salary=0
		print '�S���o����u'
	else
		print @name+'���b�ұo��:'+cast(@salary as varchar)
end
----------------------------------------------------
exec GetSalary '������'
