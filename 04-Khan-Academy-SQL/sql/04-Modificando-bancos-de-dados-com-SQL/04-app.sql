/*Projeto: App personificador*/

/*
Pense em seus aplicativos preferidos e escolha um que armazena seus dados, 
por exemplo um jogo que armazena pontuação, um aplicativo que permite que 
você publique atualizações, etc. Neste projeto você vai imaginar que o aplicativo 
armazena seus dados em um banco de dados SQL (o que é muito provável!) e 
escrever instruções SQL que poderiam ser as usadas pelo aplicativo.

    CREATE - crie uma tabela para armazenar os dados.
    INSERT - insira algumas linhas de exemplo na tabela.
    Use an UPDATE - atualize para simular o que acontece quando você edita os dados no aplicativo.
    Use a DELETE - apague para simular o que acontece quando você exclui os dados no aplicativo.
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

INSERT INTO celebrity (id, first_name, last_name, famous_profession, age, nationality, charact)
    VALUES (3, "Emilia", "Clarke", "actress", 34, "Berkshire-UK", "Daenerys Targaryen");

ALTER TABLE celebrity
ADD salary REAL
DEFAULT 0.00;

UPDATE celebrity
SET salary = 100000.0
WHERE id = 1;

DELETE
FROM celebrity
WHERE id = 2;