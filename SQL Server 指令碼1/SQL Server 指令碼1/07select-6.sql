select �Ǹ�,�ҵ{�s��
from �Z��
group by �Ǹ�,�ҵ{�s��
having �Ǹ�='S002'


select �Ǹ�,�ҵ{�s��
from �Z��
where �Ǹ�='S002'
-------------------------------------------------
select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
where �б½s��='I003'
group by �б½s��,�ҵ{�s��

select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
group by �б½s��,�ҵ{�s��
having �б½s��='I003' and count(*)<3

select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
group by �б½s��,�ҵ{�s��
having  count(*)<3

select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
group by �б½s��,�ҵ{�s��
having  count(*)>=3


select �б½s��,count(�Ǹ�)
from �Z��
group by �б½s��

select �б½s��,�ҵ{�s��,count(�Ǹ�)
from �Z��
group by �б½s��,�ҵ{�s��

select �б½s��,�ҵ{�s��,count(�Ǹ�)
from �Z��
group by �б½s��,�ҵ{�s��
