--流程控制
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
	print '全票'
else if @height>=90
	print '半票'
else
	print '免票'

if (select count(*) from 員工) <10
	print '員工不滿十位'
else
	print '員工十位以上'


--判斷是否存在的函數 db_id ,object_id
if db_id('hjhjhjhjh') is null
	print '資料庫不存在'
else
	print '資料庫存在'


if object_id('view_有姓名的教授資料') is null
	print '物件不存在'
else
	print '物件庫存在'