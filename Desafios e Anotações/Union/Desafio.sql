SELECT [City], [AddressLine1]
FROM person.Address
WHERE AddressLine1 = 'Mt.'
UNION 
SELECT [City], [AddressLine1]
FROM Person.Address
WHERE City = 'Bothell'