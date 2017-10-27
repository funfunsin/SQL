--資料表欄位新增
alter table 訂單
	add 數量 int not null default 1,
		訂單日期 datetime not null default getdate()


--資料表欄位修改
alter table 訂單
	alter column 數量 bigint


--資料表欄位刪除
alter table 訂單
	drop constraint DF__訂單__數量__52593CB8
	
alter table 訂單
	drop column 數量

--資料表條件約束修改
alter table 訂單
	drop constraint 訂單大於零_check

alter table 訂單
	add constraint 訂單大於零_check 
	check(總價>0)

--修改foreign key
alter table 教授
	add foreign key(身份證字號) references 員工(身份證字號)
