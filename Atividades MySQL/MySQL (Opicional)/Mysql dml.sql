-- Atividade (Opcional)

INSERT INTO tb_categoria (classes, descrisao)
VALUES
("Eletrodomesticos","Cozinha"),
("Moveis","Casa"),
("Decoracao","Casa"),
("Eletronicos","Diversão"),
("TV e Videos","Distração");

INSERT INTO tb_usuario (nome, cpf, telefone, email, senha)
VALUES
("joão",12345698712,46619898,"joao@joao.com",321654),
("Pedro",98765432174,40028922,"pedro@pedro.com",456321),
("Julia",95175326845,46621213,"julia@julia.com",213654),
("Ana",14796325879,46659878,"ana@ana.com",654321),
("Paula",26485971354,46621245,"paula@paula.com",123456);

INSERT INTO tb_produto (nome, marca, quantidade, valor, cor, id_tb_categoria, id_tb_usuario)
VALUES
("Abajur","Sony",100,50.00,"vermelho",3,1),
("Liquidificador","Arno",50,300.00,"Perto",1,5),
("Microondas","Philco",80,600.00,"Branco",1,2),
("Chapinha","Lizze",10,150.00,"Cinza",4,4),
("Console_Xbox","Microsoft",65,3000.00,"Prata",4,2),
("Mesa","Itatiaia",65,100.00,"Marrom",2,4),
("Armario","Itatiaia",10,1500.00,"Cinza",2,1),
("Smart_TV_4K","LG",25,4000.00,"Perto",5,3);

SELECT * FROM tb_produto
WHERE 50 < valor;

SELECT * FROM tb_produto
WHERE 70 < valor AND 200 > valor;

SELECT nome FROM tb_produto
WHERE nome LIKE '%B%';

SELECT nome FROM tb_usuario
WHERE nome LIKE '%P%';

SELECT tb_produto.nome, tb_produto.valor, tb_categoria.classes 
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_tb_categoria = tb_categoria.id_tb_categoria;

SELECT SUM(valor) FROM tb_produto;

SELECT AVG(valor) FROM tb_produto;

SELECT SUM(quantidade) FROM tb_produto;


SELECT tb_produto.nome, tb_categoria.classes 
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_tb_categoria = tb_categoria.id_tb_categoria
WHERE tb_categoria.id_tb_categoria = "4";

