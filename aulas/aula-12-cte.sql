WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),
tb_cliente_ultimo_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-29'
),
tb_join AS (
    SELECT t1.idCliente AS primeiroDia,
        t2.idCliente AS ultimoDia
    FROM tb_cliente_primeiro_dia AS t1
        LEFT JOIN tb_cliente_ultimo_dia AS t2 ON t1.idCliente = t2.idCliente
)
SELECT count(primeiroDia) AS diaUm,
    count(ultimoDia) AS diaDois,
    count(primeiroDia) - count(ultimoDia)
FROM tb_join;