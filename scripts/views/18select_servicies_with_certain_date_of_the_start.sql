create view select_servicies_with_certain_date_of_the_start
as
select orderedservice.*,customer.fullName
from orderedservice
join customer on customer.id = orderedservice.id_customer
where orderedservice.dateOfTheStart >"2020-12-19"