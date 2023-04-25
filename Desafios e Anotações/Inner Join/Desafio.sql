DESAFIO 1
QUERO UMA TABELA Q INCLUA O BUSINESSENTITYID, O NAME, PHONENUMBERTYPEID,PHONENUMBER

SELECT ph.BusinessEntityID,ph.PhoneNumber,ph.PhoneNumberTypeID,pn.Name
FROM Person.PersonPhone PH
INNER JOIN Person.PhoneNumberType PN ON PH.PhoneNumberTypeID = PN.PhoneNumberTypeID

DESAFIO 2
QUERO O ADDRESSID,CITY,STATEPROVINCEID,NOME DO ESTADO

SELECT pa.AddressID,pa.City,pa.StateProvinceID,ps.Name
FROM Person.Address PA
INNER JOIN person.StateProvince PS ON pa.StateProvinceID = ps.StateProvinceID
