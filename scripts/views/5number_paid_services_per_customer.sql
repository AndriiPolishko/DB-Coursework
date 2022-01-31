create view number_paid_services_per_customer
as
select customer.id,floor(customer.amountAllocatedForService/orderedservice.price)  as "Paid services"
from customer
join orderedservice on orderedservice.id_customer = customer.id
where floor(customer.amountAllocatedForService/orderedservice.price) > 0