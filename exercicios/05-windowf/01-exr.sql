-- Qual o dia com maior engajamento de cada aluno que iniciou o curso no dia 1?
WITH clientesDiaUm AS (
    SELECT DISTINCT(idCliente)
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),
tbInteracao AS (
    SELECT t1.idCliente,
        substr(t2.DtCriacao, 1, 10) AS DiaCurso,
        count(*) AS qteInteracao
    FROM clientesDiaUm AS t1
        LEFT JOIN transacoes AS t2 ON t1.idCliente = t2.idCliente
            AND t2.DtCriacao >= '2025-08-25'
            AND t2.DtCriacao < '2025-08-30'
    GROUP BY t1.idCliente,
        substr(t2.DtCriacao, 1, 10)
),
tb_rn AS (
    SELECT *,
        row_number() OVER (
            PARTITION BY idCliente
            ORDER BY qteInteracao DESC
        ) AS rn
    FROM tbInteracao
)
SELECT *
FROM tb_rn
WHERE rn = 1;
