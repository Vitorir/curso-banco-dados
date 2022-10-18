-- mysql -u root -p -- 

/* Modelagem Básica */
NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* Processos de Modelagem */
Fase 01 e 02 - AD ADM de Dados
- Modelagem Conceitual: rascunho
- Modelagem Lógica: UML
Fase 03 - DBA ou AD
- Modelagem Física: Scripts de Banco

/* Área de BD ->
OLTP ----------------------------------- OLAP
AD, DBA, Tunning(Analista de Perfomance), BI(passado), DSA(futuro) */


/* VERIFICANDO TABELAS */
SHOW TABLES;

CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CLIENTE (
	IdCliente int primary key AUTO_INCREMENT,
	Nome varchar(30) not null,
	Sexo enum('M', 'F') not null,
	CPF INT(11),
	email varchar(30),
	Telefone varchar(30),
	Endereco varchar(100)
);

CREATE TABLE CLIENTE (
	Nome varchar(30) not null,
	Sexo enum('M', 'F') not null,
	CPF INT(11),
	email varchar(30),
	Telefone varchar(30),
	Endereco varchar(100)
);

/* DESCOBRINDO A ESTRUTURA DE UMA TABELA */
DESC CLIENTE;


CREATE TABLE ENDERECO (
IdCliente foreign key,
Rua varchar(45),
Logradouro varchar(45),
Cidade varchar(45),
UF varchar(2),
Numero int
);


/* INSERT */
INSERT INTO CLIENTE VALUES(NULL, 'PAULA', 'M', NULL, '777');
INSERT INTO ENDERECO VALUES(
	NULL, 'RUA JOAQUIM SILVA', 'ALVORADA', 'NITEROI', 'RJ', 7);

/* alterar valor - update (não esquecer do where) */
SELECT TITULO, PRECO * 1.1 as NOVO_PRECO
FROM LIVRO

"saber modelo de entidade, normalização, fazer um select rápido"
-----------------------------------------------------------------
Curso-banco-dados-01
Banco de Dados = Teoria dos Conjuntos
CREATE TABELA CLIENTE(
IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(30) NOT NULL,
SEXO ENUM('M', 'F') NOT NULL
);


/* Seleções e Projeções*/
SELECT * FROM CLIENTE;

/* FILTRANDO DADOS COM WHERE E LIKE */
SELECT NOME, TELEFONE FROM CLIENTE;

/* FILTRANDO */
SELECT NOME, SEXO FROM CLIENTE 
WHERE SEXO = 'M';

/* Utilizando o LIKE: pesquisar */
SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'RJ';

/* CARACTER CORINGA  % -> Qualquer Coisa*/
SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ'; -- Começa com % e termina com RJ --

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%_____CENTRO%';


---------------------------------------------------------------------------
Entendendo a Foreign Key
-- Os relacionamentos vão depender do tipo de negócio, nas regras de negócio --
-- Em regra, relacionamento de 1 para 1, a chave estrangeira fica na tabela mais fraca --
-- Em relacionamento de 1 para n, a chave estrangeira fica no lado n --
-- todo campo vetorizado vira outra tabela -- 
-----------------------------------------------------------
SELECT * FROM tbl_livro;

UPDATE tbl_livro
SET precoLivro = PrecoLivro + 1.5
WHERE idEditora = 
	(SELECT idEditora
	FROM tbl_editora
	WHERE NomeEditora = 'Microsoft Press');