/*
Quais as freguesias da região ‘M´ que, para o partido PSN,
deram um número zero de votos? Liste código e nome da freguesia.
*/
SELECT f.codigo, f.nome
FROM freguesias f
JOIN concelhos c ON c.codigo = f.concelho
JOIN distritos d ON d.codigo = c.distrito
JOIN votacoes v ON f.codigo = v.freguesia
WHERE d.regiao = 'M'
AND v.partido = 'PSN'
AND v.votos = 0;
