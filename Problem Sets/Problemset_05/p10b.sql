/*
Quais os pares de pessoas (emails) que foram exatamente aos
mesmos espetáculos?

A_x := {id | x foi ao espetaculo}

Queremos:
A_x = A_y sse A_x ⊆ A_y e A_y ⊆ A_x
*/
SELECT DISTINCT b1.email AS x, b2.email AS y
FROM bilhetes b1
CROSS JOIN bilhetes b2
WHERE b1.email < b2.email
AND NOT EXISTS (
    SELECT 1
    FROM bilhetes b3
    WHERE b3.email = b1.email
    AND b3.id NOT IN (
        SELECT b4.id
        FROM bilhetes b4
        WHERE b4.email = b2.email
    )
)
AND NOT EXISTS (
    SELECT 1
    FROM bilhetes b4
    WHERE b4.email = b2.email
    AND b4.id NOT IN (
        SELECT b3.id
        FROM bilhetes b3
        WHERE b3.email = b1.email
    )
);
