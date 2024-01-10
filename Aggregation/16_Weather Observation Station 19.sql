-- My SQL --
SELECT ROUND(SQRT(POWER(MAX(lat_n) - MIN(lat_n), 2) + POWER(MAX(long_w) - MIN(long_w), 2)), 4)
FROM Station;

-- MS SQL Server -- 
SELECT CAST(ROUND(SQRT(POWER(MAX(lat_n) - MIN(lat_n), 2) + POWER(MAX(long_w) - MIN(long_w), 2)), 4) AS DECIMAL(7,4))
FROM Station;
