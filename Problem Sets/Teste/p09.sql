/*
Quais são os pares distrito-atividade tais que
no distrito existe pelo menos um recinto
usada para a atividade em causa?
Apresente a designação do distrito e a atividade,
ordenada primeiro por designação por distrito e depois por atividade.
*/
SELECT d.designacao, a.atividade
FROM distritos d
CROSS JOIN atividades a
WHERE EXISTS (
    SELECT 1
    FROM recintos r
    JOIN concelhos c ON c.cod = r.concelho
    WHERE c.distrito = d.cod
    AND EXISTS (
        SELECT 1
        FROM usos u
        JOIN atividades a1 ON u.ref = a1.ref
        WHERE u.id = r.id
        AND a1.atividade = a.atividade
    )
)
ORDER BY d.designacao, a.atividade;
