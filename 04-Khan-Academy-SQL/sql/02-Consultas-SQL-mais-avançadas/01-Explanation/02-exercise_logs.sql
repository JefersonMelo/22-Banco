CREATE TABLE exercise_logs(id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER
);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) 
    VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) 
    VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) 
    VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) 
    VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) 
    VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) 
    VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) 
    VALUES ("hiking", 60, 80, 85);

SELECT * 
FROM exercise_logs 
WHERE type = "biking";

SELECT * 
FROM exercise_logs 
WHERE type = "biking" 
OR type = "hiking" 
OR type = "tree climbing" 
OR type = "rowing";

/* IN */
SELECT * 
FROM exercise_logs 
WHERE type IN ("biking", "hiking", "tree climbing", "rowing");

/* NOT IN */
SELECT * 
FROM exercise_logs 
WHERE type NOT IN ("biking", "hiking", "tree climbing", "rowing");

CREATE TABLE drs_favorites(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    reason TEXT
);

INSERT INTO drs_favorites(type, reason) 
    VALUES ("biking", "Improves endurance and flexibility.");
INSERT INTO drs_favorites(type, reason) 
    VALUES ("hiking", "Increases cardiovascular health.");


SELECT type 
FROM drs_favorites;

SELECT * 
FROM exercise_logs 
WHERE type IN (
    SELECT type FROM drs_favorites
);

SELECT * 
FROM exercise_logs 
WHERE type IN (
    SELECT type FROM drs_favorites
    WHERE reason = "Increases cardiovascular health."
);

/* LIKE */
SELECT * 
FROM exercise_logs 
WHERE type IN (
    SELECT type FROM drs_favorites
    WHERE reason LIKE "%cardiovascular%"
);


