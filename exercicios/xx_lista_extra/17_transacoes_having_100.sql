-- Exercício 17: Mostre quantas transações cada cliente (IdCliente) tem na tabela transacoes, mas liste apenas os clientes com mais de 100 transações (GROUP BY + HAVING).
SELECT idCliente,
    count(IdTransacao) AS quantidade_transacoes
FROM transacoes
GROUP BY idCliente
HAVING count(IdTransacao) > 100;