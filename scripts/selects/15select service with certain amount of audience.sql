select orderedservice.*
from orderedservice
join service_environment on orderedservice.id = service_environment.id_service
join publishingenvironment on publishingenvironment.id = service_environment.id_environment
where coveredAudience>2000