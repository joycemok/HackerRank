-- MySQL, MS SQL Server --
SELECT SUM(City.Population) 
FROM City
INNER JOIN Country ON City.Countrycode = Country.Code
WHERE Country.Continent = 'Asia';
