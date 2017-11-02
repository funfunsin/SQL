--觸發程序Trigger
update 客戶 set 電話='1234567890',姓名='abc'
output
	inserted.姓名, inserted.電話, inserted.客戶編號,
	deleted.姓名 as 舊姓名, deleted.電話 as 舊電話, deleted.客戶編號 as 舊編號
where 客戶編號='C011'
-----------------------------------------------------------------
insert into 課程
values('CS654','aaaa',3)

create trigger show新增課程資訊 on 課程
after insert
as
begin
	select 課程編號,名稱 from inserted
end

insert into 課程
values('CS653','aaaa',3)