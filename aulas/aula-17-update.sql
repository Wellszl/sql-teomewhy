UPDATE tb_transacoes_dia
SET transacoes = transacoes + 100
WHERE anos = '2024-01-27';

SELECT *
FROM tb_transacoes_dia;
