-- Exercício 15: Mostre, na tabela transacoes: o total de pontos distribuídos (SUM), a média de pontos por transação (AVG), o maior valor de pontos numa transação só (MAX) e o menor (MIN).
SELECT sum(qtdePontos) AS soma,
    round(avg(qtdePontos), 2) AS media,
    max(qtdePontos) AS maximo,
    min(qtdePontos) AS minimo
FROM transacoes;