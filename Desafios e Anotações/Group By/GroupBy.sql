GROUP BY, basicamente divide o resultado da sua pesquisa em grupos ex:
-Para cada grupo voce pode aplicar uma função de agregação ex:
calcular a soma de itens
contar o numero de itens naquele grupo
A SINTAXE É:
SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomedatabela
GROUP BY coluna1;

EX REAL:
SELECT specialOfferID, SUM(unitPrice)
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

QUERO SABER QUANTOS PRODUTOS PRODUTOS FORAM VENDIDOS ATÉ HOJE
SELECT ProductID,COUNT(ProductID)
FROM Sales.SalesOrderDetail
GROUP BY ProductID

QUANTOS NOMES DE CADA NOME TEMOS NO NOSSO BANCO DE DADOS?
SELECT FirstName,COUNT(FirstName)
FROM Person.Person
GROUP BY FirstName

NA TABELA PRODUCTION.PRODUCT EU QUERO SABER A MÉDIA DE PREÇO PARA OS PRODUTOS QUE SÃO PRATAS
SELECT color,AVG(ListPrice)
FROM Production.Product
WHERE color = 'silver'
GROUP BY color