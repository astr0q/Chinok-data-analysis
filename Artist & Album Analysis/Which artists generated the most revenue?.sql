use chinook;
select 
    ar.Name as namee,
    sum(il.Quantity * il.UnitPrice) as total
 from invoiceline il
join track tr on il.TrackId = tr.TrackId
join album ab on tr.AlbumId = ab.AlbumId
JOIN Artist ar ON ab.ArtistId = ar.ArtistId
group by  namee
order by total desc
