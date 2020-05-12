SELECT Round(long_w, 4) 
FROM   station 
WHERE  lat_n = (SELECT Min(lat_n) 
                FROM   station 
                WHERE  lat_n > 38.7780); 