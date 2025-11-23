/*
Qual a receita total por espetáculo? Indique o id, o título
e o valor total efetivo dos bilhetes
*/
SELECT e.id, e.titulo, SUM(b.custo) AS receita
FROM bilhetes b
JOIN espetaculos e ON b.id = e.id
GROUP BY e.id;
