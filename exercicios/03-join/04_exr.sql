-- Quantos clientes assinaram a lista de presença no dia 2025/08/25
SELECT count(DISTINCT t2.idCliente) AS qteDeClientes
FROM transacao_produto AS t1
    LEFT JOIN transacoes AS t2 ON t1.IdTransacao = t2.IdTransacao
    LEFT JOIN produtos AS t3 ON t1.IdProduto = t3.IdProduto
WHERE substr(t2.DtCriacao, 1, 10) = '2025-08-25'
    AND t3.DescCategoriaProduto = 'present';
