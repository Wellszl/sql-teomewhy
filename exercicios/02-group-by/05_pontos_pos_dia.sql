--qual a media de pontos positivos por dia
SELECT substr(DtCriacao, 1, 10) AS dtDia,
    round(avg(qtdePontos), 2) AS avgPontosDia
FROM transacoes
WHERE qtdePontos > 0
GROUP BY 1;