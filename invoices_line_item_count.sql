--Provide a query that shows all Invoices but includes the # of invoice line items.

Select *, Count(il.InvoiceLineId) '# of Line Items'
from Invoice i
Join InvoiceLine il on i.InvoiceId = il.InvoiceId
Group by i.InvoiceId;
