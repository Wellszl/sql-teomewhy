--listar todas as transações adicionando uma coluna nova, sinalizando "alto", "médio" e "baixo" para o valor dos depósitos
SELECT IdProduto,
    IdTransacao,
    vlProduto,
    CASE
        WHEN vlProduto < 10 THEN 'baixo'
        WHEN vlProduto < 500 THEN 'medio'
        WHEN vlProduto >= 500 THEN 'alto'
    END AS TabelaDeValores
FROM transacao_produto
ORDER BY vlProduto DESC