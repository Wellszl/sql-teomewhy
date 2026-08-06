SELECT DtCriacao,
    strftime('%d/%m/%Y', DtCriacao) AS data_formatada
FROM transacoes;