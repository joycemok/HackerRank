SELECT TOP(2) CITY, LEN(City) AS City_Lengths
FROM Station
GROUP BY City
HAVING LEN(CITY) = (SELECT(MIN(LEN(City))) FROM Station) OR LEN(CITY) = (SELECT(MAX(LEN(City))) FROM Station)
ORDER BY City_Lengths DESC, City ASC;
