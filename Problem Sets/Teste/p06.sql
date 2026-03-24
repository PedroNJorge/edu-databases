/*
Quantos recintos de tipo "Cinema" existem por distrito
e qual a lotação máxima desses recintos
(os de "tipo" Cinema) também por distrito?
Apresente resultados apenas para distritos
com 7 ou mais recintos compreendendo:
a designação dos distritos,
o correspondente número de recintos (coluna "num")
e a lotação máxima (coluna "max").
Os resultados devem ser ordenados pela designação do distrito.
*/
SELECT d.designacao, COUNT(r.id) AS num, MAX(r.lotacao) AS max
FROM recintos r
JOIN concelhos c ON c.cod = r.concelho
JOIN distritos d ON d.cod = c.distrito
JOIN tipos t ON t.tipo = r.tipo
WHERE t.descricao = 'Cinema'
GROUP BY d.designacao
HAVING num >= 7
ORDER BY d.designacao;
