--quantos produtos são de RPG
SELECT count(DescCategoriaProduto) AS quantidade_rpg
FROM produtos
WHERE DescCategoriaProduto = 'rpg';