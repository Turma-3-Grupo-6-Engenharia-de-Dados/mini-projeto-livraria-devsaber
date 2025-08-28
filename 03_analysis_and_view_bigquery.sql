-- ANÁLISE DE DADOS --


-- Pergunta 1: clientes do estado 'SP'
SELECT  Nome_Cliente
FROM  Clientes
WHERE  Estado_Cliente  =  'SP';

-- Pergunta 2: produtos de Ficção Científica

SELECT  Nome_Produto
FROM  Produtos
WHERE  Categoria_Produto  =  'Ficção Científica';

-- Pergunta 3: todas as vendas (cliente, produto, data)
SELECT
  C.Nome_Cliente,
  P.Nome_Produto,
  V.Data_Venda
FROM `meu_dataset.Vendas` V
JOIN `meu_dataset.Clientes` C ON V.ID_Cliente = C.ID_Cliente
JOIN `meu_dataset.Produtos` P ON V.ID_Produto = P.ID_Produto
ORDER BY V.Data_Venda;

-- Pergunta 4: valor total de cada venda
SELECT
  V.ID_Venda,
  V.Quantidade * P.Preco_Produto AS Valor_Total
FROM `meu_dataset.Vendas` V
JOIN `meu_dataset.Produtos` P ON V.ID_Produto = P.ID_Produto;

-- Pergunta 5: produto mais vendido
SELECT
  P.Nome_Produto,
  SUM(V.Quantidade) AS Total_Quantidade_Vendida
FROM `meu_dataset.Vendas` V
JOIN `meu_dataset.Produtos` P ON V.ID_Produto = P.ID_Produto
GROUP BY P.Nome_Produto
ORDER BY Total_Quantidade_Vendida DESC
LIMIT 1;

-- CRIAÇÃO DA VIEW --
