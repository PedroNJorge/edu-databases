/*
Indique, sem repetições, os pares nome de espetador, tipo de artista
principal dos espetáculos de que aquele comprou bilhete. Ordene por
espetador e tipo de artista
*/
SELECT DISTINCT A.nome, D.tipo
FROM espetadores A
JOIN bilhetes B ON A.email = B.email
JOIN espetaculos C ON B.id = C.id
JOIN artistas D ON C.artista = D.nif
ORDER BY A.nome ASC, D.tipo ASC;
