set @num = 0;
#drop trigger custNum;
create trigger custNum after insert on customer
	for each row set @num = @num + 1;

select @num as "number of added customers" ;