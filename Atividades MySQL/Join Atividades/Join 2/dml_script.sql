-- Atividade Join 2

-- DML

INSERT INTO tb_categoria (tipos, acompanhamento)
VALUES
("Salgados","Refrigerante"),
("Doces","Refrigerante"),
("Vegana","Suco"),
("Frutos_do_mar","Cerveja"),
("Mista_Salgada_Doces","Vinho");

INSERT INTO tb_pizza (nome, tamanho, borda_recheada, valor, entrega, fk_id_categoria)
VALUES
("Calabresa","Grande","Sim",45.00,"Não",1),
("Protuguesa","Media","Não",26.00,"Sim",1),
("Brigadeiro","Grande","Sim",45.00,"Não",2),
("Romeu_e_Julieta","Grande","Sim",50.00,"Sim",2),
("Berinjela","pequena","Não",30.00,"Sim",3),
("Atum","Media","Sim",40.00,"Sim",4),
("Moda_e_Frango","Grande","Sim",65.00,"Não",5),
("Escarola_e_Quatro_Queijos","Grande","Sim",70.00,"Sim",2);

SELECT * FROM tb_pizza
WHERE 45.00 < valor;

SELECT * FROM tb_pizza
WHERE 29.00 < valor AND 60.00 > valor;

SELECT * FROM tb_pizza
WHERE nome LIKE '%c%';

SELECT tb_pizza.nome, tb_pizza.valor, tb_categoria.tipos, tb_categoria.acompanhamento
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.fk_id_categoria = tb_categoria.id_categoria;

SELECT tb_pizza.nome, tb_pizza.valor, tb_categoria.tipos, tb_categoria.acompanhamento
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.fk_id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.id_categoria = "1";

drop database db_pizzaria_legal;