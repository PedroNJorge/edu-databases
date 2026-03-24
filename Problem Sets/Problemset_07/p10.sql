/*
Quantos votos teve cada partido em cada concelho?
*/
SELECT c.nome, v.partido, SUM(v.votos) AS votos_total
FROM votacoes v
JOIN freguesias f ON f.codigo = v.freguesia
JOIN concelhos c ON c.codigo = f.concelho
GROUP BY c.nome, v.partido;
