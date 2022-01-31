select customer.fullName as "fullName of customer", advertesingagency.agencyName
from customer
join agency_customer on customer.id = agency_customer.id_customer
join advertesingagency on advertesingagency.id = agency_customer.id_agency
where customer.id in (1,5,8,20)