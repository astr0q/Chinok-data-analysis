select 	
	c.Country,
    avg(inv.Total) as Total
 from customer c
 join invoice inv on c.CustomerId = inv.CustomerId
 group by c.Country
 order by Total desc
