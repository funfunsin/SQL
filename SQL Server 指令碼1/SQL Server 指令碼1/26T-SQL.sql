-- T-SQL  (Transact-SQL) �M��SQL-Server���{���y��
--ANSI-99  Oracle--->PL/SQL

--�妸:���@�qT-SQL���{�����O
--��GO���O�w�q�妸�d��
create database myDataBase
go
use myDataBase
go
create table table1(
	tID char(5) primary key,
	name nvarchar(30) not null
)
-----------------------------------------

print 'Hello World!!'

select 'Hello World!!' as �Ĥ@��{��

--�¶q�ܼ�
declare @total int
declare @money money =100, @salary money
print @total
print @money
select @salary
set @total=@money
select @salary=@total
print @total
print @money
select @salary
go

--�ܼƪ��p��P��ƫ��A�ഫ cast
declare @total int =1000
set @total=@total*1.2
--set @total*=1.2
--set @total=@total+1
--set @total+=1
print '�[�~�᪺�~����'+ cast(@total as varchar) 
go


declare @name varchar(20), @birthday datetime
select @name=�m�W,@birthday=�ͤ�
from �ǥ�
where �Ǹ�='S001'

print '�ǥͩm�W:'+@name+ ', �ͤ�:'+cast(@birthday as varchar) 
--convert�i���w�ഫ�r��˦�(�N�Xex.111 )
print '�ǥͩm�W:'+@name+ ', �ͤ�:'+REPLACE(convert(varchar,@birthday,111),'/', '-')

select �m�W,REPLACE(convert(varchar,�ͤ�,111),'/','-')  from �ǥ�

go


declare @total int
set @total=(select count(*) from ���u)
print '���u�H�Ƭ�:'+cast(@total as varchar)+'�H'

go

declare @name varchar(20), @salary money
select @name=�m�W,@salary=�~��
from ���u order by �~�� desc

print '���u�m�W:'+@name+ ', �~��:'+cast(@salary as varchar)

select �m�W,�~��
from ���u


--��ƪ��ܼ�
declare @E_Salary table(
	name varchar(20),
	salary money
)

--insert into @E_Salary
--values('aaa',50000),('bbb',40000)

insert into @E_Salary
select �m�W,�~�� from ���u
where �~��>=40000

select * from @E_Salary


--(select �m�W,�~�� from ���u)