-- CLIENTES:
CREATE OR REPLACE TABLE `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Clientes` (ID_Cliente INT64, Nome_Cliente STRING, Email_Cliente STRING, Estado_Cliente STRING);

-- PRODUTOS:
CREATE OR REPLACE TABLE `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Produtos` (ID_Produto INT64 , Nome_Produto STRING , Categoria_Produto STRING , Preco_Produto NUMERIC );

CREATE OR REPLACE TABLE `t1engenhariadados.LivrariaDevSaber_Grupo_3_6.Vendas` (
  ID_Venda INT64, 
  Data_Venda DATE, 
  Quantidade_Venda INT64,
  ID_Cliente INT64,
  ID_Produto INT64
);
