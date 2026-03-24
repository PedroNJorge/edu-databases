/*
Quantos votos teve cada partido em cada distrito?
*/
SELECT d.nome, SUM(v.votos)
FROM votacoes v
JOIN freguesias f ON v.freguesia = f.codigo
JOIN concelhos c ON c.codigo = f.concelho
JOIN distritos d ON d.codigo = c.distrito
GROUP BY d.nome;
