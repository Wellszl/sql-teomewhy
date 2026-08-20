WITH tdTrDias AS (
    SELECT
        idCliente,
        IdTransacao,
        qtdePontos,
        julianday('now') - julianday(substr(DtCriacao, 1, 10)) AS dayDiff
    FROM transacoes
),

ultimaTr AS (
    SELECT
        idCliente,
        ROUND(MIN(dayDiff), 2) AS lastTr
    FROM tdTrDias
    GROUP BY idCliente
)

SELECT
    t1.idCliente,
    COUNT(t1.IdTransacao) AS totalTransacao,
    COUNT(CASE WHEN t1.dayDiff <= 50 THEN t1.IdTransacao END) AS totalTransacaoBy50,
    COUNT(CASE WHEN t1.dayDiff <= 25 THEN t1.IdTransacao END) AS totalTransacaoBy25,
    COUNT(CASE WHEN t1.dayDiff <= 15 THEN t1.IdTransacao END) AS totalTransacaoBy15,
    COUNT(CASE WHEN t1.dayDiff <= 7 THEN t1.IdTransacao END) AS totalTransacaoBy7,
    t2.lastTr,
    SUM(t1.qtdePontos) AS ptTotais,
    SUM(CASE
        WHEN t1.qtdePontos > 0
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotaisPos,
    SUM(CASE
        WHEN t1.qtdePontos > 0
         AND t1.dayDiff <= 50
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalPosBy50,
    SUM(CASE
        WHEN t1.qtdePontos > 0
         AND t1.dayDiff <= 25
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalPosBy25,
    SUM(CASE
        WHEN t1.qtdePontos > 0
         AND t1.dayDiff <= 15
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalPosBy15,
    SUM(CASE
        WHEN t1.qtdePontos > 0
         AND t1.dayDiff <= 7
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalPosBy7,
    SUM(CASE
        WHEN t1.qtdePontos < 0
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotaisNeg,
    SUM(CASE
        WHEN t1.qtdePontos < 0
         AND t1.dayDiff <= 50
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalNegBy50,
    SUM(CASE
        WHEN t1.qtdePontos < 0
         AND t1.dayDiff <= 25
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalNegBy25,
    SUM(CASE
        WHEN t1.qtdePontos < 0
         AND t1.dayDiff <= 15
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalNegBy15,
    SUM(CASE
        WHEN t1.qtdePontos < 0
         AND t1.dayDiff <= 7
        THEN t1.qtdePontos
        ELSE 0
    END) AS ptTotalNegBy7

FROM tdTrDias AS t1

LEFT JOIN ultimaTr AS t2
    ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente

ORDER BY totalTransacao DESC;