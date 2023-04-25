Comando WHERE: serve para selecionar apenas os dados que voce deseja, para filtrar ainda mais a sintaxe seria:
SELECT //coluna1, coluna2 etc
FROM //tabela
WHERE //condição;

OPERADOR - DESCRIÇÃO
=          IGUAL
>          MAIOR QUE
<          MENOR QUE
>=         MAIOR QUE OU IGUAL
<=         MENOR QUE OU IGUAL
<>         DIFERENTE DE
AND        OPERADOR LOGICO (E)
OR         OPERADOR LOGICO (OU)

A sintaxe do comando WHERE seria:
SELECT *
FROM person.Person
WHERE lastName = 'miller' 
lasName: apenas o ultimo nome
'miller': nome que estou filtrando caso querira colocar outro nome, ex quero filtrar quem tem o primeiro nome de ana por exemplo, seria:
SELECT *
FROM person.Person
WHERE lastName = 'miller' and firstName = 'ana'

Caso eu queira selecionar produtos apenas das cores azul ou pretas seria:

SELECT *
FROM production.Product
WHERE color = 'blue' or color = 'black'

ou se quisesse selecionar por preço seria:

SELECT *
FROM production.Product
WHERE listPrice > 1500 and listPrice < 5000

Para excluir uma cor por exemplo usamos:
SELECT *
FROM production.Product
WHERE color <> 'red'