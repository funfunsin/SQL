--where�l�y like�B��(�ҽk�d��)
-- % �U�Φr�� ���0~n�Ӧr��
-- _ �U�Φr�� ���1�Ӧr��
--[] �A�������r�� like %[cs]% = like %c% or %s%
--[-]�s��ʦr�� like %[a-e]% = like %a% or %b% or %c% or %d% or %e%
--[^]���A�����r�����~ 

select *
from �б�
where ��t like 'cs'

select *
from �Z��
where �Ы� like '%2_-%%'





--where�l�y between and�B��
select *
from �ǥ�
where �ͤ� between '1990/1/1' and '1991/12/31'




--where�l�y in�B��
--or�bSQL�̪��įण�n �ɶq��g
select *
from �ҵ{
where �ҵ{�s��='CS101' or �ҵ{�s��='CS222' or �ҵ{�s��='CS111' or �ҵ{�s��='CS999'
--��g��in
select *
from �ҵ{
where �ҵ{�s�� in ('CS101','CS222','CS111','CS999')
--��g��like
select *
from �ҵ{
where �ҵ{�s�� like 'CS[129][0-29][129]'




--where�l�y not�B��
--not�ϦV�d�ߦbSQL�̪��įण�n 
select *
from �ҵ{
where �ҵ{�s�� not in ('CS101','CS222','CS111','CS999')

select *
from �ǥ�
where �ͤ� not between '1990/1/1' and '1991/12/31'




--�ҵ{�s���t��2 �ӥB �W�٧t��'�{��'
--4�Ǥ�(�t)�H�W
select * from �ҵ{
where �ҵ{�s�� like '%2%' and �W�� like '%�{��%' or �Ǥ�>=4

--�ҵ{�s���t��2 �ӥB �W�٧t��'�{��'
--�ҵ{�s���t��2 �ӥB 4�Ǥ�(�t)�H�W
select * from �ҵ{
where �ҵ{�s�� like '%2%' and (�W�� like '%�{��%' or �Ǥ�>=4)



--where�l�y ��ƹB��
select �����Ҧr��,�m�W
from ���u
where (�~��-���|-�O�I) >=40000


select �����Ҧr��,�m�W,(�~��-���|-�O�I) as �b�ұo
from ���u
where (�~��-���|-�O�I) >=40000