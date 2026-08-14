-- Dentre os clientes de janeiro/2025, quantos assistiram o curso de SQL?
WITH clientes_janeiro AS (
    SELECT DISTINCT(idCliente)
    FROM transacoes
    WHERE DtCriacao >= '2025-01-02'
        AND DtCriacao < '2025-02-01'
)
SELECT count(DISTINCT t2.idCliente) AS clientesCurso,
    count(DISTINCT t1.idCliente) AS clientesJaneiro
FROM clientes_janeiro AS t1
    LEFT JOIN transacoes AS t2 ON t1.idCliente = t2.idCliente
        AND t2.DtCriacao >= '2025-08-25'
        AND t2.DtCriacao < '2025-08-30';
