-- Exercício 7: Liste os produtos cujo nome (DescNomeProduto) contenha a palavra "Espada".
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE '%espada%';
