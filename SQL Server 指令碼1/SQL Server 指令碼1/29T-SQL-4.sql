--while迴圈
declare @counter int =1 , @sum int =0

while @counter<=100
begin
	set @sum+=@counter

	set @counter+=1
end

print @sum
-------------------------------------------
--練習畫星星
--*
--**
--***
--****
--*****

declare @i int =1,@a varchar(max) =''
while @i<=100
begin
	set @a+='*'
	print @a
	set @i+=1
end
------------------------
--break一定要配迴圈
declare @total int =0, @j int =1
while @j<=10
begin
	if @j=5
		break

	set @total+=@j
	set @j+=1
end
print @total

--continue 會回到迴圈的頭執行
declare @k int =1,@total2 int =0

while @k<=100
begin
	set @k+=1
	if @k%2<>0
		continue
	set @total+=@k
	
end


