--after trigger
--for insert
create trigger 選課數check on 班級
after insert
as
begin
	if (select count(*) from 班級
	where 學號=(select 學號 from inserted)) >4
	begin
		print '已選4門課程了,請先退選再進行加選!!'
		rollback
	end
end


insert into 班級 values('I001','S001','CS999','1900-01-01 12:00:00.000','180-M')

--------------------------------------------------------------------------
--for update
alter trigger 學分數check on 課程
after update
as
begin
	declare @new int, @old int
	select @old=學分 from deleted
	select @new=學分 from inserted

	if @new < @old
	begin
		print '學分數不可比原學分還低!!原學分數為:'+cast(@old as varchar)+'學分'
		rollback
	end
end

update 課程 set 學分=3
where 課程編號='CS652'

-----------------------------------------------------------------------
--for delete,update
create trigger 員工學生check on 員工
after delete,update
as
begin
	if exists(
		select * from 學生
		where 姓名=(select 姓名 from deleted)
	)
	begin
		rollback
	end

end

delete 員工
where 身份證字號='F332213046'

update 員工 set 薪水='10000000'
where 身份證字號='F332213046'

