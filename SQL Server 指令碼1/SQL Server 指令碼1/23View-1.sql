--View (����) �˵���

select * from View_�ǥͿ�4�Ǥ�����ҩ���

--��T-SQL���O�إ��˵���

create view View_�ǥͿ�4�Ǥ�����ҩ���2
as
SELECT          dbo.�ǥ�.�Ǹ�, dbo.�ǥ�.�m�W AS �ǥͩm�W, dbo.�ǥ�.�ʧO, dbo.�ҵ{.�ҵ{�s��, dbo.�ҵ{.�W��, dbo.�ҵ{.�Ǥ�, 
                            dbo.�Z��.�W�Үɶ�, dbo.�Z��.�Ы�, dbo.���u.�m�W AS �б©m�W, dbo.�б�.¾��, dbo.�б�.��t, dbo.���u.�~��
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr�� INNER JOIN
                            dbo.�Z�� ON dbo.�б�.�б½s�� = dbo.�Z��.�б½s�� INNER JOIN
                            dbo.�ҵ{ ON dbo.�Z��.�ҵ{�s�� = dbo.�ҵ{.�ҵ{�s�� INNER JOIN
                            dbo.�ǥ� ON dbo.�Z��.�Ǹ� = dbo.�ǥ�.�Ǹ�
WHERE          (dbo.�ҵ{.�Ǥ� = 4)


select * from View_�ǥͿ�4�Ǥ�����ҩ���2

-------------------------------------------
create view view_�ǥͿ�ҩ���
as
SELECT          dbo.�ҵ{.*, dbo.���u.*, dbo.�ǥ�.�Ǹ� AS �ǥ;Ǹ�, dbo.�ǥ�.�m�W AS �ǥͩm�W, dbo.�ǥ�.�ʧO, 
                            dbo.�ǥ�.�q�� AS �ǥ͹q��, dbo.�ǥ�.�ͤ�, dbo.�Z��.�W�Үɶ�, dbo.�Z��.�Ы�, dbo.�б�.�б½s��, dbo.�б�.¾��, 
                            dbo.�б�.��t
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr�� INNER JOIN
                            dbo.�Z�� ON dbo.�б�.�б½s�� = dbo.�Z��.�б½s�� INNER JOIN
                            dbo.�ҵ{ ON dbo.�Z��.�ҵ{�s�� = dbo.�ҵ{.�ҵ{�s�� INNER JOIN
                            dbo.�ǥ� ON dbo.�Z��.�Ǹ� = dbo.�ǥ�.�Ǹ�


select �ǥͩm�W,�ҵ{�s��,�W��,�m�W 
from View_�ǥͿ�ҩ���
where �m�W='���y�s'

select �ǥ;Ǹ�,�ǥͩm�W,COUNT(*) as �ǥͿ�Ҽ�
from View_�ǥͿ�ҩ���
group by �ǥ;Ǹ�,�ǥͩm�W
having COUNT(*) <3

create view view_�S�����u��ƪ��ǥͿ�ҩ���
as
SELECT          �ҵ{�s��, �W��, �Ǥ�, �m�W, �ǥ;Ǹ�, �ǥͩm�W, �ʧO, �ǥ͹q��, �ͤ�, �W�Үɶ�, �Ы�, �б½s��, ¾��, ��t
FROM   dbo.view_�ǥͿ�ҩ���

--with encryption
create view view_�ǥͿ�Ҫ��p����
with encryption
as
select �ǥ;Ǹ�,�ǥͩm�W,COUNT(*) as  ��Ҽ�, sum(�Ǥ�) as �`�Ǥ� 
from view_�S�����u��ƪ��ǥͿ�ҩ���
group by �ǥ;Ǹ�,�ǥͩm�W

select * from view_�ǥͿ�Ҫ��p����


----with schemabinding
create view view_���m�W���б¸��
with schemabinding
as
SELECT          dbo.�б�.�б½s��, dbo.�б�.�����Ҧr��, dbo.���u.�m�W, dbo.�б�.¾��, dbo.�б�.��t
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr��




