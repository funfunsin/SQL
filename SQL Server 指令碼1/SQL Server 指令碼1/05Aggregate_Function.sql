--������ �Ψ�E�X���(�J�`���)

--count()
select count(�Ǹ�) as �ǥͤH��
from �ǥ�

select count(*) as ���u�H��
from ���u

select count(*) as ���~���u�H��
from ���u
where �~��>=50000


--sum()
select sum(�~��) as ���q�C��H�Ʀ���
from ���u


--avg()
select avg(�~��) as ���q�����H�Ʀ���
from ���u


--max()
select max(�~��) as �̰��~��
from ���u


--min()
select min(�~��) as �̧C�~��
from ���u



select count(*) as ���u�H��,
max(�~��) as �̰��~��,
min(�~��) as �̧C�~��,
avg(�~��) as ���q�����~��,
sum(�~��) as ���q�C��H�Ʀ���,
max(�~��)-min(�~��) as ���C�~���t,
avg(�~��)-min(�~��) as �C�~�۹�󥭧��~��t�B,
max(�~��)-avg(�~��) as ���~�۹�󥭧��~��t�B
from ���u

