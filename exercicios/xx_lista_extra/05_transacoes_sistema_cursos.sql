-- Exercício 5: Liste as transações cujo DescSistemaOrigem seja 'cursos'.
SELECT *
FROM transacoes
WHERE DescSistemaOrigem = 'cursos';