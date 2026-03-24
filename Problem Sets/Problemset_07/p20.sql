/*
Para cada distrito indique qual o seu nome
e a designação e número de votos do partido
que nele teve melhor votação
*/
SELECT x.nome, x.design, num_votos
FROM (
    SELECT 
        d.nome,
        p.designacao AS design,
        SUM(v.votos) AS num_votos,
        RANK() OVER(
            PARTITION BY d.nome ORDER BY SUM(v.votos) DESC) as rnk 
    FROM partidos p
    JOIN votacoes v ON v.partido = p.sigla
    JOIN freguesias f ON f.codigo = v.freguesia
    JOIN concelhos c ON c.codigo = f.concelho
    JOIN distritos d ON d.codigo = c.distrito
    GROUP BY d.nome, p.designacao
    ORDER BY d.nome ASC) x
WHERE x.rnk = 1;
