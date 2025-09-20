select 
	concat(FirstName, ' ', LastName) as Name,
    cu.CustomerId,
    sum(total) as total
from customer cu
join invoice il on cu.CustomerId = il.CustomerId
group by cu.CustomerId, Name
order by total desc
limit 5
