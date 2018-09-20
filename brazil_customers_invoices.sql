--Provide a query showing the Invoices of customers who are from Brazil.
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

Select i.InvoiceId, i.InvoiceDate, i.BillingCountry, c.FirstName, c.LastName
From Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Where c.Country='Brazil';

