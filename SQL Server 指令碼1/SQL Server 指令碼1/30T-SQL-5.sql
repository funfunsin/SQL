--�t�Ψ��(�����ܼ�)
select * from �ǥ�

if @@rowcount>=10
	print '���Z��10��H�W���ǥ�'

select * from �ǥ� where �Ǹ�='S567'
print @@rowcount

select 100/0
print @@error


--�o�ͨҥ~���~�~�|����catch
begin try
	select 100/0
end try
begin catch
	select @@ROWCOUNT as �v�T����ƦC��,@@error as ���~�X,ERROR_NUMBER() as ���~�X,
	ERROR_STATE() as ���A�X, ERROR_MESSAGE() as ���~�T��
end catch



	select 100/10

	select @@ROWCOUNT as �v�T����ƦC��,@@error as ���~�X,ERROR_NUMBER() as ���~�X,
	ERROR_STATE() as ���A�X, ERROR_MESSAGE() as ���~�T��
