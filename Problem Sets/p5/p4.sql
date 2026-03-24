SELECT DISTINCT e.nome, a.tipo
FROM espetadores e
JOIN bilhetes b ON b.email = e.email
JOIN espetaculos esp ON esp.id = b.id
JOIN artistas a ON a.nif = esp.artista
ORDER BY e.nome, a.tipo;
