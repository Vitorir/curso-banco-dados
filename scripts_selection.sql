Scripts de Seleção

Select idBem, nomeBem, dataCompra, valor
from bem
order by nomeBem desc;

Select * from bem
where nomeBem = 'Apartamento'
and taxaValorizacao is null;

-- 1 --
1. Select * 
from bem
where valor is null and valorSentimental is null
order by nomeBem;

-- 2 --
2. Select b.valor, 
from Bem
where YEAR(dataCompra) >= YEAR(dataCompra) - 2);

2b. Select b.valor, 
from Bem
where dataCompra BETWEEN ;

select year

-- 3 --
3. Select u.id, u.nome, b.id, b.nome, b.valor_sentimental
from usuarios as u JOIN bens as b();

-- 4 --
4. Select u.valor_patrimonial, u.evolucao_patrimonial
from usuarios as u JOIN bens as b ()
JOIN historico as h ()
where h.data