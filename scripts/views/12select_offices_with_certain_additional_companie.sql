create view select_offices_with_certain_additional_companie
as 
select orderingoffice.*,additionalcompanie.name_ as "additionalcompanie"
from additionalcompanie
join orderingoffice on additionalcompanie.id_office = orderingoffice.id
where additionalcompanie.goalOfCooperation = "transportation" or additionalcompanie.goalOfCooperation = "security_services"