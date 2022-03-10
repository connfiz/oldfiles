-- Mark Cummins
SELECT 
	customers.CId,
    customers.Forename,
    customers.Surname,
    customers.TelNo,
    car.CNo,
    car.Manufactured,
    car.Model,
    car.Brand
FROM 
	customers, car
WHERE
	customers.CId = car.CId
GROUP BY 
	CId
ORDER BY 
	CId;