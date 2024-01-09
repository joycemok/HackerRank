-- My SQL, MS SQL Server --
SELECT MAX(Salary * Months), COUNT(*)
FROM Employee
WHERE (Salary * Months)= (SELECT(Max(Salary * Months)) FROM Employee);
