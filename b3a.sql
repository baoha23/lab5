create procedure ThemPhongBanMoii
	@TenPHG nvarchar(15),
	@MaPHG int,
	@TrPHG nvarchar (9),
	@NG_NhanChuc date
as
begin
	if exists (select * from PHONGBAN where MAPHG = @MaPHG)
	begin
		print N'Mã phòng ban đã tồn tại';
		return;
	end

	insert into [dbo].[PHONGBAN]
		([TenPHG],
		[MaPHG],
		[TrPHG],
		[NG_NhanChuc])
	values 
		(@TenPHG, @MaPHG, @TrPHG, @NG_NhanChuc);

end;

exec [dbo].[ThemPhongBanMoii] 'cntt', 10, '005', '12-12-2020';

