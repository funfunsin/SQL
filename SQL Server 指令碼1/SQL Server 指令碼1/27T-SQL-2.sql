--�y�{����
--if/else

declare @test char(15) 
set @test ='hello'
if @test='hello'
begin 
	print 'aaa'
end
else
	print 'bbb'

------------------------------------
declare @height int 
set @height=130

if @height>=120
	print '����'
else if @height>=90
	print '�b��'
else
	print '�K��'

if (select count(*) from ���u) <10
	print '���u�����Q��'
else
	print '���u�Q��H�W'


--�P�_�O�_�s�b����� db_id ,object_id
if db_id('hjhjhjhjh') is null
	print '��Ʈw���s�b'
else
	print '��Ʈw�s�b'


if object_id('view_���m�W���б¸��') is null
	print '���󤣦s�b'
else
	print '����w�s�b'