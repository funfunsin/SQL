--�l�d��(subquery)
select �m�W,�q��,�~��
from ���u
where �~��>50000


select �m�W,�q��,�~��
from ���u
where �~��>(select avg(�~��) from ���u)

select ���u.�m�W,���u.�q��,���u.�~��
from ���u inner join ���u as a on ���u.�����Ҧr��<>a.�����Ҧr��
group by ���u.�m�W,���u.�q��,���u.�~��
having ���u.�~��>avg(a.�~��)

select ���u.�m�W,���u.�q��,���u.�~��
from ���u, ���u as a
--where ���u.�����Ҧr��<>a.�����Ҧr��
group by ���u.�m�W,���u.�q��,���u.�~��
having ���u.�~��>avg(a.�~��)


select a.�m�W,a.�q��,a.�~��
from
(select * from ���u where �~��>50000) as a


select a.b from (select avg(�~��) as b from ���u) as a
------------------------------------

select �Z��.* from �Z�� inner join �ǥ� on �Z��.�Ǹ�=�ǥ�.�Ǹ�
where �ǥ�.�m�W='���|�w'

select * from �Z��
where �Ǹ�=(select �Ǹ� from �ǥ� where �m�W='���|�w')

----------------------------------------

select �Z��.�Ǹ�,�ǥ�.�m�W,COUNT(*) as ��Ҽ� 
from �Z�� inner join �ǥ� on �Z��.�Ǹ�=�ǥ�.�Ǹ�
where �Z��.�Ǹ�=(select �Ǹ� from �ǥ� where �m�W='���|�w')
group by �Z��.�Ǹ�,�ǥ�.�m�W


select �Z��.�Ǹ�,�ǥ�.�m�W,COUNT(*) as ��Ҽ� 
from �Z�� inner join �ǥ� on �Z��.�Ǹ�=�ǥ�.�Ǹ�
where �m�W='���|�w'
group by �Z��.�Ǹ�,�ǥ�.�m�W


select �m�W,���� from ���u
order by ����



select �m�W,���� from ���u
where ���u.���� in
(select ���� from ���u
group by ����
having count(����)>1)


select distinct ���u.�m�W,���u.���� 
from ���u inner join ���u as a
on ���u.�����Ҧr��<>a.�����Ҧr�� and ���u.����=a.����
--group by ���u.�m�W,���u.���� 


select ���u.�m�W,���u.���� 
from ���u inner join ���u as a
on  ���u.����=a.����
group by ���u.�m�W,���u.���� 
having count(*)>
