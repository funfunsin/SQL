--Instead Trigger
create trigger new�ҵ{ on �ҵ{
instead of insert
as
begin
	if exists(
		select * from �ҵ{
		where �ҵ{�s��=(select �ҵ{�s�� from inserted)
	)
	begin
		--��update
		update �ҵ{ set �W��=inserted.�W��, �Ǥ�=inserted.�Ǥ�
		from �ҵ{ join inserted on �ҵ{.�ҵ{�s��=inserted.�ҵ{�s��

	end
	else
	begin
		--��insert
		insert into �ҵ{
		select * from inserted
	end
end


insert into �ҵ{
values('CS650','ddddd',3)


---------------------------------
create view view_�ҵ{
as

	select * from �ҵ{

select * from view_�ҵ{


insert into view_�ҵ{ values('','',3)

create trigger new�ҵ{2 on view_�ҵ{
instead of insert
as
begin
	if exists(
		select * from �ҵ{
		where �ҵ{�s��=(select �ҵ{�s�� from inserted)
	)
	begin
		--��update
		update �ҵ{ set �W��=inserted.�W��, �Ǥ�=inserted.�Ǥ�
		from �ҵ{ join inserted on �ҵ{.�ҵ{�s��=inserted.�ҵ{�s��

	end
	else
	begin
		--��insert
		insert into �ҵ{
		select * from inserted
	end
end