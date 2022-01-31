create view select_office_with_certain_number_of_emplotyees
as 
select orderingoffice.id, orderingoffice.location, orderingoffice.numberOfEmployees,advertesingagency.agencyName
from orderingoffice
join advertesingagency on advertesingagency.id = orderingoffice.id_agency
where orderingoffice.numberOfEmployees in (201,131,284);