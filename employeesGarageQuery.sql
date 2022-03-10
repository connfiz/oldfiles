SELECT 
garage.GNo ,
garage.Street ,
garage.Area ,
garage.City ,
garage.Eircode, 
garage.TelNo 
employeesENo ,
employees.Forename ,
employees.Surname ,
employees.Address ,
employees.TelNo ,
employees.Position ,
employees.Sex, 
employees.DOB ,
employees.SALARY ,
employees.PPS, 
employees.GNo 

from 
employees,garage

where 
garage.GNo=employees.GNo

order by
ENo;

