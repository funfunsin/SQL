--檢視表修改
alter view view_有姓名的教授資料
as
SELECT          dbo.教授.教授編號, dbo.教授.身份證字號, dbo.員工.姓名, dbo.教授.職稱, dbo.教授.科系,
員工.城市,員工.街道,員工.薪水
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號

--被加密過的檢視表
alter view view_學生選課狀況報表

as
SELECT          dbo.學生.學號, dbo.學生.姓名,count(*) as 總選課數,sum(課程.學分) as 總學分,avg(課程.學分) as 平均學分
FROM              dbo.班級 INNER JOIN
                            dbo.課程 ON dbo.班級.課程編號 = dbo.課程.課程編號 INNER JOIN
                            dbo.學生 ON dbo.班級.學號 = dbo.學生.學號
						group by dbo.學生.學號, dbo.學生.姓名

--刪除檢視表
drop view view_有姓名的教授資料





