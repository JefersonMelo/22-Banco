/*Desafio: Sequências em SQL*/

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    released INTEGER,
    sequel_id INTEGER
);

INSERT INTO movies 
    VALUES (1, "Harry Potter and the Philosopher's Stone", 2001, 2);
INSERT INTO movies 
    VALUES (2, "Harry Potter and the Chamber of Secrets", 2002, 3);
INSERT INTO movies 
    VALUES (3, "Harry Potter and the Prisoner of Azkaban", 2004, 4);
INSERT INTO movies 
    VALUES (4, "Harry Potter and the Goblet of Fire", 2005, 5);
INSERT INTO movies 
    VALUES (5, "Harry Potter and the Order of the Phoenix ", 2007, 6);
INSERT INTO movies 
    VALUES (6, "Harry Potter and the Half-Blood Prince", 2009, 7);
INSERT INTO movies 
    VALUES (7, "Harry Potter and the Deathly Hallows – Part 1", 2010, 8);
INSERT INTO movies 
    VALUES (8, "Harry Potter and the Deathly Hallows – Part 2", 2011, NULL);


/*
Etapa 1
Criamos uma tabela com todos os filmes da série "Harry Potter", 
com uma coluna sequel_id que corresponde ao id da sequência para cada filme. 
Faça um SELECT que vai mostrar o título de cada filme ao lado do 
título da sequência (ou NULL caso ele não tenha uma sequência).
*/
SELECT movies.title, 
       sequence_title.title AS sequence  
FROM movies
LEFT OUTER JOIN movies AS sequence_title
ON movies.sequel_id = sequence_title.id;


