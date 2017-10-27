--primary key constraints
create table 班級(
	教授編號 char(4),
	學號 char(4),
	課程編號 char(5),
	上課時間 datetime,
	教室 varchar(8),
	primary key(教授編號,學號,課程編號)
)

--check constraints
create table 訂單(
	訂單流水號 bigint primary key identity(10000,1),
	總價 money not null constraint 訂單大於零_check check (總價>=0),
	淨付款金額 money check (淨付款金額>=0)
)

create table 訂單2(
	訂單流水號 bigint primary key identity(10000,1),
	總價 money not null,
	淨付款金額 money,

	check ((總價>=0) and (淨付款金額>=0))
)

--unique constraints
create table 會員資料(
	會員編號 char(8) primary key,
	姓名 varchar(20) not null,
	身分證字號 char(10) unique

)

--foreign key 
create table 學生(
	學號 char(4) primary key,
	姓名 varchar(12) not null,
	性別 char(2),
	電話 varchar(15),
	生日 datetime

)



create table 班級(
	教授編號 char(4),
	學號 char(4),
	課程編號 char(5),
	上課時間 datetime,
	教室 varchar(8),

	primary key(教授編號,學號,課程編號),
	foreign key  (教授編號)  references  教授(教授編號) on delete cascade on update cascade,
	foreign key  (學號)  references  學生(學號)  on delete cascade on update no action,
	foreign key  (課程編號)  references  課程(課程編號)  on delete no action on update cascade
)