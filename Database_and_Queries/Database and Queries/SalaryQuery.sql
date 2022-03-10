USE cfarm;

SELECT 
salesorder.SNo ,
salesorder.product , 
salesorder.amount , 
salesorder.orderdate , 
salesorder.arrivaldate , 
salesorder.cost ,
salesorder.deliveryAddress
FROM 
	salesorder, farm
WHERE
	salesorder.SNo =farm.SNo
GROUP BY 
  SNo
ORDER BY 
	SNo;
