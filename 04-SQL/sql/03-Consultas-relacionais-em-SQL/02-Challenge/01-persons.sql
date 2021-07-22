/*Desafios: Os hobbies de Bobby*/

CREATE TABLE persons(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER
);

INSERT INTO persons (name, age) 
    VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) 
    VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) 
    VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) 
    VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) 
    VALUES ("Fluffy Sparkles", 8);

CREATE TABLE hobbies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT
);

INSERT INTO hobbies (person_id, name) 
    VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) 
    VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) 
    VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) 
    VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) 
    VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) 
    VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) 
    VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) 
    VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) 
    VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name)
    VALUES (4, "meowing");

/*
Etapa 1
Criamos um banco de dados de pessoas e hobbies, e cada linha em hobbies está relacionada a uma 
linha em persons por meio da coluna person_id. Nessa primeira etapa, insira mais uma linha em 
persons e então mais uma linha em hobbies que esteja relacionada à pessoa recentemente inserida.
*/
INSERT INTO persons (name, age) 
    VALUES ("Fluffy", 16);
INSERT INTO hobbies (person_id, name)
    VALUES (2, "marathon-series");

/*
Etapa 2
Agora, selecione 2 tabelas com um comando join para que você possa ver o 
nome de cada pessoa ao lado de seu hobby.
*/
SELECT persons.name, hobbies.name 
FROM persons
JOIN hobbies
ON persons.id= hobbies.person_id;

/*
Etapa 3
Agora, faça uma consulta adicional que mostre apenas o nome e os hobbies de "Bobby McBobbyFace", 
usando JOIN combinado com WHERE.
*/
SELECT persons.name, hobbies.name 
FROM persons
JOIN hobbies
ON persons.id= hobbies.person_id
WHERE persons.name = "Bobby McBobbyFace";