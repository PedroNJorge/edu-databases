/*
Quais os nomes e lotações dos recintos com lotaçãos
entre 1000 a 2000 lugares?
Os resultados devem ser ordenados pelo nome do recinto.
*/
SELECT r.nome, r.lotacao
FROM recintos r
WHERE r.lotacao >= 1000
AND r.lotacao <= 2000
ORDER BY r.nome;
