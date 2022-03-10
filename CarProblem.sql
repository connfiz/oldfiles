SELECT 
car.CNo,
car.CId,
car.Manufactured ,
car.Model ,
car.Brand ,
car.GNo ,
car.ENo ,
problems.CNo ,
problems. CId ,
problems.PNo ,
problems.GNo ,
problems.ENo 

FROM 
car,problems
WHERE
car.CId = problems.CId and car.CNo = problems.CNo

