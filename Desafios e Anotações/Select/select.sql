SQL SERVER
Para abrir um banco de dados baixado da web, primeiro é necessario abrir o SQL clicar com o botão direito em "database" clicar em "restore database" selecionar a opção "device"clicar nos 3 pontinhos, clicar em "add" apagar o padrão que virá pegue o caminho e selecione seu banco de dados.

COMANDO SELECT 
Comando universal - SQL SERVER, POSTGRES, ORACLE, mySQL
O comando select serve para selecionar literalmente, então voce pode selecionar a coluna de uma tablela, a sintaxe é
SELECT coluna1, coluna2 //Aqui voce seleciona a coluna
FROM tabela //Aqui a tabela

Tambem pode ser utilizado assim
SELECT * //Com o * seleciona todas as colunas automaticamente
FROM tabela 

Sempre que for usar um comando use em MAIUSCULO, para facilitar a identificação.

Para fazer uma pesquisa no banco de dados, primeiro clique no banco de dados com o botão direito, após isso clique em newquery

Para filtrar uma informação por exemplo o titulo a sintaxe seria

SELECT title
FROM person.Person;

Para rodar apenas esse comando, selecione as linhas e clique F5