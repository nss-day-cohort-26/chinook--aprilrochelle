--Which sales agent made the most in sales over all?

Select AgentLast, AgentFirst, MAX(Sales)
From (Select e.LastName 'AgentLast', e.FirstName 'AgentFirst', Round(Sum(i.Total), 2) 'Sales'
From Invoice i
Join Customer c on i.CustomerId = c.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
Group by e.EmployeeId);
