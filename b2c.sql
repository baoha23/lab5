create procedure ThongkeNv
	@MaDa int, @DDiem_DA nvarchar(15)
as
begin 
	select count (b.ma_nvien) as 'Số lượng'
		from DEAN a inner join PHANCONG b on a.MaDa = b.MADA
		where a.MADA = @MaDa and a.DDIEM_DA = @DDiem_DA;
end;

exec [dbo].[ThongkeNv] 1, N'Vũng tàu';
