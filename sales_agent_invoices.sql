--Provide a query that shows the invoices associated with each sales agent.
--The resultant table should include the Sales Agent's full name.

Select i.InvoiceId 'Invoice Id', e.LastName 'Agent Last Name', e.FirstName 'Agent First Name'
from Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
group by i.InvoiceId;