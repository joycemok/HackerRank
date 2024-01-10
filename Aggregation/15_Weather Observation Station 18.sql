-- My SQL -- 
SELECT ROUND(ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)), 4)
FROM Station;

-- MS SQL Server -- 
SELECT CAST(ROUND(ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)), 4) AS DECIMAL(7,4)) 
FROM Station;
