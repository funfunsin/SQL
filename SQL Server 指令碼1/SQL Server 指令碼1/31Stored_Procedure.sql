--�w�s�{�� stored procedure
--�W�ٺɶq�Τ���
create procedure �ǥͿ�Ҹ�Ʃ���
as
begin
	SELECT          dbo.�ǥ�.�Ǹ�, dbo.�ǥ�.�m�W, dbo.�ǥ�.�ʧO, dbo.�ҵ{.�ҵ{�s��, dbo.�ҵ{.�W��, dbo.�б�.�б½s��, 
                            dbo.���u.�m�W AS Expr1, dbo.�б�.¾��, dbo.�б�.��t, dbo.�Z��.�W�Үɶ�, dbo.�Z��.�Ы�
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr�� INNER JOIN
                            dbo.�Z�� ON dbo.�б�.�б½s�� = dbo.�Z��.�б½s�� INNER JOIN
                            dbo.�ҵ{ ON dbo.�Z��.�ҵ{�s�� = dbo.�ҵ{.�ҵ{�s�� INNER JOIN
                            dbo.�ǥ� ON dbo.�Z��.�Ǹ� = dbo.�ǥ�.�Ǹ�

print @@rowcount

end

--����w�s�{��
exec �ǥͿ�Ҹ�Ʃ���
go
--------------------------------------

create procedure �ǥͿ�Ҹ�Ƶ���
as
begin
	SELECT          dbo.�ǥ�.�Ǹ�, dbo.�ǥ�.�m�W, dbo.�ǥ�.�ʧO, dbo.�ҵ{.�ҵ{�s��, dbo.�ҵ{.�W��, dbo.�б�.�б½s��, 
                            dbo.���u.�m�W AS Expr1, dbo.�б�.¾��, dbo.�б�.��t, dbo.�Z��.�W�Үɶ�, dbo.�Z��.�Ы�
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr�� INNER JOIN
                            dbo.�Z�� ON dbo.�б�.�б½s�� = dbo.�Z��.�б½s�� INNER JOIN
                            dbo.�ҵ{ ON dbo.�Z��.�ҵ{�s�� = dbo.�ҵ{.�ҵ{�s�� INNER JOIN
                            dbo.�ǥ� ON dbo.�Z��.�Ǹ� = dbo.�ǥ�.�Ǹ�

print @@rowcount

end

--����w�s�{��
exec �ǥͿ�Ҹ�Ƶ���