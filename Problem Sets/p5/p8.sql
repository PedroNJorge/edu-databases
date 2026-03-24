WITH SHOWS_RITA AS (
    SELECT b.id
    FROM bilhetes b
    WHERE b.email = 'rita@fe.up.pt'
)
SELECT DISTINCT b.email
FROM bilhetes b
WHERE NOT EXISTS (
    SELECT 1
    FROM bilhetes b1
    WHERE b1.email = b.email
    AND b1.id IN SHOWS_RITA
)
