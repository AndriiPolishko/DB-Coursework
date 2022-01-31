select advertesingagency.id,advertesingagency.agencyName,advertesingagency.locationOfHeadOffice, customer.fullname as "cutomer`s fullname"
from advertesingagency
join agency_customer on  advertesingagency.id = agency_customer.id_agency
join customer on customer.id = agency_customer.id_customer
where advertesingagency.agencyName like("A%") 
