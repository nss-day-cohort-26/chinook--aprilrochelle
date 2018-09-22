--Provide a query that shows total sales made by each sales agent.

Select e.LastName 'Agent Last Name', e.FirstName 'Agent First Name', Round(Sum(i.Total), 2) 'Total Sales'
From Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
Group by e.LastName;
