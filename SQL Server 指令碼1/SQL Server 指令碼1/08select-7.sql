--with rollup �|���ΰO�p�p
select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
group by �б½s��,�ҵ{�s�� with rollup


--with cube 
select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
group by �б½s��,�ҵ{�s�� with cube


--grouping sets
select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
group by grouping sets
(
	(�б½s��,�ҵ{�s��)
)


select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
group by grouping sets
(
	(�б½s��,�ҵ{�s��),
	(�б½s��)
)


select �б½s��,�ҵ{�s��,count(*) as ��Ҿǥͼ�
from �Z��
where �б½s�� in ('I001','I003')
group by grouping sets
(
	(�б½s��,�ҵ{�s��),
	(�б½s��)
)