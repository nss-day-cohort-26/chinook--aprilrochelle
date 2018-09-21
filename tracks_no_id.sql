--Provide a query that shows all the Tracks, but displays no IDs.
--The result should include the Album name, Media type and Genre.

Select t.Name 'Track Name', al.Title 'Album Title', mt.Name 'Media Type', g.Name 'Genre'
from Track t
Join Album al on t.AlbumId = al.AlbumId
Join MediaType mt on t.MediaTypeId = mt.MediaTypeId
Join Genre g on t.GenreId = g.GenreId
Group by al.Title;
