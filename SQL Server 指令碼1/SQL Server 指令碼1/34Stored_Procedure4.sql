--肚把计
alter proc 羱戈琩高
	@name varchar(12), 
	@salary money
as
begin

	select * from 
	where ﹎=@name and 羱>=@salary
end

--璶酚把计抖@name @salary
exec 羱戈琩高 '尝碔',25000
------------------------------------------

alter proc 羱戈琩高
	@name varchar(12), 
	@salary money
as
begin
	if @salary<0
		set @salary=0

	select * from 
	where ﹎=@name and 羱>=@salary
end

exec 羱戈琩高 '尝碔',-25000

----------------------------------------------

--Τ箇砞把计
alter proc ﹡琩高
	
	@city char(5) ='',
	@name varchar(12)
as
begin
	
	select * from 
	where ﹎=@name and カ=@city
end

--⊿т跑计碞穦笆ㄏノ箇砞
exec ﹡琩高 @name='尝碔'

exec ﹡琩高 default,'尝碔'

-------------------------------------------
