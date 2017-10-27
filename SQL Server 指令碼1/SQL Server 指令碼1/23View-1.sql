--View (視界) 檢視表

select * from View_學生選4學分的選課明細

--用T-SQL指令建立檢視表

create view View_學生選4學分的選課明細2
as
SELECT          dbo.學生.學號, dbo.學生.姓名 AS 學生姓名, dbo.學生.性別, dbo.課程.課程編號, dbo.課程.名稱, dbo.課程.學分, 
                            dbo.班級.上課時間, dbo.班級.教室, dbo.員工.姓名 AS 教授姓名, dbo.教授.職稱, dbo.教授.科系, dbo.員工.薪水
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號 INNER JOIN
                            dbo.班級 ON dbo.教授.教授編號 = dbo.班級.教授編號 INNER JOIN
                            dbo.課程 ON dbo.班級.課程編號 = dbo.課程.課程編號 INNER JOIN
                            dbo.學生 ON dbo.班級.學號 = dbo.學生.學號
WHERE          (dbo.課程.學分 = 4)


select * from View_學生選4學分的選課明細2

-------------------------------------------
create view view_學生選課明細
as
SELECT          dbo.課程.*, dbo.員工.*, dbo.學生.學號 AS 學生學號, dbo.學生.姓名 AS 學生姓名, dbo.學生.性別, 
                            dbo.學生.電話 AS 學生電話, dbo.學生.生日, dbo.班級.上課時間, dbo.班級.教室, dbo.教授.教授編號, dbo.教授.職稱, 
                            dbo.教授.科系
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號 INNER JOIN
                            dbo.班級 ON dbo.教授.教授編號 = dbo.班級.教授編號 INNER JOIN
                            dbo.課程 ON dbo.班級.課程編號 = dbo.課程.課程編號 INNER JOIN
                            dbo.學生 ON dbo.班級.學號 = dbo.學生.學號


select 學生姓名,課程編號,名稱,姓名 
from View_學生選課明細
where 姓名='陳慶新'

select 學生學號,學生姓名,COUNT(*) as 學生選課數
from View_學生選課明細
group by 學生學號,學生姓名
having COUNT(*) <3

create view view_沒有員工資料的學生選課明細
as
SELECT          課程編號, 名稱, 學分, 姓名, 學生學號, 學生姓名, 性別, 學生電話, 生日, 上課時間, 教室, 教授編號, 職稱, 科系
FROM   dbo.view_學生選課明細

--with encryption
create view view_學生選課狀況報表
with encryption
as
select 學生學號,學生姓名,COUNT(*) as  選課數, sum(學分) as 總學分 
from view_沒有員工資料的學生選課明細
group by 學生學號,學生姓名

select * from view_學生選課狀況報表


----with schemabinding
create view view_有姓名的教授資料
with schemabinding
as
SELECT          dbo.教授.教授編號, dbo.教授.身份證字號, dbo.員工.姓名, dbo.教授.職稱, dbo.教授.科系
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號




