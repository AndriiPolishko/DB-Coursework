
select manager.id,manager.fullName,positionofmanager.salary
from manager
join positionofmanager on positionofmanager.id = manager.id_position
where manager.fullName regexp '^A' and manager.fullName regexp 'n$';
