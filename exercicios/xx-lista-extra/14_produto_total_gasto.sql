-- Exercício 14: Em transacao_produto, mostre QtdeProduto, vlProduto e uma coluna calculada total_gasto (QtdeProduto * vlProduto) usando AS.
SELECT QtdeProduto,
    vlProduto,
    (QtdeProduto * vlProduto) AS total_gasto
FROM transacao_produto;
