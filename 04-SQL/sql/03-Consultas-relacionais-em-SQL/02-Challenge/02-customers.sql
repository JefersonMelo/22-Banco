/*Desafio: Pedidos dos clientes*/

CREATE TABLE customers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT
);

INSERT INTO customers (name, email) 
    VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) 
    VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) 
    VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL
);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);

/*
Etapa 1
Criamos um banco de dados para clientes e seus pedidos. Contudo, nem todos os clientes fizeram algum pedido. 
Faça uma consulta que lista o nome, name, e o email de todos os clientes seguidos pelo item e pelo preço, price, 
dos pedidos que eles fizeram. Use um LEFT OUTER JOIN para que um cliente seja listado mesmo 
se ele não fez pedidos e não adicione nenhum ORDER BY.
*/
SELECT customers.name, 
        customers.email, 
        orders.item, 
        orders.price
FROM customers
LEFT OUTER JOIN orders
ON customers.id = orders.customer_id;

/*
Etapa 2
Agora, crie outra consulta que vai resultar em uma linha para cada cliente, com seu nome name, 
seu email e a quantia total de dinheiro que ele gastou com pedidos. Ordene as linhas de acordo 
com o dinheiro gasto, do que gastou mais para o que gastou menos.
(Dica: você sempre deve usar GROUP BY na coluna com maior probabilidade de ser única em uma linha).
*/
SELECT customers.name, 
        customers.email, 
        SUM(orders.price) AS total_price
FROM customers
LEFT OUTER JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.email
ORDER BY price_total DESC;
