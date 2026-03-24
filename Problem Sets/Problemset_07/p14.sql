/*
Qual o concelho com mais freguesias do país?
E qual o distrito com mais concelhos?
*/
SELECT * FROM (
    SELECT c.nome, COUNT(f.concelho) AS num_freg
    FROM concelhos c
    JOIN freguesias f ON c.codigo = f.concelho
    GROUP BY c.nome
    ORDER BY num_freg DESC
    LIMIT 1
)

UNION

SELECT * FROM (
    SELECT d.nome, COUNT(c.distrito) AS num_concelho
    FROM distritos d
    JOIN concelhos c ON d.codigo = c.distrito
    GROUP BY d.nome
    ORDER BY num_concelho DESC
    LIMIT 1
);
