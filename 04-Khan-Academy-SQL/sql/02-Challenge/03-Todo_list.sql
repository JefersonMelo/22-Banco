CREATE TABLE todo_list (
    id INTEGER PRIMARY KEY,
    item TEXT,
    minutes INTEGER
);

INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);


/*
Etapa 1
Esta é uma tabela contendo uma lista de afazeres com o número de minutos que vai levar para completar cada item. 
Insira outro item à lista de afazeres com o tempo estimado em minutos que ele vai levar.
*/

INSERT INTO todo_list VALUES (4, "Make to Lunch", 60);

/*
Etapa 2
Selecione a soma SUM de minutos que vai levar para fazer todos os itens da sua lista de afazeres. 
Você deve ter apenas uma instrução SELECT.
*/

SELECT SUM(minutes) FROM todo_list;