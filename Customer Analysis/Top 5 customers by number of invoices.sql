select 
	concat(FirstName, ' ', LastName) as Name,
    cu.CustomerId,
    count(il.InvoiceId) as totalInvoices,
    sum(total) as totalSum
from customer cu
join invoice il on cu.CustomerId = il.CustomerId
group by cu.CustomerId, Name
order by totalInvoices desc
limit 5
