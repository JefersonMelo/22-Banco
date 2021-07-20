CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER
);

INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);

/*
Etapa 1
Você já cantou alguma vez em um karaokê? É um lugar onde você canta com seus amigos, é muito divertido. 
Criamos uma tabela com músicas e, nesse desafio, você vai usar consultas para decidir quais músicas cantar. 
Nessa primeira etapa, selecione todos os títulos das músicas. 
*/

SELECT title 
FROM songs;

/*
Etapa 2
Talvez seus amigos gostem de cantar apenas músicas recentes ou realmente épicas. 
Adicione outro SELECT que usa OR para mostrar os títulos das músicas que são do tipo "epic" ou que 
tenham data de lançamento posterior a 1990.
(Dica: se você não se lembra de como selecionar linhas nas quais uma coluna é igual a um valor, 
você pode verificar a documentação abaixo).
*/

SELECT title 
FROM songs
WHERE released > 1990 
OR mood = "epic";

/*
Etapa 3
As pessoas se tornam exigentes no fim da noite. Adicione outro SELECT que usa AND para mostrar 
títulos de músicas épicas, "epic", e lançadas após 1990, e que tenham menos de 4 minutos de duração.
Perceba que a coluna de duração, duration, é medida em segundos.
*/

SELECT title 
FROM songs 
WHERE mood = "epic"
AND released > 1990 
AND duration < 240;