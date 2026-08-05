--do inico ao fim do curso 2025/08/25 a 2025/08/29 quantos clienets assinaram a lisat de presença?
SELECT count(DISTINCT t2.idCliente) AS qteDeClientes
FROM transacao_produto AS t1
    LEFT JOIN transacoes AS t2 ON t1.IdTransacao = t2.IdTransacao
    LEFT JOIN produtos AS t3 ON t1.IdProduto = t3.IdProduto
WHERE substr(t2.DtCriacao, 1, 10) >= '2025-08-25'
    AND substr(t2.DtCriacao, 1, 10) <= '2025-08-29'
    AND t3.DescCategoriaProduto = 'present'