-- My SQL -- 
SELECT ROUND(SUM(Lat_n), 2), ROUND(SUM(Long_w), 2)
FROM Station;

-- MS SQL Server --
SELECT CAST(ROUND(SUM(Lat_n), 2) AS DECIMAL(7,2)), CAST(ROUND(SUM(Long_w), 2) AS DECIMAL(7,2))
FROM Station;
