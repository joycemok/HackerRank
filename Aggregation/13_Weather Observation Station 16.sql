-- My SQL --
SELECT ROUND(MIN(lat_n), 4)
FROM Station
WHERE lat_n > 38.7780;

-- MS SQL Server -- 
SELECT CAST(ROUND(MIN(lat_n), 4) AS DECIMAL(6,4))
FROM Station
WHERE lat_n > 38.7780;
