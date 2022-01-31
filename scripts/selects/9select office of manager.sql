select manager.id,manager.fullName,orderingoffice.location
from manager
join orderingoffice on orderingoffice.id = manager.id
order by fullName