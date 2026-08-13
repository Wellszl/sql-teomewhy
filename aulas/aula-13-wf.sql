WITH qteTransacoes AS (
    SELECT substr(DtCriacao, 1, 10) AS dtCriacao,
        count(DISTINCT IdTransacao) AS qtdTransacoes
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) >= '2025-08-25'
        AND substr(DtCriacao, 1, 10) < '2025-08-30'
    GROUP BY substr(DtCriacao, 1, 10)
)
SELECT *,
    sum(qtdTransacoes) OVER (
        ORDER BY dtCriacao
    ) AS somaTransacoes
FROM qteTransacoes;