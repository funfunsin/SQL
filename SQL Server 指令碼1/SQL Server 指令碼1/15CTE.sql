with ���m�W���б�
as
(
select �б�.*,���u.�m�W
from �б� inner join ���u
on �б�.�����Ҧr��=���u.�����Ҧr��)
select �ǥ�.�Ǹ�,�ǥ�.�m�W,�ҵ{.*,���m�W���б�.*
from �ǥ� inner join �Z�� on �ǥ�.�Ǹ�=�Z��.�Ǹ�
inner join �ҵ{ on �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s��
inner join ���m�W���б� on �Z��.�б½s��=���m�W���б�.�б½s��

----------------------------------------------

with ����
as
(
select �D��.���u�r��,�D��.�m�W,�D��.�D�ަr��, 1 as ���h
from �D�� where �D�ަr�� is null
union all
select �D��.���u�r��,�D��.�m�W,�D��.�D�ަr��, ���h+1
from �D��  inner join ���� on ����.���u�r��=�D��.�D�ަr��
)
select * from ���� order by ���h