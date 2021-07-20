
/*Desafio: Livro de atividades*/

CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL
);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);

/*
Etapa 1
Criamos um banco de dados para controle das notas dos alunos, com o nome, a nota e a porcentagem de atividades 
que eles completaram. Nessa primeira etapa, selecione todas as linhas e exiba as propriedades name, number_grade 
e percent_completed, que você pode calcular multiplicando e arredondando a coluna fraction_completed.
*/

SELECT name, number_grade, 
ROUND(fraction_completed * 100) AS percent_completed 
FROM student_grades;


/*
Etapa 2
Agora, essa etapa é um pouco complicada. O objetivo é uma tabela que mostra quantos alunos obtiveram qual 
letter_grade. Você pode retornar a letter_grade usando CASE com a coluna number_grade, 
retornando "A" para notas > 90, "B" para notas > 80, "C" para notas > 70 e "F" caso contrário. 
Então, você pode usar COUNT com GROUP BY para mostrar o número de alunos com cada uma dessas notas.
*/

SELECT COUNT(*),
    CASE 
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
    END as "letter_grade"

FROM student_grades
GROUP BY letter_grade;