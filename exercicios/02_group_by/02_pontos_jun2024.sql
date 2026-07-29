--qual cliente mais juntou pontos positivos em 2025-05
SELECT idCliente,
    sum(qtdePontos) AS total_de_pontos,
    DtCriacao
FROM transacoes
WHERE DtCriacao >= "2025-05-01"
    AND DtCriacao < "2025-06-01"
    AND qtdePontos >= 0
GROUP BY idCliente
ORDER BY sum(qtdePontos) DESC;