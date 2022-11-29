create procedure tinhtong
	@s1 int, @s2 int
as
begin
	declare @tong int;
	set @tong = @s1 + @s2;

	print ' Tổng là : ' + cast (@tong as varchar);
end

//
exec tinhtong 5, 6;