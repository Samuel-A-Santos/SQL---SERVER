O union é um operador de combina dois ou mais resultados de um select em um resultado apenas.
sintaxe:
SELECT coluna1, coluna2
FROM tabela1
union
SELECT coluna1, coluna2
FROM tabela2

O union ele remove os resultados duplicados, a não ser que seja utlizado o union all

UNION exemplo real.

SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name like '%chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE NAME like '%Decal%'

