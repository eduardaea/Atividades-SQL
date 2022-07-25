CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
idade INT (10),
endereco VARCHAR (255),
nota_1 DECIMAL (3,2),
nota_2 DECIMAL (3,2)
);
SELECT * FROM tb_alunos;
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("João", 12, "Rua das Flores", 7,6);
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("Maria", 12, "Rua das Palhas", 6,6);
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("Marina", 12, "Rua das Pedras", 9,9);
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("Tiago", 11, "Rua das Vacas", 7,8);
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("Eduarda", 12, "Rua das Cinzas", 8,7);
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("Vanessa", 12, "Rua dos Brancos", 7,5);
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("Lays", 11, "Rua dos Gatos", 9,6);
INSERT INTO tb_alunos(nome,idade,endereco,nota_1,nota_2) VALUES ("João Pedro", 13, "Rua dos Gansos", 7,9);

SELECT * FROM tb_alunos WHERE nota_2 >= 7;
SELECT * FROM tb_alunos WHERE nota_2 < 7;

UPDATE tb_alunos SET nota_2 = 7 where id = 3;
