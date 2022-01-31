select audience.*,orderedservice.*
from audience
join audience_service on audience.id = audience_service.id_audience
join orderedservice on orderedservice.id = audience_service.id_service