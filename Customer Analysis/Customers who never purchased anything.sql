select 
	concat(FirstName, ' ', LastName) as Name,
    cu.CustomerId,
    il.InvoiceId
from customer cu
left join invoice il on cu.CustomerId = il.CustomerId
where il.InvoiceId is Null
