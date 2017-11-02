select * from view_學生選課明細
where 課程編號='CS101'

select * from dbo.fn學生選課明細('CS101')

exec 學生選課明細 'CS101'

alter function fn學生選課明細
	(@C_ID char(5) )
	returns table
return(
SELECT          dbo.課程.課程編號, dbo.課程.名稱, dbo.課程.學分, dbo.員工.身份證字號, dbo.員工.姓名, dbo.員工.城市, 
                            dbo.員工.街道, dbo.員工.電話, dbo.員工.薪水, dbo.員工.保險, dbo.員工.扣稅, dbo.學生.學號 AS 學生學號, 
                            dbo.學生.姓名 AS 學生姓名, dbo.學生.性別, dbo.學生.電話 AS 學生電話, dbo.學生.生日, dbo.班級.上課時間, 
                            dbo.班級.教室, dbo.教授.教授編號, dbo.教授.職稱, dbo.教授.科系
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號 INNER JOIN
                            dbo.班級 ON dbo.教授.教授編號 = dbo.班級.教授編號 INNER JOIN
                            dbo.課程 ON dbo.班級.課程編號 = dbo.課程.課程編號 INNER JOIN
                            dbo.學生 ON dbo.班級.學號 = dbo.學生.學號
					where 課程.課程編號=@C_ID
							)


create proc 學生選課明細
	@C_ID char(5)
as
begin
SELECT          dbo.課程.課程編號, dbo.課程.名稱, dbo.課程.學分, dbo.員工.身份證字號, dbo.員工.姓名, dbo.員工.城市, 
                            dbo.員工.街道, dbo.員工.電話, dbo.員工.薪水, dbo.員工.保險, dbo.員工.扣稅, dbo.學生.學號 AS 學生學號, 
                            dbo.學生.姓名 AS 學生姓名, dbo.學生.性別, dbo.學生.電話 AS 學生電話, dbo.學生.生日, dbo.班級.上課時間, 
                            dbo.班級.教室, dbo.教授.教授編號, dbo.教授.職稱, dbo.教授.科系
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號 INNER JOIN
                            dbo.班級 ON dbo.教授.教授編號 = dbo.班級.教授編號 INNER JOIN
                            dbo.課程 ON dbo.班級.課程編號 = dbo.課程.課程編號 INNER JOIN
                            dbo.學生 ON dbo.班級.學號 = dbo.學生.學號
					where 課程.課程編號=@C_ID
end