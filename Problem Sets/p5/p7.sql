SELECT 
    e.id,
    e.titulo,
    SUM(b.custo) AS efetivo,
    COUNT(b.id) * e.preco AS receita
FROM espetaculos e
JOIN bilhetes b ON b.id = e.id
GROUP BY e.id, e.titulo;
