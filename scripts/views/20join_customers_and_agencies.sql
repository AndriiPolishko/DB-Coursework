create view join_customers_and_agencies
as
select customer.fullName as "customers name",advertesingagency.*
from customer
join agency_customer on customer.id = agency_customer.id_customer
join advertesingagency on advertesingagency.id = agency_customer.id_agency
