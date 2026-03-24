/*
Houve algum partido a vencer em todos os concelhos de um distrito?
Indique código e nome do distrito e sigla do partido.
*/
WITH PARTIDO_FREG AS (
    SELECT *
    FROM (
        SELECT
            d.codigo,
            d.nome,
            c.nome,
            f.nome,
            v.partido,
            SUM(v.votos),
            RANK() OVER (
                PARTITION BY f.nome
                ORDER BY SUM(v.votos) DESC) AS rnk
        FROM distritos d
        JOIN concelhos c ON d.codigo = c.distrito
        JOIN freguesias f ON c.codigo = f.concelho
        JOIN votacoes v ON f.codigo = v.freguesia
        WHERE d.codigo = 1
        GROUP BY d.codigo, d.nome, c.nome, f.nome, v.partido
        ORDER BY d.codigo
    ) x
)
SELECT * FROM PARTIDO_FREG;
