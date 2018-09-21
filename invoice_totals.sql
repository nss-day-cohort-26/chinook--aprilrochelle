--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name
--for all invoices and customers.

Select i.InvoiceId 'Invoice Id', i.Total 'Invoice Total', c.FirstName 'Customer First Name',
c.LastName 'Customer Last Name', c.Country 'Country', e.LastName 'Agent Last Name',
e.FirstName 'Agent First Name'
From Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
Group by i.InvoiceId;
