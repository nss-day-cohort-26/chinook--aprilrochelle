--Provide a query that shows the top 5 most purchased songs.

Select t.TrackId 'Track', t.Name 'Name', Count(il.TrackId) 'Purchases'
from InvoiceLine il
Join Track t on il.TrackId=t.TrackId
Group by il.TrackId
Order by Purchases Desc
limit 5;