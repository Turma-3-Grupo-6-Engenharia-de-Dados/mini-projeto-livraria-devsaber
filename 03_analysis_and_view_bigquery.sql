-- ANÁLISE DE DADOS --

-- Pergunta 1: clientes do estado 'SP'
SELECT  Nome_Cliente
FROM  `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Clientes`
WHERE  Estado_Cliente  =  'SP';

-- Pergunta 2: produtos de Ficção Científica

SELECT  Nome_Produto
FROM  `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Produtos`
WHERE  Categoria_Produto  =  'Ficção Científica';

-- Pergunta 3: todas as vendas (cliente, produto, data)
SELECT
  C.Nome_Cliente,
  P.Nome_Produto,
  V.Data_Venda
FROM `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Vendas` V
JOIN `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Clientes` C ON V.ID_Cliente = C.ID_Cliente
JOIN  `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Produtos` P ON V.ID_Produto = P.ID_Produto
ORDER BY V.Data_Venda;

-- Pergunta 4: valor total de cada venda
SELECT
  V.ID_Venda,
  V.Quantidade_Venda * P.Preco_Produto AS Valor_Total
FROM `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Vendas` V
JOIN `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Produtos` P ON V.ID_Produto = P.ID_Produto;

-- Pergunta 5: produto mais vendido
SELECT
  P.Nome_Produto,
  SUM(V.Quantidade_Venda) AS Total_Quantidade_Vendida
FROM `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Vendas` V
JOIN `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Produtos` P ON V.ID_Produto = P.ID_Produto
GROUP BY P.Nome_Produto
ORDER BY Total_Quantidade_Vendida DESC
LIMIT 1;


-- CRIAÇÃO DA VIEW --
CREATE OR REPLACE VIEW `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.v_relatorio_vendas_detalhado` AS
SELECT
    V.ID_Venda,
    V.Data_Venda,
    C.Nome_Cliente,
    P.Nome_Produto,
    V.Quantidade_Venda,
    (V.Quantidade_Venda * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Vendas` AS V
JOIN `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Produtos` AS P ON V.ID_Produto = P.ID_Produto;

-- Consultar o valor total de cada venda feita para a cliente Ana Silva
SELECT *
FROM `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.v_relatorio_vendas_detalhado` 
WHERE Nome_Cliente = 'Ana Silva';

-- Consultar o valor total de cada venda feita para a cliente Carla Dias
SELECT *
FROM `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.v_relatorio_vendas_detalhado` 
WHERE Nome_Cliente = 'Carla Dias';
-- Consultar o valor total de cada venda feita no dia 02/02/2024
SELECT *
FROM `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.v_relatorio_vendas_detalhado` 
WHERE Data_Venda = '2024-02-02';
