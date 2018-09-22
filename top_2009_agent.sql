--Which sales agent made the most in sales in 2009?

Select AgentLast, AgentFirst, MAX(Sales)
From (Select e.LastName 'AgentLast', e.FirstName 'AgentFirst', Sum(i.Total) 'Sales'
From Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
Where i.InvoiceDate like '2009%'
Group by e.EmployeeId);
