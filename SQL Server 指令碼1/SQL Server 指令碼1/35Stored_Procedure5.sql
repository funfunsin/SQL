--�w�s�{�Ǫ��^�ǭ�
--return
create proc �s�W�ҵ{
	@c_id char(5),
	@c_name varchar(30),
	@c_credite int
as
begin
	declare @error int
	insert into �ҵ{ values(@c_id,@c_name,@c_credite)
	set @error=@@ERROR

	return @error
end

----------------------
alter proc �s�W�ҵ{���~�B�z
	@c_id char(5),
	@c_name varchar(30),
	@c_credite int
as
begin
	declare @error int
	exec  @error=�s�W�ҵ{ @c_id,@c_name,@c_credite

	if @error=2627
		select '�ҵ{�s�����ƤF!!'
	else if @error=0
		select '�s�W���\'
	else 
		select '�D��ȭ��ƪ����~!�N��:' + cast(@error as varchar)
end

--�n�N��Ʀ^�ǭ���ܨ�e�� print�令select
--�|�X�{���G��

exec �s�W�ҵ{���~�B�z 'CS888','aaa',5



------------------
--output�i��ѼƶǥX
alter proc �~���d��
	@name varchar(12),
	@salary money output
as
begin
	select @salary=�~�� from ���u
	where �m�W=@name
end

-----

alter proc �[�~����
	@name varchar(12)
as
begin
	declare @MySalary money
	exec �~���d�� @name, @salary=@MySalary output

	print @name + '�պ�[�~�᪺���B��'+cast(@MySalary*1.05 as varchar)+'��'
end


exec �[�~���� '�i�L��'


--------------------------------------
--���عw�s�{��

sp_rename 'Table_1' ,'tttttt'

sp_help

sp_helptext ���u�~��d��

sp_columns ���u