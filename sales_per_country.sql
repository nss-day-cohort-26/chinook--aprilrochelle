--Provide a query that shows the total sales per country.

Select BillingCountry 'Country', sum(Total) 'Total Sales'
from Invoice
Group by BillingCountry;
