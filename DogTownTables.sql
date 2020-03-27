CREATE TABLE NEIGHBORHOOD (
Id INT NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
);
CREATE TABLE WALKER (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
NeighborhoodId INTEGER
    CONSTRAINT [FK_Walker_Neighborhood] FOREIGN KEY (NeighborhoodId) REFERENCES Neighborhood (Id)
);
CREATE TABLE OWNER (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
Address VARCHAR(255), 
NeighborhoodId INTEGER,
Phone VARCHAR(55) ,
    CONSTRAINT [Fk_Owner_Neighborhood] FOREIGN KEY (NeighborhoodId) REFERENCES Neighborhood (Id)
    );
    
CREATE TABLE DOG (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
OwnerId INTEGER,
Breed VARCHAR(55),
Notes VARCHAR(55),
    CONSTRAINT [FK_Dog_Owner] FOREIGN KEY (OwnerId) REFERENCES Owner(Id),
    );
;
CREATE TABLE Walks (
Id INTEGER  NOT NULL PRIMARY KEY IDENTITY,
Date DateTime,
Duration INTEGER,
WalkerId INTEGER,
DogId INTEGER,

    CONSTRAINT [FK_Walks_Walker] FOREIGN KEY (WalkerId) REFERENCES Walker (Id),
    CONSTRAINT [FK_WAlks_Dog] FOREIGN KEY (DogId) REFERENCES Dog (Id)
);





    INSERT INTO NEIGHBORHOOD ([Name]) VALUES ('Inglewood');
    INSERT INTO NEIGHBORHOOD ([Name]) VALUES ('East Nash');
    INSERT INTO NEIGHBORHOOD ([Name]) VALUES ('Lockeland Springs');

    INSERT INTO WALKER([Name], NeighborhoodId) VALUES ('Max', 1);
    INSERT INTO WALKER([Name], NeighborhoodId) VALUES ('Melissa', 1);
    INSERT INTO WALKER([Name], NeighborhoodId) VALUES ('Natey', 2);
    INSERT INTO WALKER([Name], NeighborhoodId) VALUES ('Jess', 1);

    INSERT INTO OWNER([Name],Address, NeighborhoodId, Phone) VALUES ('Kris', '1090 MiddleNoWheres Rd.', 1, '4699095678');
    INSERT INTO OWNER([Name],Address, NeighborhoodId, Phone) VALUES ('Sammy', '123 Main St.', 2, '6159095678');
    INSERT INTO OWNER([Name],Address, NeighborhoodId, Phone) VALUES ('Scmelly', '22 Peeyou Route.', 3, '1232225678');
    INSERT INTO OWNER([Name],Address, NeighborhoodId, Phone) VALUES ('Mike', '99 Beerdrinker st..', 1, '4143435067');
    INSERT INTO OWNER([Name],Address, NeighborhoodId, Phone) VALUES ('Marcia', '1 PinkShell Ave.', 2, '2626175678');

    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Georgia', 1, 'Mountain Curr', 'Best Girl in whole world');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Pedro', 2, 'Black Lab', 'Dont leave anything on the counter');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Ernest', 3, 'Chocolate Beagle', 'Best Boy in whole world');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Loretta', 3, 'Pitt Bull', 'Pulls on Leash');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Boogie', 4, 'Chihauhau', 'Watch where you sit down');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Presley', 4, 'Border Collie', 'Needs Lots of Walks');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Gomers', 5, 'Schnauzer', 'Always smells a bit');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Snowball', 5, 'Siameses', 'Really a cat that likes to walk');
    INSERT INTO DOG([Name], OwnerId, Breed, Notes) VALUES ('Turnip', 1, 'Possum', 'Really a possum');

    INSERT INTO Walks(Date, Duration, WalkerId, DogId) VALUES ('01/02/2020', 15, 1, 6);
    INSERT INTO Walks(Date, Duration, WalkerId, DogId) VALUES ('01/03/2020', 60, 2, 4);

    SELECT o.[Name], n.[Name] from OWNER o LEFT JOIN Neighborhood n ON o.neighborhoodId=n.Id;
    SELECT o.[Name], n.[Name] From OWNER o LEFT JOIN Neighborhood n ON o.neighborhoodId=n.Id WHERE o.Id=4;
    SELECT [Name] FROM WALKER ORDER BY [Name];
    SELECT DISTINCT Breed FROM DOG;
    SELECT d.[Name] as 'Dog Name', o.[Name] as 'Owner Name', n.[Name] as 'Neighborhood Name' from DOG d
    LEFT JOIN Owner o ON d.OwnerId=o.Id
    LEFT JOIN Neighborhood n ON o.NeighborhoodId=n.Id;
    SELECT COUNT (OwnerId) as 'Dog Count', o.[Name] FROM Dog d
    LEFT JOIN Owner o on d.OwnerId=o.Id
    GROUP BY OwnerId, o.[Name]













