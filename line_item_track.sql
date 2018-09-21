--Provide a query that includes the purchased track name with each invoice line item.

Select il.InvoiceId 'Invoice Id', il.InvoiceLineId 'Line Item Id', t.Name 'Track Name'
from InvoiceLine il
Join Track t on il.TrackId = t.TrackId;
