select orderingoffice.*,additionalcompanie.name_ as "additionalcompanie"
from additionalcompanie
join orderingoffice on additionalcompanie.id_office = orderingoffice.id
where additionalcompanie.goalOfCooperation = "transportation" or additionalcompanie.goalOfCooperation = "security_services"