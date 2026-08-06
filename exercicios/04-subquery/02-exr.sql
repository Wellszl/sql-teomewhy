--quem iniciou o curso no primeiro dia, em média assistiu quantas aulas
WITH tb_primeiro_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),
tb_aulas AS (
    SELECT t1.idCliente,
        count(DISTINCT t2.IdTransacao) AS qteAulas
    FROM tb_primeiro_dia AS t1
        LEFT JOIN transacoes AS t2 ON t1.idCliente = t2.idCliente
        AND substr(t2.DtCriacao, 1, 10) BETWEEN '2025-08-25' AND '2025-08-29'
    GROUP BY t1.idCliente
)
SELECT round(avg(qteAulas), 2) AS media_aulas
FROM tb_aulas;