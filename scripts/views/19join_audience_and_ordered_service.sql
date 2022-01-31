create view join_audience_and_ordered_service
as
select audience.estimatedNumber,audience.averageAge,orderedservice.*
from audience
join audience_service on audience.id = audience_service.id_audience
join orderedservice on orderedservice.id = audience_service.id_service