/*
Quais são os concelhos e respetivos distritos,
tal que os concelhos não têm recintos
de tipo com descrição "Cinema" ou "Cine-Teatro"?
Apresente a designação dos concelhos
e a correspondente designação do distrito.
Os resultados devem ser ordenados pela designação do concelho
*/
SELECT c.designacao, d.designacao
FROM concelhos c
JOIN distritos d ON d.cod = c.distrito
WHERE NOT EXISTS (
    SELECT 1
    FROM recintos r
    JOIN tipos t ON r.tipo = t.tipo
    WHERE r.concelho = c.cod
    AND t.descricao IN ('Cinema', 'Cine-Teatro')
)
ORDER BY c.designacao;
