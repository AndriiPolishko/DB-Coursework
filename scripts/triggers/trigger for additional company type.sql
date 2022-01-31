delimiter //
create trigger updateAditionalComp 
before update
on additionalcompanie 
for each row 
begin 
if new.goalOfCooperation not in ("security_services",'medical_services','transportation')
	then set new.goalOfCooperation = "different type";
    end if;
    end;//
    delimiter ;
    
update additionalcompanie
set goalOfCooperation = "fasf"
where  additionalcompanie.id = 1 ;
