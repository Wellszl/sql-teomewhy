-- Como foi a curva de churn do curso?
WITH clientesDiaUm AS (
    SELECT idCliente
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
        AND DtCriacao < '2025-08-26'
)
SELECT count(DISTINCT t1.idCliente) AS qteCliente,
    substr(t2.DtCriacao, 1, 10) AS Dias
FROM clientesDiaUm AS t1
    LEFT JOIN transacoes AS t2 ON t1.idCliente = t2.idCliente
WHERE t2.DtCriacao >= '2025-08-25'
    AND t2.DtCriacao < '2025-08-30'
GROUP BY Dias;
