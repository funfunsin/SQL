--01
select distinct �ǥ�.�Ǹ�,�ǥ�.�m�W,�б�.*
from �ǥ� inner join �Z�� on �ǥ�.�Ǹ�=�Z��.�Ǹ�
inner join �б� on �Z��.�б½s��=�б�.�б½s��
where �Z��.�б½s��='I001'


--02
select �Z��.�б½s��,�Z��.�Ǹ�,�Z��.�ҵ{�s��,�Z��.�Ы�,�ҵ{.�Ǥ�
from �Z�� inner join �ҵ{ on �Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��
where �ҵ{.�Ǥ�=4 and �Z��.�Ǹ� in ('S001','S002','S003')


--03��g
select �ǥ�.�Ǹ�,�ǥ�.�m�W,�ҵ{.*,�б�.*
from �б� inner join (�ҵ{ inner join (�ǥ� inner join �Z�� on �ǥ�.�Ǹ�=�Z��.�Ǹ�) on �Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��) on �Z��.�б½s��=�б�.�б½s��

select �ǥ�.�Ǹ�,�ǥ�.�m�W,�ҵ{.*,�б�.*,���u.*
from ���u inner join
(�б� inner join (�ҵ{ inner join (�ǥ� inner join �Z�� on �ǥ�.�Ǹ�=�Z��.�Ǹ�) on �Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��) on �Z��.�б½s��=�б�.�б½s��) on ���u.�����Ҧr��=�б�.�����Ҧr��

--01��g
select �б�.* 
from �б�
where exists (select * from �Z�� where (�Ы�='221-S' or �Ы�='100-M') and �б�.�б½s��=�Z��.�б½s��)

select distinct �б�.* 
from �б� inner join �Z�� on �б�.�б½s��=�Z��.�б½s��
where �Ы� in ('221-S','100-M')

--02��g
select �ҵ{.* 
from �ҵ{
where �ҵ{�s�� in (select �ҵ{�s�� from �Z�� where �Ǹ�=(select �Ǹ� from �ǥ� where �m�W='���|�w'))

select �ҵ{.* 
from �Z�� inner join �ҵ{ on �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s�� inner join �ǥ� on �Z��.�Ǹ�=�ǥ�.�Ǹ�
where �ǥ�.�m�W='���|�w'
