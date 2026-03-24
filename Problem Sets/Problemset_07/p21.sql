/*
Houve algum partido a vencer em todas as freguesias de um
concelho do distrito do Porto?
Indique código do concelho e sigla do partido.
*/
WITH top_partido_freg AS (
    SELECT cod, concelho, freg, partido
    FROM (
        SELECT
            c.codigo AS cod,
            c.nome AS concelho,
            f.nome AS freg,
            v.partido AS partido,
            SUM(v.votos) AS total_votos,
            ROW_NUMBER() OVER(
                PARTITION BY f.nome ORDER BY SUM(v.votos) DESC) as rnk_freg
        FROM concelhos c
        JOIN distritos d ON d.codigo = c.distrito
        JOIN freguesias f ON c.codigo = f.concelho
        JOIN votacoes v ON f.codigo = v.freguesia
        WHERE d.nome = 'Porto'
        GROUP BY c.nome, f.nome, v.partido) ranked
    WHERE ranked.rnk_freg = 1
    ORDER BY cod
),
grouped_partidos AS (
    SELECT
        cod,
        concelho,
        partido
    FROM top_partido_freg
    GROUP BY concelho, partido
)
SELECT cod, concelho, partido
FROM (
    SELECT cod, concelho, partido, COUNT(*) AS cnt
    FROM grouped_partidos
    GROUP BY concelho) x
WHERE x.cnt = 1;
