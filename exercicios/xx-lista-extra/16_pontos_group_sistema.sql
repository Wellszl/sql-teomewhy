-- Exercício 16: Mostre o total de pontos ganhos agrupado por DescSistemaOrigem. Qual sistema gera mais pontos: twitch ou cursos?
SELECT DescSistemaOrigem AS categoriasdeOrigem,
    sum(qtdePontos) AS soma
FROM transacoes
GROUP BY DescSistemaOrigem;
