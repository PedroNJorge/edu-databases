/*
Para recintos com lotação inferior ou igual a 50,
obtenha o nome dos recintos,
a respectiva lotação e a designação do concelho
onde se situa o recinto.
Os resultados devem ser ordenados pelo nome do recinto.
*/
SELECT r.nome, r.lotacao, c.designacao
FROM recintos r
JOIN concelhos c ON r.concelho = c.cod
WHERE r.lotacao <= 50
ORDER BY r.nome;
