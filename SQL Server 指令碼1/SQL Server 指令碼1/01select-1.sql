--資料查詢
select 100 as 欄位1,'放心' as 欄位2

--from後面一定接資料表
select 學號,姓名,性別
from 學生

--select 後面接欄位 *代表全部欄位
select *
from 學生

--select 可取欄位別名
select 學號 as Student_no,姓名 as Name,性別 as Gender,電話 as Tel,生日 as Birthday
from 學生

--數值欄位運算
select 姓名,身份證字號,薪水,薪水-保險-扣稅 as 淨所得
from 員工

--文字欄位運算
select 姓名,城市+'市'+街道 as 地址,電話
from 員工

--函數的運用
select 學號,姓名,生日,GETDATE() as 今日日期,DATEDIFF(YEAR,生日,GETDATE()) as 年齡
from 學生