--primary key constraints
create table �Z��(
	�б½s�� char(4),
	�Ǹ� char(4),
	�ҵ{�s�� char(5),
	�W�Үɶ� datetime,
	�Ы� varchar(8),
	primary key(�б½s��,�Ǹ�,�ҵ{�s��)
)

--check constraints
create table �q��(
	�q��y���� bigint primary key identity(10000,1),
	�`�� money not null constraint �q��j��s_check check (�`��>=0),
	�b�I�ڪ��B money check (�b�I�ڪ��B>=0)
)

create table �q��2(
	�q��y���� bigint primary key identity(10000,1),
	�`�� money not null,
	�b�I�ڪ��B money,

	check ((�`��>=0) and (�b�I�ڪ��B>=0))
)

--unique constraints
create table �|�����(
	�|���s�� char(8) primary key,
	�m�W varchar(20) not null,
	�����Ҧr�� char(10) unique

)

--foreign key 
create table �ǥ�(
	�Ǹ� char(4) primary key,
	�m�W varchar(12) not null,
	�ʧO char(2),
	�q�� varchar(15),
	�ͤ� datetime

)



create table �Z��(
	�б½s�� char(4),
	�Ǹ� char(4),
	�ҵ{�s�� char(5),
	�W�Үɶ� datetime,
	�Ы� varchar(8),

	primary key(�б½s��,�Ǹ�,�ҵ{�s��),
	foreign key  (�б½s��)  references  �б�(�б½s��) on delete cascade on update cascade,
	foreign key  (�Ǹ�)  references  �ǥ�(�Ǹ�)  on delete cascade on update no action,
	foreign key  (�ҵ{�s��)  references  �ҵ{(�ҵ{�s��)  on delete no action on update cascade
)