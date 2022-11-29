create procedure KiemtraNvThuocPhong
	@MaNV nvarchar(9), @MaPB int
as
begin
	declare @dem int;
	select @dem =  count(manv) from NHANVIEN where  MANV = @MaNV and PHG = @MaPB;

	return @dem;
end;

declare @result int;
exec @result = [dbo].[KiemtraNvThuocPhong] '005',5;
select @result