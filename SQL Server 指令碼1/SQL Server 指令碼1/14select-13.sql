--offset
select �����Ҧr��,�m�W,�~�� from ���u

select �����Ҧr��,�m�W,�~�� from ���u
order by �����Ҧr��
offset 3 rows

--fetch next
select �����Ҧr��,�m�W,�~�� from ���u
order by �����Ҧr��
offset 3 rows
fetch next 4 rows only

-------------------------------------------
--null 
select count(*) from �ǥ�
select count(�Ǹ�) from �ǥ�
select count(�ͤ�) from �ǥ�

select * from �ǥ�
where �ͤ� is null

select * from �ǥ�
where �ͤ� is not null

--isnull()
select �����Ҧr��,�m�W,isnull(�q��,'����g')
from ���u