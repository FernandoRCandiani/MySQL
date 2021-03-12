CREATE DATABASE db_e_commerce;

USE db_e_commerce;
	CREATE TABLE tb_produtos(
	id BIGINT (5) AUTO_INCREMENT,
	objeto VARCHAR (20) NOT NULL,
    quantidade BIGINT,
    modelo VARCHAR (20) NOT NULL,
    cor VARCHAR (20) NOT NULL,
    valor VARCHAR (20) NOT NULL,
    ativo TINYINT (1),
    PRIMARY KEY (id)
);
    
SELECT * FROM tb_produtos;
    
INSERT INTO tb_produtos (objeto, quantidade, modelo, cor, valor, ativo)
VALUES ("Brinco", 100, "Argola", "Prata", 25.00, 1);
INSERT INTO tb_produtos (objeto, quantidade,modelo, cor, valor, ativo)
VALUES ("Bicicleta", 50, "Aro29", "Vermelho", 1.500, 1);
INSERT INTO tb_produtos (objeto, quantidade, modelo, cor, valor, ativo)
VALUES ("Placa de Video", "25", "GTX 1080", "RGB", 2.000, 1);
INSERT INTO tb_produtos (objeto, quantidade, modelo, cor, valor, ativo)
VALUES ("Cardeno", "250", "15 Materias", "Verde", 20.00,1);
INSERT INTO tb_produtos (objeto, quantidade, modelo, cor, valor, ativo)
VALUES ("PenDrive", "100", "1TB", "Preto", 100.00, 1);
INSERT INTO tb_produtos (objeto, quantidade, modelo, cor, valor, ativo)
VALUES ("Mochila", "300", "Classica", "Branca", 500.00, 1);
INSERT INTO tb_produtos (objeto, quantidade, modelo, cor, valor, ativo)
VALUES ("WebCam", "230", "720p", "Amarelo", 600.00, 1);
INSERT INTO tb_produtos (objeto, quantidade, modelo, cor, valor, ativo)
VALUES ("Cama", "10", "Solteiro", "Vinho", 400.00,1);


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor >= 500.00;

SELECT * FROM tb_produtos WHERE valor <= 500.00;

UPDATE tb_produtos SET quantidade = 25 , valor = 80.00 
WHERE id = 5;

SELECT * FROM tb_produtos;
