-- My SQL --
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) 
FROM EMPLOYEES;

-- MS SQL Server --
SELECT CAST(CEILING((AVG(CAST(Salary AS FLOAT))) - (AVG(CAST(REPLACE(Salary, '0', '') AS FLOAT)))) AS INT)
FROM Employees;
