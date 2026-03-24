/*
Quais os totais de votos a nível nacional dos 5 maiores partidos?
*/
SELECT v.partido, SUM(v.votos) AS total_votos
FROM votacoes v
GROUP BY v.partido
ORDER BY total_votos DESC
LIMIT 5;
