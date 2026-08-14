-- Exercício 12: Conte quantos clientes existem no total (COUNT(*)) e, em outra query, conte quantos clientes têm flInstagram = 1.
SELECT count(*)
FROM clientes;

SELECT count(flInstagram)
FROM clientes
WHERE flInstagram = 1;
