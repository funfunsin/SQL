--return���_�d��

declare @total int

set @total=(select count(*) from �ҵ{)

if (select count(*) from �ǥ�)>=1
begin
	print '���ǥ�'
	return
end

print '�ҵ{�`�Ƭ�:'+cast(@total as char)

--case�ԭz----------------------------------
--²��case

select �m�W, 
case �ʧO
	when '�k' then 'Male'
	when '�k' then 'Female'
	else 'unknow'
end
from �ǥ�

--�j�Mcase
--��캡��������Y�|����,�]���n�`�N�j�M������
declare @gender nvarchar(1), @result nvarchar(6)
set @gender='�k'
set @result=case 
	when @gender='�k' then 'Male'
	when @gender='�k' then 'Female'
	else '���w'
end

print @result



declare @score int =95, @level nvarchar(2)

set @level=case
	when @score>=90 then '�u��'
	when @score>=80 then '�ҵ�'
	when @score>=70 then '�A��'
	when @score>=60 then '����'
	else '�B��'
end
print @level


