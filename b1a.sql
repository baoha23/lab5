create procedure say_hello	
	@ten nvarchar(40)
As 
Begin 
	print'Xin Chào ' + @ten
END;
//bai1
exec say_hello N'Hùng'

