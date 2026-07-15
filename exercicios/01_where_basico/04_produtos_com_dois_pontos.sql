--selecione todos os produtos que contêm ':' no nome
SELECT *
FROM produtos
WHERE DescCategoriaProduto LIKE "%churn%"