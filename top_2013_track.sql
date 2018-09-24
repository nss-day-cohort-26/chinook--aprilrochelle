Select t.Name 'Name', Count(t.Name) 'Purchases'
From InvoiceLine il
Join Track t on il.TrackId = t.TrackId
Join Invoice i on il.InvoiceId = i.InvoiceId
where i.InvoiceDate like '2013%'
Group by t.Name
Order by Purchases desc
Limit 1;