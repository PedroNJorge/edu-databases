/*
Quantas freguesias têm “Vilar” no nome?
*/
SELECT COUNT(codigo)
FROM freguesias
WHERE nome LIKE '%Vilar%';
