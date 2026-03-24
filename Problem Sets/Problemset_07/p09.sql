/*
Quais os partidos que não concorreram no distrito de Lisboa
*/
SELECT p.sigla, p.designacao
FROM partidos p
WHERE p.sigla NOT IN (
    SELECT l.partido
    FROM distritos d
    JOIN listas l ON d.codigo = l.distrito
    WHERE d.nome = 'Lisboa'
);
