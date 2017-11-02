--秖ㄧ计--
------------------------------------------------------
--ミ⊿Τ把计ㄧ计
create function fnGetSalary()
	returns money
as
begin
	declare @salary money
	select @salary=羱 from 
	return @salary
end
-------------------------------------
select 羱 from 

select dbo.fnGetSalary()
-------------------------------------
--ミ⊿ΤΤ把计ㄧ计琩高瞓┮眔
create function fnSeacherSalary
	(@id char(10))
	returns money
as
begin
	declare @salary money
	select @salary=(羱-Ι祙-玂繧) from 
	where ō靡腹=@id

	if @@ROWCOUNT=0
		return 0
	return @salary
end
---------------------------------------------
--ミ眔瞓┮眔箇祘
create proc GetSalary
	@name varchar(12)
as
declare @id varchar(12),@salary money
select @id=ō靡腹 from  where ﹎=@name
if @@ROWCOUNT=0
	print '⊿Τ硂'
else
begin
	select @salary=dbo.fnSeacherSalary(@id)
	if @salary=0
		print '⊿Τ硂'
	else
		print @name+'瞓┮眔:'+cast(@salary as varchar)
end
----------------------------------------------------
exec GetSalary '法鲦'
