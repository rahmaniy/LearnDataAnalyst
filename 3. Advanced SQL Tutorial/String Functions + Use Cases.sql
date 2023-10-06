--DROP TABLE EmployeeErrors

--CREATE TABLE SQLTutorial..EmployeeErrors (
--EmployeeID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--INSERT INTO SQLTutorial..EmployeeErrors VALUES 
--('1001  ', 'Jimbo', 'Halbert')
--,('  1002', 'Pamela', 'Beasely')
--,('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM SQLTutorial..EmployeeErrors


-- Using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) AS IDTrim
FROM SQLTutorial..EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTrim
FROM SQLTutorial..EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTrim
FROM SQLTutorial..EmployeeErrors


-- Using Replace

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM SQLTutorial..EmployeeErrors


-- Using Substring

SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS FirstNameTaken
FROM SQLTutorial..EmployeeErrors

SELECT err.FirstName, dem.FirstName
FROM SQLTutorial..EmployeeErrors err
JOIN SQLTutorial..EmployeeDemographics dem
	ON err.FirstName = dem.FirstName

SELECT err.FirstName, SUBSTRING(err.FirstName, 1, 3) AS FirstNameTakenErr, dem.FirstName, SUBSTRING(dem.FirstName, 1, 3) AS FirstNameTaken
FROM SQLTutorial..EmployeeErrors err
JOIN SQLTutorial..EmployeeDemographics dem
	ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3)


-- Using UPPER and lower

SELECT FirstName, LOWER(FirstName) AS FirstNameLower
FROM SQLTutorial..EmployeeErrors

SELECT FirstName, UPPER(FirstName) AS FirstNameUpper
FROM SQLTutorial..EmployeeErrors