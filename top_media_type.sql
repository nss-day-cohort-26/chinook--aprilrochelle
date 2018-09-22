--Provide a query that shows the most purchased Media Type.

Select Media, MAX(Purchases)
From (Select mt.Name 'Media', Count(il.InvoiceLineId) 'Purchases'
From InvoiceLine il
Join Track t on il.TrackId=t.TrackId
Join MediaType mt on t.MediaTypeId = mt.MediaTypeId
Group by Media);
