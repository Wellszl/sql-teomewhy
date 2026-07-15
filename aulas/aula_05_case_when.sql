-- intervalos
-- 0 a 500 = bronze
-- 501 a 1000 = prata
-- 1001 a 1500 = ouro
-- 1500 ou + = diamante
SELECT idCliente,
    qtdePontos,
    CASE
        WHEN qtdePontos <= 500 THEN 'bronze'
        WHEN qtdePontos <= 1000 THEN 'prata'
        WHEN qtdePontos <= 1500 THEN 'ouro'
        ELSE 'diamante'
    END AS rank
FROM clientes
ORDER BY qtdePontos DESC