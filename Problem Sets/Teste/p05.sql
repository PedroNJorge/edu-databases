/*
Obtenha o nome dos recintos situados no distrito de Aveiro
e em que se desenrolam atividades de teatro.
Os resultados devem ser ordenados pelo nome do recinto.
*/
SELECT r.nome
FROM recintos r
JOIN concelhos c ON r.concelho = c.cod
JOIN distritos d ON d.cod = c.distrito
JOIN usos u ON u.id = r.id
JOIN atividades a ON a.ref = u.ref
WHERE d.designacao = 'Aveiro'
AND a.atividade = 'teatro'
ORDER BY r.nome;
