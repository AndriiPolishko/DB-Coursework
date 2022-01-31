select orderingoffice.*,advertesingagency.agencyName
from orderingoffice
join advertesingagency on advertesingagency.id = orderingoffice.id_agency
where advertesingagency.type_ = "Full-service"