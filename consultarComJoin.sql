SELECT 
e.nome as Estado, 
c.nome as Cidade,
regiao as Região 
FROM estados e, cidades c
WHERE e.id = c.estado_id;

--Outra forma
SELECT 
e.nome as Estado, 
c.nome as Cidade,
regiao as Região 
FROM estados e
INNER JOIN cidades c on e.id = c.estado_id;
