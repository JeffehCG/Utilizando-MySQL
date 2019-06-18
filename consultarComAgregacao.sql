--Exibindo a população total de cada Regiao
SELECT
    regiao as 'Regiao',
    sum(populacao) as Total
FROM `estados`
GROUP BY regiao
ORDER BY Total DESC

--Exibindo a media da populacao por estado
SELECT
    avg(populacao) as Total
FROM `estados`