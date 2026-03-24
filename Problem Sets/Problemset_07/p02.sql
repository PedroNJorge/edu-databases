/*
Quais os resultados obtidos por cada partido na freguesia Ramalde?
*/
SELECT v.partido, v.votos
FROM votacoes v
JOIN freguesias f ON v.freguesia = f.codigo
WHERE f.nome LIKE '%Ramalde%'
ORDER BY v.votos DESC;
