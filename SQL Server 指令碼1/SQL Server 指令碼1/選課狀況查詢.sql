create proc 選課狀況查詢
 @s_name char(4)
 as
 begin
SELECT          dbo.學生.學號, dbo.學生.姓名, dbo.學生.性別, dbo.課程.課程編號, dbo.課程.名稱, dbo.教授.教授編號, 
                            dbo.員工.姓名 AS Expr1, dbo.教授.職稱, dbo.教授.科系, dbo.班級.上課時間, dbo.班級.教室
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號 INNER JOIN
                            dbo.班級 ON dbo.教授.教授編號 = dbo.班級.教授編號 INNER JOIN
                            dbo.課程 ON dbo.班級.課程編號 = dbo.課程.課程編號 INNER JOIN
                            dbo.學生 ON dbo.班級.學號 = dbo.學生.學號
       where 學生.學號=@s_name
end