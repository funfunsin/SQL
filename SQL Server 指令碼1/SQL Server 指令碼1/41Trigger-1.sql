--Ĳ�o�{��Trigger
update �Ȥ� set �q��='1234567890',�m�W='abc'
output
	inserted.�m�W, inserted.�q��, inserted.�Ȥ�s��,
	deleted.�m�W as �©m�W, deleted.�q�� as �¹q��, deleted.�Ȥ�s�� as �½s��
where �Ȥ�s��='C011'
-----------------------------------------------------------------
insert into �ҵ{
values('CS654','aaaa',3)

create trigger show�s�W�ҵ{��T on �ҵ{
after insert
as
begin
	select �ҵ{�s��,�W�� from inserted
end

insert into �ҵ{
values('CS653','aaaa',3)