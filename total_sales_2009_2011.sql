-- What are the respective total sales for each of those years (2009 & 2011)?

Select Sum(i.Total)
from Invoice i
Where i.InvoiceDate Like '2009%'
Union all
Select Sum(i.Total)
from Invoice i
Where i.InvoiceDate Like '2011%';
