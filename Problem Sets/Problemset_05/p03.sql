/*
Relativamente a cada artista, liste o seu nome e o dia e o título dos
espetáculos em que foi o artista principal. Ordene o resultado por nome
crescente e por data decrescente.
*/
SELECT a.nome, e.dia, e.titulo
FROM artistas a
JOIN espetaculos e ON a.nif = e.artista
ORDER BY a.nome ASC, e.dia DESC;
