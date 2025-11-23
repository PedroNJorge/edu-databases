/*
Quem (email) nunca se encontrou com a rita@fe.up.pt em nenhum
espetáculo?
*/
SELECT DISTINCT b1.email
FROM bilhetes b1
WHERE NOT EXISTS (
    SELECT b2.email
    FROM bilhetes b2
    WHERE b2.email = 'rita@fe.up.pt'
    AND b2.id = b1.id
);
