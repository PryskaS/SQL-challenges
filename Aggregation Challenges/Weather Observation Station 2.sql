SELECT Cast(Round(Sum(lat_n), 2) AS DECIMAL (10, 2)), 
       Cast(Round(Sum(long_w), 2) AS DECIMAL (10, 2)) 
FROM   station; 