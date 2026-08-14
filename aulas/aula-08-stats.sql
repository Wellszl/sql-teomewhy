SELECT idCliente,
    round(avg(qtdePontos), 2) AS 'Média',
    min(qtdePontos) AS 'Menor valor',
    max(qtdePontos) AS 'Maior valor'
FROM clientes;
