CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

 CREATE TABLE tb_categorias (
	  id BIGINT AUTO_INCREMENT PRIMARY KEY,
	  categoria VARCHAR(255),
      descricao VARCHAR(255)
  );
  SELECT * FROM tb_categorias;
  
  INSERT INTO tb_categorias(categoria,descricao) VALUES ("Antibioticos", "Medicamentos de uso Controlado"),("Analgesicos","Medicamentos Para dor"),("Xaropes", "Medicamentos Liquidos"),("Beleza","Produtos de Beleza"), ("Bomboniere", "Doces e produtos da bancada");
  
  
 CREATE TABLE tb_produtos ( 
 id BIGINT AUTO_INCREMENT PRIMARY KEY,
	 produto VARCHAR (255),
	 preco DECIMAL (8,2),
	 vencimento DATE,
	 generico BOOLEAN,
	 id_categoria BIGINT,
	 FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
 );
 
 SELECT * FROM tb_produtos;
 
INSERT INTO tb_produtos(produto,preco,generico, id_categoria) VALUES ("Doril", 12.50, 1, 2);
UPDATE tb_produtos SET vencimento = "2022-02-20" WHERE id = 1;

INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("Esmalte IMPALA","2023-12-08", 4.50, 0, 4);
INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("Pastilha Valda","2024-11-22", 8.00, 0,5);
INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("Amoxilina", "2023-12-01",79.90,0,1);
INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("Amoxilina", "2023-11-01",49.90,1,1);
INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("Shampoo DOVE", "2025-01-31", 13.90, 0,4);
INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("SEKI chines","2022-08-09",30.65,1,3);
INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("Melagrião", "2023-12-31",89.90,0,3);
INSERT INTO tb_produtos(produto,vencimento,preco,generico, id_categoria) VALUES ("Protetor Solar","2025-03-15",122.20,0,4);

SELECT * FROM tb_produtos p WHERE p.preco >=50.00;
SELECT * FROM tb_produtos p WHERE p.preco >=5 AND p.preco<=60;

SELECT * FROM tb_produtos p where p.produto LIKE "A%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.id = 1;

												 