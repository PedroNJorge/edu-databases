/*
Qual o código e o nome do distrito da freguesia Ramalde?
*/
SELECT d.codigo, d.nome
FROM distritos d
JOIN concelhos c ON d.codigo = c.distrito
JOIN freguesias f ON c.codigo = f.concelho
WHERE f.nome = 'Ramalde';
