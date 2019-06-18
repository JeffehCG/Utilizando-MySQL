--PS... esses comandos não iram funcionar pelo vscode , apenas pelo workbench
--Plugin do vscode para mysql tem algumas limitações

SELECT * FROM prefeitos;
SELECT * FROM cidades;

--INNER JOIN - Trazendo apenas os dados com intersecção entre as duas tabelas
SELECT * FROM cidades c INNER JOIN prefeitos p on c.id = p.cidade_id;

--LEFT JOIN - Trazendo todos os dados da tabela cidades, mais os dados com intersecção
SELECT * FROM cidades c LEFT JOIN prefeitos p on c.id = p.cidade_id;

--RIGHT JOIN - Trazendo todos os dados da tabela prefeitos, mais os dados com intersecção
SELECT * FROM cidades c RIGHT JOIN prefeitos p on c.id = p.cidade_id; 

--FULL JOIN - Trazendo todos os dados de ambas tabelas (Mysql não suporta esse comando, então a maneira abaixo é uma adaptação)
SELECT * FROM cidades c LEFT JOIN prefeitos p on c.id = p.cidade_id;
UNION
SELECT * FROM cidades c RIGHT JOIN prefeitos p on c.id = p.cidade_id; 