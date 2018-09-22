--Provide a query that shows the most purchased track of 2013.

Select t.Name 'Name', Count(il.TrackId) 'Purchases'
From InvoiceLine il
Join Track t on il.TrackId = t.TrackId
Join Invoice i on il.InvoiceId = i.InvoiceId
where i.InvoiceDate like '2013%'
Group by il.TrackId;

--No track purchased more than once in 2013
