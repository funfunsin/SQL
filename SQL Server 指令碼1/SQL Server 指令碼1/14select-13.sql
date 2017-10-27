--offset
select 身份證字號,姓名,薪水 from 員工

select 身份證字號,姓名,薪水 from 員工
order by 身份證字號
offset 3 rows

--fetch next
select 身份證字號,姓名,薪水 from 員工
order by 身份證字號
offset 3 rows
fetch next 4 rows only

-------------------------------------------
--null 
select count(*) from 學生
select count(學號) from 學生
select count(生日) from 學生

select * from 學生
where 生日 is null

select * from 學生
where 生日 is not null

--isnull()
select 身份證字號,姓名,isnull(電話,'未填寫')
from 員工