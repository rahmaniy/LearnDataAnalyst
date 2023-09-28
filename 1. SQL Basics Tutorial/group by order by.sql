SELECT *
FROM EmployeeDemographics

SELECT Gender, COUNT(Gender) 
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender) 
FROM EmployeeDemographics
GROUP BY Gender, Age

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender 

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender

SELECT *
FROM EmployeeDemographics
ORDER BY 2