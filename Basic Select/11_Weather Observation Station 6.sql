SELECT DISTINCT City 
FROM Station
WHERE (
    City LIKE 'A%'
    OR City LIKE 'E%'
    OR City LIKE 'I%'
    OR City LIKE 'O%'
    OR City LIKE 'U%'
);
