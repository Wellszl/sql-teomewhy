-- selecione todos os clientes com o email cadastrado
SELECT idCliente,
    flEmail
FROM clientes
WHERE flEmail = '1'
LIMIT 10