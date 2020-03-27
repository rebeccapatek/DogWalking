 SELECT o.[Name], n.[Name] from OWNER o LEFT JOIN Neighborhood n ON o.neighborhoodId=n.Id;
    SELECT o.[Name], n.[Name] From OWNER o LEFT JOIN Neighborhood n ON o.neighborhoodId=n.Id WHERE o.Id=4;
    SELECT [Name] FROM WALKER ORDER BY [Name];
    SELECT DISTINCT Breed FROM DOG;
    SELECT d.[Name] as 'Dog Name', o.[Name] as 'Owner Name', n.[Name] as 'Neighborhood Name' from DOG d
    LEFT JOIN Owner o ON d.OwnerId=o.Id
    LEFT JOIN Neighborhood n ON o.NeighborhoodId=n.Id;
    SELECT COUNT (OwnerId) as 'Dog Count', o.[Name] FROM Dog d
    LEFT JOIN Owner o on d.OwnerId=o.Id
    GROUP BY OwnerId, o.[Name];
   SELECT COUNT (NeighborhoodId) as 'Walker Count', n.[Name] from Walker w
   LEFT JOIN Neighborhood n on w.NeighborhoodId=n.Id
   GROUP BY NeighborhoodId, n.[Name];
    
    SELECT d.[Name] FROM DOG d 
    LEFT JOIN Walks w ON w.DogId=d.Id
    WHERE w.Date > '3/20/2020';
    SELECT d.[Name] FROM DOG d 
    LEFT JOIN Walks w ON w.DogId=d.Id
    GROUP BY d.[Name]
    HAVING COUNT (w.Id) =0; 
