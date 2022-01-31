create view select_office_of_manager
as
select manager.id,manager.fullName,orderingoffice.location
from manager
join orderingoffice on orderingoffice.id = manager.id
order by fullName