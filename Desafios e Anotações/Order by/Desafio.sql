DESAFIO 1 
OBTER O PRODUCTID DOS 10 PRODUTOS MAIS CAROS CADASTRADOS NO SISTEMA, LISTANDO DO MAIS CARO PARA O MAIS BARATO
SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc

DESAFIO 2
OBTER O NOME E NUMERO DO PRODUTO DOS PRODUTOS QUE TEM PRODUCTID ENTRE 1-4
SELECT TOP 4 name,ProductID
FROM Production.Product
ORDER BY ProductID asc