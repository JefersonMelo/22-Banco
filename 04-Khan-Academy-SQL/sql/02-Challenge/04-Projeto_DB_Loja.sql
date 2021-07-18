/*
Crie sua própria loja! Ela deve vender um tipo de produto como roupas, 
bicicletas ou qualquer coisa que seja de seu interesse. Você deve ter uma 
tabela para todos os itens na sua loja e pelo menos 5 colunas para o tipo 
de dado que você considera armazenar. Você deve vender pelo menos 15 itens e 
usar as instruções select para ordenar seus itens por preço e mostrar pelo 
menos uma estatística sobre os itens. 
*/

CREATE TABLE store(
    id INTEGER PRIMARY KEY,
    name_product TEXT,
    quantity INTEGER,
    name_manufacturer TEXT,
    price NUMERIC,
    aisle_departament INTEGER
);

INSERT INTO store VALUES (1, "Dishes", 10, "Pirex", 10.5, 1);
INSERT INTO store VALUES (2, "XBox", 10, "Microsoft", 400.5, 2);
INSERT INTO store VALUES (3, "PS5", 10, "Sony", 500.5, 2);
INSERT INTO store VALUES (4, "Teddy Bear", 21, "Strela", 10.5, 3);
INSERT INTO store VALUES (5, "Female T-shirt", 100, "Hering", 12.5, 4);
INSERT INTO store VALUES (6, "Male T-shirt", 101, "Hering", 13.5, 4);
INSERT INTO store VALUES (7, "Male Pants", 19, "Hering", 70.5, 4);
INSERT INTO store VALUES (8, "Female Pants", 13, "Hering", 50.5, 4);
INSERT INTO store VALUES (9, "Unisex Sneakers", 17, "All Star", 31.5, 5);
INSERT INTO store VALUES (10, "Male Shoes", 10, "Democrata", 10.5, 5);
INSERT INTO store VALUES (11, "Fridge", 10, "Eletrolux", 850.5, 6);
INSERT INTO store VALUES (12, "Stove", 10, "Consul", 730.5, 6);
INSERT INTO store VALUES (13, "Table", 10, "Madeira-madeira", 150.5, 6);
INSERT INTO store VALUES (14, "Game Chair", 10, "Gamer.com", 10.5, 7);
INSERT INTO store VALUES (15, "Chair", 10, "Char & Cia", 10.5, 7);

SELECT MAX(price) 
FROM store;

SELECT aisle_departament, SUM(quantity) 
FROM store
GROUP BY aisle_departament;

SELECT price, SUM(price)
FROM store
GROUP BY price;

