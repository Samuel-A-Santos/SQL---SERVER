--QUERO DESCOBRIR QUAIS PESSOAS TEM UM CARTÃO DE CREDITO REGISTRADO
--Jeito "errado de utilizar"
SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
--INNER JOIN: 19118 Resultados encontrados
--LEFT JOIN: 19972

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID

--Caso queira saber quais as pessoas n tem cartão registrado

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL
