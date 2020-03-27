CREATE TABLE Walks (
Id INTEGER  NOT NULL PRIMARY KEY IDENTITY,
Date DateTime NOT NULL,
Duration INTEGER NOT NULL,
WalkerId INTEGER NOT NULL,
DogId INTEGER NOT NULL

    CONSTRAINT [FK_Walks_Walker] FOREIGN KEY (WalkerId) REFERENCES Walker (Id),
    CONSTRAINT [FK_WAlks_Dog] FOREIGN KEY (DogId) REFERENCES Dog (Id)
);
CREATE TABLE WALKER (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
NeighborhoodId INTEGER NOT NULL
    CONSTRAINT [FK_Walker_Neighborhood] FOREIGN KEY (NeighborhoodId) REFERENCES Neighborhood (Id)
);

CREATE TABLE DOG (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
OwnerId INTEGER NOT NULL,
Breed VARCHAR(55) NOT NULL,
Notes VARCHAR(55) NOT NULL,
    CONSTRAINT [FK_Dog_Owner] FOREIGN KEY (OwnerId) REFERENCES Owner(Id),
    );
CREATE TABLE NEIGHBORHOOD (
Id INT NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
);

CREATE TABLE OWNER (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
[Name] VARCHAR(55) NOT NULL,
Address VARCHAR(255) NOT NULL,
NeighborhoodId INTEGER NOT NULL,
Phone VARCHAR(55) NOT NULL,
    CONSTRAINT [Fk_Owner_Neighborhood] FOREIGN KEY (NeighborhoodId) REFERENCES Neighborhood (Id)
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












