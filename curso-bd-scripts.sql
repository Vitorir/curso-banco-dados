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
AD, DBA, Tunning(Analista de Perfomance), BI(passado), DTS(futuro) */



/* VERIFICANDO TABELAS */
SHOW TABLES;

CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CLIENTE (
	IdCliente int primary key AUTO_INCREMENT,
	Nome varchar(30) not null,
	Sexo enum('M', 'F') not null,
	EMAIL varchar(50) UNIQUE,
	CPF VARCHAR(15) UNIQUE
);

/* DESCOBRINDO A ESTRUTURA DE UMA TABELA */
DESC CLIENTE;


CREATE TABLE ENDERECO (
IDENDERECO int(11) not null PRIMARY KEY AUTO_INCREMENT,
RUA VARCHAR(30) not null,
BAIRRO VARCHAR(30) NOT NULL,
CIDADE VARCHAR(30) NOT NULL,
ESTADO CHAR(2) NOT NULL,
ID_CLIENTE INT UNIQUE,
FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTE(ID_CLIENTE)
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
/* Chave Estrangeira é a chave primária de uma tabela que vai a outra
 fazer referência entre registros */
-- Os relacionamentos vão depender do tipo de negócio, nas regras de negócio --
/* Em regra, relacionamento de 1 para 1, a chave estrangeira fica 
na tabela mais fraca */
-- Em relacionamento de 1 para n, a chave estrangeira fica no lado n --
-- todo campo vetorizado vira outra tabela -- 

CONSTRAINT fk_id_Autor FOREIGN KEY (ID_AUTOR)
REFENCES tbl_autores(ID_AUTOR)
---------------------------------------------------------------------
-- SUBSELECT --
SELECT * FROM tbl_livro;

UPDATE tbl_livro
SET precoLivro = PrecoLivro + 1.5
WHERE idEditora = 
	(SELECT idEditora
	FROM tbl_editora
	WHERE NomeEditora = 'Microsoft Press');


--------------- INSERTS ------------------
/*
show databases;
use -database-;
show tables;
DESC tabela;

 */
INSERT INTO CLIENTE 
VALUES(NULL,'JOAO', 'M', 'joao@gmail.com', '5487984846984');

INSERT INTO CLIENTE 
VALUES(NULL,'CARLOS', 'M', 'CARLOS@gmail.com', '6519596515');

INSERT INTO CLIENTE 
VALUES(NULL,'ANA', 'F', 'ANA@gmail.com', '5498191856165');

INSERT INTO CLIENTE 
VALUES(NULL,'CLARA', 'F', NULL, '5487984846984');

INSERT INTO CLIENTE 
VALUES(NULL,'JORGE', 'M', 'JORGE@gmail.com', '1561861168');

INSERT INTO CLIENTE 
VALUES(NULL,'CELIA', 'F', 'CELIA@gmail.com', '5561654561');
-----------------------------------------------------------------
DESC ENDERECO;
INSERT INTO ENDERECO 
VALUES(NULL, 'RUA ANTONIO SA', "CENTRO", 'B. HORIZONTE', "MG", 45);

INSERT INTO ENDERECO 
VALUES(NULL, 'RUA CAPITAO HERMES', "CENTRO", 'RIO DE JANEIRO', "RJ", 1);

INSERT INTO ENDERECO 
VALUES(NULL, 'RUA PRESIDENTE VARGAS', "JARDINS", 'SAO PAULO', "SP", 3);

INSERT INTO ENDERECO 
VALUES(NULL, 'RUA ALFANDEGA', "ESTACIO", 'B. HORIZONTE', "RJ", 2);

INSERT INTO ENDERECO 
VALUES(NULL, 'RUA DO OUVIDOR', "CENTRO", 'B. HORIZONTE', "MG", 5);

INSERT INTO ENDERECO 
VALUES(NULL, 'RUA URUGUAIANA', "CENTRO", 'B. HORIZONTE', "MG", 5);

----------------------------------------------------------------
