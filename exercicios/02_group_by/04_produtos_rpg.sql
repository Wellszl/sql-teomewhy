--quantos produtos sao de Rpg
SELECT count(DescCategoriaProduto) AS quantidade_rpg
FROM produtos
WHERE DescCategoriaProduto = 'rpg'