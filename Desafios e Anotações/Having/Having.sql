OPERADOR HAVING
O HAVING É USADO NORMALMENTE COM O GROUP BY PARA FILTRAR RESULTADOS AGRUPADOS, É BASICAMENTE UM WHERE PARA DADOS AGRUPADOS. A SINTAXE É:
SELECT coluna1,funçãoagregação(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condição

A GRANDE DIFERENÇA ENTRE HAVING E WHERE 
É QUE O GROUP BY É APLICADO DEPOIS QUE OS DADOS JÁ FORAM AGRUPADOS, ENQUANTO O WHERE É APLICADO ANTES DOS DADOS SEREM AGRUPADOS.
EXEMPLOS:

QUEREMOS SABER QUAIS PRODUTOS QUE NO TOTAL DE VENDA ESTÃO ENTRE 162K A 500K

SELECT productid,SUM(linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) between 162000 and 500000

USANDO WHERE E HAVING JUNTOS:
QUERO SABER QUAIS NOMES NO SISTEMAS TEM UMA OCORRENCIA MAIOR QUE 10X, POREM SOMENTE ONDE O TITULO FOR MR

SELECT FirstName,COUNT(FirstName)
FROM Person.Person
WHERE title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10
