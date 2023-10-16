SELECT *
FROM EmployeeSalary


-- Subquery in Select

SELECT EmployeeID, Salary, (
SELECT AVG(Salary)
FROM EmployeeSalary
) AS AllAvgSalary
FROM EmployeeSalary


-- Partition By

SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary


-- Group By 

SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1, 2


-- Subquery in From

SELECT a.EmployeeID, AllAvgSalary
FROM (
SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary
) a


-- Subquery in Where

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
SELECT EmployeeID
FROM EmployeeDemographics
WHERE Age > 30
)