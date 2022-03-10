USE cfarm;

SELECT 
inventory.description_ ,
inventory.weight ,
inventory.cost ,
inventory.Iid 

FROM 
	inventory, PurchaseOrders
WHERE
	inventory.Iid =PurchaseOrders.Iid
GROUP BY 
Iid
ORDER BY 
	Iid;