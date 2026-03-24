/*
Quantos votos teve cada partido globalmente?
*/
SELECT v.partido, SUM(v.votos)
FROM votacoes v
GROUP BY v.partido;
