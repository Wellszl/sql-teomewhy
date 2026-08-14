-- Exercício 10: Nas transações, crie uma coluna data_formatada mostrando DtCriacao no formato dd/mm/aaaa (STRFTIME).
SELECT DtCriacao,
    strftime('%d/%m/%Y', DtCriacao) AS data_formatada
FROM transacoes;
