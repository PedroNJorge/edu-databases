/*
Quais os partidos que tiveram zero mandatos
em todos os distritos com “o” (maiúsculo ou minúsculo)
no nome?

We want to condition on:
∀d ∈ D₀, mandatos = 0
≡ ¬∃d ∈ D₀ : mandatos > 0
*/
WITH D_o AS (
    SELECT d.codigo
    FROM distritos d
    WHERE d.nome LIKE '%o%'
)
SELECT DISTINCT l.partido
FROM listas l
WHERE NOT EXISTS (
    SELECT 1
    FROM D_o d
    WHERE d.codigo = l.distrito
    AND l.mandatos > 0
);
