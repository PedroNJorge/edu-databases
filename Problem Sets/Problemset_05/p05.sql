/*
Liste os nomes de todas as pessoas, espetadores e artistas, desde que
os espetadores sejam do Porto e os artistas sejam pianistas.
*/
SELECT nome
FROM espetadores
WHERE cidade = 'Porto'

UNION

SELECT nome
FROM artistas
WHERE tipo = 'pianista';
