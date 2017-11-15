--假設菜單編號M0000001~M9999999
--產生菜單編號的函數
alter function fnGetMealNo()
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




--假設產品編號O000000001~O999999999
--產生產品編號的函數
create function fnGetOrderNo()
	returns char(8)
as
begin
	declare @orderID char(8), @number int
	select top 1 @orderID=orderNo from orderList
	order by orderNo desc

	if @@ROWCOUNT=0
		set @orderID='0000001'
	else
	begin
		set @number=cast(substring(@orderID,2,8) as int)+1
		set @orderID=cast(@number as varchar)
		--001 as int =1 ->2

		if len(@orderID)=1
			return 'O00000000'+@orderID
		if len(@orderID)=2
			return 'O0000000'+@orderID
		if len(@orderID)=3
			return 'O000000'+@orderID
		if len(@orderID)=4
			return 'O00000'+@orderID
		if len(@orderID)=5
			return 'O0000'+@orderID
		if len(@orderID)=6
			return 'O000'+@orderID
		if len(@orderID)=7
			return 'O00'+@orderID
		if len(@orderID)=8
			return 'O0'+@orderID
		if len(@orderID)=9
			return 'O'+@orderID
	end
	return 'O'+@orderID
end



