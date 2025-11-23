/*
Quem (email) nunca foi a nenhum espetáculo a que a rita@fe.up.pt não
tivesse ido?
*/
SELECT DISTINCT b1.email
FROM bilhetes b1
WHERE NOT EXISTS (
    SELECT 1
    FROM bilhetes b2
    WHERE b2.email = b1.email
    AND b2.id NOT IN (
        SELECT rita.id
        FROM bilhetes rita
        WHERE rita.email = 'rita@fe.up.pt'
    )
);
