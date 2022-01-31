select orderedservice.*,customer.fullName
from orderedservice
join customer on customer.id = orderedservice.id_customer
where orderedservice.dateOfTheStart >"2020-12-19"