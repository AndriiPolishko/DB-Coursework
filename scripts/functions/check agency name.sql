delimiter //
create function agencyNameCheck(agencyName varchar(64))
returns varchar(64)

begin
declare result varchar(64);

if agencyName like('A%') then set result = agencyName;
else set result = "wrong";
end if;
return (result);
end//
delimiter ;