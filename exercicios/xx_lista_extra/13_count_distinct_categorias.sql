-- Exercício 13: Conte quantas categorias de produto diferentes existem na tabela produtos (COUNT(DISTINCT ...)).
SELECT count(DISTINCT(DescCategoriaProduto))
FROM produtos;