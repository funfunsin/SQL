--exists
select * from �ǥ�
where exists
(select * from �Z��
where �ҵ{�s��='CS222' and �ǥ�.�Ǹ�=�Z��.�Ǹ�)


select * from �ҵ{
where exists
(select * from �Z��
where �Ы�='100-M' or �Ы�='221-S' and �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s��)

select * from �ҵ{
where exists
(select * from �Z��
where �Ы� in ('100-M','221-S') and �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s��)
--------------------------------------------------------------------------
--in

select * from �ҵ{
where �ҵ{�s�� in
(select �ҵ{�s�� from �Z��
where �Ǹ�=(select �Ǹ� from �ǥ�
where �m�W='�P�N��'))

select * from �ҵ{
where �ҵ{�s�� not in
(select �ҵ{�s�� from �Z��
where �Ǹ�=(select �Ǹ� from �ǥ�
where �m�W='�P�N��'))

select �ҵ{.* from �ҵ{ 
inner join �Z�� on �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s��
inner join �ǥ� on �ǥ�.�Ǹ�=�Z��.�Ǹ�
where �m�W='�P�N��'


select �ҵ{.* from �ҵ{ 
except
select �ҵ{.* from �ҵ{ 
inner join �Z�� on �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s��
inner join �ǥ� on �ǥ�.�Ǹ�=�Z��.�Ǹ�
where �m�W='�P�N��'

------------------------
--all
select �m�W,�~�� from ���u
where �~�� >=all (select �~�� from ���u where ����='�x�_')
--where �~��>=80000 and �~��>=50000 and �~��>=35000

--any �� some
select �m�W,�~�� from ���u
where �~�� >=any (select �~�� from ���u where ����='�x�_')
--where �~��>=80000 or �~��>=50000 or �~��>=35000



