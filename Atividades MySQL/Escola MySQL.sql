CREATE DATABASE db_escola;

USE db_escola;
	CREATE TABLE tb_alunos(
	id BIGINT (5) AUTO_INCREMENT,
	nome VARCHAR (20) NOT NULL,
    idade BIGINT,
    turma VARCHAR (20) NOT NULL,
    materia VARCHAR (20) NOT NULL,
    nota VARCHAR (20) NOT NULL,
    ativo TINYINT (1),
    PRIMARY KEY (id)
);
    
SELECT * FROM tb_alunos;
    
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Paulo", 10, "9ºA", "Matematica", 7, 1);
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Aline", 15, "2ºB", "Portugues", 10, 1);
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Gabriela", "14", "2ºA", "Fisica", 6, 1);
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Henrique", "13", "1ºC", "Quimica", 5,1);
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Felipe", "17", "3ºA", "Biologia", 10, 1);
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Rafael", "17", "3ºB", "Artes", 8, 1);
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Rebecca", "16", "2ºD", "Ingles", 7, 1);
INSERT INTO tb_alunos (nome, idade, turma, materia, nota, ativo)
VALUES ("Amanda", "11", "9ºA", "Ciencias", 8,1);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota >= 7;

SELECT * FROM tb_alunos WHERE nota <= 7;

UPDATE tb_alunos SET nota = 9 , materia = "Portugues" 
WHERE id = 5;

SELECT * FROM tb_alunos;