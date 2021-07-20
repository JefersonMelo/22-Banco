CREATE TABLE exercise_logs(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER
);


INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);

SELECT * FROM exercise_logs;

SELECT * FROM exercise_logs 
WHERE calories > 50 
ORDER BY calories;

/* AND */
SELECT * FROM exercise_logs 
WHERE calories > 50 
ORDER BY calories;

/* OR */
SELECT * FROM exercise_logs 
WHERE calories > 50 OR heart_rate > 100;
