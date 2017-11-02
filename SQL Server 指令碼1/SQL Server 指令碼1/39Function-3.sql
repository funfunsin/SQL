--�إ߲��~��ƪ�
create table Products(
	P_ID char(4) primary key,
	P_Name nvarchar(30) not null,
	P_Price money not null default dbo.fnGetDefaultPrice(),
	P_status bit not null default 1,
	P_Bdate datetime not null default getdate()

)

--���]���~�s��P001~P999
--���Ͳ��~�s�������
create function fnGetProductID()
	returns char(4)
as
begin
	declare @proID char(4), @number int
	select top 1 @proID=P_ID from Products
	order by P_ID desc

	if @@ROWCOUNT=0
		set @proID='001'
	else
	begin
		set @number=cast(substring(@proID,2,3) as int)+1
		set @proID=cast(@number as varchar)
		--001 as int =1 ->2

		if len(@proID)=2
			return 'P0'+@proID
		if len(@proID)=1
			return 'P00'+@proID
	end
	return 'P'+@proID
end

-----------------------------------------
--���~����default�Ȫ����o
create function fnGetDefaultPrice()
	returns money
as
begin 
	--���]�W�b�~�s�W���ӫ~�w�]�ȬO1000,�U�b�~1200
	if month(getdate())<7 
	begin
		return 1000

	end


	return 1200
end
-------------------------------------------
--�s�W���~���
insert into Products(P_ID, P_Name, P_Price,P_Bdate) values(dbo.fnGetProductID(),'�`�̵L�Ī���',3000,'2017/10/17')
