
USE cfarm;

SELECT 
buysorders.Bid,
buysorders.product ,
buysorders.amount ,
buysorders.orderdate ,
buysorders.arrivaldate ,
buysorders.cost 
FROM 
	buysorders, PurchaseOrders
WHERE
	buysorders.Bid =PurchaseOrders.Bid
GROUP BY 
 Bid
ORDER BY 
	Bid;

