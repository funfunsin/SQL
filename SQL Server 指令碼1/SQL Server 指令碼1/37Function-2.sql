--��ƪ�Ȩ��--
--�^�ǭȬO�@�Ӹ�ƪ�
------------------------------------------------------
create function fnProfessor
	(@salary money)
	returns table
return(
select ���u.�����Ҧr��,���u.�m�W,�б�.�б½s��,�б�.��t,���u.�~��
from �б� inner join ���u on �б�.�����Ҧr��=���u.�����Ҧr��
where ���u.�~��>=@salary
)

select *
from dbo.fnProfessor(50000)

select *
from dbo.fnProfessor(70000) as �б�
inner join �Z�� on �Z��.�б½s��=�б�.�б½s��
inner join �ҵ{ on �Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��
------------------------------------------------------

select �����Ҧr��,�m�W,�q�� from ���u
order by �����Ҧr��
offset 3 rows
fetch next 3 rows only
------------------------------------------------------
create function fnOffset
(@m int, @n int)
returns @resultTable table(
	sn int identity,
	id char(10),
	name varchar(12),
	tel varchar(20)
)
begin
	insert into @resultTable
	select �����Ҧr��,�m�W,�q�� from ���u

	
	delete @resultTable
	where sn<@m or sn>@n

	return
end

select *
from dbo.fnOffset(4,6)







