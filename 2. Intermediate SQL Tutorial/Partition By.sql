SELECT *
FROM SQLTutorial..EmployeeDemographics

SELECT *
FROM SQLTutorial..EmployeeSalary

SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID