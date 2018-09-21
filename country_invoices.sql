--Provide a query that shows the # of invoices per country.

Select i.BillingCountry 'Billing Country', Count(i.InvoiceId) 'Number of Invoices'
from Invoice i
Group by i.BillingCountry;