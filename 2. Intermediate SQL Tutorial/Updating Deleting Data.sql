SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly'

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005

--DELETE
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE EmployeeID = 1005