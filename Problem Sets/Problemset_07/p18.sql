/*
Qual o partido que registou o maior número de votos
numa só freguesia? Indique a sigla do partido,
o nome da freguesia e os votos correspondentes
*/
SELECT
    v.partido,
    f.nome,
    SUM(v.votos) AS num_votos
FROM votacoes v
JOIN freguesias f ON v.freguesia = f.codigo
GROUP BY f.nome, v.partido
ORDER BY num_votos DESC
LIMIT 1;
