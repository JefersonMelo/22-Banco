CREATE TABLE movies (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    release_year INTEGER
);

INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);

/*
Selecionar Tudo
Este banco de dados contém uma lista incompleta de sucessos de bilheteria e seu ano de lançamento. 
Nesse desafio, você vai obter os resultados do banco de dados de formas diferentes! Nessa primeira etapa, 
selecione todos os filmes (movies).
*/

SELECT * FROM movies;

/*
Filtrar filmes recentes
Agora faça uma segunda pesquisa para obter os filmes lançados no ano 2000 ou depois, 
não antes (consulte release_year). Ordene os resultados para que os filmes mais antigos sejam listados primeiro. 
Você deverá ter 2 comandos SELECT depois deste passo.
*/

SELECT * FROM movies
WHERE release_year > 2000 
ORDER BY release_year;
