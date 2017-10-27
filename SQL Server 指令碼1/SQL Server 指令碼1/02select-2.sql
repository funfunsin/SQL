--distinct重複值只顯示一次並排序
select distinct 學分
from 課程

--top子句 依現行的排序取前三
select top 3 *
from 學生

--top子句 依現行的排序取前25%
select top 25 percent *
from 學生

--order by依照學分欄排序
--再取前3名 with ties表示同值皆取
--必須先有order by才能設with ties
select top 3 with ties *
from 課程
order by 學分