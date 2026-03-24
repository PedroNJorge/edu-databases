/*
Quais os nomes dos concelhos do distrito
com maior número de votantes
*/
WITH max_votantes AS (
    SELECT d.codigo AS cod
    FROM distritos d
    JOIN participacoes p ON d.codigo = p.distrito
    ORDER BY p.votantes DESC
    LIMIT 1
)
SELECT c.nome
FROM concelhos c
WHERE c.distrito = (SELECT cod FROM max_votantes);
