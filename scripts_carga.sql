-- USUARIO --
INSERT INTO usuario
VALUES(DEFAULT, 'Vitor', 100000.00);
INSERT INTO usuario
VALUES(DEFAULT, 'Lucas', 50000.00);
INSERT INTO usuario
VALUES(DEFAULT, 'Giorgi', 50000.00);
INSERT INTO usuario
VALUES(DEFAULT, 'Alan', 125000.00);
INSERT INTO usuario
VALUES(DEFAULT, 'Fulano', 150000.00);

-- BEM --
INSERT INTO bem 
VALUES
(DEFAULT, NULL, 'Apartamento', '2020-12-31', 200000.00, 
	'Imovel', 'V', NULL, 15.00);

INSERT INTO bem
VALUES
(DEFAULT, NULL, 'Carro', '2020-12-31', 65000.00, 
	'Automovel', 'V', NULL, 20.00);

INSERT INTO bem
VALUES
(DEFAULT, 1, 'Amuleto', '2020-12-31', NULL,
	'Bijuteria', 'V', NULL, NULL);
    
INSERT INTO bem
VALUES
(DEFAULT, NULL, 'MacBook', '2020-12-31', '10000',
	'Computador/Notebook', 'V', NULL, 20.00);
    
INSERT INTO bem
VALUES
(DEFAULT, NULL, 'Dinheiro', '2020-12-31', 1000000,
	'Dinheiro-Depositado-Em-Banco', 'F', NULL, NULL);
    
INSERT INTO bem
VALUES
(DEFAULT, NULL, 'Aluguel', NULL, 15000,
'Extra', 'V', NULL, NULL);

-- bem_has_usuario --
INSERT INTO bem_has_usuario(  
  bem_idBem ,
  nomeBem ,
  usuario_idUsuario ,
  nomeUsuario ,
  percentualBem ,
  totalInvestido ,
  valorSentimental)
VALUES (1, 'Apartamento', 1, 'Vitor', 40.00, 80000.00, 'IMPORTANTE');
INSERT INTO bem_has_usuario
VALUES (1, 'Apartamento', 2, 'Lucas', 30.00, 60000.00, NULL);
INSERT INTO bem_has_usuario
VALUES (1, 'Apartamento', 3, 'Giorgi', 30.00, 60000.00, NULL);

INSERT INTO bem_has_usuario
VALUES (2, 'Carro', 1, 'Vitor', 50.00, 32500.00, NULL);
INSERT INTO bem_has_usuario
VALUES (2, 'Carro', 2, 'Lucas', 25.00, 16250.00, 'IMPORTANTE');
INSERT INTO bem_has_usuario
VALUES (2, 'Carro', 3, 'Giorgi', 25.00, 16250.00, NULL);

INSERT INTO bem_has_usuario
VALUES(3, 'Amuleto', 1, 'Vitor', NULL, NULL, NULL);

INSERT INTO bem_has_usuario
VALUES(4, 'Macbook', 1, 'Vitor', 15.00, 1575.00, NULL);
INSERT INTO bem_has_usuario
VALUES(4, 'Macbook', 2, 'Lucas', 15.00, 1575.00, NULL);
INSERT INTO bem_has_usuario
VALUES(4, 'Macbook', 3, 'Giorgi', 70.00, 7350.00, 'IMPORTANTE');


-- historico -- 
INSERT INTO historico (
idHistorico,
idBem,
nomeBem,
dataEspecifica,
valor)
VALUES(DEFAULT, 1, 'Apartamento', '2020-12-31', 200000.00);
INSERT INTO historico 
VALUES(DEFAULT, 1, 'Apartamento', '2021-12-31', 230000.00);
INSERT INTO historico 
VALUES(DEFAULT, 1, 'Apartamento', '2022-12-31', 264500.00);

INSERT INTO historico 
VALUES(DEFAULT, 2, 'Carro', '2020-12-31', 65000.00);
INSERT INTO historico 
VALUES(DEFAULT, 2, 'Carro', '2021-12-31', 52000.00);
INSERT INTO historico 
VALUES(DEFAULT, 2, 'Carro', '2022-12-31', 41600.00);

INSERT INTO historico 
VALUES(DEFAULT, 4, 'Macbook', '2020-12-31', 10000.00);
INSERT INTO historico 
VALUES(DEFAULT, 4, 'Macbook', '2021-12-31', 8000.00);
INSERT INTO historico 
VALUES(DEFAULT, 4, 'Macbook', '2022-12-31', 6400.00);