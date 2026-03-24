/*
Quais as designações de concelhos que têm
pelo menos um recinto e
em que todos os recintos situados no concelho
são usados para a atividade de cinema?
Ordene os resultados por designação de concelho.
*/
WITH recintos_por_concelho AS (
    SELECT
        c.designacao AS nome,
        c.cod AS cod,
        COUNT(r.id) AS cnt
    FROM concelhos c
    JOIN recintos r ON r.concelho = c.cod
    GROUP BY c.designacao
)
SELECT c.nome, r1.id, a1.atividade
FROM recintos_por_concelho c
JOIN recintos r1 ON r1.concelho = c.cod
JOIN usos u1 ON u1.id = r1.id
JOIN atividades a1 ON a1.ref = u1.ref
WHERE c.cnt >= 1
/*
AND NOT EXISTS (
    SELECT 1
    FROM recintos r
    JOIN usos u ON u.id = r.id
    JOIN atividades a ON a.ref = u.ref
    WHERE r.concelho = c.cod
    AND a.atividade != 'cinema'
)
*/
ORDER BY c.nome;
