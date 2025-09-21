select 
ge.Name as GenreName,
sum(il.Quantity) as totalunitsolds,
sum(il.Quantity * il.UnitPrice) as revenue,
count(distinct tr.TrackId) as trackcount
from track tr
join genre ge on tr.GenreId = ge.GenreId
join invoiceline il on tr.TrackId = il.TrackId
group by ge.Name
order by revenue desc
limit 3
