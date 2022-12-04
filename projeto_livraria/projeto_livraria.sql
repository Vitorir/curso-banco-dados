create database LIVRARIA;
use livraria;

CREATE TABLE LIVROS (
	LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAS INT(5),
	EDITORA VARCHAR(30),
	VALOR FLOAT(10, 2),
	UF CHAR(2),
	ANO INT (4)
)

INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, 
	VALOR, UF, ANO)
INSERT INTO LIVROS
VALUES('Cavaleiro Real', 'Ana Claudia', 'F', 465,
	'ATLAS', 49.9, 'RJ', 2009);
INSERT INTO LIVROS
VALUES('SQL para leigos', 'João Nunes', 'M', 450,
	'Addison', 98, 'SP', 2019);
INSERT INTO LIVROS
VALUES('Pessoas Efetivas', 'Celia Tavares', 'F', 210,
	'BETA', 45, 'RJ', 2008);
INSERT INTO LIVROS
VALUES('Habitos Saudáveis', 'Eduardo Santos', 'M', 630,
	'BETA', 78, 'RJ', 2018);
INSERT INTO LIVROS
VALUES('A Casa Marrom', 'Hermes Macedo', 'M', 250,
	'Bubba', 60, 'MG', 2016);
INSERT INTO LIVROS
VALUES('Estacio Querido', 'Geraldo Francisco', 'M', 310,
	'Insignia', 100, 'ES', 2015);

/* 1 - Trazer todos os dados. */
SELECT * FROM LIVROS;
/* 2 - Trazer nome do livro e o nome da editora. */
SELECT LIVRO, EDITORA
FROM LIVROS;
/* 3- O nome do livro, UF  de autores masculinos. */
SELECT LIVRO, UF, SEXO
FROM LIVROS
WHERE SEXO = 'M';
/* 4- O nome do livro, paginas de autores femininas. */
SELECT LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';
/* 5 - */
SELECT LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';
/* 6 - */
SELECT *
FROM LIVROS
WHERE SEXO = 'M' AND UF = 'SP' OR UF = 'RJ';


CREATE DATABASE EXERCICIO;
USE EXERCICIO;

create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

 -- 1 --
 -- Analise --
 SELECT COUNT(*), departamento
 FROM funcionarios
 group by departamento
 order by 1;

 SELECT *
 FROM funcionarios
 WHERE departamento = 'roupas' 
 or departamento = 'filmes';

 -- 2 --
 -- Analise --
 SELECT COUNT(*), sexo
 FROM funcionarios
 group by sexo;
 -- Feminino 491 --
 
 SELECT COUNT(*), departamento
 FROM funcionarios
 group by departamento;
 -- lar 52 | filmes 21 --

-- query --
SELECT nome, sexo, departamento
from funcionarios
where 
(departamento = 'filmes' and sexo = 'Feminino')
or
(departamento = 'lar' and sexo = 'Feminino');

-- 3 --
SELECT COUNT(*), sexo, departamento 
from funcionarios
group by sexo;

SELECT * FROM funcionarios
WHERE
SEXO = 'Masculino' or
departamento = 'Jardim';