/*
Qual é o tipo de recinto mais frequente em cada concelho?
Apresente a designação do concelho,
a descrição do tipo de recinto,
e o número de recintos (do mais freq) (coluna "num")
apenas para casos em que o número de recintos 
é igual ou superior a 4 (num >= 4).
Note que pode haver mais do que uma atividade
com a frequência máxima num concelho
e nesse caso devem ser apresentadas todas essas atividades.
Os resultados devem ser ordenados pela designação do concelho.
*/
WITH tipo_freq AS (
    SELECT
        c.designacao,
        t.descricao,
        COUNT(r.id) AS num,
        RANK() OVER (
            PARTITION BY c.designacao
            ORDER BY COUNT(r.id) DESC) as rnk
    FROM concelhos c
    JOIN recintos r ON r.concelho = c.cod
    JOIN tipos t ON t.tipo = r.tipo
    GROUP BY c.designacao, t.descricao
)
SELECT x.designacao, x.descricao, x.num
FROM tipo_freq as x
WHERE rnk = 1
AND num >= 4
ORDER BY x.designacao;
