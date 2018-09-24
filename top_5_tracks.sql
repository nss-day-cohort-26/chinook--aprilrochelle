
Select t.TrackId 'Track', t.Name 'Name', Count(il.TrackId) 'Purchases'
from InvoiceLine il
Join Track t on il.TrackId=t.TrackId
Group by t.Name
Order by Purchases Desc
limit 5;