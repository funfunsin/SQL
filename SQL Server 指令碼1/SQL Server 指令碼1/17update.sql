--�ק�
update �ҵ{ 
set �Ǥ�=4
where �ҵ{�s��='CS213'

update �ҵ{�ƥ�
set �Ǥ�=�Ǥ�+1
--where �ҵ{�s��='CS213'

--�B�Τl�d�ߦb�ק���O�W
update �ǥ�
set �m�W=(select �m�W from ���u where �����Ҧr��='H098765432')
where �Ǹ�='S016'

update �ҵ{�ƥ�
set �Ǥ�=3
from ( select �ҵ{�s��,COUNT(*) as ��ҤH��
from �Z��
group by �ҵ{�s�� ) as ���
where ���.��ҤH��>3 and �ҵ{�ƥ�.�ҵ{�s��=���.�ҵ{�s��

update �ҵ{
set �Ǥ�=8
where �ҵ{�s�� in (select distinct �ҵ{�s�� from �ҵ{�ƥ�)


update �Z�� set �W�Үɶ�='09:00am'
from �Z�� inner join �б� on �Z��.�б½s��=�б�.�б½s��
where �б�.��t='CIS' and �Z��.�Ы�='500-K'
