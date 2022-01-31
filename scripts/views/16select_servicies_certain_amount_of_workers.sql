create view select_servicies_certain_amount_of_workers
as
select orderedservice.id,orderedservice.price,dateOfTheStart,dateOfTheEnd
from orderedservice
join orderingoffice on orderingoffice.id = orderedservice.id_office
where orderingoffice.numberOfEmployees > 100