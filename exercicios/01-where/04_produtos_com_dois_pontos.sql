-- Selecione todos os produtos que contêm ':' no nome
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE '%:%';
