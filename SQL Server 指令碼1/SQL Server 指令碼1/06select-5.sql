select �Ǥ�
from �ҵ{
group by �Ǥ�

select count(*) as ���u�H��,max(�~��) as �̰��~��,min(�~��) as �̧C�~��,
avg(�~��) as ���q�����~��,sum(�~��) as ���q�C��H�Ʀ���,
max(�~��)-min(�~��) as ���C�~���t,
avg(�~��)-min(�~��) as �C�~�۹�󥭧��~��t�B,
max(�~��)-avg(�~��) as ���~�۹�󥭧��~��t�B
from ���u

select �Ǹ�,count(�Ǹ�) as ��Ҽ�
from �Z��
where �Ǹ�='S004'
group by �Ǹ�
having count(�Ǹ�)<3

select �Ǹ�,count(�Ǹ�) as ��Ҽ�
from �Z��
group by �Ǹ�
having count(�Ǹ�)<3 and �Ǹ�='S004'