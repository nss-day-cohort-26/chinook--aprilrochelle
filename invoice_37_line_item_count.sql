--Looking at the InvoiceLine table,
--provide a query that COUNTs the number of line items for Invoice ID 37.

Select il.InvoiceId 'Invoice Id', Count(il.InvoiceLineId) 'Line Items'
from InvoiceLine il
Where InvoiceId = 37;