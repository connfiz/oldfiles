USE cfarm;

SELECT 
animals.breed ,
animals.weight ,
animals.cost ,
animals.Ano 

FROM 
	animals, PurchaseOrders
WHERE
	animals.Ano =PurchaseOrders.Ano
GROUP BY 
 Ano
ORDER BY 
	Ano;