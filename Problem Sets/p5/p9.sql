WITH RITA_SHOWS AS (
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
    AND b.id NOT IN RITA_SHOWS
);
