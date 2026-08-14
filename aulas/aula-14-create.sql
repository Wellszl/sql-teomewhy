DROP TABLE IF EXISTS tb_transacoes_dia;

CREATE TABLE IF NOT EXISTS tb_transacoes_dia AS
WITH tb_transacoes AS (
    SELECT substr(DtCriacao, 1, 10) AS anos,
        COUNT(IdTransacao) AS transacoes
    FROM transacoes
    GROUP BY substr(DtCriacao, 1, 10)
)
SELECT *,
    SUM(transacoes) OVER (
        ORDER BY anos
    ) AS acum
FROM tb_transacoes;
