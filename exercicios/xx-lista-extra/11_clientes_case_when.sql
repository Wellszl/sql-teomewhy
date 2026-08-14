-- Exercício 11: Para cada cliente, crie uma coluna perfil_pontos que mostre 'VIP' se qtdePontos >= 5000, 'Ativo' se qtdePontos >= 100, e 'Iniciante' caso contrário.
SELECT idCliente,
    qtdePontos,
    CASE
        WHEN qtdePontos >= 5000 THEN 'VIP'
        WHEN qtdePontos >= 100 THEN 'Ativo'
        ELSE 'Iniciante'
    END AS perfil_pontos
FROM clientes;
