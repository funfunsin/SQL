--��ƪ����s�W
alter table �q��
	add �ƶq int not null default 1,
		�q���� datetime not null default getdate()


--��ƪ����ק�
alter table �q��
	alter column �ƶq bigint


--��ƪ����R��
alter table �q��
	drop constraint DF__�q��__�ƶq__52593CB8
	
alter table �q��
	drop column �ƶq

--��ƪ��������ק�
alter table �q��
	drop constraint �q��j��s_check

alter table �q��
	add constraint �q��j��s_check 
	check(�`��>0)

--�ק�foreign key
alter table �б�
	add foreign key(�����Ҧr��) references ���u(�����Ҧr��)
