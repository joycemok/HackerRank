-- My SQL -- 
SELECT ROUND(long_w, 4)
FROM Station
WHERE lat_n = (SELECT MIN(lat_n) 
               FROM Station 
               WHERE lat_n > 38.7780);

-- MS SQL Server -- 
SELECT CAST(ROUND(long_w, 4) AS DECIMAL(6,4))
FROM Station
WHERE lat_n = (SELECT MIN(lat_n) 
               FROM Station 
               WHERE lat_n > 38.7780);
