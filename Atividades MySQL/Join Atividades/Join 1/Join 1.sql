-- Atividade 1 Join

CREATE DATABASE db_gereratin_game_online;

USE db_gereratin_game_online;
	CREATE TABLE tb_classe(
		id BIGINT (5) AUTO_INCREMENT,
        classe VARCHAR (20) NOT NULL,
        habilidade VARCHAR (20) NOT NULL,
        PRIMARY KEY (id)
	);
USE db_gereratin_game_online;
    CREATE TABLE tb_personagem(
		id BIGINT (5) AUTO_INCREMENT,
		nome VARCHAR (20) NOT NULL,
        raca VARCHAR (20) NOT NULL,
        ataque VARCHAR (20) NOT NULL,
        defesa VARCHAR (20) NOT NULL,
        ocupacao VARCHAR (20) NOT NULL,
        fy_tb_personagem BIGINT NOT NULL,
		PRIMARY KEY (id),
        FOREIGN KEY (fy_tb_personagem) REFERENCES tb_classe (id)
	);
        
	INSERT INTO tb_classe (classe, habilidade)
    VALUES
    ("Arqueiro(a)", "Flechas de fogo"),
    ("Guerreiro(a)", "Combate de escudo"),
	("Mago(a)", "Sombra"),
	("Feiticeiro(a)", "Invocação"),
    ("Berserker", "Combate de machados");
    
    SELECT * FROM tb_classe;
    
    INSERT INTO tb_personagem (nome, raca, ataque, defesa, ocupacao, fy_tb_personagem)
    VALUES
    ("Naomi","Humano",2000,5000,"Vingador",2),
    ("Momonga","Morto Vivo",30000,15000,"Rei_do_Reino_Sorcer",4),
    ("Kazuma","Humano",1000,500,"Aventureiro",5),
    ("Megumin","Elfa",10000,5000,"Destuição",3),
    ("Uraraka","Humana",3000,2000,"Heroina",1),
    ("Mikasa","Humana",10000,7000,"Vingadora",3),
    ("Deku","Anão",1000,10000,"Aventureiro",4),
    ("Saitama","Humano",99999,99999,"Heroi por diversão",5);
    
	SELECT * FROM tb_personagem;
 
 SELECT * FROM tb_personagem 
    WHERE ataque > 2000;
    
    SELECT * FROM tb_personagem
    WHERE defesa > 500 AND defesa < 6000;
    
    SELECT * FROM tb_personagem
    WHERE nome LIKE '%U%';
    
    SELECT tb_personagem.nome, tb_personagem.raca, tb_classe.classe, tb_classe.habilidade
    FROM tb_personagem
	INNER JOIN tb_classe
    ON tb_personagem.fy_tb_personagem = tb_classe.id;

	SELECT tb_personagem.nome, tb_personagem.raca, tb_classe.classe, tb_classe.habilidade
    FROM tb_personagem
	INNER JOIN tb_classe
    ON tb_personagem.fy_tb_personagem = tb_classe.id
	WHERE tb_classe.classe = "Mago(a)"; 
	
  