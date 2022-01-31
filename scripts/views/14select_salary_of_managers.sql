create view select_salary_of_managers
as
select manager.id,manager.fullName,positionofmanager.salary
from manager
join positionofmanager on manager.id_position = positionofmanager.id