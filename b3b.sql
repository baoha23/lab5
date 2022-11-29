create procedure Capnhatphongban
@oldtenPHG nvarchar(15),
@tenPHG nvarchar(15),
@maPHG int,
@trPHG nvarchar(9),
@ng_NhanChuc date
as
begin
	update [dbo].[PHONGBAN]
		set [TENPHG] = @tenPHG,
			[MAPHG] = @maPHG,
			[TRPHG] = @trPHG,
			[NG_NHANCHUC] = @ng_NhanChuc
		where TENPHG = @oldtenPHG;
end;

exec [dbo].[Capnhatphongban] 'cntt', 'it', 10, '005', '1-1-2022';