CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT
);
    
CREATE TABLE diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
);

/* After user submitted their new diary log */
INSERT INTO diary_logs (user_id, date, content) 
    VALUES (1, "2015-04-01",
    "I had a horrible fight with OhNoesGuy and I buried my woes in 3 pounds of dark chocolate.");
    
INSERT INTO diary_logs (user_id, date, content) 
    VALUES (1, "2015-04-02",
    "We made up and now we're best friends forever and we celebrated with a tub of ice cream.");

ALTER TABLE diary_logs 
ADD emotion TEXT 
DEFAULT "Unknown";

INSERT INTO diary_logs (user_id, date, content, emotion) 
    VALUES (1, "2015-04-03", "We went to Disneyland!", "happy");


