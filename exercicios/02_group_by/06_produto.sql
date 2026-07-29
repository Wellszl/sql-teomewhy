--qual foi o produto mais transacionado
SELECT IdProduto,
    count(idTransacao)
FROM transacao_produto
GROUP BY IdProduto
ORDER BY 2 DESC
LIMIT 1