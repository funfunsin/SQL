create view view_�Z�W�ͤ�M�U
as
select �Ǹ�,�m�W,�ͤ�
from �ǥ�
go

create view view_�Z�W�ͤ�M�U_�Lkey
as
select �m�W,�ͤ�
from �ǥ�

----------------------------------------------
insert into view_�Z�W�ͤ�M�U values('S199','���ڦ�','1990/8/9')


insert into view_�Z�W�ͤ�M�U_�Lkey values('���ڦ�','1990/8/9')
--------------------------------------------------------------------
update view_�Z�W�ͤ�M�U set �ͤ�='1990/8/19' 
where �Ǹ�='S199'

update view_�Z�W�ͤ�M�U_�Lkey set �ͤ�='1990/8/29' 
where �m�W='���ڦ�'