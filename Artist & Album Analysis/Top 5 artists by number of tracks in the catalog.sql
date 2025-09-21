select 
	art.Name as Artist_Name,
    art.ArtistId as ArtistId,
    count(tr.TrackId) as total
 from track tr
join album ab on tr.AlbumId = ab.AlbumId
join artist art on ab.ArtistId = art.ArtistId
group by Artist_Name, ArtistId
order by total desc
limit 5
