# [Mini Projeto] Pipeline de Dados e Análise com SQL no BigQuery

## Automação e Reuso: Criando uma VIEW
P: Qual é a principal vantagem de usar uma VIEW em vez de simplesmente salvar o código em um arquivo de texto?

R: A VIEW fica armazenada no banco de dados e pode ser reutilizada como se fosse uma tabela, sem precisar reescrever o código. Se o código estiver apenas em um arquivo de texto, cada aplicação teria que copiá-lo e executá-lo manualmente, o que pode gerar erros e retrabalho.

P: Se o preço de um produto mudar na tabela Produtos, o Valor_Total na VIEW será atualizado automaticamente na próxima vez que a consultarmos?

R: Nesse caso, sim. A VIEW não armazena os dados, apenas o código SQL, portanto toda vez que a utilizamos, é como se executássemos o código novamente. Assim, quando o preço muda na tabela Produtos, ao consultar a VIEW, o cálculo do Valor_Total já vai refletir o novo preço.
