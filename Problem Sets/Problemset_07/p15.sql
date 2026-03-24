/*
Qual o número médio de freguesias por concelho?
*/
SELECT AVG(num_freg) AS media_freg
FROM (
    SELECT COUNT(f.concelho) AS num_freg
    FROM freguesias f
    JOIN concelhos c ON c.codigo = f.concelho
    GROUP BY c.nome
);
