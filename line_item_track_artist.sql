--Provide a query that includes the purchased track name
--AND artist name with each invoice line item.

Select il.InvoiceId 'Invoice Id', il.InvoiceLineId 'Line Item Id', t.Name 'Track Name', 
ar.Name 'Artist'
from InvoiceLine il
Join Track t on il.TrackId = t.TrackId
Join Album a on t.AlbumId = a.AlbumId
Join Artist ar on a.ArtistId = ar.ArtistId;