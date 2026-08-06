--lsita de transações com o produto resgatar ponei
SELECT count(DISTINCT IdTransacao)
FROM transacao_produto AS t1
WHERE t1.IdProduto = (
        SELECT IdProduto
        FROM produtos
        WHERE DescNomeProduto = 'Resgatar Ponei'
    );