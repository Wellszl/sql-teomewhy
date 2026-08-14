-- Exercício 9: Liste os clientes cuja qtdePontos seja maior que 1000, ordenados do maior número de pontos pro menor.
SELECT *
FROM clientes
WHERE qtdePontos > 1000
ORDER BY qtdePontos DESC;
