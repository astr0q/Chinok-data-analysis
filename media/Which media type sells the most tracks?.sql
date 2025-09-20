select
	mt.Name as Media,
    sum(il.Quantity) as totalunitsolds,
    sum(il.Quantity * il.UnitPrice),
    count(distinct tr.TrackId) as trackcount
from track tr
join mediatype mt on tr.MediaTypeId = mt.MediaTypeId
join invoiceline il on tr.TrackId = il.TrackId
group by mt.Name
order by totalunitsolds desc
