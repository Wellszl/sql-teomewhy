--qual categoria tem mais produtos vendidos
SELECT t1.DescCategoriaProduto,
    count(t2.idTransacaoProduto) AS qteDeVendas
FROM produtos as t1
    LEFT JOIN transacao_produto as t2 ON t1.IdProduto = t2.IdProduto
GROUP BY DescCategoriaProduto
ORDER BY count(t2.idTransacaoProduto) DESC;