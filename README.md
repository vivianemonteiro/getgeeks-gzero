# getgeeks-gzero
Curso Gravidade ZERO PRO - QA NINJA

Projeto de automação de testes utilizando o Robot Framework com intuito testar a aplicação WEB GetGeeks

Cenários contemplados:
  - Cadastro
  - Login

A automação é executada utilizando o Chromium com slow motion de 00:00:00.5 e capturando um screenshot ao final de cada execução

A automação pode ser executada atráves do arquivo run.sh ou run.bat dependendo do ambiente em que a mesma será utilizada.

Para realizar as execuções, comandos via terminal poderão ser feitos, e se houver necessidade de executar apenas um teste especifíco, o arquivo run pode ser alterado.
O usuário deve informar a [Tags] do cenário desejado dentro do arquivo run alterando a linha 
  Exemplo:  robot -d ./logs -i tag_do_teste tests/NomeDoTeste.robot

*Esta documentação poderá ser alterada de acordo com a evolução do projeto, sugere-se ao leitor que o visite, sempre que julgar necessário.
