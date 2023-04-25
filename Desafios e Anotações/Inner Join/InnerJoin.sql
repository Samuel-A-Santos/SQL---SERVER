COMANDO INNER JOIN
EXISTEM 3 TIPOS DE JOIN, INNER JOIN, OUTER JOIN E SELF-JOIN

O INNER JOIN, JUNTA INFORMAÇÕES DE DUAS TABELAS

A SINTAXE SERIA
SELECT C.ClientID,C.Nome,E.Rua,E.Cidade
FROM Cliente C
INNER JOIN Endereco E ON E.EnderecoID = C.EnderecoId

O resultado seria basicamente isso:
ID       NOME        ENDEREÇO           CIDADE
|2|      |Samuel|     |Q12|             |Brasilia|

EXEMPLOS:
QUERO UMA TABELA COM TODAS ESSAS INFORMAÇÕES
BusinessEntityId, FirstName,LastName,EmailAddress

SELECT p.BusinessEntityID,p.FirstName,p.LastName ,pe.EmailAddress
FROM Person.Person as P
INNER JOIN Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID

AGORA QUERO O NOME DOS PRODUTOS E AS INFORMAÇÕES DE SUAS SUBCATEGORIAS

SELECT pr.ListPrice,pr.Name,pc.Name
FROM Production.Product Pr
INNER JOIN Production.ProductSubcategory PC ON PC.ProductSubcategoryID = Pr.ProductSubcategoryID

EM UM CENARIO QUE VOCE QUER JUNTAR TODAS AS INFORMAÇÕES DE AMBAS TABELAS SEM UTILIZAR FILTRO

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA 
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID