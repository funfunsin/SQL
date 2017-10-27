--系統函數(全域變數)
select * from 學生

if @@rowcount>=10
	print '本班有10位以上的學生'

select * from 學生 where 學號='S567'
print @@rowcount

select 100/0
print @@error


--發生例外錯誤才會執行catch
begin try
	select 100/0
end try
begin catch
	select @@ROWCOUNT as 影響的資料列數,@@error as 錯誤碼,ERROR_NUMBER() as 錯誤碼,
	ERROR_STATE() as 狀態碼, ERROR_MESSAGE() as 錯誤訊息
end catch



	select 100/10

	select @@ROWCOUNT as 影響的資料列數,@@error as 錯誤碼,ERROR_NUMBER() as 錯誤碼,
	ERROR_STATE() as 狀態碼, ERROR_MESSAGE() as 錯誤訊息
