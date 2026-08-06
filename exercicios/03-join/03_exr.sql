--quais clientes mais perderam pontos por lover
SELECT t1.idCliente,
    t3.DescCategoriaProduto,
    sum(t1.qtdePontos) AS qteDePontos
FROM transacoes AS t1
    LEFT JOIN transacao_produto AS t2 ON t1.IdTransacao = t2.IdTransacao
    LEFT JOIN produtos AS t3 ON t2.IdProduto = t3.IdProduto
WHERE t1.qtdePontos < 0
    AND t3.DescCategoriaProduto = 'lovers'
GROUP BY t1.idCliente
ORDER BY sum(t1.qtdePontos)
LIMIT 10;