--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

Select il.InvoiceId 'Invoice Id', Count(il.InvoiceLineId) 'Line Items'
from InvoiceLine il
Group by il.InvoiceId;
