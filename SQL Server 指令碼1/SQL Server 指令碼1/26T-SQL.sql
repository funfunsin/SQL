-- T-SQL  (Transact-SQL) 專指SQL-Server的程式語言
--ANSI-99  Oracle--->PL/SQL

--批次:指一段T-SQL的程式指令
--用GO指令定義批次範圍
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

select 'Hello World!!' as 第一支程式

--純量變數
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

--變數的計算與資料型態轉換 cast
declare @total int =1000
set @total=@total*1.2
--set @total*=1.2
--set @total=@total+1
--set @total+=1
print '加薪後的薪水為'+ cast(@total as varchar) 
go


declare @name varchar(20), @birthday datetime
select @name=姓名,@birthday=生日
from 學生
where 學號='S001'

print '學生姓名:'+@name+ ', 生日:'+cast(@birthday as varchar) 
--convert可指定轉換字串樣式(代碼ex.111 )
print '學生姓名:'+@name+ ', 生日:'+REPLACE(convert(varchar,@birthday,111),'/', '-')

select 姓名,REPLACE(convert(varchar,生日,111),'/','-')  from 學生

go


declare @total int
set @total=(select count(*) from 員工)
print '員工人數為:'+cast(@total as varchar)+'人'

go

declare @name varchar(20), @salary money
select @name=姓名,@salary=薪水
from 員工 order by 薪水 desc

print '員工姓名:'+@name+ ', 薪水:'+cast(@salary as varchar)

select 姓名,薪水
from 員工


--資料表變數
declare @E_Salary table(
	name varchar(20),
	salary money
)

--insert into @E_Salary
--values('aaa',50000),('bbb',40000)

insert into @E_Salary
select 姓名,薪水 from 員工
where 薪水>=40000

select * from @E_Salary


--(select 姓名,薪水 from 員工)