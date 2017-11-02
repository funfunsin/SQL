--Instead Trigger
create trigger new課程 on 課程
instead of insert
as
begin
	if exists(
		select * from 課程
		where 課程編號=(select 課程編號 from inserted)
	)
	begin
		--做update
		update 課程 set 名稱=inserted.名稱, 學分=inserted.學分
		from 課程 join inserted on 課程.課程編號=inserted.課程編號

	end
	else
	begin
		--做insert
		insert into 課程
		select * from inserted
	end
end


insert into 課程
values('CS650','ddddd',3)


---------------------------------
create view view_課程
as

	select * from 課程

select * from view_課程


insert into view_課程 values('','',3)

create trigger new課程2 on view_課程
instead of insert
as
begin
	if exists(
		select * from 課程
		where 課程編號=(select 課程編號 from inserted)
	)
	begin
		--做update
		update 課程 set 名稱=inserted.名稱, 學分=inserted.學分
		from 課程 join inserted on 課程.課程編號=inserted.課程編號

	end
	else
	begin
		--做insert
		insert into 課程
		select * from inserted
	end
end