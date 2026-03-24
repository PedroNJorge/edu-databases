SELECT e.id, e.titulo, SUM(b.custo) AS receita_total
FROM espetaculos e
JOIN bilhetes b ON b.id = e.id
GROUP BY e.id, e.titulo
ORDER BY e.id;
