create view select_offices_with_certain_agency
as
select orderingoffice.*,advertesingagency.agencyName
from orderingoffice
join advertesingagency on advertesingagency.id = orderingoffice.id_agency
where advertesingagency.type_ = "Full-service"