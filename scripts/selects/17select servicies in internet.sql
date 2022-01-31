select orderedservice.*
from orderedservice
join thepurpose on thepurpose.id_service=orderedservice.id
join service_environment on service_environment.id_service = orderedservice.id
join publishingenvironment on publishingenvironment.id = service_environment.id_environment
where thepurpose.type_ = "noncommercial" 
and publishingenvironment.type_ in ('Internet')