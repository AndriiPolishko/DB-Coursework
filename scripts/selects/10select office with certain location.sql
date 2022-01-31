select orderingoffice.id, orderingoffice.location, orderingoffice.numberOfEmployees,advertesingagency.agencyName
from orderingoffice
join advertesingagency on advertesingagency.id = orderingoffice.id_agency
where orderingoffice.location = "Boston"