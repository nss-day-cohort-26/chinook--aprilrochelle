--Provide a query that shows the total number of tracks in each playlist.
--The Playlist name should be include on the resulant table.

Select p.PlaylistId, p.Name, Count(pt.TrackId)
From Playlist p
Join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
Group by p.PlaylistId;
