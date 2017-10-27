--where子句 like運算(模糊查詢)
-- % 萬用字元 表示0~n個字元
-- _ 萬用字元 表示1個字元
--[] 括弧內的字元 like %[cs]% = like %c% or %s%
--[-]連續性字元 like %[a-e]% = like %a% or %b% or %c% or %d% or %e%
--[^]除括弧內字元之外 

select *
from 教授
where 科系 like 'cs'

select *
from 班級
where 教室 like '%2_-%%'





--where子句 between and運算
select *
from 學生
where 生日 between '1990/1/1' and '1991/12/31'




--where子句 in運算
--or在SQL裡的效能不好 盡量改寫
select *
from 課程
where 課程編號='CS101' or 課程編號='CS222' or 課程編號='CS111' or 課程編號='CS999'
--改寫成in
select *
from 課程
where 課程編號 in ('CS101','CS222','CS111','CS999')
--改寫成like
select *
from 課程
where 課程編號 like 'CS[129][0-29][129]'




--where子句 not運算
--not反向查詢在SQL裡的效能不好 
select *
from 課程
where 課程編號 not in ('CS101','CS222','CS111','CS999')

select *
from 學生
where 生日 not between '1990/1/1' and '1991/12/31'




--課程編號含有2 而且 名稱含有'程式'
--4學分(含)以上
select * from 課程
where 課程編號 like '%2%' and 名稱 like '%程式%' or 學分>=4

--課程編號含有2 而且 名稱含有'程式'
--課程編號含有2 而且 4學分(含)以上
select * from 課程
where 課程編號 like '%2%' and (名稱 like '%程式%' or 學分>=4)



--where子句 算數運算
select 身份證字號,姓名
from 員工
where (薪水-扣稅-保險) >=40000


select 身份證字號,姓名,(薪水-扣稅-保險) as 淨所得
from 員工
where (薪水-扣稅-保險) >=40000