WITH A AS (
    SELECT e.nome
    FROM espetadores e
    WHERE e.cidade = 'Porto'
UNION
    SELECT a.nome
    FROM artistas a
    WHERE a.tipo = 'pianista'
)
SELECT * FROM A ORDER BY nome;
