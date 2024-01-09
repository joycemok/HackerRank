-- My SQL --
SELECT ROUND(SUM(Lat_n), 4)
FROM Station
WHERE Lat_n BETWEEN 38.7880 AND 137.2345;

-- MS SQL Server -- 
SELECT CAST(ROUND(SUM(Lat_n), 4) AS DECIMAL(9,4))
FROM Station
WHERE Lat_n BETWEEN 38.7880 AND 137.2345;