--Which country's customers spent the most?

Select Country, Max(Sales)
From (Select BillingCountry 'Country', sum(Total) 'Sales'
from Invoice
Group by BillingCountry);