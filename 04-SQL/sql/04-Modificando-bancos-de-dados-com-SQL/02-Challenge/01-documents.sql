/*Desafio: Documentos dinâmicos*/

CREATE TABLE documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT
);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * 
FROM documents;

/*
Etapa 1
Criamos um banco de dados para um aplicativo de documentos, com linhas para cada documento com seu título, 
conteúdo e autor. Nessa primeira etapa, use UPDATE para alterar o autor para "Jackie Draper" em todas as 
linhas que atualmente constam como "Jackie Paper". Então, selecione novamente todas as linhas para garantir 
que a tabela seja alterada como você espera.
*/
SELECT * FROM documents;

UPDATE documents
SET author = "Jackie Draper" 
WHERE id IN (3, 4, 5);

SELECT * FROM documents;

/*
Etapa 2
Agora você vai excluir uma linha, com muito cuidado para não excluir todas as linhas. 
Exclua apenas a linha na qual o título é "Things I'm Afraid Of" (coisas das quais tenho medo). 
Então, selecione novamente todas as linhas para garantir que a tabela seja alterada como você espera.
*/
SELECT * 
FROM documents;

DELETE
FROM documents
WHERE title = "Things I'm Afraid Of";

SELECT * 
FROM documents;