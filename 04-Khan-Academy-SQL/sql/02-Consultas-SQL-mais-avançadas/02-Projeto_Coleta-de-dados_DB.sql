/*Projeto: Coleta de dados*/

/*Seleção de jogadores para os times de futebol americano*/

/*
Nós separamos uma lista de conjuntos de dados interessantes para você: 
Melhores filmes, Países ordenados por população, Objetos solares por tamanho, Personagens da Marvel, 
Vendas de uma loja de móveis, Insígnias da KA ganhas, Relatórios do Winston Donuts, 
Resultados de um jogo de cartas, and Seleção de jogadores para os times de futebol americano dos Estados Unidos.

Escolha um destes conjuntos de dados ou crie um parecido e utilize consultas avançadas com 
SELECT para obter informações sobre os dados. Quais tipos de perguntas alguém poderia ter 
sobre os dados se fosse usá-los para o desenvolvimento de um aplicativo ou uma ideia de negócio? 
Aqui estão algumas ideias:

    Qual é o valor médio, máximo e mínimo dos dados?
    E se agruparmos os dados por categoria (utilizando HAVING)?
    De quais maneiras podemos agrupar os valores que não existem ainda (utilizando CASE)?
    De quais maneiras interessantes podemos filtrar os dados (utilizando AND/OR)?

*/

CREATE TABLE picks(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	pick_number INTEGER,
	name TEXT,
	college TEXT,
	picked_by TEXT,
	position TEXT
);

INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(1,"Jameis Winston","Florida State","Tampa Bay","QB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(2,"Marcus Mariota","Oregon","Tennessee","QB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(3,"Dante Fowler Jr.","Florida","Jacksonville","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(4,"Amari Cooper","Alabama","Oakland","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(5,"Brandon Scherff ","Iowa","Washington","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(6,"Leonard Williams","USC","NY Jets","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(7,"Kevin White","West Virginia","Chicago","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(8,"Vic Beasley","Clemson","Atlanta","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(9,"Ereck Flowers","Miami(FL)","New York Giants","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(10,"Todd Gurley","Georgia","St. Louis","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(11,"Trae Waynes","Michigan St.","Minnesota","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(12,"Danny Shelton","Washington","Cleveland","DT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(13,"Andrus Peat ","Stanford","New Orleans","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(14,"DeVante Parker","Louisville","Miami","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(15,"Melvin Gordon","Wisconsin","San Diego","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(16,"Kevin Johnson","Wake Forest","Houston","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(17,"Arik Armstead","Oregon","San Francisco",  "DT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(18,"Marcus Peters","Washington","Kansas City","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(19,"Cameron Erving","Florida State","Cleveland","C");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(20,"Nelson Agholor","USC","Philadelphia","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(21,"Cedric Ogbuehi ","Texas A&M","Cincinnati","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(22,"Bud Dupree","Kentucky","Pittsburgh","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(23,"Shane Ray","Missouri","Denver","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(24,"D.J. Humphries","Florida","Arizona","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(25,"Shaq Thompson","Washington","Carolina","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(26,"Breshad Perriman","UCF","Baltimore","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(27,"Byron Jones","Connecticut","Dallas","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(28,"Laken Tomlinson","Duke","Detroit","OG");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(29,"Phillip Dorsett ","Miami(FL)","Indianapolis","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(30,"Damarious Randall","Arizona St.","Green Bay","S");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(31,"Stephon Anthony","Clemson","New Orleans","ILB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(32,"Malcom Brown","Texas","New England","DT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(33,"Landon Collins","Alabama","New York Giants","S");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(34,"Donovan Smith","Penn State","Tampa Bay","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(35,"Mario Edwards Jr.","Florida State","Oakland","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(36,"TJ Yeldon","Alabama","Jacksonville","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(37,"Devin Smith ","Ohio St.","NY Jets","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(38,"Preston Smith","Mississippi St.","Washington","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(39,"Eddie Goldman","Florida State","Chicago","DT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(40,"Dorial Green-Beckham","Missouri","Tennessee","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(41,"Devin Funchess","Michigan","Carolina","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(42,"Jalen Collins","LSU","Atlanta","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(43,"Benardrick McKinney","Mississippi St.","Houston","ILB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(44,"Hau'Oli Kikaha","Washington","New Orleans","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(45,"Eric Kendricks ","UCLA","Minnesota","ILB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(46,"Jaquiski Tartt","Samford","San Francisco","S");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(47,"Eric Rowe","Utah","Philadelphia","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
    VALUES(48,"Denzel Perryman","Miami (FL)","San Diego","ILB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(49,"Mitch Morse","Missouri","Kansas City",  "OG");
INSERT INTO picks (pick_number, name, college, picked_by, position)
    VALUES(50,"Ronald Darby","Florida State"," Buffalo","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(51,"Nate Orchard","Utah","Cleveland","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(52,"Jordan Phillips","Oklahoma","Miami","DT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(53,"Jake Fisher ","Oregon","Cincinnati","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(54,"Ameer Abdullah","Nebraska","Detroit","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(55,"Maxx Williams","Minnesota","Baltimore","TE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(56,"Senquez Golson","Mississippi","Pittsburgh","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(57,"Robert Havenstein","Wisconsin","St. Louis","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(58,"Markus Golden","Missouri","Arizona","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(59,"Ty Sambrailo","Colorado St.","Denver","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(60,"Randy Gregory","Nebraska","Dallas","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(61,"Ali Marpet ","Hobart","Tampa Bay","OG");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(62,"Quinten Rollins","Miami (OH)","Green Bay","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(63,"Frank Clark","Michigan","Seattle","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(64,"Jordan Richards","Stanford","New England","S");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(65,"D'Joun Smith","Florida Atlantic","Indianapolis","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(66,"Jeremiah Poutasi","Utah","Tennessee","OG");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(67,"A.J. Cann","South Carolina","Jacksonville","OG");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(68,"Clive Walford","Miami(FL)","Oakland","TE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(69,"Tyler Lockett ","Kansas State","Seattle","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(70,"Jaelen Strong","Arizona St.","Houston","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(71,"Hroniss Grasu","Oregon","Chicago","C");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(72,"Jamon Brown","Louisville","St. Louis","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(73,"Tevin Coleman","Indiana","Atlanta","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(74,"Owa Odighizuwa","UCLA","New York Giants","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(75,"Garrett Grayson","Colorado St.","New Orleans","QB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(76,"Chris Conley","Georgia","Kansas City","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(77,"Duke Johnson ","Miami(FL)","Cleveland","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(78,"P.J. Williams","Florida State","New Orleans","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(79,"Eli Harold","Virginia","San Francisco","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(80,"Alex Carter","Stanford","Detroit","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(81,"John Miller","Louisville","Buffalo",  "OG");
INSERT INTO picks (pick_number, name, college, picked_by, position)
    VALUES(82,"Lorenzo Mauldin","Louisville","NY Jets","OLB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(83,"Craig Mager","Texas State","San Diego","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(84,"Jordan Hicks","Texas","Philadelphia","ILB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(85,"Tyler Kroft ","Rutgers","Cincinnati","TE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(86,"David Johnson","Northern Iowa","Arizona","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(87,"Sammie Coates","Auburn","Pittsburgh","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(88,"Danielle Hunter","LSU","Minnesota","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(89,"Sean Mannion","Oregon State","St. Louis","QB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(90,"Carl Davis","Iowa","Baltimore","DT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(91,"Chaz Green","Florida","Dallas","OT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(92,"Jeff Heuerman","Ohio St.","Denver","TE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(93,"Henry Anderson ","Stanford","Indianapolis","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(94,"Ty Montgomery","Stanford","Green Bay","WR");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(95,"Matt Jones","Florida","Washington","RB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(96,"Xavier Cooper","Washington State","Cleveland","DT");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(97,"Geneo Grissom","Oklahoma","New England","DE");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(98,"Steven Nelson","Oregon State","Kansas City","CB");
INSERT INTO picks (pick_number, name, college, picked_by, position)
	VALUES(99,"Paul Dawson","TCU","Cincinnati","OLB");

/*
CREATE TABLE picks(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	pick_number INTEGER,
	name TEXT,
	college TEXT,
	picked_by TEXT,
	position TEXT
);
*/

/*Qual é o valor médio, máximo e mínimo dos dados?*/

SELECT position, 
COUNT(position) AS quantity_position
FROM picks
GROUP BY position 
ORDER BY quantity_position DESC;

SELECT MIN(position) AS Position, 
COUNT(DISTINCT position="CB") AS Minimum
FROM picks;

SELECT MAX(position) AS Position, 
COUNT(DISTINCT position) AS Maximum
FROM picks;

/*E se agruparmos os dados por categoria (utilizando HAVING)?*/

SELECT position
COUNT(position) AS position
FROM picks
GROUP BY position
HAVING COUNT(position) > 2;


/*De quais maneiras podemos agrupar os valores que não existem ainda (utilizando CASE)?*/
SELECT COUNT(pick_number),
    CASE
        WHEN pick_number <= 10 THEN "1-Talent AllStar"
        WHEN pick_number <= 32 THEN "2-Possible Talent"
        ELSE "3-Questionable Talent"
    END AS "Expectation"
FROM picks
GROUP BY Expectation;


/*De quais maneiras interessantes podemos filtrar os dados (utilizando AND/OR)?*/

SELECT name, pick_number, picked_by, position
FROM picks
WHERE pick_number <= 32 
AND picked_by = "Minnesota" 
OR picked_by = "New England"
ORDER BY position;
    
