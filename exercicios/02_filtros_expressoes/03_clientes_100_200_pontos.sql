--lista de clientes de 100 a 200 pontos, campos inclusos
SELECT idCliente,
    qtdePontos
FROM clientes
WHERE qtdePontos >= 100
    AND QtdePontos <= 200