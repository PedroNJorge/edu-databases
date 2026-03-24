/*
Quais os concelhos diferentes do mesmo distrito
com o mesmo número de freguesias?
Indique o código do distrito, e os nomes dos
concelhos, sem repetições do tipo (A,B) e (B,A).
*/
WITH freg_por_concelho AS (
    SELECT
        c.codigo AS concelho, 
        COUNT(f.concelho) AS num_freg
    FROM concelhos c
    JOIN freguesias f ON c.codigo = f.concelho
    GROUP BY concelho
)
SELECT c1.distrito, c1.nome, c2.nome
FROM concelhos c1
JOIN concelhos c2 ON c1.distrito = c2.distrito
JOIN freg_por_concelho f1 ON c1.codigo = f1.concelho
JOIN freg_por_concelho f2 ON c2.codigo = f2.concelho
WHERE c1.nome < c2.nome
AND f1.num_freg = f2.num_freg
ORDER BY c1.distrito, c1.nome;
/*
SELECT c1.nome, c2.nome
FROM concelhos c1
CROSS JOIN concelhos c2
WHERE c1.distrito = c2.distrito
AND c1.nome < c2.nome
AND (
    SELECT COUNT(*)
    FROM freguesias f1
    WHERE f1.concelho = c1.codigo
) = (
    SELECT COUNT(*)
    FROM freguesias f2
    WHERE f2.concelho = c2.codigo
);
*/
