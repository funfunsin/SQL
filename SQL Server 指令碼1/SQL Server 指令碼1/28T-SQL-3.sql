--return中斷查詢

declare @total int

set @total=(select count(*) from 課程)

if (select count(*) from 學生)>=1
begin
	print '有學生'
	return
end

print '課程總數為:'+cast(@total as char)

--case敘述----------------------------------
--簡單case

select 姓名, 
case 性別
	when '男' then 'Male'
	when '女' then 'Female'
	else 'unknow'
end
from 學生

--搜尋case
--找到滿足的條件即會停止,因此要注意搜尋的順序
declare @gender nvarchar(1), @result nvarchar(6)
set @gender='女'
set @result=case 
	when @gender='男' then 'Male'
	when @gender='女' then 'Female'
	else '未定'
end

print @result



declare @score int =95, @level nvarchar(2)

set @level=case
	when @score>=90 then '優等'
	when @score>=80 then '甲等'
	when @score>=70 then '乙等'
	when @score>=60 then '丙等'
	else '丁等'
end
print @level


