# 📊 Pipeline de Dados e Análise com SQL no BigQuery

## [Mini Projeto] Livraria DevSaber 📚
### Objetivo do Projeto
A **Livraria DevSaber** é uma loja online que registrou suas primeiras vendas e, até agora, tem usado uma planilha para armazenar informações de clientes, produtos e vendas. No entanto, para possibilitar seu crescimento e ter uma análise mais profunda sobre seus dados, é necessário adotar uma solução mais eficiente para a gestão e análise das informações.

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

## 🔗 Acesso ao conjunto de dados
* [Big Query](https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1st1engenhariadados!2sLivrariaDevSaber_Grupo_3_6&project=t1engenhariadados)

## 🎯 Missão do Projeto
A missão foi construir um **Data Warehouse** no Google BigQuery para coletar, integrar e organizar dados de diversas fontes, oferecendo uma alternativa mais eficiente à planilha, que apresenta limitações de armazenamento, processamento e integração de dados. 

## ✅ Solução implementada
Desenvolvimento de um **pipeline de dados**:

1. **Definição do Schema**:
  * Criação das tabelas:
       * `Clientes`
       * `Produtos`
       * `Vendas`
  *  Arquivo `01_create_tables_bigquery.sql`
   
2. **Ingestão dos Dados**:
  * Inserção dos dados brutos fornecidos nas tabelas
  * Arquivo `02_insert_data_bigquery.sql`
   
3. **Análise dos Dados e criação de uma `VIEW`**
  * Consultas SQL para responder perguntas de negócios
  * Construção de uma `VIEW` para simplificar análises futuras
  * Arquivo `03_analysis_and_view_bigquery.sql`

## 💡 Perguntas respondidas durante o desenvolvimento do projeto 

## ◼️ Contexto Livraria DevSaber
**P: Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?**

R: Nesse contexto da loja online, o uso da planilha não é ideal por diversas razões:
* Limitação do volume de dados: com o crescimento da empresa, a planilha pode não suportar um grande volumes de dados. Consequentemente, pode ser que fique pesada e difícil de usar, prejudicando quem precisa acessas as informações.
* Dificuldade de integração: a integração de diversas fontes de dados em uma planilha é um processo manual e suscetível a erros, o que compromete a confiabilidade das informações.
* Análises limitadas: por conta da dificuldade de integrar as informações, não é possível fazer análises detalhadas e necessárias para a tomada de decisões.

## ◼️ Perguntas respondidas com base nas consultas
* Pergunta 1: Qual o nome dos clientes que moram no estado de 'SP'?

  R: 2 clientes: Carla Dias e Ana Silva

* Pergunta 2: Quais produtos pertencem à categoria 'Ficção Científica'?
  
  R: 2 produtos: Duna e O Guia do Mochileiro

* Pergunta 3: Listar todas as vendas, mostrando o nome do cliente, o nome do produto e a data da venda, ordenando pela data.

  | Nome_Cliente | Nome_Produto | Data_Venda | 
  | --- | --- | --- | 
  | Bruno Costa | Duna | 2024-01-18 |
  | Carla Dias | Python para Dados | 2024-02-02 |
  | Ana Silva | Duna | 2024-02-10 |
  | Daniel Souza | Fundamentos de SQL | 2024-02-20 | 
  | Bruno Costa | O Guia do Mochileiro | 2024-03-05 |


* Pergunta 4: Qual o valor total de cada venda? (quantidade * preço)

  R: O ID_Venda 2 e 4 tiveram um valor total de R$ 80,50, enquanto as ID_Venda 5 e 1 resultaram em R$ 60,00 cada. Por último, o ID_Venda 3 teve o maior valor total, de R$ 150,00.
  
  | ID_Venda | Valor_Total | 
  | --- | --- | 
  | 2 | 80.5 |
  | 4 | 80.5 |
  | 5 | 60 |
  | 1 | 60| 
  | 6 | 42 |
  | 3 | 150 | 

* Pergunta 5: Qual o produto mais vendido em termos de quantidade?

  R: Duna é o produto mais vendido, totalizando 2 unidades vendidas.

## ◼️ Criação das tabelas
**P: Com base nos dados brutos, quais outras duas tabelas precisamos criar? Que colunas e tipos de dados elas teriam?**

R: Tabelas de Produtos e Vendas
* Tabela Produtos: ID_Produto, Categoria_Produto, Nome_Produto, Preco_Produto
* Tabela Vendas: ID_Cliente, ID_Produto, ID_Venda, Data_Venda, Quantidade

## ◼️ Ingestão dos dados
**P: Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?**

R: Para evitar repetição de informações, facilitar a manutenção e atualizações e manter a integridade referencial, ou seja, quando criamos tabelas de clientes, produtos e vendas separadas, relacionamos essas tabelas usando chaves primárias e estrangeiras, garantindo que que cada venda esteja sempre ligada a um cliente e um produto que existem no banco de dados.

**P: Em um cenário com milhões de vendas por dia, o `INSERT INTO` seria a melhor abordagem?**

R: Pode ser que não seja a melhor opção, seria necessário avaliar a situação. 

## ◼️ Automação e Reuso: Criando uma VIEW
**P: Qual é a principal vantagem de usar uma VIEW em vez de simplesmente salvar o código em um arquivo de texto?**

R: A VIEW fica armazenada no banco de dados e pode ser reutilizada como se fosse uma tabela, sem precisar reescrever o código. Se o código estiver apenas em um arquivo de texto, cada aplicação teria que copiá-lo e executá-lo manualmente, o que pode gerar erros e retrabalho.

**P: Se o preço de um produto mudar na tabela Produtos, o Valor_Total na VIEW será atualizado automaticamente na próxima vez que a consultarmos?**

R: Nesse caso, sim. A VIEW não armazena os dados, apenas o código SQL, portanto toda vez que a utilizamos, é como se executássemos o código novamente. Assim, quando o preço muda na tabela Produtos, ao consultar a VIEW, o cálculo do Valor_Total já vai refletir o novo preço.

## 👥 Equipe
* Caroline Cortez
* Carlos Ryan
* Emerson Oliveira
* Gisely Karla
* Laila Guedes
* Nathalia Kopke
* Roberta Amanda
* Vaneza Magalhães 
