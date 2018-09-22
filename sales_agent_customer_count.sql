--Provide a query that shows the count of customers assigned to each sales agent.

Select e.LastName 'Agent Last Name', e.FirstName 'Agent First Name', Count(c.CustomerId) 'Number of Customers'
from Customer c
Join Employee e on c.SupportRepId = e.EmployeeId
Group by e.EmployeeId;
