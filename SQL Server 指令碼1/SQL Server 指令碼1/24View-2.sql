--�˵���ק�
alter view view_���m�W���б¸��
as
SELECT          dbo.�б�.�б½s��, dbo.�б�.�����Ҧr��, dbo.���u.�m�W, dbo.�б�.¾��, dbo.�б�.��t,
���u.����,���u.��D,���u.�~��
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr��

--�Q�[�K�L���˵���
alter view view_�ǥͿ�Ҫ��p����

as
SELECT          dbo.�ǥ�.�Ǹ�, dbo.�ǥ�.�m�W,count(*) as �`��Ҽ�,sum(�ҵ{.�Ǥ�) as �`�Ǥ�,avg(�ҵ{.�Ǥ�) as �����Ǥ�
FROM              dbo.�Z�� INNER JOIN
                            dbo.�ҵ{ ON dbo.�Z��.�ҵ{�s�� = dbo.�ҵ{.�ҵ{�s�� INNER JOIN
                            dbo.�ǥ� ON dbo.�Z��.�Ǹ� = dbo.�ǥ�.�Ǹ�
						group by dbo.�ǥ�.�Ǹ�, dbo.�ǥ�.�m�W

--�R���˵���
drop view view_���m�W���б¸��





