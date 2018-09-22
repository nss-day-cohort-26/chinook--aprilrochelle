--Provide a query that shows the most purchased track of 2013.

Select t.Name 'Name', COUNT(il.TrackId) '# Purchases'
from Track t
Join InvoiceLine il on t.TrackId = il.TrackId
Join Invoice i on il.InvoiceId = i.InvoiceId
where i.InvoiceDate like '2013%';
