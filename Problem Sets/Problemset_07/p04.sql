/*
Quais as freguesias do concelho de Espinho?
*/
SELECT f.nome
FROM freguesias f
JOIN concelhos c ON c.codigo = f.concelho
WHERE c.nome = 'Espinho';
