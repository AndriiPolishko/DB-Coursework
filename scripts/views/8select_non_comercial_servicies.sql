create view select_non_comercial_servicies
as
select orderedservice.*
from orderedservice
join thepurpose on thepurpose.id_service=orderedservice.id
where thepurpose.type_ != "commercial"