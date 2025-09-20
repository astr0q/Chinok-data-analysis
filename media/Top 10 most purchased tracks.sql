select 
	tr.TrackId,
    tr.Name AS TrackName,
    tr.AlbumId,
    tr.GenreId,
    tr.Composer,
    ge.Name as GenreName,
    me.Name as MediaName,
    SUM(il.Quantity * il.UnitPrice) AS TotalSold
 from track tr
join invoiceline il on tr.TrackId = il.TrackId
JOIN Genre ge 
    ON tr.GenreId = ge.GenreId
join mediatype me on tr.MediaTypeId = me.MediaTypeId
group by tr.TrackId, tr.Name, tr.AlbumId, tr.GenreId, tr.Composer
order by TotalSold desc

