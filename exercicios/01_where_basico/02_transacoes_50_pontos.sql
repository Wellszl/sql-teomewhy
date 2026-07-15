--selecione todas as transações de 50 pontos
SELECT IdTransacao,
    qtdePontos
FROM transacoes
WHERE qtdePontos = 50
LIMIT 100;