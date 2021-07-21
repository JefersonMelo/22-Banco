/*Projeto: Pessoas famosas*/

/*
Neste projeto você vai criar sua própria tabela com um pequeno conjunto de "pessoas famosas" 
e então criar mais tabelas sobre coisas que elas fazem e associá-las para criar listas legíveis por humanos.

Por exemplo, aqui estão tipos de pessoas famosas e as perguntas que seus dados poderiam responder:

    Estrelas de cinema: de que filmes elas participam? São casadas com alguém da lista?
    Cantores: que músicas eles compuseram? De onde eles são?
    Autores: que livros eles escreveram?
    Personagens fictícios: como eles estão relacionados a outros personagens? Em quais livros eles aparecem?
*/

CREATE TABLE celebrity(
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    famous_profession TEXT NOT NULL,
    age INTEGER,
    nationality TEXT,
    charact TEXT
);

INSERT INTO celebrity (id, first_name, last_name, famous_profession, age, nationality, charact)
    VALUES (1, "Emma", "Watson", "actress", 31, "Paris-France", "Hermione Granger");

INSERT INTO celebrity (id, first_name, last_name, famous_profession, age, nationality, charact)
    VALUES (2, "Maisie", "Williams", "actress", 24, "Bristol-UK", "Arya Stark");

CREATE TABLE famous_works(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    genre TEXT,    
    released INTEGER,
    character_id INTEGER
);

INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Philosopher's Stone", "fantasy and adventure", 2001, 1);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Chamber of Secrets", "fantasy and adventure", 2002, 1);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Prisoner of Azkaban", "fantasy and adventure", 2004, 1);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Goblet of Fire", "fantasy and adventure", 2005, 1);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Order of the Phoenix ", "fantasy and adventure", 2007, 1);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Half-Blood Prince", "fantasy and adventure", 2009, 1);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Deathly Hallows – Part 1", "fantasy and adventure", 2010, 1);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Harry Potter and the Deathly Hallows – Part 2", "fantasy and adventure", 2011, 1);

INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (1st season)", "fantasy serial drama", 2011, 2);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (2st season)", "fantasy serial drama", 2012, 2);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (3st season)", "fantasy serial drama", 2013, 2);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (4st season)", "fantasy serial drama", 2014, 2);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (5st season)", "fantasy serial drama", 2015, 2);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (6st season)", "fantasy serial drama", 2016, 2);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (7st season)", "fantasy serial drama", 2017, 2);
INSERT INTO famous_works (title, genre, released, character_id)
    VALUES ("Game of Thrones (8st season)", "fantasy serial drama", 2019, 2);


SELECT celebrity.first_name, 
        celebrity.charact, 
        famous_works.title
FROM famous_works
JOIN celebrity
ON celebrity.id = famous_works.character_id;


SELECT celebrity.first_name, 
        COUNT(famous_works.id) AS total_works
FROM celebrity
LEFT OUTER JOIN famous_works
ON famous_works.character_id = celebrity.id
GROUP BY celebrity.charact
ORDER BY celebrity.first_name ASC;

