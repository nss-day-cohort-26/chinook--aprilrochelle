--How many Invoices were there in 2009 and 2011?

Select COUNT(i.InvoiceDate) 
From Invoice i
Where i.InvoiceDate Like '2009%'
Union all 
Select COUNT(i.InvoiceDate)
from Invoice i 
Where i.InvoiceDate Like '2011%';
