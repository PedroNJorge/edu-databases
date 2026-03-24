/*
Qual o código da freguesia onde nasceu (ou onde reside, caso tenha
nascido fora de Portugal)?
*/
SELECT codigo, nome
FROM freguesias
WHERE nome LIKE '%Ramalde%';
