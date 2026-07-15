--lista de pedidos feitos no fim de semana
SELECT IdTransacao,
    DtCriacao,
    substr("DtCriacao", 1, 10) AS DataString,
    datetime(substr("DtCriacao", 1, 10)) AS DateTime,
    strftime('%w', datetime(substr("DtCriacao", 1, 10))) AS DiaDaSemana
FROM transacoes
WHERE strftime('%w', datetime(substr("DtCriacao", 1, 10))) = '5'