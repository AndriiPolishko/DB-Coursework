select customer.fullname,amountAllocatedForService
from customer
join agency_customer on customer.id = agency_customer.id_customer
join advertesingagency on agency_customer.id_agency = advertesingagency.id
where checkPrices(advertesingagency.minimalProjectPrice,customer.amountAllocatedForService)