CREATE DATABASE db_empresa;

USE db_empresa;
	CREATE TABLE tb_funcionario(
	id BIGINT (5) AUTO_INCREMENT,
    nome VARCHAR (20) NOT NULL,
    cpf BIGINT NOT NULL,
    telefone BIGINT,
    profissao VARCHAR (25),
    salario VARCHAR (10),
    ativo TINYINT (1),
    PRIMARY KEY (id)
);
    
SELECT * FROM tb_funcionario;
    
INSERT INTO tb_funcionario (nome, cpf, telefone, profissao, salario, ativo)
VALUES ("Paulo",123456789,40028922,"Mecanico",3.500,1);
INSERT INTO tb_funcionario (nome, cpf, telefone, profissao, salario, ativo)
VALUES ("Marcio",987654321,46628932,"Pensista",1.200,1);
INSERT INTO tb_funcionario (nome, cpf, telefone, profissao, salario, ativo)
VALUES ("Heloisa",123852789,46628922,"Operadora de Injetora",1.200,1);
INSERT INTO tb_funcionario (nome, cpf, telefone, profissao, salario, ativo)
VALUES ("Emily",369856789,46628968,"Encarregada",4.000,1);
INSERT INTO tb_funcionario (nome, cpf, telefone, profissao, salario, ativo)
VALUES ("Renato",129635879,46628452,"Eletricista",3.500,1);
INSERT INTO tb_funcionario (nome, cpf, telefone, profissao, salario, ativo)
VALUES ("Rafaela",195167989,46618922,"Operadora de Embalagem",1.500,1);

SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario WHERE salario >= 2.000;

SELECT * FROM tb_funcionario WHERE salario <= 2.000;

UPDATE tb_funcionario SET profissao = "Engenheira", salario = "5.000"
WHERE id = 6;

SELECT * FROM tb_funcionario;