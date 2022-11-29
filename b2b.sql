create procedure TongnvthamgiaDA
	@MaDa int
as
begin
	select count(ma_nvien) as 'Số lượng' from PHANCONG where MaDa = @MaDa;
	end;

	exec [dbo].[TongnvthamgiaDA] 1;