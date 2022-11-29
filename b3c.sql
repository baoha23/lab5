alter procedure THEMNHANVIENN
	@honv nvarchar(15),
	@tenlot nvarchar(15),
	@tennv nvarchar(15),
	@manv nvarchar(9),
	@ngsinh datetime,
	@dchi nvarchar(30),
	@phai nvarchar(3),
	@luong float,
	@phg int
as
begin
	if not exists (select * from PHONGBAN where TENPHG = 'IT' and MAPHG= @phg)
	begin 
		print N'Phòng phải là phòng it';
		return;
	end;
	declare @ma_nql nvarchar(9);

	if @luong > 25000
		set @ma_nql = '005';
	else 
		set @ma_nql = '000'

	declare @age int;
	select @age =  datediff(year, @ngsinh, getdate()) +1;
	if @phai = 'Nam' and (@age < 18 or @age >60)
	begin
		print N'Nam phải có độ tuổi 18-65';
		return;
	end;
	else if @phai = 'Nữ' and (@age <18 or @age >60)
	begin
		print N'Nữ phải có độ tuổi 18-60'
		return;
	end;
	insert into db.NHANVIEN
		(HONV, TENLOT, TENNV, MANV, NGSINH, DCHI,PHAI, LUONG, MA_NQL, PHG)
	values
		(@honv,@tenlot,@tennv,@manv,@ngsinh,@dchi,@phai,@luong,@ma_nql,@phg)
end;

exec [dbo].[THEMNHANVIENN] N'Nguyễn', N'Kim', N'Hoa', '030', '1-12-1997',N'Biên Hoà','Nữ',30000, 6;

