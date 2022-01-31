create view select_managers_with_certain_position
as
select manager.id,manager.fullName, positionofmanager.name_ as "position of manager"
from manager
join positionofmanager on manager.id_position = positionofmanager.id
where positionofmanager.name_ in ('Sales Manager','Administrative Services Manager')