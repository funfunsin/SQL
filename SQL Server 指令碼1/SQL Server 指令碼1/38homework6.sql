--�ˬd�ҵ{�s���O�_���ƪ����
create function fnCheckCourseID
	(@id char(5))
	returns char(1)
as
begin
	declare @a char(5)
	select @a=�ҵ{�s��	from �ҵ{
	where �ҵ{�s��=@id

	if @@ROWCOUNT=0
		return '1'

	return '0'
end

--���ե�
select dbo.fnCheckCourseID('CS888')

--------------------------------------
--�s�W�ҵ{��ƹw�s�{��
alter proc addCourse
	@id char(5),
	@name varchar(30),
	@c int
as
begin
	if dbo.fnCheckCourseID(@id)='1'
		insert into �ҵ{ values(@id,@name,@c)
end

--���ե�
exec addCourse 'CS999', 'abcde', 3