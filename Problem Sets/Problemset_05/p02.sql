/*
Quais os nomes e datas de nascimento dos pianistas registados?
Ordene o resultado por data de nascimento crescente.
*/
SELECT nome, d_nasce
FROM artistas
WHERE tipo = "pianista";
