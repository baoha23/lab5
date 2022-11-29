create procedure uocchung
	@a int, @b int
as
begin 
	declare @temp int;

	if @a > @b
	begin
		select @temp = @a, @a = @b, @b= @temp;
	end

	while @b % @a !=0
	begin
		select @temp = @a, @a = @b % @a, @b = @temp;
	end;

	print N'Ước chung lớn nhất: ' + cast (@a as varchar);
end;

exec uocchung 20, 9;