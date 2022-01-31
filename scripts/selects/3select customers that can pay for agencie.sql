select customer.id,customer.fullName,advertesingagency.agencyName
from customer
join agency_customer on customer.id = agency_customer.id_customer
join advertesingagency on advertesingagency.id = agency_customer.id_agency
where customer.amountAllocatedForService > advertesingagency.minimalProjectPrice