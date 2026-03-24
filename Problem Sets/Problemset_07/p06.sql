/*
Quantos mandatos teve cada partido no distrito Porto, por ordem
decrescente dos mandatos.
*/
SELECT l.partido, l.mandatos
FROM listas l
JOIN distritos d ON d.codigo = l.distrito
WHERE d.nome = 'Porto'
ORDER BY l.mandatos DESC;
