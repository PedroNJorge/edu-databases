/*
Quais os títulos, dias e horas dos espetáculos registados na BD?
Ordene por dia, hora e título.
*/
SELECT titulo, dia, hora
FROM espetaculos
ORDER BY dia ASC, hora ASC, titulo ASC;
