select manager.id,manager.fullName,positionofmanager.salary
from manager
join positionofmanager on manager.id_position = positionofmanager.id