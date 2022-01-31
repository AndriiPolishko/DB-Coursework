select audience.*,orderedservice.price as "service price"
from audience
join audience_service on audience_service.id_audience = audience.id
join orderedservice on orderedservice.id = audience_service.id_service
where audience.averageAge  between 18 and 28