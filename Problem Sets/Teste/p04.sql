/*
Quantos concelhos existem por cada distrito?
Apresente a designação do distrito e o número de concelhos
(coluna chamada num) correspondente.
Os resultados devem ser ordenados tendo como primeiro critério
o número de concelhos de forma decrescente
e (para distritos com igual número de concelhos) 
a designação do distrito como segundo critério.
*/
SELECT d.designacao, COUNT(*) AS num
FROM concelhos c
JOIN distritos d ON d.cod = c.distrito
GROUP BY d.designacao
ORDER BY num DESC, d.designacao;
