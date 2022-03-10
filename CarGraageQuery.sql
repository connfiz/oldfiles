SELECT 
car.CNo,
car.CId,
car.Manufactured ,
car.Model ,
car.Brand ,
car.GNo ,
car.ENo ,
garage.GNo ,
garage.Street ,
garage.Area ,
garage.City ,
garage.Eircode, 
garage.TelNo 

FROM
car,garage

where 
car.GNo=garage.GNO
order by 
CNo;


