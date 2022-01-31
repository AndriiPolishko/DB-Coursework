select publishingenvironment.*,orderedservice.*
from publishingenvironment
join service_environment on service_environment.id_environment = publishingenvironment.id
join orderedservice on orderedservice.id = service_environment.id_service