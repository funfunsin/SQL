select * from view_�ǥͿ�ҩ���
where �ҵ{�s��='CS101'

select * from dbo.fn�ǥͿ�ҩ���('CS101')

exec �ǥͿ�ҩ��� 'CS101'

alter function fn�ǥͿ�ҩ���
	(@C_ID char(5) )
	returns table
return(
SELECT          dbo.�ҵ{.�ҵ{�s��, dbo.�ҵ{.�W��, dbo.�ҵ{.�Ǥ�, dbo.���u.�����Ҧr��, dbo.���u.�m�W, dbo.���u.����, 
                            dbo.���u.��D, dbo.���u.�q��, dbo.���u.�~��, dbo.���u.�O�I, dbo.���u.���|, dbo.�ǥ�.�Ǹ� AS �ǥ;Ǹ�, 
                            dbo.�ǥ�.�m�W AS �ǥͩm�W, dbo.�ǥ�.�ʧO, dbo.�ǥ�.�q�� AS �ǥ͹q��, dbo.�ǥ�.�ͤ�, dbo.�Z��.�W�Үɶ�, 
                            dbo.�Z��.�Ы�, dbo.�б�.�б½s��, dbo.�б�.¾��, dbo.�б�.��t
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr�� INNER JOIN
                            dbo.�Z�� ON dbo.�б�.�б½s�� = dbo.�Z��.�б½s�� INNER JOIN
                            dbo.�ҵ{ ON dbo.�Z��.�ҵ{�s�� = dbo.�ҵ{.�ҵ{�s�� INNER JOIN
                            dbo.�ǥ� ON dbo.�Z��.�Ǹ� = dbo.�ǥ�.�Ǹ�
					where �ҵ{.�ҵ{�s��=@C_ID
							)


create proc �ǥͿ�ҩ���
	@C_ID char(5)
as
begin
SELECT          dbo.�ҵ{.�ҵ{�s��, dbo.�ҵ{.�W��, dbo.�ҵ{.�Ǥ�, dbo.���u.�����Ҧr��, dbo.���u.�m�W, dbo.���u.����, 
                            dbo.���u.��D, dbo.���u.�q��, dbo.���u.�~��, dbo.���u.�O�I, dbo.���u.���|, dbo.�ǥ�.�Ǹ� AS �ǥ;Ǹ�, 
                            dbo.�ǥ�.�m�W AS �ǥͩm�W, dbo.�ǥ�.�ʧO, dbo.�ǥ�.�q�� AS �ǥ͹q��, dbo.�ǥ�.�ͤ�, dbo.�Z��.�W�Үɶ�, 
                            dbo.�Z��.�Ы�, dbo.�б�.�б½s��, dbo.�б�.¾��, dbo.�б�.��t
FROM              dbo.���u INNER JOIN
                            dbo.�б� ON dbo.���u.�����Ҧr�� = dbo.�б�.�����Ҧr�� INNER JOIN
                            dbo.�Z�� ON dbo.�б�.�б½s�� = dbo.�Z��.�б½s�� INNER JOIN
                            dbo.�ҵ{ ON dbo.�Z��.�ҵ{�s�� = dbo.�ҵ{.�ҵ{�s�� INNER JOIN
                            dbo.�ǥ� ON dbo.�Z��.�Ǹ� = dbo.�ǥ�.�Ǹ�
					where �ҵ{.�ҵ{�s��=@C_ID
end