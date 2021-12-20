CREATE TABLE Pokemon
(
    PokemonID INT IDENTITY PRIMARY KEY,
    PokemonName VARCHAR(40) UNIQUE,
    Height NVARCHAR(30),
    PokemonWeight NVARCHAR(30)
);

CREATE TABLE Types
(
    TypeID INT IDENTITY PRIMARY KEY,
    TypeName NCARCHAR(10) UNIQUE
);

CREATE TABLE PokemonType
(
    ID INT IDENTITY PRIMARY KEY,
    PokemonID INT FOREIGN KEY REFERENCES Pokemon(PokemonID),
    TypeID INT FOREIGN KEY REFERENCES PokemonType(TypeID)
);

INSERT INTO Pokemon
(PokemonName, Height, PokemonWeight)
VALUES
(
    'Bulbasaur', '7', '70',
    'Ditto', '3', '40'
);

INSERT INTO PokemonType
(TypeName)
VALUES
(
    Grass, Normal
);

INSERT INTO PokemonType
(PokemonID, TypeID)
VALUES
(
    0, 0,
    1, 1
);

SELECT PokemonID, PokemonName, Height, PokemonWeight, 
TypeID, TypeName, PokemonType.ID FROM Pokemon
INNER JOIN PokemonType
ON Pokemon.PokemonID = PokemonType.PokemonID
INNER JOIN Types
ON PokemonType.TypeID = Types.TypeID