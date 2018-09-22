--Provide a query that shows the top 3 best selling artists.

Select a.Name 'ArtistName', Count(il.InvoiceLineId) 'Purchases'
From InvoiceLine il
Join Track t on il.TrackId=t.TrackId
Join Album al on t.AlbumId = al.AlbumId
Join Artist a on al.ArtistId = a.ArtistId
Group by ArtistName
Order by Purchases desc
Limit 3;