--create database test2

use test2
go

create table 課程(
	課程編號 char(5) not null primary key,
	名稱 varchar(30) not null,
	學分 int
)

--default
create table 員工(
	身份證字號 char(10) primary key,
	姓名 varchar(12) not null,
	城市 char(5) default '高雄',
	街道 varchar(30),
	電話 varchar(15),
	薪水 money default 22000, 
	保險 money,
	扣稅 as 薪水*0.05,
	淨所得 as 薪水-保險-薪水*0.05
)


--identity
create table 教授(
	流水編號 bigint identity(1,5),
	教授編號 char(4) primary key,
	職稱 varchar(10),
	科系 varchar(5),
	身份證字號 char(10) not null

)
