INSERT INTO tb_categoria (classe, receita_medica)
VALUES 
("Colica","Não"),
("Enchaqueca","Não"),
("Antibiotico","Sim"),
("Anestesico","Sim"),
("Antiinflamatorio","Sim");

INSERT INTO tb_produto (nome, quantidade, marca, valor, tipo,fk_id_categoria)
VALUES
("Buscopan",24,"Generico",2.00,"Gotas",1),
("Dipirona",65,"Medley",3.00,"Pirula",2),
("Ibuprofeno",100,"Advil",50.00,"Gotas",5),
("Celecoxibe",13,"Celebra",100.00,"Pirula",5),
("Benzocaina",50,"NovaDFL",150.00,"Gel",4),
("Bupivacaina",65,"Bupinex",130.00,"Gel",4),
("Acido_fusidico",47,"Generico",55.00,"Pirula",3),
("Amicacina",37,"Generico",20.00,"Pomada",3);

SELECT * FROM tb_produto
WHERE 50.00 < valor;

SELECT * FROM tb_produto
WHERE 3.00 < valor AND 60.00 > valor;

SELECT * FROM tb_produto
WHERE nome LIKE '%B%';

SELECT tb_produto.nome, tb_produto.valor, tb_categoria.classe, tb_categoria.receita_medica
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.fk_id_categoria = tb_categoria.id_categoria;

SELECT tb_produto.nome, tb_categoria.classe
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.fk_id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.id_categoria = "3";
