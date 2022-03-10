-- Mark Cummins
USE cmrepairs;

SELECT 
	employees.Forename,
    employees.Surname,
    employees.TelNo,
    employees.GNo, 
    employees.ENo, 
    problems.CNo,
    problems.PNo
FROM 
	employees, problems
WHERE 
	employees.ENo = problems.ENo
ORDER BY 
	GNo, ENo;


