--�Ǥ@�ӥH�W���Ѽ�
alter proc ���u�~��d��
	@name varchar(12), 
	@salary money
as
begin

	select * from ���u
	where �m�W=@name and �~��>=@salary
end

--�n���ӰѼƶ���@name @salary
exec ���u�~��d�� '���I��',25000
------------------------------------------

alter proc ���u�~��d��
	@name varchar(12), 
	@salary money
as
begin
	if @salary<0
		set @salary=0

	select * from ���u
	where �m�W=@name and �~��>=@salary
end

exec ���u�~��d�� '���I��',-25000

----------------------------------------------

--���w�]�Ȫ��Ѽ�
alter proc ���u�~��a�d��
	
	@city char(5) ='�x�_',
	@name varchar(12)
as
begin
	
	select * from ���u
	where �m�W=@name and ����=@city
end

--�S����ܼƴN�|�۰ʨϥιw�]��
exec ���u�~��a�d�� @name='���I��'

exec ���u�~��a�d�� default,'���I��'

-------------------------------------------
