/*
Quais os nomes, lotações e moradas dos recintos cuja morada
contém a palavra 'PARQUE'?
Os resultados devem ser ordenados tendo como
primeiro critério a lotação de forma decrescente
e como segundo critério (para recintos com a mesma lotação)
o nome do recinto.
*/
SELECT r.nome, r.lotacao, r.morada
FROM recintos r
WHERE r.morada LIKE '%PARQUE%'
ORDER BY r.lotacao DESC, r.nome;
