--create database test2

use test2
go

create table �ҵ{(
	�ҵ{�s�� char(5) not null primary key,
	�W�� varchar(30) not null,
	�Ǥ� int
)

--default
create table ���u(
	�����Ҧr�� char(10) primary key,
	�m�W varchar(12) not null,
	���� char(5) default '����',
	��D varchar(30),
	�q�� varchar(15),
	�~�� money default 22000, 
	�O�I money,
	���| as �~��*0.05,
	�b�ұo as �~��-�O�I-�~��*0.05
)


--identity
create table �б�(
	�y���s�� bigint identity(1,5),
	�б½s�� char(4) primary key,
	¾�� varchar(10),
	��t varchar(5),
	�����Ҧr�� char(10) not null

)
