/*
Qual o id e título dos espetáculos com receita inferior ou igual a 50%
do previsível se todos pagassem o preço de referência?
*/
SELECT e.id, e.titulo
FROM espetaculos e
JOIN bilhetes b ON b.id = e.id
GROUP BY e.id
HAVING SUM(b.custo) <= (e.preco * COUNT(b.id)) * 0.5;
