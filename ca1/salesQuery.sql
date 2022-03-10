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
	salesorder, PurchaseOrders
WHERE
	salesorder.SNo =PurchaseOrders.SNo
GROUP BY 
  SNo
ORDER BY 
	SNo;
