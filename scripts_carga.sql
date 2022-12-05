-- Scripts de Carga --
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


alter table bem
modify column valor decimal(10,2);

-- o que fazer se valoriza -- 
INSERT INTO bem 
VALUES
(DEFAULT, 1, 'Apartamento', '2020-07-17', 200000.00, 
	'Imovel', 'V', NULL, 15.00);

INSERT INTO bem
VALUES
(DEFAULT, 2, 'Carro', '2017-03-15', 65000.00, 
	'Automovel', 'V', NULL, 20.00);

INSERT INTO bem
VALUES
(DEFAULT, NULL, 'Amuleto', '2002-01-05', NULL,
	'Bijuteria', 'V', NULL, NULL);


INSERT into historico
VALUES
(DEFAULT, 1, 'Apartamento', '2022-01-01', 200200.00);