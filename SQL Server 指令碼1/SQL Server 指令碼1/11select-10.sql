--集合運算
--union 聯集
select 姓名 from 學生
union
select 姓名 from 員工

--union all 會出現所有集合內的 不會刪除重複的
select 姓名 from 學生
union all
select 姓名 from 員工


--撰寫上的限制
--資料型態必須一致
select 學號,姓名 from 學生 
union
select 身份證字號,姓名 from 員工

---------------
--intersect 交集
select 姓名 from 學生 
intersect 
select 姓名 from 員工



---------------
--except 差集
--前後順序會讓結果不同