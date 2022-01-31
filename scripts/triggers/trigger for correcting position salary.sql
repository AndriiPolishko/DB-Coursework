delimiter //
create trigger checkPositionSallary before insert on positionofmanager
	for each row if new.salary<=0
		then set new.salary=1000;
	end if;//
delimiter ;