/*
Indique o nome do distrito, o número de votantes e o número de
abstenções, mas só no caso de nesse distrito
o número de abstenções ser superior a 75% do número de votantes.
*/
SELECT d.nome, p.votantes, p.abstencoes
FROM distritos d
JOIN participacoes p ON d.codigo = p.distrito
WHERE p.abstencoes > p.votantes * 0.75;
