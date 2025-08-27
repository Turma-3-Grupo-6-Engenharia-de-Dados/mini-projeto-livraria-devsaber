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

## Sobre o projeto
A "Livraria DevSaber", uma loja online, registrou suas primeiras vendas e precisa de ajuda para estruturar e analisar esses dados. A missão é criar um pequeno data warehouse no Google BigQuery para permitir que a empresa responda a perguntas de negócio importantes sobre seus clientes e produtos.

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

1. **Definição o Schema**:
   Criação das tabelas `Clientes`, `Produtos` e `Vendas`. 
2. **Ingestão dos Dados**:
   Inserção dos dados brutos fornecidos nas tabelas 
3. **Análise dos Dados**
   Realizar consultas SQL para responder a perguntas de negócio
4. **Criação de uma View**:
   Constução de uma `VIEW` para simplificar análises futuras.
