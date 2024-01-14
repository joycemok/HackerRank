SELECT Country.Continent, AVG(City.Population)
FROM City 
INNER JOIN Country ON City.CountryCode = Country.Code
GROUP BY Country.Continent;
