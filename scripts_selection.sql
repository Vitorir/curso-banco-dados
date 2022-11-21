Scripts de Seleção
1. Select * 
from Bens
where valor_financeiro = null and valor_sentimental = null;

2. Select b.valor, 
from Bens as B JOIN Historico as H
where h.data BETWEEN '2021/31/12'

3. Select u.id, u.nome, b.id, b.nome, b.valor_sentimental
from usuarios as u JOIN bens as b();

4. Select u.valor_patrimonial, u.evolucao_patrimonial
from usuarios as u JOIN bens as b ()
JOIN historico as h ()
where h.data