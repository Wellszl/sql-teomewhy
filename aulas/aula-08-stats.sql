SELECT idCliente,
    round(avg(qtdePontos), 2) AS 'Mèdia',
    min(qtdePontos) AS 'Menor valor',
    max(qtdePontos) AS 'maior valor'
FROM clientes;