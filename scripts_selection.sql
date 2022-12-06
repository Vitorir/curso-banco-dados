Select idBem, nomeBem, dataCompra, valor
from bem
order by nomeBem desc;

Select * from bem
where nomeBem = 'Apartamento'
and taxaValorizacao is null;

-- 1 --
Select *
from bem as b JOIN bem_has_usuario as c ON (b.idBem = c.bem_idBem)
where b.valor is null and c.valorSentimental is null
order by b.nomeBem;

-- 2b --
select *
from usuario
JOIN Bem ON(usuario.idUsuario = bem.usuario.idUsuario)
JOIN historico ON(bem.idbem = historico.bem.idbem)
where YEAR(dataCompra) = (select year(datacompra)
from historico
where YEAR(dataCompra)
);

-- 2c --
select h.nomeBem, h.dataEspecifica, h.valor
FROM bem as b 
JOIN historico as h 
ON(b.idBem = h.idBem);

SELECT *
FROM bem as b
JOIN historico as h ON (b.idBem = h.idBem)
WHERE year(dataEspecifica) = year(dataCompra) - 1
;

Bem       Valor    31/12/2020    31/12/2021
Notebook   100        200             400

Id Bem, Desc, valor

left join
concatenar(concat) year now com 31/12 com -1
concatenar(concat) year now com 31/12 com -1

Hist1, valor1, data1 = 31/12/(ano-1)
Hist2, valor2, data2 = 31/12/(ano-2)

desc historico;

-- 3 --
Select u.idUsuario as 'id do usuario', u.nome as 'nome usuario', b.idBem as 'id do bem', b.nomeBem as 'nome do bem', c.valorSentimental as 'valor sentimental do bem'
from usuario as u join bem_has_usuario as c on(u.idUsuario = c.usuario_idUsuario)
JOIN bem as b on(b.idBem = c.bem_idBem);

-- 4 --
Select u.valor_patrimonial, u.evolucao_patrimonial
from usuario as u JOIN bens as b ()
JOIN historico as h ()
where h.data;

/*valor total atual de cada bem de cada usuario(JOIN)
e esse valor total menos o valor total no ano anterior do historico */