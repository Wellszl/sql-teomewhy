SELECT idCliente,
    round(avg(qtdePontos), 2) AS 'Media',
    min(qtdePontos) AS 'Menor valor',
    max(qtdePontos) AS 'maior valor'
FROM clientes;