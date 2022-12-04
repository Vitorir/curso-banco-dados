Scripts de Seleção

Select idBem, nomeBem, dataCompra, valor
from bem
order by nomeBem desc;

Select * from bem
where nomeBem = 'Apartamento'
and taxaValorizacao is null;

-- 1 OK--
1. Select * 
from bem
where valor is null and valorSentimental is null
order by nomeBem;

-- 2 --
/* 2 subselects, 2 joins, um para cada data(2021 e 2020) */
2. Select b.valor, 
from Bem
where year(dataCompra) >= year(dataCompra) - 2);

2b. Select b.valor, 
from Bem
where dataCompra BETWEEN ;

select year(dataCompra) as ano
from bem;

-- 3 --
3. Select u.id, u.nome, b.id, b.nome, b.valor_sentimental
from usuarios as u JOIN bens as b();

-- 4 --
4. Select u.valor_patrimonial, u.evolucao_patrimonial
from usuarios as u JOIN bens as b ()
JOIN historico as h ()
where h.data