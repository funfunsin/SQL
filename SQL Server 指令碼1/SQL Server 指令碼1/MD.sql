--假設菜單編號M0000001~M9999999
--產生菜單編號的函數
create function fnGetMealNo()
	returns char(8)
as
begin
	declare @mealID char(8), @number int
	select top 1 @mealID=mealNo from meal
	order by mealNo desc

	if @@ROWCOUNT=0
		set @mealID='0000001'
	else
	begin
		set @number=cast(substring(@mealID,2,8) as int)+1
		set @mealID=cast(@number as varchar)

		if len(@mealID)=1
			return 'M000000'+@mealID
		if len(@mealID)=2
			return 'M00000'+@mealID
		if len(@mealID)=3
			return 'M0000'+@mealID
		if len(@mealID)=4
			return 'M000'+@mealID
		if len(@mealID)=5
			return 'M00'+@mealID
		if len(@mealID)=6
			return 'M0'+@mealID
		if len(@mealID)=7
			return 'M'+@mealID
	end
	return 'M'+@mealID
end

--產生ChecktaxID函數
create function fnChecktaxID
	(@taxID char(8))
	returns char(1)
as
begin
	declare @a char(8)
	select @a=taxID	from store
	where taxID=@taxID

	if @@ROWCOUNT=0
		return '1'

	return '0'
end


select orderContains.orderNo,orderTime,meal.mealName,orderContains.quantity,orderContains.finished 
from orderContains 
inner join meal on orderContains.mealNo=meal.mealNo 
inner join orderList on orderContains.orderNo=orderList.orderNo
where taxID='01010101'

select *
from orderList 
inner join orderContains on orderList.orderNo=orderContains.orderNo 
inner join meal on orderContains.mealNo=meal.mealNo 
where taxID='01010101' and taken=1

select distinct orderList.orderNo,orderList.customerID,orderList.orderTime,orderList.total
from orderList 
inner join orderContains on orderList.orderNo=orderContains.orderNo 
inner join meal on orderContains.mealNo=meal.mealNo 
where taxID='01010101' and taken=1

select meal.mealName,orderList.orderTime from orderContains inner join meal on orderContains.mealNo=meal.mealNo 
inner join orderList on orderContains.orderNo=orderList.orderNo where taxID='01010101'

select mealName from meal where taxID = '01010101'

SELECT orderContains.orderNo, meal.mealName, orderContains.quantity, meal.price, orderContains.waitingTime, orderContains.finished
FROM meal INNER JOIN orderContains ON meal.mealNo = orderContains.mealNo



create trigger [dbo].[CountTotal] on [dbo].[orderContains]
after insert
as
begin
 declare @stotal money , @orderNo char(10), @mealNo char(8),@waitingTime int,@quantity int
 select @orderNo = orderNo,@mealNo = mealNo,@quantity = quantity from inserted
 
 select  @waitingTime = mealTime*@quantity from meal where mealNo=@mealNo

 select @stotal = orderList.total + (@quantity*meal.price) from orderContains 
 inner join orderList on orderContains.orderNo = orderList.orderNo 
 inner join meal on orderContains.mealNo = meal.mealNo
 where orderContains.orderNo = @orderNo and orderContains.mealNo = @mealNo
 update orderContains set waitingTime = @waitingTime where orderNo=@orderNo and mealNo = @mealNo
 update orderList set total = @stotal where orderNo = @orderNo
end