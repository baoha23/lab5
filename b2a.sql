create procedure TimNhanvien
	@MaNv nvarchar(9)
as
begin
	select * from NHANVIEN where MANV = @MaNv;
end;

exec TimNhanvien'005';