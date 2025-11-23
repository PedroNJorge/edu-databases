/*
Quem (email) foi a todos os espetáculos do Pedro Burmester?

S := {id | Espetaculo do Pedro Burmester}
A_x := {id | Pessoa x foi ao show}

Queremos:
∀s, (s ∈ S → s ∈ A_x) ≡ ¬∃s: (s ∈ P and s ¬∈ A_x)
*/
SELECT DISTINCT b1.email
FROM bilhetes b1
WHERE NOT EXISTS (
    SELECT 1
    FROM espetaculos e
    JOIN artistas a ON e.artista = a.nif
    WHERE a.nome = 'Pedro Burmester'
    AND e.id NOT IN (
        SELECT b2.id
        FROM bilhetes b2
        WHERE b2.email = b1.email
    )
);
