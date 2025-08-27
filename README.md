# [Mini Projeto] Pipeline de Dados e Análise com SQL no BigQuery

## Equipe
* Caroline Cortez
* Carlos Ryan
* Emerson Oliveira
* Gisely Karla
* Laila Guedes
* Nathalia Kopke
* Roberta Amanda
* Vaneza Magalhães

## Objetivo do Projeto
A **Livraria DevSaber**, uma loja online, registrou suas primeiras vendas e, até agora, tem utilizado uma planilha para armazenar essas informações. No entanto, para possibilitar seu crescimento e ter uma análise mais profunda sobre seus clientes e produtos, é necessário adotar uma solução mais eficiente. 

A missão foi criar um mini Data Warehouse no Google BigQuery para coletar, integrar e organizar dados de diversas fontes, oferecendo uma alternativa mais eficiente à planilha, que apresenta limitações de armazenamento, processamento e integração de dados. Para isso, foi desenvolvido todo o pipeline de dados: a criação da estrutura, o carregamento e organização das informações e a extração de insights que permitem responder a perguntas de negócio e gerar relatórios mais precisos e estratégicos.

## **Dados de Origem**

Dados brutos fornecidos pela empresa:

| id_venda | nome_cliente | email_cliente | estado_cliente | nome_produto | categoria_produto | preco_produto | data_venda | quantidade |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Ana Silva | ana.s@email.com | SP | Fundamentos de SQL | Dados | 60.00 | 2024-01-15 | 1 |
| 2 | Bruno Costa | b.costa@email.com | RJ | Duna | Ficção Científica | 80.50 | 2024-01-18 | 1 |
| 3 | Carla Dias | carla.d@email.com | SP | Python para Dados | Programação | 75.00 | 2024-02-02 | 2 |
| 4 | Ana Silva | ana.s@email.com | SP | Duna | Ficção Científica | 80.50 | 2024-02-10 | 1 |
| 5 | Daniel Souza | daniel.s@email.com | MG | Fundamentos de SQL | Dados | 60.00 | 2024-02-20 | 1 |
| 6 | Bruno Costa | b.costa@email.com | RJ | O Guia do Mochileiro | Ficção Científica | 42.00 | 2024-03-05 | 1 |

## **Missão do Projeto**
Criação de um conjunto de scripts SQL para estruturar os dados, carregar, extrair as respostas que ajudarão a livraria a entender seus negócios e uma view para simpiflicaar análises futuras.

1. **Definição do Schema**:

   Criação das tabelas `Clientes`, `Produtos` e `Vendas`.
~pendente
   
2. **Ingestão dos Dados**:

   Inserção dos dados brutos fornecidos nas tabelas

   Arquivo `02_insert_data_bigquery.sql`
   
3. **Análise dos Dados**

   Realizar consultas SQL para responder a perguntas de negócio
4. **Criação de uma View**:

   Constução de uma `VIEW` para simplificar análises futuras.
