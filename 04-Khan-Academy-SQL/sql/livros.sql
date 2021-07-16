/*
Etapa 1

Quais são os seus livros favoritos? Você pode criar uma tabela no banco de dados e guardá-los lá! 
Nesse primeiro passo, crie uma tabela para guardar a sua lista de livros. Esta deverá conter colunas 
para id, name, e rating (identificador, nome e avaliação - é preciso que você use os nomes em inglês 
para que o programa possa verificar se está tudo ok).
*/

CREATE TABLE books(
    id INTEGER PRIMARY KEY,
    name TEXT,
    rating TEXT
);

/*
Etapa 2

Agora adicione à tabela três dos seus livros favoritos.
*/

INSERT INTO books VALUES (1, "Holly Bible", "Text Sacred");
INSERT INTO books VALUES (2, "Game Of Thrones", "Fiction and Fantasy - Adult");
INSERT INTO books VALUES (3, "Harry Potter", "Fiction and Fantasy - Juvenile");